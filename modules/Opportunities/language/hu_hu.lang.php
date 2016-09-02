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
  'LBL_MODULE_NAME' => 'Lehetőségek',
  'LBL_MODULE_TITLE' => 'Lehetőségek: Kezdőlap',
  'LBL_SEARCH_FORM_TITLE' => 'Lehetőség keresése',
  'LBL_VIEW_FORM_TITLE' => 'Lehetőség nézet',
  'LBL_LIST_FORM_TITLE' => 'Lehetőség lista',
  'LBL_OPPORTUNITY_NAME' => 'Lehetőség neve:',
  'LBL_OPPORTUNITY' => 'Lehetőség:',
  'LBL_NAME' => 'Lehetőség neve',
  'LBL_INVITEE' => 'Kapcsolatok',
  'LBL_CURRENCIES' => 'Pénznemek',
  'LBL_LIST_OPPORTUNITY_NAME' => 'Név',
  'LBL_LIST_ACCOUNT_NAME' => 'Cégnév',
  'LBL_LIST_AMOUNT' => 'Lehetőség összege',
  'LBL_LIST_AMOUNT_USDOLLAR' => 'Összeg',
  'LBL_LIST_DATE_CLOSED' => 'Bezár',
  'LBL_LIST_SALES_STAGE' => 'Értékesítési fázis',
  'LBL_ACCOUNT_ID'=>'Cég ID',
  'LBL_CURRENCY_ID'=>'Pénznem ID',
  'LBL_CURRENCY_NAME'=>'Pénznem név',
  'LBL_CURRENCY_SYMBOL'=>'Pénznem szimbólum',
//DON'T CONVERT THESE THEY ARE MAPPINGS
  'db_sales_stage' => 'LBL_LIST_SALES_STAGE',
  'db_name' => 'LBL_NAME',
  'db_amount' => 'LBL_LIST_AMOUNT',
  'db_date_closed' => 'LBL_LIST_DATE_CLOSED',
