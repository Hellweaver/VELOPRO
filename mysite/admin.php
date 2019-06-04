<?php  
$connect = mysqli_connect('127.0.0.1', 'root', '', 'damir_pn_10');
$query = mysqli_query($connect, "SELECT * FROM bike ORDER BY id DESC");
?>
<!DOCTYPE html>
<html>
<head>
	<title>ADMIN PANEL VELOPRO</title>
	 <meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body class="bg-light">
  <div class="container-fluid bg-dark">
      <div class="col-1">
        <img src="velopro.jpg" class="w-100 rounded-circle">
      </div>
      <p><a href="index.php" class="text-success">Панель пользователя</a></p>
  </div>
  <div class="col-6 mx-auto">
  <form method="POST" action="insert.php" enctype="multipart/form-data">
    <input type="file" name="image" class="form-control" placeholder="картинка велосипеда">
    <input type="" name="info" class="form-control" placeholder="информация для велосипеда">
    <input type="" name="name" class="form-control" placeholder="фирма велосипеда">
    <input type="" name="price" class="form-control" placeholder="цена велосипеда">
    <button class="btn btn-dark">Добавить велосипед</button>
  </form>
</div>
  <div class="col-6 mx-auto">
	 <?php for ($i=0; $i < $query->num_rows; $i++) { 
     $qwerty = $query->fetch_assoc(); 
     ?>
     <div>
     <?php echo '<img src="' . $qwerty['img'] . '"class="w-100">';
      ?>
      <h2><?php echo $qwerty['name']; ?></h2>
      <p><?php echo $qwerty['info']; ?></p>
      <p><?php echo $qwerty['price']; ?></p>
      <?php echo '<a href="tovar.php?id=' . $qwerty['id'] . '"class="btn btn-dark">Подробнее</a>' ?>
      <?php echo '<a href="delete.php?id=' . $qwerty['id'] . '"class="btn btn-dark">УДАЛИТЬ</a>' ?>
    </div>
  <?php } ?>
  </div>
</body>
</html>