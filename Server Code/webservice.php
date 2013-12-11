<?php
	header("Content-type: application/json");
 
 	/*function getStatusCodeMessage($status)    //status codes for failure
	{
		$codes = Array(
			100 => 'Continue',
			101 => 'Switching Protocols',
			200 => 'OK',
			201 => 'Created',
			202 => 'Accepted',
			203 => 'Non-Authoritative Information',
			204 => 'No Content',
			205 => 'Reset Content',
			206 => 'Partial Content',
			300 => 'Multiple Choices',
			301 => 'Moved Permanently',
			302 => 'Found',
			303 => 'See Other',
			304 => 'Not Modified',
			305 => 'Use Proxy',
			306 => '(Unused)',
			307 => 'Temporary Redirect',
			400 => 'Bad Request',
			401 => 'Unauthorized',
			402 => 'Payment Required',
			403 => 'Forbidden',
			404 => 'Not Found',
			405 => 'Method Not Allowed',
			406 => 'Not Acceptable',
			407 => 'Proxy Authentication Required',
			408 => 'Request Timeout',
			409 => 'Conflict',
			410 => 'Gone',
			411 => 'Length Required',
			412 => 'Precondition Failed',
			413 => 'Request Entity Too Large',
			414 => 'Request-URI Too Long',
			415 => 'Unsupported Media Type',
			416 => 'Requested Range Not Satisfiable',
			417 => 'Expectation Failed',
			500 => 'Internal Server Error',
			501 => 'Not Implemented',
			502 => 'Bad Gateway',
			503 => 'Service Unavailable',
			504 => 'Gateway Timeout',
			505 => 'HTTP Version Not Supported'
		);
	 
		return (isset($codes[$status])) ? $codes[$status] : '';
	}
	 
	function sendResponse($status = 200, $body = '', $content_type = 'text/html')   // Helper method to send a HTTP response code/message
	{
		$status_header = 'HTTP/1.1 ' . $status . ' ' . getStatusCodeMessage($status);
		header($status_header);
		header('Content-type: ' . $content_type);
		echo $body;
		
	}
	*/
	function validateDate($date, $format = 'Y-m-d H:i:s')
	{
		$d = DateTime::createFromFormat($format, $date);
		return $d && $d->format($format) == $date;
	}
	
	class GridEyeAPI {

		private $db;    // Helper method to get a string description for an HTTP status code
	 
		function __construct() {         // Constructor - open DB connection
			$this->db = new mysqli('127.0.0.1', 'root', NULL, 'grideye');
			$this->db->autocommit(FALSE);
		}
	 
		function __destruct() {     // Destructor - close DB connection
			$this->db->close();
		}
	 
		function getTemps() {   //Method to return the values
			$sensorID = 1;     //hard coded for now
			$cellData = array();    //create array for cell values and numbers
			$resultsArray = array();  //array for multiple query results
			if(isset($_GET['usertimestamp']) AND validateDate($_GET['usertimestamp']))
			{
				$timestamp = $_GET['usertimestamp'];
				$stmt = $this->db->prepare('SELECT * FROM gridtemps1 WHERE timestamp >= "'.$timestamp.'"');
			}
			else
			{
				$stmt = $this->db->prepare('SELECT * FROM gridtemps1 WHERE timestamp = (SELECT MAX(timestamp) FROM gridtemps1 WHERE cellnum = 65)');  //Select most recent temps from database
			}
			$stmt->execute();
			$stmt->bind_result($cellNum, $timestamp, $cellValue);
			while ($stmt->fetch()) {
				$resultsArray[$timestamp]["id"] = $sensorID;
				$resultsArray[$timestamp]["timeStamp"] = $timestamp;
				$resultsArray[$timestamp]["cells"]["timeStamp"] = $timestamp;
				if($cellNum == 65) {
					$resultsArray[$timestamp]["cells"]["thermistor"] = $cellValue;   //create thermistor
				}
				if($cellNum != 65){
					$resultsArray[$timestamp]["cells"]["cell".$cellNum] = $cellValue;
				}
			}
			$stmt->close();
			$caleArray = array();
			foreach($resultsArray AS $entry)
			{
				array_push($caleArray, $entry);
			}
			$sensorArray = array("sensor" => $caleArray);
			echo json_encode($sensorArray);
			return true;
		}
	}
 
	// This is the first thing that gets called when this page is loaded
	// Creates a new instance of the GridEyeAPI class and calls the getTemps method
	$api = new GridEyeAPI;
	$api->getTemps();
 
?>