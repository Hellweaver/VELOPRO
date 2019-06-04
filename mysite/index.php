<?php  
$connect = mysqli_connect('127.0.0.1', 'root', '', 'damir_pn_10');
$query = mysqli_query($connect, "SELECT * FROM bike");
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
      <p><a href="admin.php" class="text-danger">Админ панель!!!</a></p>
    </div>
  <div class="col-6 mx-auto bg-white">
	 <?php for ($i=0; $i < $query->num_rows; $i++) { 
     $qwerty = $query->fetch_assoc(); ?>
     <div>
     <?php echo '<img src="' . $qwerty['img'] . '" class="w-100">';
      ?>
      <h2><?php echo $qwerty['name']; ?></h2>
      <p><?php echo $qwerty['info']; ?></p>
      <p><?php echo $qwerty['price']; ?></p>
      <?php echo '<a href="tovar.php?id=' . $qwerty['id'] . '" class="btn btn-dark">Подробнее</a>' ?>
    </div>
  <?php } ?>
  <div class="footer-copyright text-center py-3">
  <p>© 2019 Copyright : cайт защищён авторским правом</p>
  <p>©Дамир Заболоцкий = 89142365906</p>
  </div>
</div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>