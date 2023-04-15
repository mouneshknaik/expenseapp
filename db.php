<?php
$username="root";
$password="";
$host="localhost";
$database="expense";
// $con=mysql_connect("$host","$username","$password") or die("Server Error");
// mysql_select_db("$database") or die("Database error");
$conn = new mysqli($host,
    $username, $password, $database);

// if($con==true)
// {
//     echo "Success";
// }
// else
// {
//     mysql_close($con);
// }
?>