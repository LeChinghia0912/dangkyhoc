<!DOCTYPE html>
<html>
<head>
	<title>Login Admin</title>
</head>
<body>
	<?php 
	if (isset($_POST['oke'])) {
	$user=addslashes($_POST['adusername']);
	$pass=addslashes($_POST['adpassword']);
	if($user =="admin"&&$pass=="admin")
		include_once('trangchu2.php');
		else
		echo "Đăng nhập thất bại.";
}
exit();
	 ?>
<form method="POST" action="loginAdmin.php">
		<div align="center">
        <a href="">
            <img src="img/logout.png">
        </a>
    </div>
    <fieldset style="text-align: center;">
	    <legend><p ><h1 align="center">| ADMIN |</h1></legend> </p>
	  
	    	<table align="center">
	    		<tr>
	    			<td>Tên đăng nhập Admin:</td>
	    			<td><input type="text" name="adusername" size="30"></td>
	    		</tr>
	    		<tr>
	    			<td>Mât khẩu:</td>
	    			<td><input type="password" name="adpassword" size="30"></td>
	    		</tr>
	    		
	    			
	    		
	    	</table>
	    	<br><td colspan="2" align="center"> <input type="submit" name="oke" value="Đăng nhập"></td>
	</fieldset>

  </form>

</body>
</html>