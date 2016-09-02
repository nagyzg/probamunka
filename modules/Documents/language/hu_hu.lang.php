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
	//module
	'LBL_MODULE_NAME' => 'Dokumentumok',
	'LBL_MODULE_TITLE' => 'Dokumentumok: Kezdőlap',
	'LNK_NEW_DOCUMENT' => 'Dokumentum létrehozása',
	'LNK_DOCUMENT_LIST'=> 'Dokumentum megtekintése',
	'LBL_DOC_REV_HEADER' => 'Dokumentum átdolgozások',
	'LBL_SEARCH_FORM_TITLE'=> 'Dokumentum keresés',
	//vardef labels
	'LBL_DOCUMENT_ID' => 'Dokumentum ID',
	'LBL_NAME' => 'Dokumentum neve',
	'LBL_DESCRIPTION' => 'Leírás',
	'LBL_CATEGORY' => 'Kategória',
	'LBL_SUBCATEGORY' => 'Alkategória',
	'LBL_STATUS' => 'Állapot',
	'LBL_CREATED_BY'=> 'Létrehozó',
	'LBL_DATE_ENTERED'=> 'Létrehozás dátuma',
	'LBL_DATE_MODIFIED'=> 'Módosítás dátuma',
	'LBL_DELETED' => 'Törölt',
	'LBL_MODIFIED'=> 'Módosító ID',
	'LBL_MODIFIED_USER' => 'Módosító',
	'LBL_CREATED'=> 'Létrehozó',
	'LBL_REVISIONS'=>'Átdolgozások',
	'LBL_RELATED_DOCUMENT_ID'=>'Kapcsolódó dokumentum ID',
	'LBL_RELATED_DOCUMENT_REVISION_ID'=>'Kapcsolódó dokumentum átdolgozás ID',
	'LBL_IS_TEMPLATE'=>'Ez egy sablon',
	'LBL_TEMPLATE_TYPE'=>'Dokumentum típus',
	'LBL_ASSIGNED_TO_NAME'=>'Hozzárendelve:',
	'LBL_REVISION_NAME' => 'Átdolgozás száma',
	'LBL_MIME' => 'Mime típus',
	'LBL_REVISION' => 'Átdolgozás',
	'LBL_DOCUMENT' => 'Kapcsolódó dokumentum',
	'LBL_LATEST_REVISION' => 'Utolsó átdolgozás',
	'LBL_CHANGE_LOG'=> 'Változási napló',
	'LBL_ACTIVE_DATE'=> 'Közzététel dátuma',
	'LBL_EXPIRATION_DATE' => 'Lejárat dátuma',
	'LBL_FILE_EXTENSION'  => 'Fájlkiterjesztés',
	'LBL_LAST_REV_MIME_TYPE' => 'Utolsó átdolgozás MIME típusa',
	'LBL_CAT_OR_SUBCAT_UNSPEC'=>'Nincs megadva',
    'LBL_HOMEPAGE_TITLE' => 'Dokumentumaim',
	//quick search
	'LBL_NEW_FORM_TITLE' => 'Új dokumentum',
	//document edit and detail view
	'LBL_DOC_NAME' => 'Dokumentum neve:',
	'LBL_FILENAME' => 'Fájlnév:',
	'LBL_LIST_FILENAME' => 'Fájl:',
	'LBL_DOC_VERSION' => 'Átdolgozás:',
	'LBL_FILE_UPLOAD' => 'Fájl:',

	'LBL_CATEGORY_VALUE' => 'Kategória:',
	'LBL_LIST_CATEGORY' => 'Kategória',
	'LBL_SUBCATEGORY_VALUE'=> 'Alkategória:',
	'LBL_DOC_STATUS'=> 'Állapot:',
	'LBL_LAST_REV_CREATOR' => 'Átdolgozó:',
	'LBL_LASTEST_REVISION_NAME' => 'Utolsó átdolgozás neve:',
	'LBL_SELECTED_REVISION_NAME' => 'Kiválasztott átdolgozás neve:',
	'LBL_CONTRACT_STATUS' => 'Szerződés állapota:',
	'LBL_CONTRACT_NAME' => 'Szerződés neve:',
	'LBL_LAST_REV_DATE' => 'Átdolgozás dátuma:',
	'LBL_DOWNNLOAD_FILE'=> 'Fájl letöltése:',
	'LBL_DET_RELATED_DOCUMENT'=>'Kapcsolódó dokumentum:',
	'LBL_DET_RELATED_DOCUMENT_VERSION'=>"Kapcsolódó dokumentum átdolgozás:",
	'LBL_DET_IS_TEMPLATE'=>'Sablon? :',
	'LBL_DET_TEMPLATE_TYPE'=>'Dokumentum típusa:',
	'LBL_DOC_DESCRIPTION'=>'Leírás:',
	'LBL_DOC_ACTIVE_DATE'=> 'Közzététel dátuma:',
	'LBL_DOC_EXP_DATE'=> 'Lejárat dátuma:',

	//document list view.
	'LBL_LIST_FORM_TITLE' => 'Dokumentumlista',
	'LBL_LIST_DOCUMENT' => 'Dokumentum',
	'LBL_LIST_CATEGORY' => 'Kategória',
	'LBL_LIST_SUBCATEGORY' => 'Alkategória',
	'LBL_LIST_REVISION' => 'Átdolgozás',
	'LBL_LIST_LAST_REV_CREATOR' => 'Közzétevő',
	'LBL_LIST_LAST_REV_DATE' => 'Átdolgozás dátuma',
	'LBL_LIST_VIEW_DOCUMENT'=>'Megtekintés',
    'LBL_LIST_DOWNLOAD'=> 'Letöltés',
	'LBL_LIST_ACTIVE_DATE' => 'Közzététel dátuma',
	'LBL_LIST_EXP_DATE' => 'Lejárat dátuma',
	'LBL_LIST_STATUS'=>'Állapot',
	'LBL_LINKED_ID' => 'Link id',
	'LBL_SELECTED_REVISION_ID' => 'Kiválasztott átdolgozás id',
	'LBL_LATEST_REVISION_ID' => 'Utolsó átdolgozás id',
	'LBL_SELECTED_REVISION_FILENAME' => 'Kiválasztott átdolgozás fájlneve',
	'LBL_FILE_URL' => 'Fájl url',
    'LBL_REVISIONS_PANEL' => 'Átdolgozás részletei',
    'LBL_REVISIONS_SUBPANEL' => 'Átdolgozások',

	//document search form.
	'LBL_SF_DOCUMENT' => 'Dokumentum neve:',
	'LBL_SF_CATEGORY' => 'Kategória:',
	'LBL_SF_SUBCATEGORY'=> 'Alkategória:',
	'LBL_SF_ACTIVE_DATE' => 'Közzététel dátuma:',
	'LBL_SF_EXP_DATE'=> 'Lejárat dátuma:',

	'DEF_CREATE_LOG' => 'Dokumentum létrehozva',

	//error messages
	'ERR_DOC_NAME'=>'Dokumentum neve',
	'ERR_DOC_ACTIVE_DATE'=>'Közzététel dátuma',
	'ERR_DOC_EXP_DATE'=> 'Lejárat dátuma',
	'ERR_FILENAME'=> 'Fájlnév',
	'ERR_DOC_VERSION'=> 'Dokumentum verzió',
	'ERR_DELETE_CONFIRM'=> 'Biztosan törölni szeretné ezt az átdolgozást?',
	'ERR_DELETE_LATEST_VERSION'=> 'Nem engedélyezte az utolsó átdolgozás törlését.',
	'LNK_NEW_MAIL_MERGE' => 'Mail egyesítés',
	'LBL_MAIL_MERGE_DOCUMENT' => 'Mail egyesítés sablon:',
	'ERR_MISSING_FILE' => 'Hiányzó fájl. A feltöltés sikertelen. Próbálja újra, vagy lépjen kapcsolatba az Adminisztrátorral.',

	'LBL_TREE_TITLE' => 'Dokumentumok',
	//sub-panel vardefs.
	'LBL_LIST_DOCUMENT_NAME'=>'Név',
	'LBL_CONTRACT_NAME'=>'Szerződés neve:',
	'LBL_LIST_IS_TEMPLATE'=>'Sablon?',
	'LBL_LIST_TEMPLATE_TYPE'=>'Dokumentum típusa',
	'LBL_LIST_SELECTED_REVISION'=>'Kiválasztott átdolgozás',
	'LBL_LIST_LATEST_REVISION'=>'Utolsó átdolgozás',
	'LBL_CONTRACTS_SUBPANEL_TITLE'=>'Kapcsolódó szerződések',
	'LBL_LAST_REV_CREATE_DATE'=>'Utolsó átdolgozás létrehozásának dátuma',
    //'LNK_DOCUMENT_CAT'=>'Document Categories',
    'LBL_CONTRACTS' => 'Szerződések',
    'LBL_CREATED_USER' => 'Létrehozó felhasználó',
    'LBL_THEREVISIONS_SUBPANEL_TITLE' => 'Átdolgozások',
    'LBL_DOCUMENT_INFORMATION' => 'Áttekintés',
	'LBL_DOC_ID' => 'Dokumentum forrás ID',
	'LBL_DOC_TYPE' => 'Forrás',
	'LBL_LIST_DOC_TYPE' => 'Forrás',
    'LBL_DOC_TYPE_POPUP' => 'Válassza ki a fájl felöltésének forrását<br> és ahonnan elérhető.',
	'LBL_DOC_URL' => 'Dokumentum forrás URL',
    'LBL_SEARCH_EXTERNAL_DOCUMENT' => 'Fájlnév',
    'LBL_EXTERNAL_DOCUMENT_NOTE' => 'Az utoljára módosított 20 fájl csökkenő sorrendben. Használja a keresést, ha más fájlt keres.',
    'LBL_LIST_EXT_DOCUMENT_NAME' => 'Fájlnév',
    'ERR_INVALID_EXTERNAL_API_ACCESS' => 'A felhasználó megpróbált belépni egy érvénytelen külső API-n ({0})',
    'ERR_INVALID_EXTERNAL_API_LOGIN' => 'A bejelentkezés sikertelen a külső API-n ({0})',

    // Links around the world
    'LBL_ACCOUNTS_SUBPANEL_TITLE' => 'Cégek',
    'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kapcsolatok',
    'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Lehetőségek',
    'LBL_CASES_SUBPANEL_TITLE' => 'Esetek',
    'LBL_BUGS_SUBPANEL_TITLE' => 'Hibák',
    'LBL_QUOTES_SUBPANEL_TITLE' => 'Ajánlatok',
	'LBL_PRODUCTS_SUBPANEL_TITLE' => 'Termékek',
);


?>
