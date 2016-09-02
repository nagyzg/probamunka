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

	'LBL_MODULE_NAME' => 'Naptár',
	'LBL_MODULE_TITLE' => 'Naptár',
	'LNK_NEW_CALL' => 'Hívás rögzítése',
	'LNK_NEW_MEETING' => 'Találkozó ütemezése',
	'LNK_NEW_APPOINTMENT' => 'Megbeszélés létrehozása',
	'LNK_NEW_TASK' => 'Feladat létrehozása',
	'LNK_CALL_LIST' => 'Hívások',
	'LNK_MEETING_LIST' => 'Találkozók',
	'LNK_TASK_LIST' => 'Feladatok',
	'LNK_VIEW_CALENDAR' => 'Ma',
	'LNK_IMPORT_CALLS' => 'Hívások importtálása',
	'LNK_IMPORT_MEETINGS' => 'Találkozók importtálása',
	'LNK_IMPORT_TASKS' => 'Feladatok importtálása',
	'LBL_MONTH' => 'Hónap',
	'LBL_DAY' => 'Nap',
	'LBL_YEAR' => 'Év',
	'LBL_WEEK' => 'Hét',
	'LBL_PREVIOUS_MONTH' => 'Előző hónap',
	'LBL_PREVIOUS_DAY' => 'Előző nap',
	'LBL_PREVIOUS_YEAR' => 'Előző év',
	'LBL_PREVIOUS_WEEK' => 'Előző hét',
	'LBL_NEXT_MONTH' => 'Jövő hónap',
	'LBL_NEXT_DAY' => 'Következő nap',
	'LBL_NEXT_YEAR' => 'Jövő év',
	'LBL_NEXT_WEEK' => 'Jövő hét',
	'LBL_AM' => 'DE',
	'LBL_PM' => 'DU',
	'LBL_SCHEDULED' => 'Ütemezett',
	'LBL_BUSY' => 'Elfoglalt',
	'LBL_CONFLICT' => 'Ütközik',
	'LBL_USER_CALENDARS' => 'Felhasználói Naptárak',
	'LBL_SHARED' => 'Megosztott',
	'LBL_PREVIOUS_SHARED' => 'Előző',
	'LBL_NEXT_SHARED' => 'Következő',
	'LBL_SHARED_CAL_TITLE' => 'Megosztott Naptár',
	'LBL_USERS' => 'Felhasználók',
	'LBL_REFRESH' => 'Frissít',
	'LBL_EDIT_USERLIST' => 'Felhasználók listája',
	'LBL_SELECT_USERS' => 'Válassza ki a felhasználókat a naptár megjelenítéséhez',
	'LBL_FILTER_BY_TEAM' => 'Felhasználók szűrése a csoporthoz:',
	'LBL_ASSIGNED_TO_NAME' => 'Hozzárendelve',
	'LBL_DATE' => 'Kezdés dátuma & időpontja',  
	'LBL_CREATE_MEETING' => 'Találkozó ütemezése',
	'LBL_CREATE_CALL' => 'Hívás rögzítése',  
	'LBL_HOURS_ABBREV' => 'ó',
	'LBL_MINS_ABBREV' => 'p',

	'LBL_YES' => 'Igen',
	'LBL_NO' => 'Nem',
	'LBL_SETTINGS' => 'Beállítások',
	'LBL_CREATE_NEW_RECORD' => 'Aktivitás létrehozása',
	'LBL_LOADING' => 'Töltés ......',
	'LBL_SAVING' => 'Mentés ......',
	'LBL_CONFIRM_REMOVE' => 'Biztosan eltávolítja az adatot?',
	'LBL_EDIT_RECORD' => 'Aktivitás szerkesztése',
	'LBL_ERROR_SAVING' => 'Hiba mentés közben',
	'LBL_ERROR_LOADING' => 'Hiba töltés közben',
	'LBL_GOTO_DATE' => 'Ugrás dátumhoz',
	'NOTICE_DURATION_TIME' => 'Az időtartamnak nagyobbnak kell lennie 0-nál',
	'LBL_STYLE_BASIC' => 'Alapbeállítás',
	'LBL_STYLE_ADVANCED' => 'Haladó',

	'LBL_INFO_TITLE' => 'Hozzáadott részletek',
	'LBL_INFO_DESC' => 'Leírás',
	'LBL_INFO_START_DT' => 'Kezdő időpont',
	'LBL_INFO_DUE_DT' => 'Lejárat',
	'LBL_INFO_DURATION' => 'Időtartam',
	'LBL_INFO_NAME' => 'Tárgy',
	'LBL_INFO_RELATED_TO' => 'Kapcsolódik',

	'LBL_NO_USER' => 'Nincs egyezés: Hozzárendelve',
	'LBL_SUBJECT' => 'Tárgy',
	'LBL_DURATION' => 'Időtartam',
	'LBL_STATUS' => 'Állapot',
	'LBL_DATE_TIME' => 'Dátum és idő',


	'LBL_SETTINGS_TITLE' => 'Beállítások',
	'LBL_SETTINGS_TIME_STARTS'=>'Kezdés ideje:', 
	'LBL_SETTINGS_TIME_ENDS'=>'Befejezés ideje:', 
	'LBL_SETTINGS_CALENDAR_STYLE' => 'Naptár stílusa:',
	'LBL_SETTINGS_CALLS_SHOW' => 'Hivások megjelenítése:',
	'LBL_SETTINGS_TASKS_SHOW' => 'Feladatok megjelenítése:', 

	'LBL_SAVE_BUTTON' => 'Mentés',
	'LBL_DELETE_BUTTON' => 'Törlés',
	'LBL_APPLY_BUTTON' => 'Alkalmaz',
	'LBL_SEND_INVITES' => 'Meghívók küldése',
	'LBL_CANCEL_BUTTON' => 'Mégse',
	'LBL_CLOSE_BUTTON' => 'Bezárás',

	'LBL_GENERAL_TAB' => 'Részletek',
	'LBL_PARTICIPANTS_TAB' =>'Meghívottak',

);

$mod_list_strings = array(
	'repeat_types' => 
	array(
		''	=>	'Nincs',
		'Daily'	=>	'Napi',
		'Weekly' =>	'Heti',
		'Monthly' =>	'Havi',
		'Yearly' =>	'Évi',
	),
	'dom_cal_weekdays'=>
		array(
			"Vas",
			"Hét",
			"Kedd",
			"Sze",
			"Csüt",
			"Pén",
			"Szo",
		),
	'dom_cal_weekdays_long'=>
		array(
			"Vasárnap",
			"Hétfő",
			"Kedd",
			"Szerda",
			"Csütrötök",
			"Péntek",
			"Szombat",
		),
	'dom_cal_month'=>
		array(
			"",
			"Jan",
			"Feb",
			"Már",
			"Ápr",
			"Máj",
			"Jún",
			"Júl",
			"Aug",
			"Szep",
			"Okt",
			"Nov",
			"Dec",
		),
	'dom_cal_month_long'=>
		array(
			"",
			"Január",
			"Február",
			"Március",
			"Április",
			"Május",
			"Június",
			"Július",
			"Augusztus",
			"Szeptember",
			"Október",
			"November",
			"December",
		),
);
?>
