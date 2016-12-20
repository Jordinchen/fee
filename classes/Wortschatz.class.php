<?php
/**
 * @author Jordinchen, Kevin Sporbeck
 * @version 20.12.2016
 */

class Wortschatz
{
	/**
	 * Members
	 */
	private $_baseLang;

	/**
	 * Constructor
	 * Initializing class members
	 * @param $baseLang_ The base language (e.g. catalan)
	 */
	function __construct($baseLang_ = NULL) 
	{
		$this->_baseLang = $baseLang_;
	}

	/**
	 * Vorfeld
	 * NOTE: Depends on base language? ~Yuserys
	 * @param $vorfeld
	 * @return String
	 */
	public static function vorfeld($vorfeld) 
	{
		if($vorfeld == "l’" || $vorfeld == "")
			return $vorfeld;
		else
			return $vorfeld . " ";
	}

	/**
	 * Wortart Parser
	 * Reads an ID for a Wortart and returns a shortcut
	 * @param $wortart An ID
	 * @return A shortcut
	 */
	public static function wortart_parser($wortart)
	{
		switch($wortart) {
			case 1: return "Sub"; break;
			case 2: return "Adj"; break;
			case 3: return "Verb"; break;
			default: return "N/A"; break;
		}
	}

	/**
	 * Genus Parser
	 * NOTE: Is not used. ~Yuserys
	 * @param $genus
	 * @return A string
	 */
	public static function genus_parser($genus )
	{
		switch($genus) {
			case 1: return "m"; break;
			case 2: return "f"; break;
			case 3: return "n"; break;
			case 4: return "m/f"; break;
			case 100: return "regelm&auml;&szlig;ig"; break;
			default: return "unbekannt"; break;
		}
	}

	/**
	 * Conjugate a word
	 * @param $infinitiv
	 * @param $tempus
	 * @param $person
	 * @return The conjugated word
	 */
	public static function konjugiere($infinitiv = "", $tempus = "", $person = "")
	{
		return "";
	}
}
?>
