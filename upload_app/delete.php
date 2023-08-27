<?php
// $queryData=parse_url($_SERVER['REQUEST_URI']);
// print_r($queryData['query']);
// parse_str($queryData['query'],$query)
// print( );
// print_r($query);
// $file_to_delete = 'files/favicon.zip';
// unlink($file_to_delete);
parse_str(parse_url($_SERVER['REQUEST_URI'])['query'], $params);
// echo $params['name'];
$file_to_delete = 'files/'.$params['name'];
unlink($file_to_delete);
echo"deleted".$params['name'];
header('Location: ./list_file.php');
    die();
?>