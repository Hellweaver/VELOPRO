<?php 
	$connect = mysqli_connect('127.0.0.1', 'root', '', 'damir_pn_10');
	$query = mysqli_query($connect, "INSERT INTO orders (bike_id, date, time) VALUES ('". $_POST['bike_id'] ."' , '". $_POST['date'] ."' , '".$_POST['time'] ."')");

header('Location: http://damirzabolotskiy/mysite/tovar.php?id=' . $_POST['bike_id'] . '&text=Поздравляем вы арендовали велосипед!' );
 ?>