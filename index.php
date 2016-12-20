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

// Display template
$tpl->display('index.tpl');
?>
