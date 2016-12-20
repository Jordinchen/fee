<?php
/**
 * @author Jordinchen, Kevin Sporbeck
 * @version 20.12.2016
 */

// Include Smarty
require_once('./smarty/libs/Smarty.class.php');
$tpl = new Smarty;

// Include necessary configuration files
require_once('./classes/Database.class.php');
require_once('./classes/Wortschatz.class.php');
require_once('./inc/config.php');

// Initiliaze necessary variables
$baseLanguage = "katalanisch";
$topic = ($_GET["topic"] != "") ? $_GET["topic"] : "";

// Topics in $baseLanguage
// NOTE: A database table 'topics' would be far better. ~Yuserys
$myTopics = array(
	'kalendar' 	=> array(
		'short' 	=> "cal",
		'name' 		=> "Kalendar",
		'active' 	=> false,
	),
	'schule' 	=> array(
		'short'		=> "edu",
		'name'		=> "Schule und Ausbildung",
		'active'	=> false,
	),
	'religion'	=> array(
		'short'		=> "rel",
		'name'		=> "Religion",
		'active'	=> false,
	),
);

// Check which topic is active
foreach($aTopic in $myTopics) {
	if($topic == $aTopic['short'])
		$aTopic['active'] == true;
}

// Assign variables
$tpl->assign('baseLang', $baseLanguage);
$tpl->assign('myTopics', $myTopics);

// Load template
$tpl->display('katalanisch.tpl');
?>
