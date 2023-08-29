<?php
require_once  'db.php';
// $str_arr = preg_split ("/\=/", $_SERVER['QUERY_STRING']); 
// print_r($_GET['userId']); 
$sql = "";
if(isset($_GET['userId'])){
    $sql = "SELECT * FROM category where userId=$_GET[userId]";
}
if(isset($_GET['category']) && isset($_GET['userId'])){
    $sql = "SELECT * FROM expenses where userId=$_GET[userId] and category='$_GET[category]' ORDER by time DESC";
}
if(isset($_GET['category']) && isset($_GET['userId']) && isset($_GET['endDate'])){
    $sql = "SELECT * FROM expenses where userId=$_GET[userId] and category='$_GET[category]' and time> '$_GET[startDate]' and time<'$_GET[endDate]' ORDER by time DESC";
}
if(isset($_GET['phone']) && isset($_GET['password'])){
    $sql = "SELECT * FROM `user` WHERE phone='$_GET[phone]' and password='$_GET[password]'";
}
if(isset($_GET['totalCountUser'])){
	$sql ="SELECT category,SUM(price) as total FROM `expenses` WHERE userId='$_GET[totalCountUser]' GROUP BY category";
}

$result = mysqli_query($conn, $sql);

// Fetch all
$tmp1=mysqli_fetch_all($result, MYSQLI_ASSOC);
// $EditForm=mysqli_fetch_all($tmp, MYSQLI_ASSOC);
// print_r($EditForm);
$myJSON = json_encode($tmp1);

echo $myJSON;
?>
