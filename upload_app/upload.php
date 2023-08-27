<?php  
$info = pathinfo($_FILES['userFile']['name']);

$newname = str_replace(' ', '_',$info['basename']); // get the extension of the file
$target = 'files/'.$newname;
print_r($newname);

print('uploaded at files folder');
move_uploaded_file( $_FILES['userFile']['tmp_name'], $target);
echo "<h2><a href='list_file.php'> Listed Files</a></h2>"
?>