<?php
	// prüft ob ein Listenpunkt aktiv ist
	function topiccheck( $get, $check ) {
		if(isset($get) && $get == $check) {
			return " aktiv";
		}
	}
	
	function vorfeld ( $vorfeld ) {
		if ($vorfeld == "l’" or $vorfeld == "") {
			return $vorfeld;
		} else {
			return $vorfeld." ";
		}
	}

	function wortart_parser( $wortart_zahl ) {
		if($wortart_zahl == 1) {
			return "Sub";
		} elseif($wortart_zahl == 2) {
			return "Adj";
		} else {
			return "V";
		}
	}

	function genus_parser ( $genus_zahl ) {
		if($genus_zahl == 1) {
			return "m";
		} elseif ($genus_zahl == 2) {
			return "f";
		} elseif ($genus_zahl == 3) {
			return "n";
		} elseif ($genus_zahl == 4) {
			return "m/f";
		} elseif ($genus_zahl == 100) {
			return "regelm&auml;&szlig;ig";
		} else {
			return "unbekannt";
		}
	}

	function konjugiere ( $infinitiv, $tempus, $person ) {
		if ( $tempus == "fut" ) {
			if ( $person == "jo" ) {
				$konjugiert = $infinitiv."é";
			} elseif ( $person == "tu" ) {
				$konjugiert = $infinitiv."às";
				
			}
		}
		print $konjugiert;
	}
?>
