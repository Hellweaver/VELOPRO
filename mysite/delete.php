<?php 
$connect = mysqli_connect('127.0.0.1', 'root', '', 'damir_pn_10');
$query = mysqli_query($connect, "DELETE FROM bike WHERE id='" . $_GET['id'] . "'" );
header("Location: http://damirzabolotskiy/mysite/admin.php?id=" . $_GET[id])
 ?>