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
  'LBL_MODULE_NAME' => 'Értékesítés',
  'LBL_MODULE_TITLE' => 'Értékesítés: Kezdőlap',
  'LBL_SEARCH_FORM_TITLE' => 'Értékesítés keresés',
  'LBL_VIEW_FORM_TITLE' => 'Értékesítés nézet',
  'LBL_LIST_FORM_TITLE' => 'Értékesítés lista',
  'LBL_SALE_NAME' => 'Értékesítés neve:',
  'LBL_SALE' => 'Értékesítés:',
  'LBL_NAME' => 'Értékesítés neve',
  'LBL_LIST_SALE_NAME' => 'Név',
  'LBL_LIST_ACCOUNT_NAME' => 'Cégnév',
  'LBL_LIST_AMOUNT' => 'Összeg',
  'LBL_LIST_DATE_CLOSED' => 'Lezárás dátuma',
  'LBL_LIST_SALE_STAGE' => 'Értékesítési fázis',
  'LBL_ACCOUNT_ID'=>'Cég ID',
   'LBL_CURRENCY_ID'=>'Pénznem ID',
//DON'T CONVERT THESE THEY ARE MAPPINGS
  'db_sales_stage' => 'LBL_LIST_SALES_STAGE',
  'db_name' => 'LBL_NAME',
  'db_amount' => 'LBL_LIST_AMOUNT',
  'db_date_closed' => 'LBL_LIST_DATE_CLOSED',
