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
    'name'                => 'CalendarAddTaskFeature',
    'description'         => 'You can add, edit, delete task on Calendar view, and Calendar disintegration patch',
    'author'              => 'Kóbor Zsolt, Soulware Ltd.',
    'published_date'      => '2016/02/12',
    'version'             => '1.0.0',
    'type'                => 'module',
    'icon'                => '',
    'is_uninstallable' => true,
);
$installdefs = array(
    'id'=> 'CalendarAddTaskFeature',
    'copy' => array(
        0 => array(
            'from' => '<basepath>/custom/modules/Calendar/tpls/main.tpl',
            'to' => 'custom/modules/Calendar/tpls/main.tpl',
        ),
        1 => array(
            'from' => '<basepath>/custom/modules/Calendar/tpls/form.tpl',
            'to' => 'custom/modules/Calendar/tpls/form.tpl',
        ),
        2 => array(
            'from' => '<basepath>/custom/modules/Calendar/Cal.js',
            'to' => 'custom/modules/Calendar/Cal.js',
        ),
        3 => array(
            'from' => '<basepath>/custom/modules/Meetings/jsclass_scheduler.js',
            'to' => 'custom/modules/Meetings/jsclass_scheduler.js',
        ),
        4 => array(
            'from' => '<basepath>/custom/modules/Calendar/controller.php',
            'to' => 'custom/modules/Calendar/controller.php',
        ),
        5 => array(
            'from' => '<basepath>/custom/Extension/modules/Calendar/Ext/Language/en_us.add_task.php',
            'to' => 'custom/Extension/modules/Calendar/Ext/Language/en_us.add_task.php',
        ),
        6 => array(
            'from' => '<basepath>/custom/Extension/modules/Calendar/Ext/Language/hu_hu.add_task.php',
            'to' => 'custom/Extension/modules/Calendar/Ext/Language/hu_hu.add_task.php',
        ),
    ),
);
