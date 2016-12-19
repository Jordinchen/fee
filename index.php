<?php 
include_once("funktionen.php");
include("konfiguration.php");
include("header.php");
include("nav.php");
if(!(isset($_GET['page'])) or (isset($_GET['page']) && $_GET['page'] == "index")) {
	include("index2.php");
} else { 
	if(isset($_GET['page']) && $_GET['page'] == "catale") {
		include("katalanisch.php");
	} else {
		echo "<div class=\"container runter\">\n";
		echo "	<div class=\"row\">\n";
		echo "		<div class=\"col-sm-3\">\n";
		echo "		</div>\n";
		echo "		<div class=\"col-sm-9\">\n";
		echo "			<h1>Kein Inhalt verfügbar</h1>\n";
		echo "		</div>\n";
		echo "	</div>\n";
		echo "</div>\n";
	}
}
?>

</body>
</html>