<?php
require_once  'db.php';
$str_arr = preg_split ("/\=/", $_SERVER['QUERY_STRING']); 
// print_r($str_arr[1]);
if($str_arr[1]){
    $sql = "select * FROM expenses where id=".$str_arr[1];
}else{
    $sql = "select * FROM expenses";
}

$tmp=$conn->query($sql);
$EditForm=mysqli_fetch_all($tmp, MYSQLI_ASSOC);
// print_r($EditForm);
//   echo"<html><body><a href='./Home.php'>Home</body></html>";
include("header.html");
  include("editform.html");
?>
