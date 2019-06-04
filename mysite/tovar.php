<?php 
$connect = mysqli_connect('127.0.0.1', 'root', '', 'damir_pn_10');
$query = mysqli_query($connect, "SELECT * FROM bike WHERE id ='". $_GET['id'] ."'"); 
?>
<!DOCTYPE html>
<html>
<head>
	<title>VELOPRO</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body class="bg-light">
	<div class="container-fluid bg-dark">
      <div class="col-1">
        <img src="velopro.jpg" class="w-100 rounded-circle">
      </div>
  </div>
  <div class="col-6 mx-auto bg-white">
<?php 
		for ($i=0; $i < $query->num_rows; $i++) { 
		$qwerty = $query->fetch_assoc();
?>
	<div><h2><?php echo $qwerty['name'] ?></h2></div>
<?php
	echo '<div><img  class="img-fluid w-100" src="' . $qwerty['img'] . '"></div>';
?>
	<div><p><?php echo $qwerty['info'] ?></p></div>
	<div><p><?php echo $qwerty['price'] ?></p></div>
<?php 
}
?>
<form method="POST" action="order.php" enctype="multipart/form-data">
<?php echo '<input type="hidden" name="bike_id" value= "' . $qwerty['id'] . '">'?>
<input type="time" name="time">
<input type="date" name="date">
<button onclick="alert('Поздравляем вы арендовали велосипед!')" class="btn btn-dark">АРЕНДОВАТЬ</button>
<?php 
	echo $_GET['text']
 ?>
 </div>
</form>
</body>
</html>