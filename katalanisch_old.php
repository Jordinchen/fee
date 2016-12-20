<?php
 elseif($row['k_wortart'] == "3") {
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
