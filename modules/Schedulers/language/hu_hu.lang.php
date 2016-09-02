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

/*********************************************************************************

 * Description:  Defines the English language pack for the base application.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
global $sugar_config;
 
$mod_strings = array (
// OOTB Scheduler Job Names:
'LBL_OOTB_WORKFLOW'		=> 'Munkafolyamat Feladatok Feldolgozása',
'LBL_OOTB_REPORTS'		=> 'Riport Generálás Ütemezett Feladatainak Futtatása',
'LBL_OOTB_IE'			=> 'Bejövő Email Postafiókok ellenőrzése',
'LBL_OOTB_BOUNCE'		=> 'Visszapattanó Kampánylevelek Éjszakai Feldolgozása',
'LBL_OOTB_CAMPAIGN'		=> 'Email kampányok kötegelt, éjszakai futtatása',
'LBL_OOTB_PRUNE'		=> 'Adatbázis Karbantartás a Hónap Első Napján',
'LBL_OOTB_TRACKER'		=> 'Tracker Táblák Karbantartása',
'LBL_UPDATE_TRACKER_SESSIONS' => 'A tracker_sessions Táblák Frissítése',
// List Labels
'LBL_LIST_JOB_INTERVAL' => 'Intervallum:',
'LBL_LIST_LIST_ORDER' => 'Ütemezések:',
'LBL_LIST_NAME' => 'Ütemezés:',
'LBL_LIST_RANGE' => 'Tartomány:',
'LBL_LIST_REMOVE' => 'Eltávolítás:',
'LBL_LIST_STATUS' => 'Állapot:',
'LBL_LIST_TITLE' => 'Ütemezések lista:',
'LBL_LIST_EXECUTE_TIME' => 'Esedékes:',
// human readable:
'LBL_SUN'		=> 'Vasárnap',
'LBL_MON'		=> 'Hétfő',
'LBL_TUE'		=> 'Kedd',
'LBL_WED'		=> 'Szerda',
'LBL_THU'		=> 'Csütörtök',
'LBL_FRI'		=> 'Péntek',
'LBL_SAT'		=> 'Szombat',
'LBL_ALL'		=> 'Minden nap',
'LBL_EVERY_DAY'	=> 'Minden nap ',
'LBL_AT_THE'	=> 'At the ',
'LBL_EVERY'		=> 'Minden ',
'LBL_FROM'		=> 'Kezdet: ',
'LBL_ON_THE'	=> 'Minden ',
'LBL_RANGE'		=> ' Vég: ',
'LBL_AT' 		=> ' at ',
'LBL_IN'		=> ' in ',
'LBL_AND'		=> ' és ',
'LBL_MINUTES'	=> ' perc ',
'LBL_HOUR'		=> ' órában',
'LBL_HOUR_SING'	=> ' órakkor',
'LBL_MONTH'		=> ' hónap',
'LBL_OFTEN'		=> ' Amilyen gyakran lehet.',
'LBL_MIN_MARK'	=> ' percben',


// crontabs
'LBL_MINS' => 'perc',
'LBL_HOURS' => 'óra',
'LBL_DAY_OF_MONTH' => 'dátum',
'LBL_MONTHS' => 'hó',
'LBL_DAY_OF_WEEK' => 'nap',
'LBL_CRONTAB_EXAMPLES' => 'A fenti szbványos crontab jelölés használatos.',
'LBL_CRONTAB_SERVER_TIME_PRE' =>  'A cron specifikációk alapján fut a szerveren az időzóna (',
'LBL_CRONTAB_SERVER_TIME_POST' => '). Kérem, az ütemező végrehajtási idejét ennek megfelelően adja meg.',
// Labels
'LBL_ALWAYS' => 'Mindig',
'LBL_CATCH_UP' => 'Végrehajt ha hiányzik',
'LBL_CATCH_UP_WARNING' => 'Törölje, ha néhány percnél tovább tart.',
'LBL_DATE_TIME_END' => 'Dátum & időpont befejezés',
'LBL_DATE_TIME_START' => 'Dátum & időpont kezdés',
'LBL_INTERVAL' => 'Intervallum',
'LBL_JOB' => 'Munka',
'LBL_LAST_RUN' => 'Utolsó sikeres futtatás',
'LBL_MODULE_NAME' => 'Sugar ütemező',
'LBL_MODULE_TITLE' => 'Ütemezések',
'LBL_NAME' => 'Munka neve',
'LBL_NEVER' => 'Soha',
'LBL_NEW_FORM_TITLE' => 'Új ütemezés',
'LBL_PERENNIAL' => 'folytonos',
'LBL_SEARCH_FORM_TITLE' => 'Ütemezés keresés',
'LBL_SCHEDULER' => 'Ütemező:',
'LBL_STATUS' => 'Állapot',
'LBL_TIME_FROM' => 'Active From',
'LBL_TIME_TO' => 'Active To',
'LBL_WARN_CURL_TITLE' => 'cURL figyelmeztetés:',
'LBL_WARN_CURL' => 'Figyelem:',
'LBL_WARN_NO_CURL' => 'This system does not have the cURL libraries enabled/compiled into the PHP module (--with-curl=/path/to/curl_library).  Please contact your administrator to resolve this issue.  Without the cURL functionality, the Scheduler cannot thread its jobs.',
'LBL_BASIC_OPTIONS' => 'Alapbeállítások',
'LBL_ADV_OPTIONS'		=> 'Advanced Options',
'LBL_TOGGLE_ADV' => 'Show Advanced Options',
'LBL_TOGGLE_BASIC' => 'Show Basic Options',
// Links
'LNK_LIST_SCHEDULER' => 'Ütemezések',
'LNK_NEW_SCHEDULER' => 'Ütemezés létrehozása',
'LNK_LIST_SCHEDULED' => 'Ütemezett munkák',
// Messages
'SOCK_GREETING' => "\nThis is the interface for SugarCRM Schedulers Service. \n[ Available daemon commands: start|restart|shutdown|status ]\nTo quit, type 'quit'.  To shutdown the service 'shutdown'.\n",
'ERR_DELETE_RECORD' => 'Adatszám megadása szükséges az ütemezés törléséhez.',
'ERR_CRON_SYNTAX' => 'Invalid Cron syntax',
'NTC_DELETE_CONFIRMATION' => 'Biztosan törölni szeretné az adatot?',
'NTC_STATUS' => 'Inaktív állapot esetén az ütemezés eltávolításra kerül a legördulő listaértékek közül.',
'NTC_LIST_ORDER' => 'Beállítás esetén eltűnik az ütemezés a legördlő listaértékek közül',
'LBL_CRON_INSTRUCTIONS_WINDOWS' => 'To Setup Windows Scheduler',
'LBL_CRON_INSTRUCTIONS_LINUX' => 'To Setup Crontab',
'LBL_CRON_LINUX_DESC' => 'Note: In order to run Sugar Schedulers, add the following line to the crontab file: ',
'LBL_CRON_WINDOWS_DESC' => 'Note: In order to run the Sugar schedulers, create a batch file to run using Windows Scheduled Tasks. The batch file should include the following commands: ',
'LBL_NO_PHP_CLI' => 'If your host does not have the PHP binary available, you can use wget or curl to launch your Jobs.<br>for wget: <b>*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;wget --quiet --non-verbose '.$sugar_config['site_url'].'/cron.php > /dev/null 2>&1</b><br>for curl: <b>*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;curl --silent '.$sugar_config['site_url'].'/cron.php > /dev/null 2>&1', 
// Subpanels
'LBL_JOBS_SUBPANEL_TITLE'	=> 'Munkanapló',
'LBL_EXECUTE_TIME'			=> 'Végrehajtás ideje',

//jobstrings
'LBL_REFRESHJOBS' => 'Munkák frissítése',
'LBL_POLLMONITOREDINBOXES' => 'Bejövő Email Postafiókok Ellenőrzése',
'LBL_RUNMASSEMAILCAMPAIGN' => 'Email kampányok kötegelt, éjszakai futtatása',
'LBL_POLLMONITOREDINBOXESFORBOUNCEDCAMPAIGNEMAILS' => 'Visszapattanó Kampánylevelek Éjszakai Feldolgozása',
'LBL_PRUNEDATABASE' => 'Adatbázis Karbantartás a Hónap Első Napján',
'LBL_TRIMTRACKER' => 'Tracker Táblák Karbantartása',
);
?>
