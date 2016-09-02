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

 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/

$mod_strings = array (
	//module
	'LBL_MODULE_NAME' => 'Dokumentumok',
	'LBL_MODULE_TITLE' => 'Dokumentumok: Kezdőlap',
	'LNK_NEW_DOCUMENT' => 'Dokumentum létrehozása',
	'LNK_DOCUMENT_LIST'=> 'Dokumentum lista',
	'LBL_SEARCH_FORM_TITLE'=> 'Dokumentum keresése',
	//vardef labels
	'LBL_DOCUMENT_ID' => 'Dokumentum ID',
	'LBL_NAME' => 'Dokumentum neve',
	'LBL_DESCRIPTION' => 'Leírás',
	'LBL_ASSIGNED_TO' => 'Hozzárendelve:',
	'LBL_CATEGORY' => 'Kategória',
	'LBL_SUBCATEGORY' => 'Alkategória',
	'LBL_STATUS' => 'Állapot',
	'LBL_IS_TEMPLATE'=>'Egy sablon',
	'LBL_TEMPLATE_TYPE'=>'Dokomentum típus',
	'LBL_REVISION_NAME' => 'Átdolgozás száma',
	'LBL_MIME' => 'Mime Type',
	'LBL_REVISION' => 'Átdolgozás',
	'LBL_DOCUMENT' => 'Kapcsolódó dokumentumok',
	'LBL_LATEST_REVISION' => 'Utolsó átdolgozás',
	'LBL_CHANGE_LOG'=> 'Változási napló',
	'LBL_ACTIVE_DATE'=> 'Közzététel dátuma',
	'LBL_EXPIRATION_DATE' => 'Lejárat dátuma',
	'LBL_FILE_EXTENSION'  => 'Fájlkiterjesztés',

	'LBL_CAT_OR_SUBCAT_UNSPEC'=>'Nincs megadva',
	//quick search
	'LBL_NEW_FORM_TITLE' => 'Új dokumentum',
	//document edit and detail view
	'LBL_DOC_NAME' => 'Dokumentum neve:',
	'LBL_FILENAME' => 'Fájlnév:',
	'LBL_FILE_UPLOAD' => 'Fájl:',
	'LBL_DOC_VERSION' => 'Átdolgozás:',
	'LBL_CATEGORY_VALUE' => 'Kategória:',
	'LBL_SUBCATEGORY_VALUE'=> 'Alkategória:',
	'LBL_DOC_STATUS'=> 'Állapot:',
	'LBL_DET_TEMPLATE_TYPE'=>'Dokumentum típus:',
	'LBL_DOC_DESCRIPTION'=>'Leírás:',
	'LBL_DOC_ACTIVE_DATE'=> 'Közzététel dátuma:',
	'LBL_DOC_EXP_DATE'=> 'Lejárat dátuma:',

	//document list view.
	'LBL_LIST_FORM_TITLE' => 'Dokuemntum lista',
	'LBL_LIST_DOCUMENT' => 'Dokumentum',
	'LBL_LIST_CATEGORY' => 'Kategória',
	'LBL_LIST_SUBCATEGORY' => 'Alkategória',
	'LBL_LIST_REVISION' => 'Átdolgozás',
	'LBL_LIST_LAST_REV_CREATOR' => 'Közzétevő',
	'LBL_LIST_LAST_REV_DATE' => 'Átdolgozás dátuma',
	'LBL_LIST_VIEW_DOCUMENT'=>'Nézet',
	'LBL_LIST_DOWNLOAD'=> 'Letöltés',
	'LBL_LIST_ACTIVE_DATE' => 'Közzététel dátuma',
	'LBL_LIST_EXP_DATE' => 'Lejárat dátuma',
	'LBL_LIST_STATUS'=>'Állapot',

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

	'LBL_TREE_TITLE' => 'Dokumentumok',
	//sub-panel vardefs.
	'LBL_LIST_DOCUMENT_NAME'=>'Dokumentum neve',
);


?>
