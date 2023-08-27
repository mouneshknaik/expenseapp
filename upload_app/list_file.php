
<?php
echo"<a href='index.html' style='display: block;float:right'>Upload File</a>";
$path    = 'files';
$files =array_diff(scandir($path), array('.', '..'));
// print_r($files);
foreach ($files as $colors) {
  echo "
  <style>
  .flex{
    display: inline-block;
    max-width: 300px;
    overflow: auto;
    padding: 10px;
  }
  .close{
    font-size: 12px;
    position: absolute;
  }
  </style>
  <div class='flex'>
	  <div>
	   <a href='delete.php?name=".$colors."' style='font-size:12px' class='close'>X</a></H1>
	  	<img src=files/".$colors." style='max-height:300px;max-width:300px'>
		<a href=files/".$colors." download>".$colors."</a>  <br>

	  </div>
  </div>
  ";
}
  // <a href='delete.php?name=".$colors."' style='font-size:12px'>X</a></H1> 
?>