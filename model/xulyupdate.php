<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <meta http-equiv="refresh" content="0.5 url=http://localhost/dangkyhoc/view/monhoc_view.php" >
	<title></title>
</head>
<body>
<?php
	$mamonhoc=$_POST['mamonhoc'];
	$tenmonhoc = $_POST['tenmonhoc'];
	$sotinchi = $_POST['sotinchi'];
	$diem = $_POST['diem'];

	include_once("../publish/connect.php");
	$sql="UPDATE monhoc SET tenmonhoc='$tenmonhoc', sotinchi='$sotinchi',
	 diem='$diem' Where mamonhoc='$mamonhoc'";
	$kq=mysqli_query($conn,$sql);
	if ($kq) {
		header("http://localhost/dangkyhoc/view/monhoc_view.php");
	
	}
	?>
</body>
</html>