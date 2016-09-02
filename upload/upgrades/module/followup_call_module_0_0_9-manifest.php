<?php

/* * *******************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * ****************************************************************************** */

$manifest = array(
    0 =>
    array(
        'acceptable_sugar_versions' => array(
            'regex_matches' => array(
                0 => "5.0.*",
                1 => "5.1.*",
                2 => "5.2.*",
                3 => "5.5.*",
                4 => "6.4.*",
                5 => "6.5.*",
            ),
        ),
    ),
    1 =>
    array(
        'acceptable_sugar_flavors' =>
        array(
            0 => 'CE',
        ),
    ),
    'name' => 'followup_call',
    'description' => 'Followup Call module',
    'published_date' => '2016-06-04 09:00:00',
    'version' => '0.0.9',
    'author' => 'piri.tibor@soulware.hu',
    'type' => 'module',
    'is_uninstallable' => true,
);


$installdefs = array(
    'id' => 'followup_call',
    'copy' =>
    array(
        0 =>
        array(
            'from' => '<basepath>/modules/',
            'to' => 'modules/',
        ),
        1 =>
        array(
            'from' => '<basepath>/custom/',
            'to' => 'custom/',
        ),
    ),
    'language' =>
    array(
        0 =>
        array(
            'from' => '<basepath>/custom/Extension/application/Ext/Language/en_us.call_full_form_button.php',
            'to_module' => 'application',
            'language' => 'en_us',
        ),
        1 =>
        array(
            'from' => '<basepath>/custom/Extension/application/Ext/Language/hu_hu.call_full_form_button.php',
            'to_module' => 'application',
            'language' => 'hu_hu',
        ),
        2 =>
        array(
            'from' => '<basepath>/custom/Extension/application/Ext/Language/en_us.call_followup_period_list.php',
            'to_module' => 'application',
            'language' => 'en_us',
        ),
        3 =>
        array(
            'from' => '<basepath>/custom/Extension/application/Ext/Language/hu_hu.call_followup_period_list.php',
            'to_module' => 'application',
            'language' => 'hu_hu',
        ),
        4 =>
        array(
            'from' => '<basepath>/custom/Extension/application/Ext/Language/en_us.call_followup_type_list.php',
            'to_module' => 'application',
            'language' => 'en_us',
        ),
        5 =>
        array(
            'from' => '<basepath>/custom/Extension/application/Ext/Language/hu_hu.call_followup_type_list.php',
            'to_module' => 'application',
            'language' => 'hu_hu',
        ),
        6 =>
        array(
            'from' => '<basepath>/custom/Extension/modules/Calls/Ext/Language/en_us.call_followup.php',
            'to_module' => 'Calls',
            'language' => 'en_us',
        ),
        7 =>
        array(
            'from' => '<basepath>/custom/Extension/modules/Calls/Ext/Language/hu_hu.call_followup.php',
            'to_module' => 'Calls',
            'language' => 'hu_hu',
        ),
        8 =>
        array(
            'from' => '<basepath>/custom/modules/Calls/language/hu_hu.lang.php',
            'to_module' => 'Calls',
            'language' => 'hu_hu',
        ),
    ),
);