//END DON'T CONVERT
  'UPDATE' => 'Lehetőség-pénznem frissítése',
  'UPDATE_DOLLARAMOUNTS' => 'Összegek frissítése U.S. Dollárra',
  'UPDATE_VERIFY' => 'Összegek ellenőrzése',
  'UPDATE_VERIFY_TXT' => 'Ellenőrzi, hogy a Lehetőségeknél az összeg értékek érvényes decimális számokat, numerikus karatereket (0-9), illetve elválasztójelet (.) tartalmaznak.',
  'UPDATE_FIX' => 'Összegek javítása',
  'UPDATE_FIX_TXT' => 'Megpróbálja kijavítani az érvénytelen összegeket érvényes, decimális összegekre. Minden módosított összeg eltárolódik aamount_backup adatbázisban. Ha a javítás során hibák keletkeznek, nem futathatja ismét mentés nélkül a javítást, de úgy érvénytelen adatok kerülnek mentésre.',
  'UPDATE_DOLLARAMOUNTS_TXT' => 'Frissíti a Lehetőségek összegeit U.S. Dollárra, a beállított átváltási árfolyam alapján. Ezen értékek megjelennek a diagramokban és a Pénznem összegek listanézetében.',
  'UPDATE_CREATE_CURRENCY' => 'Új pénznem létrehozása:',
  'UPDATE_VERIFY_FAIL' => 'Az adatellenőrzés meghiúsult:',
  'UPDATE_VERIFY_CURAMOUNT' => 'Jelenlegi összeg:',
  'UPDATE_VERIFY_FIX' => 'Javítás futtatása esetén',
  'UPDATE_INCLUDE_CLOSE' => 'Beleértve a lezárt adatokat',
  'UPDATE_VERIFY_NEWAMOUNT' => 'Új összeg:',
  'UPDATE_VERIFY_NEWCURRENCY' => 'Új pénznem:',
  'UPDATE_DONE' => 'Kész',
  'UPDATE_BUG_COUNT' => 'Talált és javított hibák:',
  'UPDATE_BUGFOUND_COUNT' => 'Talált hibák:',
  'UPDATE_COUNT' => 'Frissített adatok:',
  'UPDATE_RESTORE_COUNT' => 'Összegek adatai eltárolva:',
  'UPDATE_RESTORE' => 'Összegek eltárolása',
  'UPDATE_RESTORE_TXT' => 'Összeg értékek eltárolása javítás közben.',
  'UPDATE_FAIL' => 'Nem frissíthető - ',
  'UPDATE_NULL_VALUE' => 'Ha nincs összeg 0 értéket kell megadni -',
  'UPDATE_MERGE' => 'Pénznemek egyesítése',
  'UPDATE_MERGE_TXT' => 'Több pénznem egyesítése egy pénznemmé. Egyesíthetőek, ha a pénznemek megegyeznek. Az egyesítés minden modulban érvényes lesz.',
  'LBL_ACCOUNT_NAME' => 'Cégnév:',
  'LBL_AMOUNT' => 'Lehetőség összege:',
  'LBL_AMOUNT_USDOLLAR' => 'Összeg:',
  'LBL_CURRENCY' => 'Pénznem:',
  'LBL_DATE_CLOSED' => 'Várható lezárás dátuma:',
  'LBL_TYPE' => 'Típus:',
  'LBL_CAMPAIGN' => 'Kampány:',
  'LBL_NEXT_STEP' => 'Következő lépés:',
  'LBL_LEAD_SOURCE' => 'Megkeresés forrása:',
  'LBL_SALES_STAGE' => 'Értékesítési fázis:',
  'LBL_PROBABILITY' => 'Valószínűség (%):',
  'LBL_DESCRIPTION' => 'Leírás:',
  'LBL_DUPLICATE' => 'Lehetséges Lehetőség duplikációk',
  'MSG_DUPLICATE' => 'A lehetőség, amelyet létre kíván hozni, lehet, hogy már létezik. A hasonló elnevezéseket tartalmazó lehetőségeket az alábbi listában találja.<br>Válassza a Mentés opciót, ha létre kívánja hozni az új Lehetőséget, avgy válassza a Mégse opciót, ha vissza kíván térni a modulhoz.',
  'LBL_NEW_FORM_TITLE' => 'Lehetőség létrehozása',
  'LNK_NEW_OPPORTUNITY' => 'Lehetőség létrehozása',
  'LNK_OPPORTUNITY_LIST' => 'Lehetőségek megtekintése',
  'ERR_DELETE_RECORD' => 'Adatszám megadása szükséges a lehetőség törléséhez.',
  'LBL_TOP_OPPORTUNITIES' => 'Top nyitott lehetőségeim',
  'NTC_REMOVE_OPP_CONFIRMATION' => 'Biztosan törölni szeretné a Kapcsolat és a Lehetőség relációját?',
	'OPPORTUNITY_REMOVE_PROJECT_CONFIRM' => 'Biztosan törölni szeretné a Projekt és a Lehetőség kapcsolatát?',
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Lehetőségek',
	'LBL_ACTIVITIES_SUBPANEL_TITLE'=>'Aktivitások',
	'LBL_HISTORY_SUBPANEL_TITLE'=>'Előzmény',
    'LBL_RAW_AMOUNT'=>'Alapösszeg',
	
    'LBL_LEADS_SUBPANEL_TITLE' => 'Megkeresések',
    'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kapcsolatok',
    'LBL_DOCUMENTS_SUBPANEL_TITLE' => 'Dokumentumok',
    'LBL_PROJECTS_SUBPANEL_TITLE' => 'Projektek',
	'LBL_ASSIGNED_TO_NAME' => 'Hozzárendelve:',
	'LBL_LIST_ASSIGNED_TO_NAME' => 'Hozzárendelt felhasználó',
  'LBL_LIST_SALES_STAGE' => 'Értékesítési fázis',
  'LBL_MY_CLOSED_OPPORTUNITIES' => 'Lezárt lehetőségeim',
  'LBL_TOTAL_OPPORTUNITIES' => 'Összes lehetőség',
  'LBL_CLOSED_WON_OPPORTUNITIES' => 'Megnyert lehetőségek',
  'LBL_ASSIGNED_TO_ID' =>'Hozzárendelt felhasználó:',
  'LBL_CREATED_ID'=>'Létrehozó ID',
  'LBL_MODIFIED_ID'=>'Módosító ID',
  'LBL_MODIFIED_NAME'=>'Módosító felhasználó',
    'LBL_CREATED_USER' => 'Létrehozott felhasználó',
    'LBL_MODIFIED_USER' => 'Módosított felhasználó',
  'LBL_CAMPAIGN_OPPORTUNITY' => 'Kampányok',
  'LBL_PROJECT_SUBPANEL_TITLE' => 'Projektek',
  'LABEL_PANEL_ASSIGNMENT' => 'Besorolás',
  'LNK_IMPORT_OPPORTUNITIES' => 'Lehetőségek importálása',
  'LBL_EDITLAYOUT' => 'Elrendezés szerkesztése' /*for 508 compliance fix*/,
  //For export labels
    'LBL_EXPORT_CAMPAIGN_ID' => 'Kampány ID',
    'LBL_OPPORTUNITY_TYPE' => 'Lehetőség típus',
    'LBL_EXPORT_ASSIGNED_USER_NAME' => 'Hozzárendelt felhasználó neve',
    'LBL_EXPORT_ASSIGNED_USER_ID' => 'Hozzárendelt felhasználó ID',
    'LBL_EXPORT_MODIFIED_USER_ID' => 'Módosító ID',
    'LBL_EXPORT_CREATED_BY' => 'Létrehozó ID',
    'LBL_EXPORT_NAME'=>'Név',

  // SNIP
  'LBL_CONTACT_HISTORY_SUBPANEL_TITLE' => 'Kapcsolódó Kapcsolatok emailei',
);

?>
