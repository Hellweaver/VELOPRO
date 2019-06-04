<?php 
	$connect = mysqli_connect('127.0.0.1', 'root', '', 'damir_pn_10');
	$query = mysqli_query($connect, "INSERT INTO bike (img, name, info, price) VALUES ('". $_FILES['image']['name'] ."' , '". $_POST['name'] ."' , '". $_POST['info'] ."' , '".$_POST['price'] ."')");

header('Location: http://damirzabolotskiy/mysite/admin.php');
 ?>