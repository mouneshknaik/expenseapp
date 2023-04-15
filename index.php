<?php
 
require_once  'db.php';
 
// Create connection
// $conn = new mysqli($servername,
//     $username, $password, $dbname);
 
// Check connection
if ($conn->connect_error) {
    die("Connection failed: "
        . $conn->connect_error);
}else{

 // print_r($conn);
 // print_r('Connected');
}
// $sql = "INSERT INTO `pricelist`(`material`, `price`, `unit`) VALUES ('ert',345,3)"
// echo "Affected rows: " . $conn -> affected_rows;
// Fetch all
$sql = "SELECT * FROM expenses";
$result = mysqli_query($conn, $sql);

// Fetch all
$tmp1=mysqli_fetch_all($result, MYSQLI_ASSOC);
// print_r($tmp1);
 // print_r(json_encode($tmp1)) ;
 $sumPrice=0;
foreach($tmp1 as $key=>$value){
    $sumPrice=$sumPrice+$value['price'];
}
include("header.html");
include("init.html");
// Numeric array
// if ($conn->query($sql) === TRUE) {
//     echo "record inserted successfully";
// } else {
//     echo "Error: " . $sql . "<br>" . $conn->error;
// }
?>