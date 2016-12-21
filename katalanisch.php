<?php
/**
 * @author Jordinchen, Kevin Sporbeck
 * @version 21.12.2016
 */

// Include Smarty
require_once('./smarty/libs/Smarty.class.php');
$tpl = new Smarty;

// Include necessary configuration files
require_once('./classes/Wortschatz.class.php');
require_once('./classes/Database.class.php');
require_once('./inc/config.php');

// Initiliaze necessary variables
$baseLanguage = "katalanisch";
$_GET["topic"] = (isset($_GET["topic"])) ? $_GET["topic"] : "";
$topic = $_GET["topic"];

// Topics in $baseLanguage
// NOTE: A database table 'topics' would be far better. ~Yuserys
$myTopics = array(
	'cal' 	=> array(
		'short' 	=> "cal",
		'name' 		=> "Kalendar",
		'active' 	=> "",
	),
	'edu' 	=> array(
		'short'		=> "edu",
		'name'		=> "Schule und Ausbildung",
		'active'	=> "",
	),
	'rel'	=> array(
		'short'		=> "rel",
		'name'		=> "Religion",
		'active'	=> "",
	),
);

// Check which topic is active
foreach($myTopics as $aTopic) {
	if($topic == $aTopic['short'])
		$myTopics[$topic]['active'] = "aktiv";
}

if($topic != "") {
	// Select all words of that topic
	$query = $db->connection()->prepare(
		"SELECT * FROM wliste 
			WHERE bereich = ?
			ORDER BY k_wort ASC"
	);
	$query->execute(array($topic));

	// Parse vorfeld and wortart
	for($i = 0; $rows = $query->fetch(PDO::FETCH_ASSOC); $i++) {
		// Parse
		$words[$i] = $rows;
		$words[$i]['k_vorfeld_ps'] = Wortschatz::vorfeld($words[$i]['k_vorfeld']);
		$words[$i]['d_vorfeld_ps'] = Wortschatz::vorfeld($words[$i]['d_vorfeld']);
		$words[$i]['k_wortart_ps'] = Wortschatz::wortart_parser($words[$i]['k_wortart']);
		$words[$i]['k_wortart_ps_lc'] = strtolower($words[$i]['k_wortart_ps']);

		// Get conjugated forms
		$query2 = $db->connection()->prepare(
			"SELECT * FROM wverb
				WHERE infinitiv = ?"
		);
		$query2->execute(array($words[$i]['k_wort']));

		// Push into $words
		$words[$i]['conj'] = $query2->fetch(PDO::FETCH_ASSOC);
	}

	// Assign variables
	$tpl->assign('words', $words);
}

// Assign variables
$tpl->assign('baseLang', $baseLanguage);
$tpl->assign('myTopics', $myTopics);
$tpl->assign('topic', $topic);

// Load template
$tpl->display('katalanisch.tpl');
?>
