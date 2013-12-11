<?php
	ini_set("allow_url_fopen", true);
	echo '<html><body>';
	$usertimestamp = $_GET['usertimestamp'];
	$usertimestamp = mb_ereg_replace(" ","%20", $usertimestamp);
	$url = "http://grideye.no-ip.biz/grideye/lookbackservice.php?usertimestamp=$usertimestamp";
	$resultsArray = json_decode(file_get_contents("$url"), true);    //Decodes json object from webservice
	extract($resultsArray);
	extract($sensor);
	foreach($sensor AS $snapshot)
	{	
		extract($snapshot);
		
		echo "Timestamp of " . $timeStamp;
		echo '<table border="1" cellpadding="3">';         //table printout
			echo "<tr>";
			for($i = 1; $i < 65; $i++) {
				if($cells['cell'.$i] <= 15) {
					echo "<th bgcolor=darkviolet>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 19) && ($cells['cell'.$i] >= 16)) {
					echo "<th bgcolor=blue>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 22) && ($cells['cell'.$i] >= 20)) {
					echo "<th bgcolor=deepskyblue>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 25) && ($cells['cell'.$i] >= 23)) {
					echo "<th bgcolor=lightgreen>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 28) && ($cells['cell'.$i] >= 26)) {
					echo "<th bgcolor=yellow>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 30) && ($cells['cell'.$i] >= 29)) {
					echo "<th bgcolor=orange>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 32) && ($cells['cell'.$i] >= 31)) {
					echo "<th bgcolor=red>".$cells['cell'.$i]."</th>";
				}
				elseif(($cells['cell'.$i] <= 35) && ($cells['cell'.$i] >= 33)) {
					echo "<th bgcolor=cranberry>".$cells['cell'.$i]."</th>";
				}
				else {
					echo "<th>".$cells['cell'.$i]."</th>";
				}
				if(($i == 8) || ($i == 16) || ($i == 24) || ($i == 32) || ($i == 40) || ($i == 48) || ($i == 56)) {
					echo "</tr>";
					echo "<tr>";
				}
			}
			echo "<tr>";
		echo "</table>";
	}
	echo "<br>";
	echo '<form action = "http://grideye.no-ip.biz/grideye/" method = "get">';
	echo '<button onclick="http://grideye.no-ip.biz/grideye/">Back </button>';
	echo '</body>';
	echo '</html>';
?>


