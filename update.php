<?php
require_once  'db.php';
include("header.html");
print_r($_POST);
if(isset($_POST['category'])){
  $sql = "INSERT INTO `category`(`category`,`userId`) VALUES ('".$_POST['category']."',".$_POST['userId'].")";
}else{
  if(isset($_POST['phone'])&& isset($_POST['name']  ) && isset($_POST['password']  )){
    $randomUserid=rand();
    $sql = "INSERT INTO `user`(`name`, `phone`, `password`,`userId`) VALUES ('".$_POST['name']."',".$_POST['phone'].",'".$_POST['password']."',".$randomUserid.")";
  }else{
    if(isset($_POST['id'])){
      $sql = "UPDATE expenses SET material='".$_POST['Material']."',price='".$_POST['Price']."',unit='".$_POST['Unit']."',time='".$_POST['time']."' WHERE id='".$_POST['id']."'";
    }else{
      $sql = "INSERT INTO `expenses`(`material`, `price`, `unit`,`userId`,`category`,`time`) VALUES ('".$_POST['Material']."',".$_POST['Price'].",".$_POST['Unit'].",".$_POST['user'].",'".$_POST['cat']."','".$_POST['time']."')";
    }
  }

}


$tmp=$conn->query($sql);
if ($tmp == "1") {
    echo "<br>New record updated successfully<br>";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  echo"<html><body><a href='./'>Home</body></html>
  "

?>
   <script>
    window.addEventListener("load", async function(){
      setTimeout(()=>{
        window.location.assign('./');
      },1500);
    });
   </script>