<?php
$username="root";
$password="";
$host="localhost";
$database="expense";
// $username="root";
// $password="Moni@321";
// $host="localhost";
// $database="epiz_32991811_expenses";
// $username="epiz_32991811";
// $password="D2B6UzbAabO2WH";
// $host="sql111.infinityfree.com";
// $database="epiz_32991811_expenses";
// $con=mysql_connect("$host","$username","$password") or die("Server Error");
// mysql_select_db("$database") or die("Database error");
$conn = new mysqli($host,
    $username, $password, $database);
// print_r($conn);
// if($conn==true)
// {
//     echo "Success";
// }
// else
// {
//     echo($conn);
// }
?>