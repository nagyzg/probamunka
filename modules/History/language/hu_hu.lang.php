<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

 


$mod_strings = array (
  'LBL_MODULE_NAME' => 'Előzmény',
  'LBL_MODULE_TITLE' => 'Előzmény: Kezdőlap',
  'LBL_SEARCH_FORM_TITLE' => 'Előzmény keresése',
  'LBL_LIST_FORM_TITLE' => 'Előzmény',
  'LBL_LIST_SUBJECT' => 'Tárgy',
  'LBL_LIST_CONTACT' => 'Kapcsolat',
  'LBL_LIST_RELATED_TO' => 'Kapcsolódik',
  'LBL_LIST_DATE' => 'Dátum',
  'LBL_LIST_TIME' => 'Kezdés időpontja',
  'LBL_LIST_CLOSE' => 'Bezárás',
  'LBL_SUBJECT' => 'Tárgy:',
  'LBL_STATUS' => 'Állapot:',
  'LBL_LOCATION' => 'Helyszín:',
  'LBL_DATE_TIME' => 'Kezdés dátuma &időpontja:',
  'LBL_DATE' => 'Kezdés dátuma:',
  'LBL_TIME' => 'Kezdés időpontja:',
  'LBL_DURATION' => 'Leírás:',
  'LBL_HOURS_MINS' => '(óra/perc)',
  'LBL_CONTACT_NAME' => 'Kapcsolat neve: ',
  'LBL_MEETING' => 'Találkozó:',
  'LBL_DESCRIPTION_INFORMATION' => 'Leíró info',
  'LBL_DESCRIPTION' => 'Leírás:',
  'LBL_COLON' => ':',
  'LBL_DEFAULT_STATUS' => 'Tervezett',
  'LNK_NEW_CALL' => 'Hívás rögzítése',
  'LNK_NEW_MEETING' => 'Találkozó ütemezése',
  'LNK_NEW_TASK' => 'Feladat létrehozása',
  'LNK_NEW_NOTE' => 'Jegyzet vagy csatolmány létrehozása',
  'LNK_NEW_EMAIL' => 'Email archiválása',
  'LNK_CALL_LIST' => 'Hívások',
  'LNK_MEETING_LIST' => 'Találkozók',
  'LNK_TASK_LIST' => 'Feladatok',
  'LNK_NOTE_LIST' => 'Jegyzetek',
  'LNK_EMAIL_LIST' => 'Emailek',
  'ERR_DELETE_RECORD' => 'Adatszám megadása szükséges a cég törléséhez.',
  'NTC_REMOVE_INVITEE' => 'Biztosan eltávolítja a találkozó meghívottját?',
  'LBL_INVITEE' => 'Meghívottak',
  'LBL_LIST_DIRECTION' => 'Útvonal',
  'LBL_DIRECTION' => 'Útvonal',
  'LNK_NEW_APPOINTMENT' => 'Új  megbeszélés',
  'LNK_VIEW_CALENDAR' => 'Ma',
  'LBL_OPEN_ACTIVITIES' => 'Nyitott aktivitások',
  'LBL_HISTORY' => 'Előzmény',
  'LBL_UPCOMING' => 'Elkövetkező megbeszélések',
  'LBL_TODAY' => 'keresztül ',
  'LBL_NEW_TASK_BUTTON_TITLE' => 'Feladat létrehozása',
  'LBL_NEW_TASK_BUTTON_KEY' => 'N',
  'LBL_NEW_TASK_BUTTON_LABEL' => 'Feladat létrehozása',
  'LBL_SCHEDULE_MEETING_BUTTON_TITLE' => 'Találkozó ütemezése',
  'LBL_SCHEDULE_MEETING_BUTTON_KEY' => 'M',
  'LBL_SCHEDULE_MEETING_BUTTON_LABEL' => 'Találkozó ütemezése',
  'LBL_SCHEDULE_CALL_BUTTON_TITLE' => 'Hívás rögzítése',
  'LBL_SCHEDULE_CALL_BUTTON_KEY' => 'C',
  'LBL_SCHEDULE_CALL_BUTTON_LABEL' => 'Hívás rögzítése',
  'LBL_NEW_NOTE_BUTTON_TITLE' => 'Jegyzet vagy csatolmány létrehozása',
  'LBL_NEW_NOTE_BUTTON_KEY' => 'T',
  'LBL_NEW_NOTE_BUTTON_LABEL' => 'Jegyzet vagy csatolmány létrehozása',
  'LBL_TRACK_EMAIL_BUTTON_TITLE' => 'Email archiválása',
  'LBL_TRACK_EMAIL_BUTTON_KEY' => 'K',
  'LBL_TRACK_EMAIL_BUTTON_LABEL' => 'Email archiválása',
  'LBL_LIST_STATUS' => 'Állapot',
  'LBL_LIST_DUE_DATE' => 'Határidő',
  'LBL_LIST_LAST_MODIFIED' => 'Utoljára módosítva',
  'NTC_NONE_SCHEDULED' => 'Nincs ütemezve.',
  'appointment_filter_dom' => array(
  	 'today' => 'ma'
  	,'tomorrow' => 'holnap'
  	,'this Saturday' => 'a héten'
  	,'next Saturday' => 'jövő héten'
  	,'last this_month' => 'a hónapban'
  	,'last next_month' => 'jövő hónapban'
  ),
  'LNK_IMPORT_NOTES'=>'Jegyzetek importálása',
  'NTC_NONE'=>'Nincs',
	'LBL_ACCEPT_THIS'=>'Elfogadja?',
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Előzmény',
);

?>
