<?php
$manifest = array( 
	
	'name' => 'Hungarian Language Pack for SugarCRM CE by SOULWARE Ltd.',
        'description' => 'Magyar nyelvi fájl, a SugarCRM CE verzióhoz - <a href="http://soulware.hu" target="_blank">http://soulware.hu</a>',
	'type' => 'langpack',
	'is_uninstallable' => 'Yes',
	'version' => '1.2',
	'author' => 'SOULWARE',
	'acceptable_sugar_versions' => 
	  array (
		'regex_matches' => array (
			'6\.[2-9].*',
		),
      	),
      	'acceptable_sugar_flavors' =>
      	array(
        'CE','PRO','ENT','CORP','ULT'
      	),

	'published_date' => '2012-07-05',
);

$installdefs = array(
	'id'=> 'hu_HU',
	'image_dir'=>'<basepath>/images',
	'copy' => array(
	array('from'=> '<basepath>/include','to'=> 'include',),
	array('from'=> '<basepath>/modules','to'=> 'modules'))
);
?>
