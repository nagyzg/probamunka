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
    //DON'T CONVERT THESE THEY ARE MAPPINGS
    'db_last_name' => 'LBL_LIST_LAST_NAME',
    'db_first_name' => 'LBL_LIST_FIRST_NAME',
    'db_title' => 'LBL_LIST_TITLE',
    'db_email1' => 'LBL_LIST_EMAIL_ADDRESS',
    'db_email2' => 'LBL_LIST_OTHER_EMAIL_ADDRESS',
    //END DON'T CONVERT
    'ERR_DELETE_RECORD' => 'Adatszám megadása szükséges a törléshez.',
    'LBL_ACCOUNT_ID' => 'Cég ID:',
    'LBL_ACCOUNT_NAME' => 'Cégnév:',
    'LBL_CAMPAIGN'     => 'Kampány:',
    'LBL_ACTIVITIES_SUBPANEL_TITLE'=>'Aktivitások',
    'LBL_ADD_BUSINESSCARD' => 'Névjegy bevitele',
    'LBL_ADDMORE_BUSINESSCARD' => 'További névjegy hozzáadása',
    'LBL_ADDRESS_INFORMATION' => 'Cím info',
    'LBL_ALT_ADDRESS_CITY' => 'Alternatív cím, város:',
    'LBL_ALT_ADDRESS_COUNTRY' => 'Alternatív cím, ország:',
    'LBL_ALT_ADDRESS_POSTALCODE' => 'Alternatív cím, irányítószám:',
    'LBL_ALT_ADDRESS_STATE' => 'Alternatív cím, állam:',
    'LBL_ALT_ADDRESS_STREET_2' => 'Alternatív cím 2:',
    'LBL_ALT_ADDRESS_STREET_3' => 'Alternatív cím 3:',
    'LBL_ALT_ADDRESS_STREET' => 'Alternatív cím:',
    'LBL_ALTERNATE_ADDRESS' => 'Egyéb cím:',
    'LBL_ALT_ADDRESS' => 'Egyéb cím:',
    'LBL_ANY_ADDRESS' => 'Más cím:',
    'LBL_ANY_EMAIL' => 'Más Email:',
    'LBL_ANY_PHONE' => 'Más telefon:',
    'LBL_ASSIGNED_TO_NAME' => 'Hozzárendelve:',
    'LBL_ASSIGNED_TO_ID' => 'Hozzárendelt felhasználó',
    'LBL_ASSISTANT_PHONE' => 'Asszisztens telefon:',
    'LBL_ASSISTANT' => 'Asszisztens:',
    'LBL_BIRTHDATE' => 'Születésnap:',
    'LBL_BUSINESSCARD' => 'Névjegy',
    'LBL_CITY' => 'Város:',
    'LBL_CAMPAIGN_ID' => 'Kampány ID',
    'LBL_CONTACT_INFORMATION' => 'Áttekintés',
    'LBL_CONTACT_NAME' => 'Kapcsolat neve:',
    'LBL_CONTACT_OPP_FORM_TITLE' => 'Kapcsolat-lehetőség:',
    'LBL_CONTACT_ROLE' => 'Szerepkör:',
    'LBL_CONTACT' => 'Kapcsolat:',
    'LBL_COUNTRY' => 'Ország:',
    'LBL_CREATED_ACCOUNT' => 'Új cég létrehozva',
    'LBL_CREATED_CALL' => 'Új hívás létrehozva',
    'LBL_CREATED_CONTACT' => 'Új kapcsolat létrehozva',
    'LBL_CREATED_MEETING' => 'Új találkozó létrehozva',
    'LBL_CREATED_OPPORTUNITY' =>'Új lehetőség létrehozva',
    'LBL_DATE_MODIFIED' => 'Módosítás dátuma:',
    'LBL_DEFAULT_SUBPANEL_TITLE' => 'Kapcsolatok',
    'LBL_DEPARTMENT' => 'Részleg:',
    'LBL_DESCRIPTION_INFORMATION' => 'Leíró info',
    'LBL_DESCRIPTION' => 'Leírás:',
    'LBL_DIRECT_REPORTS_SUBPANEL_TITLE'=>'Közvetlen riportok',
    'LBL_DO_NOT_CALL' => 'Nem hívható:',
    'LBL_DUPLICATE' => 'Lehetséges duplikált Kapcsolatok',
    'LBL_EMAIL_ADDRESS' => 'Email:',
    'LBL_EMAIL_OPT_OUT' => 'Leíratkozott Email:',
    'LBL_EMPTY_VCARD' => 'Kérem válassza ki a vCard fájlt',
    'LBL_EXISTING_ACCOUNT' => 'Meglévő cég használata',
    'LBL_EXISTING_CONTACT' => 'Meglévő kapcsolat használata',
    'LBL_EXISTING_OPPORTUNITY'=> 'Meglévő lehetőség használata',
    'LBL_FAX_PHONE' => 'Fax:',
    'LBL_FIRST_NAME' => 'Keresztnév:',
    'LBL_FULL_NAME' => 'Teljes név:',
    'LBL_HISTORY_SUBPANEL_TITLE'=>'Előzmények',
    'LBL_HOME_PHONE' => 'Kezdőlap:',
    'LBL_ID' => 'ID:',
    'LBL_IMPORT_VCARD' => 'Import vCard',
    'LBL_VCARD' => 'vCard',
    'LBL_IMPORT_VCARDTEXT' => 'Új Kapcsolat automatikus létrehozása vCard importálása esetén.',
    'LBL_INVALID_EMAIL'=>'Érvénytelen Email:',
    'LBL_INVITEE' => 'Közvetlen riportok',
    'LBL_LAST_NAME' => 'Vezetéknév:',
    'LBL_LEAD_SOURCE' => 'Megkeresés forrása:',
    'LBL_LIST_ACCEPT_STATUS' => 'Elfogadás állapota',
    'LBL_LIST_ACCOUNT_NAME' => 'Cégnév',
    'LBL_LIST_CONTACT_NAME' => 'Kapcsolat neve',
    'LBL_LIST_CONTACT_ROLE' => 'Szerepkör',
    'LBL_LIST_EMAIL_ADDRESS' => 'Email',
    'LBL_LIST_FIRST_NAME' => 'Keresztnév',
    'LBL_LIST_FORM_TITLE' => 'Kapcsolat lista',
    'LBL_VIEW_FORM_TITLE' => 'Kapcsolat nézet',
    'LBL_LIST_LAST_NAME' => 'Vezetéknév',
    'LBL_LIST_NAME' => 'Név',
    'LBL_LIST_OTHER_EMAIL_ADDRESS' => 'Egyéb Email',
    'LBL_LIST_PHONE' => 'Irodai telefon',
    'LBL_LIST_TITLE' => 'Beosztás',
    'LBL_MOBILE_PHONE' => 'Mobil:',
    'LBL_MODIFIED' => 'Módosító:',
    'LBL_MODULE_NAME' => 'Kapcsolatok',
    'LBL_MODULE_TITLE' => 'Kapcsolatok: Kezdőlap',
    'LBL_NAME' => 'Név:',
    'LBL_NEW_FORM_TITLE' => 'Új Kapcsolat',
    'LBL_NEW_PORTAL_PASSWORD' => 'Új portál jelszó:',
    'LBL_NOTE_SUBJECT' =>'Jegyzet tárgya',
    'LBL_OFFICE_PHONE' => 'Irodai telefon:',
    'LBL_OPP_NAME' => 'Lehetőség neve:',
    'LBL_OPPORTUNITY_ROLE_ID'=>'Lehetőség szerepkör ID:',
    'LBL_OPPORTUNITY_ROLE'=>'Lehetőség szerepkör',
    'LBL_OTHER_EMAIL_ADDRESS' => 'Egyéb Email:',
    'LBL_OTHER_PHONE' => 'Egyéb telefon:',
    'LBL_PHONE' => 'Telefon:',
    'LBL_PORTAL_ACTIVE' => 'Portál Aktív:',
    'LBL_PORTAL_APP'=>'Portál alkalmazás:',
    'LBL_PORTAL_INFORMATION' => 'Portál info',
    'LBL_PORTAL_NAME' => 'Portál név:',
    'LBL_PORTAL_PASSWORD_ISSET' => 'Portal jelszó beállítva:',
    'LBL_STREET' => 'Utca',
    'LBL_POSTAL_CODE' => 'Irányítószám:',
    'LBL_PRIMARY_ADDRESS_CITY' => 'Elsődleges cím, város:',
    'LBL_PRIMARY_ADDRESS_COUNTRY' => 'Elsődleges cím, ország:',
    'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'Elsődleges cím, irányítószám:',
    'LBL_PRIMARY_ADDRESS_STATE' => 'Elsődleges cím, állam:',
    'LBL_PRIMARY_ADDRESS_STREET_2' => 'Elsődleges cím 2:',
    'LBL_PRIMARY_ADDRESS_STREET_3' => 'Elsődleges cím 3:',
    'LBL_PRIMARY_ADDRESS_STREET' => 'Elsődleges cím:',
    'LBL_PRIMARY_ADDRESS' => 'Elsődleges cím:',
    'LBL_PRODUCTS_TITLE'=>'Termékek',
    'LBL_RELATED_CONTACTS_TITLE'=>'Kapcsolódó Kapcsolatok',
    'LBL_REPORTS_TO_ID'=>'Jelentést tesz ID:',
    'LBL_REPORTS_TO' => 'Jelentést tesz:',
    'LBL_RESOURCE_NAME' => 'Forrás neve',
    'LBL_SALUTATION' => 'Megszólítás:',
    'LBL_SAVE_CONTACT' => 'Kapcsolat mentése',
    'LBL_SEARCH_FORM_TITLE' => 'Kapcsolat keresése',
    'LBL_SELECT_CHECKED_BUTTON_LABEL' => 'Megjelölt kapcsolatok kiválasztása',
    'LBL_SELECT_CHECKED_BUTTON_TITLE' => 'Megjelölt kapcsolatok kiválasztása',
    'LBL_STATE' => 'Állam:',
    'LBL_SYNC_CONTACT' => 'Sync to Outlook&reg;:',
    'LBL_PROSPECT_LIST' => 'Célpont lista',
    'LBL_TITLE' => 'Beosztás:',
    'LNK_CONTACT_LIST' => 'Kapcsolatok megtekintése',
    'LNK_IMPORT_VCARD' => 'Kapcsolat létrehozása vCard-ból',
    'LNK_NEW_ACCOUNT' => 'Cég létrehozása',
    'LNK_NEW_APPOINTMENT' => 'Megbeszélés létrehozása',
    'LNK_NEW_CALL' => 'Hívás rögzítése',
    'LNK_NEW_CASE' => 'Eset létrehozása',
    'LNK_NEW_CONTACT' => 'Kapcsolat létrehozása',
    'LNK_NEW_EMAIL' => 'Email archiválása',
    'LNK_NEW_MEETING' => 'Találkozó ütemezése',
    'LNK_NEW_NOTE' => 'Jegyzet létrehozása',
    'LNK_NEW_OPPORTUNITY' => 'Lehetőség létrehozása',
    'LNK_NEW_TASK' => 'Feladat létrehozása',
    'LNK_SELECT_ACCOUNT' => "Cég kiválasztása",
	'MSG_DUPLICATE' => 'A kapcsolat, amelyet létre kíván hozni, lehet, hogy már létezik. A hasonló elnevezéseket tartalmazó kapcsolatokat az alábbi listában találja.<br>Válassza a Mentés opciót, ha létre kívánja hozni az új Kapcsoaltot, vagy válassza ki a használni kívánt kapcsolatot az alábbi listából.',
	'MSG_SHOW_DUPLICATES' => 'A lehetőség, amelyet létre kíván hozni, lehet, hogy már létezik. A hasonló elnevezéseket tartalmazó lehetőségeket az alábbi listában találja.<br>Válassza a Mentés opciót, ha létre kívánja hozni az új Lehetőséget, avgy válassza a Mégse opciót, ha vissza kíván térni a modulhoz.',
    'NTC_COPY_ALTERNATE_ADDRESS' => 'Alternatív cím másolása az elsődleges címbe',
    'NTC_COPY_PRIMARY_ADDRESS' => 'Elsődleges cím másolása az alternatív címbe',
    'NTC_DELETE_CONFIRMATION' => 'Biztosan törölni szeretné az adatot?',
    'NTC_OPPORTUNITY_REQUIRES_ACCOUNT' => 'Lehetőség hozzáadásához Cég megjelölése szükséges.\n Kérem hozzon létre céget, vagy válasszon a meglévők közül.',
    'NTC_REMOVE_CONFIRMATION' => 'Biztosan törölni szeretné a Kapcsolat és az Eset relációját?',
    'NTC_REMOVE_DIRECT_REPORT_CONFIRMATION' => 'Biztosan el szeretné távolítani az adatok a közvetlen riportból?',

	'LBL_USER_PASSWORD' => 'Jelszó:',

	'LBL_LEADS_SUBPANEL_TITLE' => 'Megkeresések',
	'LBL_OPPORTUNITIES_SUBPANEL_TITLE' => 'Lehetőségek',
	'LBL_DOCUMENTS_SUBPANEL_TITLE' => 'Dokumentumok',
	'LBL_COPY_ADDRESS_CHECKED_PRIMARY' => 'Másolás az elsődleges címbe',
	'LBL_COPY_ADDRESS_CHECKED_ALT' => 'Másolás egyéb címbe',

	'LBL_CASES_SUBPANEL_TITLE' => 'Esetek',
	'LBL_BUGS_SUBPANEL_TITLE' => 'Hibák',
	'LBL_PROJECTS_SUBPANEL_TITLE' => 'Projektek',
    'LBL_PROJECTS_RESOURCES' => 'Projekt erőforrások',
	'LBL_TARGET_OF_CAMPAIGNS' => 'Kampányok célpontja :',
	'LBL_CAMPAIGNS'	=>	'Kampányok',
	'LBL_CAMPAIGN_LIST_SUBPANEL_TITLE'=>'Kampányok',
	'LBL_LIST_CITY' => 'Város',
	'LBL_LIST_STATE' => 'Állam',
	'LBL_HOMEPAGE_TITLE' => 'Kapcsolataim',
    'LBL_OPPORTUNITIES' => 'Lehetőségek',

	'LBL_CHECKOUT_DATE'=>'Lefoglalás dátuma',
    'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kapcsolatok',
    'LBL_PROJECT_SUBPANEL_TITLE' => 'Projektek',
    'LBL_CAMPAIGNS_SUBPANEL_TITLE' => 'Kampányok',
    'LNK_IMPORT_CONTACTS' => 'Kapcsolatok importálása',

    //For export labels
    'LBL_PHONE_HOME' => 'Otthoni telefon',
    'LBL_PHONE_MOBILE' => 'Mobil',
    'LBL_PHONE_WORK' => 'Irodai telefon',
    'LBL_PHONE_OTHER' => 'Egyéb telefon',
    'LBL_PHONE_FAX' => 'Fax',
    'LBL_CAMPAIGN_ID' => 'Kampány ID',

    'LBL_EXPORT_ASSIGNED_USER_NAME' => 'Hozzárendelt felhasználó',
    'LBL_EXPORT_ASSIGNED_USER_ID' => 'Hozzárendelt felhasználó ID',
    'LBL_EXPORT_MODIFIED_USER_ID' => 'Módosító ID',
    'LBL_EXPORT_CREATED_BY' => 'Létrehozó ID',
    'LBL_EXPORT_PHONE_HOME' => 'Otthoni telefon',
    'LBL_EXPORT_PHONE_MOBILE' => 'Mobil',
    // SNIP
    'LBL_CONTACT_HISTORY_SUBPANEL_TITLE' => 'Kapcsolódó Kapcsolatok emailei',
    'LBL_USER_SYNC' => 'User Sync'
)
?>
