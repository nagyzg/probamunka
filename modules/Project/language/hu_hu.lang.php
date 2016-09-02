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
	'LBL_MODULE_NAME' => 'Projektek',
	'LBL_MODULE_TITLE' => 'Projektek: Kezdőlap',
	'LBL_SEARCH_FORM_TITLE' => 'Projekt keresés',
    'LBL_LIST_FORM_TITLE' => 'Projekt lista',
    'LBL_HISTORY_TITLE' => 'Előzmény',

	'LBL_ID' => 'Id:',
	'LBL_DATE_ENTERED' => 'Létrehozás dátuma:',
	'LBL_DATE_MODIFIED' => 'Módosítás dátuma:',
	'LBL_ASSIGNED_USER_ID' => 'Hozzárendelve:',
    'LBL_ASSIGNED_USER_NAME' => 'Hozzárendelve:',
	'LBL_MODIFIED_USER_ID' => 'Módosító felhasználó Id:',
	'LBL_CREATED_BY' => 'Létrehozó:',
	'LBL_TEAM_ID' => 'Csoport:',
	'LBL_NAME' => 'Név:',
    'LBL_PDF_PROJECT_NAME' => 'Projekt neve:',
	'LBL_DESCRIPTION' => 'Leírás:',
	'LBL_DELETED' => 'Törölt:',
    'LBL_DATE' => 'Dátum:',
	'LBL_DATE_START' => 'Kezdés dátuma:',
	'LBL_DATE_END' => 'Befejezés dátuma:',
	'LBL_PRIORITY' => 'Prioritás:',
    'LBL_STATUS' => 'Állapot:',
    'LBL_MY_PROJECTS' => 'Projektjeim',
    'LBL_MY_PROJECT_TASKS' => 'Projekt feladataim',
    
	'LBL_TOTAL_ESTIMATED_EFFORT' => 'Teljes becsült ráfordítás (óra):',
	'LBL_TOTAL_ACTUAL_EFFORT' => 'Teljes eddigi ráfordítás (óra):',

	'LBL_LIST_NAME' => 'Név',
    'LBL_LIST_DAYS' => 'nap',
	'LBL_LIST_ASSIGNED_USER_ID' => 'Hozzárendelve',
	'LBL_LIST_TOTAL_ESTIMATED_EFFORT' => 'Teljes becsült ráfordítás (óra)',
	'LBL_LIST_TOTAL_ACTUAL_EFFORT' => 'Teljes eddigi ráfordítás (óra)',
    'LBL_LIST_UPCOMING_TASKS' => 'Közelgő feladatok (1 hét)',
    'LBL_LIST_OVERDUE_TASKS' => 'Lejárt feladatok',
    'LBL_LIST_OPEN_CASES' => 'Nyitott esetek',
    'LBL_LIST_END_DATE' => 'Befejezés dátuma',
    'LBL_LIST_TEAM_ID' => 'Csoprot',
    

	'LBL_PROJECT_SUBPANEL_TITLE' => 'Projektek',
	'LBL_PROJECT_TASK_SUBPANEL_TITLE' => 'Projekt feladatok',
	'LBL_CONTACT_SUBPANEL_TITLE' => 'Kapcsolatok',
	'LBL_ACCOUNT_SUBPANEL_TITLE' => 'Cégek',
	'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Lehetőségek',
	'LBL_QUOTE_SUBPANEL_TITLE' => 'Ajánlatok',

    // quick create label
    'LBL_NEW_FORM_TITLE' => 'Új projekt',

	'CONTACT_REMOVE_PROJECT_CONFIRM' => 'Biztosan eltávolítja a Projekt és a Kapcsolat relációját?',

	'LNK_NEW_PROJECT'	=> 'Projekt létrehozása',
	'LNK_PROJECT_LIST'	=> 'Projekt lista megtekintése',
	'LNK_NEW_PROJECT_TASK'	=> 'Projekt feladat létrehozása',
	'LNK_PROJECT_TASK_LIST'	=> 'Projekt feladatok megtekintése',
	
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Projektek',
	'LBL_ACTIVITIES_TITLE'=>'Aktivitások',
    'LBL_ACTIVITIES_SUBPANEL_TITLE'=>'Aktivitások',
	'LBL_HISTORY_SUBPANEL_TITLE'=>'Előzmény',
	'LBL_QUICK_NEW_PROJECT'	=> 'Új projekt',
	
	'LBL_PROJECT_TASKS_SUBPANEL_TITLE' => 'Projekt feladatok',
	'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kapcsolatok',
	'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Cégek',
	'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Lehetőségek',
    'LBL_CASES_SUBPANEL_TITLE' => 'Esetek',
    'LBL_BUGS_SUBPANEL_TITLE' => 'Hibák',
    'LBL_PRODUCTS_SUBPANEL_TITLE' => 'Termékek',
    

    'LBL_TASK_ID' => 'ID',
    'LBL_TASK_NAME' => 'Feladat neve',
    'LBL_DURATION' => 'Időtartam',
    'LBL_ACTUAL_DURATION' => 'Aktuális időtartam',
    'LBL_START' => 'Kezdés',
    'LBL_FINISH' => 'Befejezés',
    'LBL_PREDECESSORS' => 'Elődök',
    'LBL_PERCENT_COMPLETE' => '% Teljesítve',
    'LBL_MORE'  => 'További...',

    'LBL_PERCENT_BUSY' => '% Elfoglalt',
    'LBL_TASK_ID_WIDGET' => 'id',
    'LBL_TASK_NAME_WIDGET' => 'leírás',
    'LBL_DURATION_WIDGET' => 'időtartam',
    'LBL_START_WIDGET' => 'ezdési dátum',
    'LBL_FINISH_WIDGET' => 'befejezési dátum',
    'LBL_PREDECESSORS_WIDGET' => 'elődök',
    'LBL_PERCENT_COMPLETE_WIDGET' => 'százalék teljesítve',
    'LBL_EDIT_PROJECT_TASKS_TITLE'=> 'Projekt feladat szerkesztése',
    
    'LBL_OPPORTUNITIES' => 'Lehetőségek',
	'LBL_LAST_WEEK' => 'Előző',
	'LBL_NEXT_WEEK' => 'Következő',
	'LBL_PROJECTRESOURCES_SUBPANEL_TITLE' => 'Projekt erőforrások',
	'LBL_PROJECTTASK_SUBPANEL_TITLE' => 'Projekt feladat',
	'LBL_HOLIDAYS_SUBPANEL_TITLE' => 'Szabadságok',
	'LBL_PROJECT_INFORMATION' => 'Projekt áttekintés',
	'LBL_EDITLAYOUT' => 'Elrendezés szerkesztése' /*for 508 compliance fix*/,
	'LBL_INSERTROWS' => 'Sorok beszúrása' /*for 508 compliance fix*/,
	'LBL_PROJECT_INFORMATION' => 'Áttekintés',

);
?>
