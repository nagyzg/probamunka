<?php

$manifest = array(
	'acceptable_sugar_versions' => array (
		'regex_matches' => array (
			0 => "5.0.*",
			1 => "5.1.*",
			2 => "5.2.*",
			3 => "5.5.*",
			4 => "6.4.*",
			5 => "6.5.*",
		),
	),
	'acceptable_sugar_flavors' => array (
		0 => 'CE',
	),
	'name' 				=> 'SoulwareHungarianAddress',
	'description' 		=> 'Removes state from Address fields, as Hungarian addresses don\'t need it.',
	'author' 			=> 'Gábor Darvas, Soulware Ltd.',
	'published_date'	=> '2014/02/24',
	'version' 			=> '0.9.0',
	'type' 				=> 'module',
	'icon' 				=> '',
	'is_uninstallable' => true,
);
$installdefs = array(
	'id'=> 'SoulwareHungarianAddress',
	'copy' => array(
		0 => array(
		'from' => '<basepath>/custom/include/SugarFields/Fields/Address/DetailView.tpl',
		'to' => 'custom/include/SugarFields/Fields/Address/DetailView.tpl',
		),
		1 => array(
		'from' => '<basepath>/custom/include/SugarFields/Fields/Address/EditView.tpl',
		'to' => 'custom/include/SugarFields/Fields/Address/EditView.tpl',
		),
		2 => array(
		'from' => '<basepath>/custom/include/SugarFields/Fields/Address/en_us.DetailView.tpl',
		'to' => 'custom/include/SugarFields/Fields/Address/en_us.DetailView.tpl',
		),
		3 => array(
		'from' => '<basepath>/custom/include/SugarFields/Fields/Address/en_us.EditView.tpl',
		'to' => 'custom/include/SugarFields/Fields/Address/en_us.EditView.tpl',
		),
		4 => array(
		'from' => '<basepath>/custom/include/SugarFields/Fields/Address/hu_hu.DetailView.tpl',
		'to' => 'custom/include/SugarFields/Fields/Address/hu_hu.DetailView.tpl',
		),
		5 => array(
		'from' => '<basepath>/custom/include/SugarFields/Fields/Address/hu_hu.EditView.tpl',
		'to' => 'custom/include/SugarFields/Fields/Address/hu_hu.EditView.tpl',
		),
	),
);

?>
