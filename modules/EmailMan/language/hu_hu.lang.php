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
	'LBL_SEND_DATE_TIME'						=> 'Küldés dátuma',
	'LBL_IN_QUEUE'								=> 'Folyamatban',
	'LBL_IN_QUEUE_DATE'							=> 'Sorba állítás dátuma',

	'ERR_INT_ONLY_EMAIL_PER_RUN'				=> 'A küldött emailek száma adagonként csak egész érték szám lehet.',

	'LBL_ATTACHMENT_AUDIT'						=> ' elküldve.  A helymegtakarítás miatt nem lett a helyi gépen mentve.',
	'LBL_CONFIGURE_SETTINGS'					=> 'Email beállítások konfigurálása',
	'LBL_CUSTOM_LOCATION'						=> 'Felhasználó meghatározva',
	'LBL_DEFAULT_LOCATION'						=> 'Alapértelmezett',
	
	'LBL_DISCLOSURE_TITLE'						=> 'Közzétételi üzenet mellékelése minden emailhez',
	'LBL_DISCLOSURE_TEXT_TITLE'					=> 'Tartalom közzététele',
	'LBL_DISCLOSURE_TEXT_SAMPLE'				=> 'Megjegyzés: Ez az üzenet kizárólag a címzett(ek)nek szól, mert bizalmas információkat tartalmazhat. A tartalom jogosulatlan felhasználása, közlése, terjesztése tilos. Ha Ön nem szerepel a címzettek között, kérem törölje a levelet és másolatait és értesítse a feladót a hibás kézbesítésről. Köszönöm.',
	
	'LBL_EMAIL_DEFAULT_CHARSET'					=> 'Email írása ezzel a karakterkészlettel',
	'LBL_EMAIL_DEFAULT_EDITOR'					=> 'Email írása ezzel a kiszolgálóval',
	'LBL_EMAIL_DEFAULT_DELETE_ATTACHMENTS'		=> 'Email törlése a kapcsolódó jegyzettek, mellékletekkel együtt',
	'LBL_EMAIL_GMAIL_DEFAULTS'					=> 'Gmail&#153; alapértékekt',
	'LBL_EMAIL_PER_RUN_REQ'						=> 'Küldött emailek száma adagonként:',
	'LBL_EMAIL_SMTP_SSL'						=> 'Enable SMTP over SSL?',
	'LBL_EMAIL_USER_TITLE'						=> 'Felhasználói email alapértékek',
	'LBL_EMAIL_OUTBOUND_CONFIGURATION'			=> 'Kimenő postafiók konfiguráció',
	'LBL_EMAILS_PER_RUN'						=> 'Küldött emailek száma adagonként:',
	'LBL_ID'									=> 'ID',
	'LBL_LIST_CAMPAIGN'							=> 'Kampány',
	'LBL_LIST_FORM_PROCESSED_TITLE'				=> 'Feldolgozott',
	'LBL_LIST_FORM_TITLE'						=> 'Sorban áll',
	'LBL_LIST_FROM_EMAIL'						=> 'Feladó',
	'LBL_LIST_FROM_NAME'						=> 'Feladó neve',
	'LBL_LIST_IN_QUEUE'							=> 'Folyamatban',
	'LBL_LIST_MESSAGE_NAME'						=> 'Marketing üzenet',
	'LBL_LIST_RECIPIENT_EMAIL'					=> 'Címzett email',
	'LBL_LIST_RECIPIENT_NAME'					=> 'Címzett neve',
	'LBL_LIST_SEND_ATTEMPTS'					=> 'Küldés',
	'LBL_LIST_SEND_DATE_TIME'					=> 'Küldés időpontja',
	'LBL_LIST_USER_NAME'						=> 'Felhasználónév',
	'LBL_LOCATION_ONLY'							=> 'Helyszín',
	'LBL_LOCATION_TRACK'						=> 'Kampány követési fájl helye (campaign_tracker.php)',
    'LBL_CAMP_MESSAGE_COPY'                     => 'Kampány üzenetek másolatai:',
    'LBL_CAMP_MESSAGE_COPY_DESC'                     => 'Szeretné tárolni az összes másolatot az email kampány üzenetekből <bold>EACH</bold>?  <bold> Ez nem ajánlott (alapértelmezett)</bold>. Ha ezt választja csak az elküldött üzenetek sablonjai és a különböző variációik kerülnek tárolásra, amik alapján újra létrehozhatóak az üzenetek.',
	'LBL_MAIL_SENDTYPE'							=> 'Mail átviteli ügynök:',
	'LBL_MAIL_SMTPAUTH_REQ'						=> 'SMTP Autentikáció használata:',
	'LBL_MAIL_SMTPPASS'							=> 'Jelszó:',
	'LBL_MAIL_SMTPPORT'							=> 'SMTP Port:',
	'LBL_MAIL_SMTPSERVER'						=> 'SMTP Mail Server:',
	'LBL_MAIL_SMTPUSER'							=> 'Felhasználónév:',
	'LBL_CHOOSE_EMAIL_PROVIDER'        => 'Email szolgáltató kiválasztása',
	'LBL_YAHOOMAIL_SMTPPASS'					=> 'Yahoo! Mail jelszó',
	'LBL_YAHOOMAIL_SMTPUSER'					=> 'Yahoo! Mail ID',
	'LBL_GMAIL_SMTPPASS'					=> 'Gmail jelszó',
	'LBL_GMAIL_SMTPUSER'					=> 'Gmail Email cím',
	'LBL_EXCHANGE_SMTPPASS'					=> 'Exchange jelszó',
	'LBL_EXCHANGE_SMTPUSER'					=> 'Exchange felhasználónév',
	'LBL_EXCHANGE_SMTPPORT'					=> 'Exchange Server Port',
	'LBL_EXCHANGE_SMTPSERVER'				=> 'Exchange Server',
	'LBL_EMAIL_LINK_TYPE'				=> 'Email kliens',
    'LBL_EMAIL_LINK_TYPE_HELP'			=> '<b>Sugar mail kliens:</b> A kliens, amely a Sugar-on keresztül folytatott levelezés kiszolgálója.<br><b>Külső mail kliens:</b> A kliens, amely a Sugar-on kívüli levelezés kiszolgálója, mint például a Microsoft Outlook.',
	'LBL_MARKETING_ID'							=> 'Marketing Id',
    'LBL_MODULE_ID'                             => 'EmailMan',
	'LBL_MODULE_NAME'							=> 'Email beállítások',
	'LBL_CONFIGURE_CAMPAIGN_EMAIL_SETTINGS'    => 'Kampány emailek beállítása',
	'LBL_MODULE_TITLE'							=> 'Kimenő email sorbaállítási menedzser',
	'LBL_NOTIFICATION_ON_DESC' 					=> 'Ha engedélyezve van, emaileket küld a felhasználóknak, mikor hozzárendelés történik.',
	'LBL_NOTIFY_FROMADDRESS' 					=> 'Feladó email címe:',
	'LBL_NOTIFY_FROMNAME' 						=> 'Feladó neve:',
	'LBL_NOTIFY_ON'								=> 'Hozzárendelési értesítések',
	'LBL_NOTIFY_SEND_BY_DEFAULT'				=> 'Értesítés küldése az új felhasználóknak',
	'LBL_NOTIFY_TITLE'							=> 'Email beállítások',
	'LBL_OLD_ID'								=> 'Régi Id',
	'LBL_OUTBOUND_EMAIL_TITLE'					=> 'Kimenő email beállítások',
	'LBL_RELATED_ID'							=> 'Kapcsolódó Id',
	'LBL_RELATED_TYPE'							=> 'Kapcsolódó típus',
	'LBL_SAVE_OUTBOUND_RAW'						=> 'Kimenő nyers emailek mentése',
	'LBL_SEARCH_FORM_PROCESSED_TITLE'			=> 'Feldolgozottak keresése',
	'LBL_SEARCH_FORM_TITLE'						=> 'Sorbaállítottak keresése',
	'LBL_VIEW_PROCESSED_EMAILS'					=> 'Feldolgozott emailek megtekintése',
	'LBL_VIEW_QUEUED_EMAILS'					=> 'Sorbaállított emailek megtekintése',
	'TRACKING_ENTRIES_LOCATION_DEFAULT_VALUE'	=> 'Config.php setting site_url értéke',
	'TXT_REMOVE_ME_ALT'							=> 'Eltávolítja önmagát erről az email listáról',
	'TXT_REMOVE_ME_CLICK'						=> 'kattintson ide',
	'TXT_REMOVE_ME'								=> 'Eltávolítja önmagát erről az email listáról ',
	'LBL_NOTIFY_SEND_FROM_ASSIGNING_USER'		=> 'Értesítés küldése a hozzárendelt felhasználó email címére',

	'LBL_SECURITY_TITLE'						=> 'Email biztonsági beállítások',
	'LBL_SECURITY_DESC'							=> 'Az alábbiaknak nem szabad a bejövő emailen keresztül mennie, vagy megjelennie az email modulban.',
	'LBL_SECURITY_APPLET'						=> 'Applet tag',
	'LBL_SECURITY_BASE'							=> 'Base tag',
	'LBL_SECURITY_EMBED'						=> 'Embed tag',
	'LBL_SECURITY_FORM'							=> 'Form tag',
	'LBL_SECURITY_FRAME'						=> 'Frame tag',
	'LBL_SECURITY_FRAMESET'						=> 'Frameset tag',
	'LBL_SECURITY_IFRAME'						=> 'iFrame tag',
	'LBL_SECURITY_IMPORT'						=> 'Import tag',
	'LBL_SECURITY_LAYER'						=> 'Layer tag',
	'LBL_SECURITY_LINK'							=> 'Link tag',
	'LBL_SECURITY_OBJECT'						=> 'Object tag',
	'LBL_SECURITY_OUTLOOK_DEFAULTS'				=> 'Outlook alapértelmezett minimum biztonsági beállítások kiválasztása (errs on the side of correct display).',
	'LBL_SECURITY_SCRIPT'						=> 'Script tag',
	'LBL_SECURITY_STYLE'						=> 'Style tag',
	'LBL_SECURITY_TOGGLE_ALL'					=> 'Toggle All Options',
	'LBL_SECURITY_XMP'							=> 'Xmp tag',
    'LBL_YES'                                   => 'Igen',
    'LBL_NO'                                    => 'Nem',
    'LBL_PREPEND_TEST'                          => '[Teszt]: ',
	'LBL_SEND_ATTEMPTS'							=> 'Proba küldése',
	'LBL_OUTGOING_SECTION_HELP'                 => 'Alapértelmezett kimenő mail szerver beállítása, email értesítések küldéséhez, beleértve a munkafolyamat figyelmeztetéseket.',
    'LBL_ALLOW_DEFAULT_SELECTION'               => 'Engedélyezi a felhasználóknak, hogy ezt a fiókot használják a kimenő emailekhez:',
    'LBL_ALLOW_DEFAULT_SELECTION_HELP'          => 'Ha ki van választva, az összes felhasználó küldhet kimenő emaileket<br> a postafiókkal, amely az értesítéseket és figyelmeztetéseket küldi. Ha nincs kiválasztva ez az opció, akkor a felhasználók a saját fiókjukat használják a kimenő levelek küldésére, feltéve ha rendelkeznek saját fiókkal.',
    'LBL_FROM_ADDRESS_HELP'                     => 'Ha engedélyezve van a hozzárendelt felhasználó neve és email címe megjelenik az email Feladó mezőjében. Ez a funkció nem működik együtt az SMTP szerverrel, így nincs lehetőség másik email postafiók használatára.',
	'LBL_GMAIL_LOGO' => 'Gmail' /*for 508 compliance fix*/,
	'LBL_YAHOO_MAIL_LOGO' => 'Yahoo Mail' /*for 508 compliance fix*/,
	'LBL_EXCHANGE_LOGO' => 'Exchange' /*for 508 compliance fix*/,
	'LBL_HELP' => 'Segítség' /*for 508 compliance fix*/,
);

?>
