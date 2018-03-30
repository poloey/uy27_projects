<?php
define('DB_SERVER','localhost');
define('DB_USER','uy27alic_a');
define('DB_PASS' ,'uy27alic_a');
define('DB_NAME', 'uy27alic_a');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>