<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="refresh" content="0.5 url=http://localhost/dangkyhoc/view/quanlysinhvien.php" >
	<title>Document</title>
</head>
<body>
	<?php
	$masinhvien = $_POST["masinhvien"];
	$hoten =$_POST ["hoten"];
	$lop = $_POST["lop"];
	$ngaysinh = $_POST['ngaysinh'];
	$gioitinh = $_POST['gioitinh'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$email = $_POST['email'];
	
	 include_once('../publish/connect.php');

	$sql="UPDATE sinhvien SET username='$username', password='$password',   hoten='$hoten'  ,lop ='$lop',
	 ngaysinh='$ngaysinh', gioitinh ='$gioitinh', email='$email' Where masinhvien='$masinhvien'";
	
	$kq=mysqli_query($conn,$sql);
	if ($kq) {
		header("http://localhost/dangkyhoc/view/quanlysinhvien.php");
	
	}
	?>

</body>
</html>