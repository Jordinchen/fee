<div class="container runter">
	<div class="row">
<?php
	include("katalanischmenu.php");
	if(!(isset($_GET['topic'])) or (isset($_GET['topic']) && $_GET['topic'] == "")) {
		echo "<h1>Bereich auswählen</h1><h2>Elegeix un tema</h2>\n";
	} else {
		$db_link = mysqli_connect (
                     MYSQL_HOST, 
                     MYSQL_BENUTZER, 
                     MYSQL_KENNWORT, 
                     MYSQL_DATENBANK
                    );
		mysqli_set_charset($db_link, 'utf8');
?>
		<div class="col-sm-9">
			<h2>Inhalt</h2>
<?php
$sql = "SELECT * FROM wliste 
			WHERE bereich = '".$_GET['topic']."'
			ORDER BY k_wort ASC;"
 
$db_erg = mysqli_query( $db_link, $sql );
?>
			<table class="table table-striped">
				<thead>
				<tr>
					<th>Katalanisch</th>
					<th>Deutsch</th>
				</tr>
				</thead>
				<tbody>
<?php
while ($row = mysqli_fetch_array( $db_erg, MYSQLI_ASSOC ))
{
	echo "			<tr>\n";
	if($row['k_wortart'] == "1" or $row['k_wortart'] == "2") {
		echo "				<td>".vorfeld($row['k_vorfeld'])."<span class=\"k-wort\">".$row['k_wort']." ".$row['k_nachfeld']."</span> <span class=\"label label-".strtolower(wortart_parser($row['k_wortart']))."\">".wortart_parser($row['k_wortart'])."</span><br /><span class=\"ipa\">[".$row['k_ipa']."]</span>";
		echo "</td>\n";
		echo "				<td>".vorfeld($row['d_vorfeld']).$row['d_wort']."</td>\n";
	} elseif($row['k_wortart'] == "3") {
		$sql_verb = "SELECT * FROM wverb
						WHERE infinitiv = '".$row['k_wort']."'";
		$db_erg_verb = mysqli_query ( $db_link, $sql_verb );
		$row_verb = mysqli_fetch_array ( $db_erg_verb );
		
		echo "				<td>".vorfeld($row['k_vorfeld'])."<span class=\"k-wort\">".$row['k_wort']." ".$row['k_nachfeld']."</span> <span class=\"label label-".strtolower(wortart_parser($row['k_wortart']))."\">".wortart_parser($row['k_wortart'])."</span>";
		
		if($row['k_wortart'] == "3" && ($row['k_wort'] == $row_verb['infinitiv'])) {
			echo " <button type=\"button\" class=\"label btn-info btn-sm\" data-toggle=\"modal\" data-target=\"#konjugation_".$row['k_wort']."\"><span class=\"glyphicon glyphicon-plus\"></span></button>";
			echo " <span class=\"label label-".strtolower(wortart_parser($row['k_wortart']))."\" data-toggle=\"modal\" data-target=\"#konjugation_".$row['k_wort']."\">".wortart_parser($row['k_wortart'])."&nbsp;&nbsp;<span class=\"glyphicon glyphicon-plus\"></span></span>";
		}
		
		echo "<br /><span class=\"ipa\">[".$row['k_ipa']."]</span>";
		
		if($row['k_wortart'] == "3" && ($row['k_wort'] == $row_verb['infinitiv'])) {
			include("konjugation_modal.php");
		}
		
		echo "</td>\n";
		echo "				<td>".vorfeld($row['d_vorfeld']).$row['d_wort']."</td>\n";
	}
	echo "			</tr>\n";
}
?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<?php
	}
	
?>