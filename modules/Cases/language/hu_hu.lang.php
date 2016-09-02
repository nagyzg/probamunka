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

$mod_strings = array (
	'ERR_DELETE_RECORD'					=> 'Adatszám megadása szükséges a Cég törléséhez.',

	'LBL_ACCOUNT_ID'					=> 'Cég ID',
	'LBL_ACCOUNT_NAME'					=> 'Cégnév:',
	'LBL_ACCOUNTS_SUBPANEL_TITLE'		=> 'Cégek',
	'LBL_ACTIVITIES_SUBPANEL_TITLE'		=> 'Aktivitások',
	'LBL_ATTACH_NOTE' 					=> 'Jegyzet csatolása',
	'LBL_BUGS_SUBPANEL_TITLE'			=> 'Hibák',
	'LBL_CASE_NUMBER'					=> 'Eset száma:',
	'LBL_CASE_SUBJECT'					=> 'Eset tárgya:',
	'LBL_CASE'							=> 'Eset:',
	'LBL_CONTACT_CASE_TITLE'			=> 'Kapcsolat-eset:',
	'LBL_CONTACT_NAME'					=> 'Kapcsolat neve:',
	'LBL_CONTACT_ROLE'					=> 'Szerepkör:',
	'LBL_CONTACTS_SUBPANEL_TITLE'		=> 'Kapcsolatok',
	'LBL_DEFAULT_SUBPANEL_TITLE'		=> 'Esetek',
	'LBL_DESCRIPTION'					=> 'Leírás:',
	'LBL_FILENANE_ATTACHMENT' 			=> 'Fájl csatolmány',	
	'LBL_HISTORY_SUBPANEL_TITLE'		=> 'Előzmény',
	'LBL_INVITEE'						=> 'Kapcsolatok',
	'LBL_MEMBER_OF'						=> 'Cég',
	'LBL_MODULE_NAME'					=> 'Esetek',
	'LBL_MODULE_TITLE'					=> 'Esetek: Kezdőlap',
	'LBL_NEW_FORM_TITLE'				=> 'Új eset',
	'LBL_NUMBER'						=> 'Szám:',
	'LBL_PRIORITY'						=> 'Prioritás:',
	'LBL_PROJECTS_SUBPANEL_TITLE' 		=> 'Projektek',
	'LBL_DOCUMENTS_SUBPANEL_TITLE' 		=> 'Dokumentumok',
	'LBL_RESOLUTION'					=> 'Megoldás:',
	'LBL_SEARCH_FORM_TITLE'				=> 'Eset keresése',
	'LBL_STATUS'						=> 'Állapot:',
	'LBL_SUBJECT'						=> 'Tárgy:',
	'LBL_SYSTEM_ID'						=> 'Rendszer ID',
	'LBL_LIST_ASSIGNED_TO_NAME' 		=> 'Hozzárendelt felhasználó',
	'LBL_LIST_ACCOUNT_NAME'				=> 'Cégnév',
	'LBL_LIST_ASSIGNED'					=> 'Hozzárendelve',
	'LBL_LIST_CLOSE'					=> 'Bezárás',
	'LBL_LIST_FORM_TITLE'				=> 'Eset lista',
	'LBL_LIST_LAST_MODIFIED'			=> 'Utoljára módosítva',
	'LBL_LIST_MY_CASES'					=> 'Nyitott eseteim',
	'LBL_LIST_NUMBER'					=> 'Szám.',
	'LBL_LIST_PRIORITY'					=> 'Prioritás',
	'LBL_LIST_STATUS'					=> 'Állapot',
	'LBL_LIST_SUBJECT'					=> 'Tárgy',
	'LBL_LIST_ASSIGNED_TO_NAME'   		=> 'Hozzárendelt felhasználó',

	'LNK_CASE_LIST'						=> 'Esetek megtekintése',
	'LNK_NEW_CASE'						=> 'Eset létrehozása',
	'NTC_REMOVE_FROM_BUG_CONFIRMATION'	=> 'Biztosan eltávolítja az Eset és a Hiba kapcsolatát?',
	'NTC_REMOVE_INVITEE'				=> 'Biztosan eltávolítja az Eset és a Kapcsolat relációját?',
	'LBL_LIST_DATE_CREATED'			=> 'Létrehozás dátuma',
	'LBL_ASSIGNED_TO_NAME' => 'Hozzárendelve',
	'LBL_TYPE'=>'Típus',
	'LBL_WORK_LOG'=>'Munkanapló',
	'LNK_IMPORT_CASES' => 'Esetek importálása',

    'LBL_CREATED_USER' => 'Létrehozó',
    'LBL_MODIFIED_USER' => 'Módosító',
    'LBL_PROJECT_SUBPANEL_TITLE' => 'Projektek',
    'LBL_CASE_INFORMATION' => 'Áttekintés',

    //For export labels
    'LBL_MODIFIED_BY_NAME_OWNER' => 'Modified By Name Owner',
    'LBL_MODIFIED_BY_NAME_MOD' => 'Modified By Name Mod',
    'LBL_CREATED_BY_NAME_OWNER' => 'Created By Name Owner',
    'LBL_CREATED_BY_NAME_MOD' => 'Created By Name Mod',
    'LBL_ASSIGNED_USER_NAME_OWNER' => 'Assigned User Name Owner',
    'LBL_ASSIGNED_USER_NAME_MOD' => 'Assigned User Name Mod',
    'LBL_TEAM_COUNT_OWNER' => 'Team Count Owner',
    'LBL_TEAM_COUNT_MOD' => 'Team Count Mod',
    'LBL_TEAM_NAME_OWNER' => 'Team Name Owner',
    'LBL_TEAM_NAME_MOD' => 'Team Name Mod',
    'LBL_ACCOUNT_NAME_OWNER' => 'Account Name Owner',
    'LBL_ACCOUNT_NAME_MOD' => 'Account Name Mod',
    'LBL_MODIFIED_USER_NAME' => 'Modified User Name',
    'LBL_MODIFIED_USER_NAME_OWNER' => 'Modified User Name Owner',
    'LBL_MODIFIED_USER_NAME_MOD' => 'Modified User Name Mod',
    'LBL_PORTAL_VIEWABLE' => 'Portal Viewable',
    'LBL_EXPORT_ASSIGNED_USER_ID' => 'Assigned User ID',
    'LBL_EXPORT_MODIFIED_USER_ID' => 'Modified By ID',
    'LBL_EXPORT_CREATED_BY' => 'Created By ID',
    'LBL_EXPORT_CREATED_BY_NAME' => 'Created By User Name',
    'LBL_EXPORT_ASSIGNED_USER_NAME' => 'Assigned User Name',
    'LBL_EXPORT_TEAM_COUNT' => 'Team Count',

    // SNIP
	'LBL_CONTACT_HISTORY_SUBPANEL_TITLE' => 'Kapcsolódó Kapcsolatok emailei',
);

?>
