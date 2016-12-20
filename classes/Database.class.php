<?php
/**
 * @author Kevin Sporbeck
 * @version 20.12.2016
 */

class Database
{
	/**
	 * Members
	 */
	private $_connection;
	private $_database;
	private $_host;
	private $_username;
	private $_password;

	/**
	 * Constructor
	 * Initiliazing class members
	 * @param $database_ A database
	 * @param $host_ A host address
	 * @param $username_ A database username
	 * @param $password_ Matching database password
	 */
	function __construct(
		$database_ = NULL,
		$host_ = localhost,
		$username_ = NULL,
		$password_ = NULL)
	{
		$this->_connection = false;
		$this->_database = $database_;
		$this->_host = $host_;
		$this->_username = $username_;
		$this->_password = $password_;
	}

	/**
	 * Read MySQL connection
	 * @return A PDO object
	 */
	public function connection()
	{
		return $this->_connection;
	}

	/**
	 * Connect to a given MySQL server with PDO
	 */
	public function connect()
	{
		try {
			$this->_connection = new PDO(
				"mysql:host=" . $this->_host . 
				";dbname=" . $this->_database,
				$this->_username,
				$this->_password,
				array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
			); 
		}
		catch(PDOException $error) {
			die('<br />MySQL error: Failed to connect.<br />' . $error->getMessage());
		}
	}

	/**
	 * Close connection to a MySQL server
	 */
	public function disconnect()
	{
		$this->_connection = null;
	}
}
?>
