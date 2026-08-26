<?php
$files = scandir('/var/www/html/mathant', SCANDIR_SORT_DESCENDING);
$newest_file = $files[0];
echo $files[0];
echo "<br>\n";
echo $files[1];
echo "<br>\n";
echo $files[2];
echo "<br>\n";
echo "<hr>\n";

$i = 0; // Initialize counter
while ($i < 16) { // Check condition
  echo $i; // Execute code
  print " -- ";
  echo $files[$i];
  echo "<br>\n";
  $i++; // Increment counter
}
echo "<hr>";

for ($x = 0; $x <= 10; $x+=2) {
  echo "The number is: $x $files[$x];<br>\n";
}

//phpinfo();
echo "<br>\n";
echo $servername = "localhost";
echo "<br>\n";
echo $username = "nsext";
echo "<br>\n";
echo $password = "snagge123";

echo "<br>\n";
//$conn = new mysqli($servername, $username, $password);
//$conn = TRUE;
//$conn = new mysqli($servername, $username, $password);

//if ($conn->connect_error) {
  //die("Connection failed: " . $conn->connect_error);
//}
echo "Connected successfully";

// Check connection

?>
