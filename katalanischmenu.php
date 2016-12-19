		<div class="col-sm-3">
			<h2>Themenbereiche</h2>
			<div class="list-group">
<?php
	if(isset($_GET['topic'])) {
		echo "				<a href=\"index.php?page=". $_GET['page'] ."&topic=edu\" class=\"list-group-item". topiccheck($_GET['topic'], "edu") ."\">Schule und Ausbildung</a>\n";
		echo "				<a href=\"index.php?page=". $_GET['page'] ."&topic=cal\" class=\"list-group-item". topiccheck($_GET['topic'], "cal") ."\">Kalender</a>\n";
		echo "				<a href=\"index.php?page=". $_GET['page'] ."&topic=rel\" class=\"list-group-item". topiccheck($_GET['topic'], "rel") ."\">Religion</a>\n";
	} else {
		echo "				<a href=\"index.php?page=". $_GET['page'] ."&topic=edu\" class=\"list-group-item\">Schule und Ausbildung</a>\n";
		echo "				<a href=\"index.php?page=". $_GET['page'] ."&topic=cal\" class=\"list-group-item\">Kalender</a>\n";
		echo "				<a href=\"index.php?page=". $_GET['page'] ."&topic=rel\" class=\"list-group-item\">Religion</a>\n";
	}
?>
			</div>
		</div>