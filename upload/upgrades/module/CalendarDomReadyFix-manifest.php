<?php
$manifest = array(
    'acceptable_sugar_versions' => array(
        'regex_matches' => array(
            0 => "6.5.*",
        ),
    ),
    'acceptable_sugar_flavors' => array(
        0 => 'CE',
    ),
    'name'                => 'CalendarDisintegrationPatch',
    'description'         => 'In Calendar Replace YAHOO.util.Event.onDOMReady to $(document).ready() because not triggered right time',
    'author'              => 'Kóbor Zsolt, Soulware Ltd.',
    'published_date'      => '2016/02/10',
    'version'             => '1.0.0',
    'type'                => 'module',
    'icon'                => '',
    'is_uninstallable' => true,
);
$installdefs = array(
    'id'=> 'CalendarDisintegrationPatch',
    'copy' => array(
        0 => array(
            'from' => '<basepath>/custom/modules/Calendar/tpls/main.tpl',
            'to' => 'custom/modules/Calendar/tpls/main.tpl',
        ),
    ),
);
