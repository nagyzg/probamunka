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
	'LBL_MODULE_NAME' => 'Projekt feladatok',
	'LBL_MODULE_TITLE' => 'Projekt feladatok: Kezdőlap',
	'LBL_SEARCH_FORM_TITLE' => 'Projekt feladat keresése',
	'LBL_LIST_FORM_TITLE'=> 'Projekt feladatok lista',
    'LBL_EDIT_TASK_IN_GRID_TITLE'=> 'Feladat szerkesztése hálózatban',    
	
	'LBL_ID' => 'Id:',
    'LBL_PROJECT_TASK_ID' => 'Projekt feladat ID:',
    'LBL_PROJECT_ID' => 'Projekt ID:',
	'LBL_DATE_ENTERED' => 'Létrehozás dátuma:',
	'LBL_DATE_MODIFIED' => 'Módosítás dátuma:',
	'LBL_ASSIGNED_USER_ID' => 'Hozzárendelt felhasználó ID:',
	'LBL_MODIFIED_USER_ID' => 'Módosító felhasználó ID:',
	'LBL_CREATED_BY' => 'Létrehozó:',
	'LBL_TEAM_ID' => 'Csoport:',
	'LBL_NAME' => 'Név:',
	'LBL_STATUS' => 'Állapot:',
	'LBL_DATE_DUE' => 'Határidő dátuma:',
	'LBL_TIME_DUE' => 'Határidő:',
    'LBL_RESOURCE' => 'Erőforrás:',
    'LBL_PREDECESSORS' => 'Elődök:',
	'LBL_DATE_START' => 'Kezdés dátuma:',
    'LBL_DATE_FINISH' => 'Befejezés dátuma:',    
	'LBL_TIME_START' => 'Kezdés időpontja:',
    'LBL_TIME_FINISH' => 'Befejezés időpontja:',
    'LBL_DURATION' => 'Időtartam:',
    'LBL_DURATION_UNIT' => 'Időtartam egység:',
    'LBL_ACTUAL_DURATION' => 'Aktuális időtartam:',
	'LBL_PARENT_ID' => 'Projekt:',
    'LBL_PARENT_TASK_ID' => 'Szülő feladat Id:',    
    'LBL_PERCENT_COMPLETE' => '% Teljesítve:',
	'LBL_PRIORITY' => 'Prioritás:',
	'LBL_DESCRIPTION' => 'Leírás:',
	'LBL_ORDER_NUMBER' => 'Utasítás:',
	'LBL_TASK_NUMBER' => 'Feladat száma:',
    'LBL_TASK_ID' => 'Feladat ID:',
	'LBL_DEPENDS_ON_ID' => 'Függőség:',
	'LBL_MILESTONE_FLAG' => 'Mérföldkő:',
	'LBL_ESTIMATED_EFFORT' => 'Becsült ráfordítás (óra):',
	'LBL_ACTUAL_EFFORT' => 'Aktuális ráfordítás (óra):',
	'LBL_UTILIZATION' => 'Kihasználtság (%):',
	'LBL_DELETED' => 'Törölt:',

	'LBL_LIST_ORDER_NUMBER' => 'Utasítás',
	'LBL_LIST_NAME' => 'Név',
    'LBL_LIST_DAYS' => 'nap',
	'LBL_LIST_PARENT_NAME' => 'Projekt',
	'LBL_LIST_PERCENT_COMPLETE' => '% Teljesítve',
	'LBL_LIST_STATUS' => 'Állapot',
    'LBL_LIST_DURATION' => 'Időtartam',
    'LBL_LIST_ACTUAL_DURATION' => 'Aktuális időtartam',
	'LBL_LIST_ASSIGNED_USER_ID' => 'Hozzárendelve',
	'LBL_LIST_DATE_DUE' => 'Határidő',
	'LBL_LIST_DATE_START' => 'Kezdés dátuma',
    'LBL_LIST_DATE_FINISH' => 'Befejezés dátuma',    
	'LBL_LIST_PRIORITY' => 'Prioritás',
	'LBL_LIST_CLOSE' => 'Bezár',
	'LBL_PROJECT_NAME' => 'Projekt neve',

	'LNK_NEW_PROJECT'	=> 'Projekt létrehozása',
	'LNK_PROJECT_LIST'	=> 'Project List',
	'LNK_NEW_PROJECT_TASK'	=> 'Projekt feladat létrehozása',
	'LNK_PROJECT_TASK_LIST'	=> 'Projekt feladatok',
	
	'LBL_LIST_MY_PROJECT_TASKS' => 'Projekt feladataim',
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Projekt feladatok',
	'LBL_NEW_FORM_TITLE' => 'Új projekt feladat',

	'LBL_ACTIVITIES_TITLE'=>'Aktivitások',
	'LBL_HISTORY_TITLE'=>'Előzmény',
	'LBL_ACTIVITIES_SUBPANEL_TITLE'=>'Aktivitások',
	'LBL_HISTORY_SUBPANEL_TITLE'=>'Előzmény', 
	'DATE_JS_ERROR' => 'Kérem adja meg a bevitt időpontnak megfelelő dátumot.',

    'LBL_ASSIGNED_USER_NAME' => 'Hozzárendelve',
    'LBL_PARENT_NAME' => 'Projekt neve',
    'LBL_LIST_PROJECT_NAME' => 'Projektek',
	'LBL_EDITLAYOUT' => 'Elrendezés szerkesztése' /*for 508 compliance fix*/,
);
?>