//END DON'T CONVERT
  'UPDATE' => 'Értékesítés - pénznem frissítés',
  'UPDATE_DOLLARAMOUNTS' => 'U.S. Dollár Összegek frissítése',
  'UPDATE_VERIFY' => 'Összeg megerősítése',
  'UPDATE_VERIFY_TXT' => 'Az Összeg mezőben csak decimális számok, numerikus karakterek (0-9) és tizedespont (.) szerepelhet.',
  'UPDATE_FIX' => 'Összeg javítása',
  'UPDATE_FIX_TXT' => 'Az érvénytelen Összeg kijavításra kerül. Minden módosított Összeg eltárolódik az amount_backup adatbázisban. Ha végrehajtja a műveletet lehetséges, hogy érvénytelen adat kerül az adatbázisba és nem tudja visszaállítani mentésből.',
  'UPDATE_DOLLARAMOUNTS_TXT' => 'Frissíti az U.S. Dollár Értékesítési Összegeket az érvényes valutaárfolyammal. A Grafikonok és a Listanézeti Összegek ezen értékek alapján kerülnek kiszámításra.',
  'UPDATE_CREATE_CURRENCY' => 'Új pénznem létrehozása:',
  'UPDATE_VERIFY_FAIL' => 'Adatellenőrzés sikertelen:',
  'UPDATE_VERIFY_CURAMOUNT' => 'Aktuális összeg:',
  'UPDATE_VERIFY_FIX' => 'Javítás futtatása',
  'UPDATE_INCLUDE_CLOSE' => 'Lezárt adatokat beleértve',
  'UPDATE_VERIFY_NEWAMOUNT' => 'Új összeg:',
  'UPDATE_VERIFY_NEWCURRENCY' => 'Új pénznem:',
  'UPDATE_DONE' => 'Kész',
  'UPDATE_BUG_COUNT' => 'Talált hibák és megkísérelt javításuk:',
  'UPDATE_BUGFOUND_COUNT' => 'Talált hibák:',
  'UPDATE_COUNT' => 'Frissített adatok:',
  'UPDATE_RESTORE_COUNT' => 'Összeg adatok visszaállítva:',
  'UPDATE_RESTORE' => 'Összeges visszaállítása',
  'UPDATE_RESTORE_TXT' => 'Összegek helyreállítása a mentés során létrehozott javítással.',
  'UPDATE_FAIL' => 'Nem frissíthető - ',
  'UPDATE_NULL_VALUE' => 'Nulla érték esetén a 0 karakter használatos.',
  'UPDATE_MERGE' => 'Pénznemek egyesítése',
  'UPDATE_MERGE_TXT' => 'Több pénznem egyesítése egy pénznemmé. Az egyesítés akkor lehetséges, ha a pénznemek megegyeznek. Az egyesítés kihat más modulokra is.',
  'LBL_ACCOUNT_NAME' => 'Cégnév:',
  'LBL_AMOUNT' => 'Összeg:',
  'LBL_AMOUNT_USDOLLAR' => 'Összeg USD:',
  'LBL_CURRENCY' => 'Pénznem:',
  'LBL_DATE_CLOSED' => 'Lezárás várható dátuma:',
  'LBL_TYPE' => 'Típus:',
  'LBL_CAMPAIGN' => 'Kampány:',
  'LBL_LEADS_SUBPANEL_TITLE' => 'Megkeresések',
  'LBL_PROJECTS_SUBPANEL_TITLE' => 'Projektek',  
  'LBL_NEXT_STEP' => 'Következő lépés:',
  'LBL_LEAD_SOURCE' => 'Megkeresés forrása:',
  'LBL_SALES_STAGE' => 'Értékesítési fázis:',
  'LBL_PROBABILITY' => 'Valószínűség (%):',
  'LBL_DESCRIPTION' => 'Leírás:',
  'LBL_DUPLICATE' => 'Lehetséges duplikáció',
  'MSG_DUPLICATE' => 'Az Értékesítési adat létrehozása duplikációt eredményezhet.  The Sale record you are about to create might be a duplicate of a sale record that already exists. A hasonló neveket tartalmazó adatok az alábbi listában vannak felsorolva.<br>Válassza a Mentés és folytatás opciót, ha létre kívánja hozni az új Értékesítést, vagy válassza a mégse opciót, ha nem.',
  'LBL_NEW_FORM_TITLE' => 'Értékesítés létrehozása',
  'LNK_NEW_SALE' => 'Értékesítés létrehozása',
  'LNK_SALE_LIST' => 'Értékesítés',
  'ERR_DELETE_RECORD' => 'Adatszám szükséges az Értékesítés törléséhez.',
  'LBL_TOP_SALES' => 'Top Értékesítések',
  'NTC_REMOVE_OPP_CONFIRMATION' => 'Biztosan el szeretni távolítani a Kapcsolat és az Értékesítés közti relációt?',
	'SALE_REMOVE_PROJECT_CONFIRM' => 'Biztosan el szeretni távolítani a Projekt és az Értékesítés közti relációt?',
	'LBL_DEFAULT_SUBPANEL_TITLE' => 'Értékesítés',
	'LBL_ACTIVITIES_SUBPANEL_TITLE'=>'Aktivitások',
	'LBL_HISTORY_SUBPANEL_TITLE'=>'Előzmény',
    'LBL_RAW_AMOUNT'=>'Nyers Összeg',


    'LBL_CONTACTS_SUBPANEL_TITLE' => 'Kapcsolatok',
	'LBL_ASSIGNED_TO_NAME' => 'Felhasználó:',
	'LBL_LIST_ASSIGNED_TO_NAME' => 'Hozzárendelt felhasználó',
  'LBL_MY_CLOSED_SALES' => 'Lezárt értékesítéseim',
  'LBL_TOTAL_SALES' => 'Összes értékesítés',
  'LBL_CLOSED_WON_SALES' => 'Megnyert értékesítések',
  'LBL_ASSIGNED_TO_ID' =>'Hozzárendelve ID-hoz',
  'LBL_CREATED_ID'=>'Létrehozó ID',
  'LBL_MODIFIED_ID'=>'Módosító ID',
  'LBL_MODIFIED_NAME'=>'Módosító felhasználó',
  'LBL_SALE_INFORMATION'=>'Értékesítés info',
  'LBL_CURRENCY_ID'=>'Pénznem ID',
  'LBL_CURRENCY_NAME'=>'Pénznem név',
  'LBL_CURRENCY_SYMBOL'=>'Pénznem szimbólum',

);

?>
