<?php
	echo '<meta http-equiv="refresh" content="1">'; //Refresh every 1 minute
	echo '<html><body><form action = "http://grideye.no-ip.biz/grideye/" method = "get">';
	$resultsArray = json_decode(file_get_contents("http://grideye.no-ip.biz/grideye/webservice.php"), true);    //Decodes json object from webservice
	extract($resultsArray);
	extract($sensor);
	foreach($sensor AS $snapshot)
	{
		extract($snapshot);
		
		echo "Timestamp of " . $timeStamp;
		echo '<table border="1" cellpadding="3">';         //table printout
			echo "<tr>";
			for($i = 1; $i < 65; $i++) {
				if(($cells['cell'.$i] <= 100) && ($cells['cell'.$i] >= 29)) {
					echo "<th bgcolor=black>".$cells['cell'.$i]."</th>";
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
	echo '<button onclick="http://grideye.no-ip.biz/grideye/">Back </button>';
	echo '</form>';
	echo '</body>';
	echo '</html>';
?>


