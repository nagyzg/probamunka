<?php

require_once 'modules/Calendar/controller.php';

/**
 * CustomCalendarController extends default CalendarController, Tasks add, delete update on Calendar
 * 
 * @author kz
 *
 */
class CustomCalendarController extends CalendarController
{
    /**
     * Action SaveActivity with handle Tasks
     * using original action_saveactivity() method and modules/Tasks/Save.php
     */
    protected function action_saveactivity()
    {
        $this->view = 'json';
    
        if (!$this->retrieveCurrentBean('Save')) {
            return;
        }
    
        $module = $this->currentBean->module_dir;
        $bean = $this->currentBean;
    
        if (empty($_REQUEST['edit_all_recurrences'])) {
    
            $repeat_fields = array('type', 'interval', 'count', 'until', 'dow', 'parent_id');
            foreach ($repeat_fields as $suffix) {
                unset($_POST['repeat_' . $suffix]);
            }
    
        }else if (!empty($_REQUEST['repeat_type']) && !empty($_REQUEST['date_start'])) {
    
            $params = array(
                'type' => $_REQUEST['repeat_type'],
                'interval' => $_REQUEST['repeat_interval'],
                'count' => $_REQUEST['repeat_count'],
                'until' => $_REQUEST['repeat_until'],
                'dow' => $_REQUEST['repeat_dow'],
            );
    
            $repeatArr = CalendarUtils::build_repeat_sequence($_REQUEST['date_start'], $params);
            $limit = SugarConfig::getInstance()->get('calendar.max_repeat_count', 1000);
    
            if (count($repeatArr) > ($limit - 1)) {
                ob_clean();
                $jsonData = array(
                    'access' => 'yes',
                    'limit_error' => 'true',
                    'limit' => $limit,
                );
                $this->view_object_map['jsonData'] = $jsonData;
                return;
            }
        }
    
        
        if($bean->object_name === 'Task') {
            // from modules/Tasks/Save.php
            
            $focus = new Task();
            if (!isset($prefix)) $prefix='';
            
            global $timedate;
            $time_format = $timedate->get_user_time_format();
            $time_separator = ":";
            if(preg_match('/\d+([^\d])\d+([^\d]*)/s', $time_format, $match)) {
                $time_separator = $match[1];
            }
            
            if(!empty($_POST[$prefix.'due_meridiem'])) {
                $_POST[$prefix.'time_due'] = $timedate->merge_time_meridiem($_POST[$prefix.'time_due'],$timedate->get_time_format(), $_POST[$prefix.'due_meridiem']);
            }
            
            if(!empty($_POST[$prefix.'start_meridiem'])) {
                $_POST[$prefix.'time_start'] = $timedate->merge_time_meridiem($_POST[$prefix.'time_start'],$timedate->get_time_format(), $_POST[$prefix.'start_meridiem']);
            }
            
            if(isset($_POST[$prefix.'time_due']) && !empty($_POST[$prefix.'time_due'])) {
                $_POST[$prefix.'date_due'] = $_POST[$prefix.'date_due'] . ' ' . $_POST[$prefix.'time_due'];
            }
            
            if(isset($_POST[$prefix.'time_start']) && !empty($_POST[$prefix.'time_start'])) {
                $_POST[$prefix.'date_start'] = $_POST[$prefix.'date_start'] . ' ' . $_POST[$prefix.'time_start'];
            }
            
            require_once('include/formbase.php');
            $focus = populateFromPost('', $focus);
            
            if(!$focus->ACLAccess('Save')){
                ACLController::displayNoAccess(true);
                sugar_cleanup(true);
            }
            
            if (isCloseAndCreateNewPressed()) $focus->status = 'Completed';
            if (!isset($_POST['date_due_flag'])) $focus->date_due_flag = 0;
            if (!isset($_POST['date_start_flag'])) $focus->date_start_flag = 0;
            if($focus->date_due_flag != 'off' && $focus->date_due_flag != 1) {
                $focus->date_due = '';
                $focus->time_due = '';
            }
            
            //if only the time is passed in, without a date, then string length will be 7
            if (isset($_REQUEST['date_due']) && strlen(trim($_REQUEST['date_due']))<8 ){
                //no date set, so clear out field, and set the rest flag to true
                $focus->date_due_flag = 1;
                $focus->date_due = '';
            }
            
            //if only the time is passed in, without a date, then string length will be 7
            if (isset($_REQUEST['date_start']) && strlen(trim($_REQUEST['date_start']))<8){
                //no date set, so clear out field, and set the rest flag to true
                $focus->date_start_flag = 1;
                $focus->date_start = '';
            }
            
            $focus->save();
            
            /**
             * CalendarUtils::get_sendback_array($focus) requires the correct user timezone format
             * 
             * @link https://johndopenotes.wordpress.com/2013/03/05/sugarcrm-format-date-according-to-user-timezone/
             */
            global $current_user;
            
            $timeDate = new TimeDate();
            $focus->date_due = $timeDate->to_display_date_time($focus->date_due, true, true, $current_user);
            $focus->date_start = $timeDate->to_display_date_time($focus->date_start, true, true, $current_user);
            
            
            $jsonData = CalendarUtils::get_sendback_array($focus);

            $this->view_object_map['jsonData'] = $jsonData;
            return;
        }
        
    
        $path = "modules/{$bean->module_dir}/{$bean->object_name}FormBase.php";
        if (!file_exists($path)) {
            $GLOBALS['log']->fatal("File {$bean->object_name}FormBase.php doesn't exist");
            sugar_cleanup(true);
        }
         
        require_once($path);
    
        $FBObjectName = "{$bean->object_name}FormBase";
    
        if (!class_exists($FBObjectName)) {
            $GLOBALS['log']->fatal("Class {$bean->object_name}FormBase doesn't exist");
            sugar_cleanup(true);
        }
    
        $formBase = new $FBObjectName();
        $bean = $formBase->handleSave('', false, false);
        unset($_REQUEST['send_invites'], $_POST['send_invites']); // prevent invites sending for recurring activities
    
        if ($record = $bean->id) {
    
            if ($module == "Meetings" || $module == "Calls") {
                if (!empty($_REQUEST['edit_all_recurrences'])) {
                    CalendarUtils::markRepeatDeleted($bean);
                }
                if (isset($repeatArr) && is_array($repeatArr) && count($repeatArr) > 0) {
                    $repeatCreated = CalendarUtils::save_repeat_activities($bean, $repeatArr);
                }
            }
    
            $bean->retrieve($record);
            $jsonData = CalendarUtils::get_sendback_array($bean);
    
            if (isset($repeatCreated) && is_array($repeatCreated)) {
                $jsonData = array_merge($jsonData, array('repeat' => $repeatCreated));
            }
    
            if (!empty($_REQUEST['edit_all_recurrences'])) {
                $jsonData['edit_all_recurrences'] = 'true';
            }
    
        } else {
            $jsonData = array(
                'access' => 'no',
            );
        }
    
        $this->view_object_map['jsonData'] = $jsonData;
    }
}
