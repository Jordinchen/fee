<?php 
/**
 * @author Jordinchen, Kevin Sporbeck
 * @version 20.12.2016
 */

// Include necessary files
require_once("./classes/Database.class.php");
require_once("./inc/config.php");


/**************/
include_once("funktionen.php");
include("header.php");
include("nav.php");
if(!(isset($_GET['page'])) or (isset($_GET['page']) && $_GET['page'] == "index")) {
	include("index2.php");
} else { 
	if(isset($_GET['page']) && $_GET['page'] == "catale") {
		include("katalanisch.php");
	} else { 
?>
		<div class="container runter">
			<div class="row">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-9">
					<h1>Kein Inhalt verfügbar</h1>
				</div>
			</div>
		</div>
<?php
	}
}
?>

</body>
</html>
