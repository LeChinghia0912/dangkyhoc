<?php if (session_id() == '' || !isset($_SESSION)) {
  session_start();
} ?>
<!DOCTYPE html>
<html>
<head>
<!--     <link rel="stylesheet" href="css/qlbh.css" /> -->
    <title>ADMIN</title>
</head>
<body>
  <div>
    <style type="text/css">
      * {
  margin: 0;
  padding: 0;
}
.button {
  -moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
  -webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
  box-shadow:inset 0px 1px 0px 0px #ffffff;
  background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
  background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
  filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
  background-color:#ededed;
  -webkit-border-top-left-radius:6px;
  -moz-border-radius-topleft:6px;
  border-top-left-radius:6px;
  -webkit-border-top-right-radius:6px;
  -moz-border-radius-topright:6px;
  border-top-right-radius:6px;
  -webkit-border-bottom-right-radius:6px;
  -moz-border-radius-bottomright:6px;
  border-bottom-right-radius:6px;
  -webkit-border-bottom-left-radius:6px;
  -moz-border-radius-bottomleft:6px;
  border-bottom-left-radius:6px;
  text-indent:0;
  border:1px solid #dcdcdc;
  display:inline-block;
  color:#777777;
  font-family:Times New Roman;
  font-size:15px;
  font-weight:normal;
  font-style:normal;
  height:25px;
  line-height:25px;
  width:100px;
  text-decoration:none;
  text-align:center;
  text-shadow:1px 1px 0px #ffffff;
}
.button:hover {
  background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
  background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
  filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
  background-color:#dfdfdf;
}.button:active {
  position:relative;
  top:1px;
}
/* This button was generated using http://tools.ngoisaoso.vn/css3button/ */


#menu {
    font-size: 15px;
    color: white;
    padding: 15px 15px 0 5px;
    background-color: #0c4ca3;
    height: 40px;
    top: 40px;
    right: 0px;
    text-align: center;
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
}
#menu a{
  color: white;
  padding: 30px;
  text-decoration: none;
  text-align: center;
  right: 55px;

}
.h1{
  font-family: arial;
  width: 300px;
  height: 50px;
  padding-left: 10px;
  font-size: 20px;
  font-weight: bold;
  text-align: justify;
}
.h2{
    font-family: arial;
  width: 700px;
  height: 150px;
  padding-left: 10px;
  font-size: 18px;
  text-align: justify;
  padding-top: 5px;
}
#news-block-title {
    font-size: 18px;
        border-bottom: 1px solid #cd2122;
        position: relative;
        left: 300px;
        font-size: 30px;
        top: 50px;

}
p{
  padding-top: 10px;
  font-size: 16px;
  font-weight: normal;
}
.a3{
  font-size: 20px;
  text-decoration: none;
  font-style: bold;
  color: black;
  font-size: 20px;
}
.a3:hover{
  color: #CD2122;
}
.tr{
      margin: 0 0 30px;
    overflow: hidden;
    list-style-type: none;
}
    </style>
    <div align="center">
        <a href="">
            <img src="img/logout.png">
        </a>
    </div>
<div id="menu">
    
    <a href="trangchu2.php">Trang Chủ</a>
    |
    <a href="view/quanlysinhvien.php">Quản lý sinh viên</a>
    |
     <a href="view/quanlymonhoc.php">Quản lý môn học</a>
    |
    <a href="view/quanlylophoc.php">Quản lý lớp học</a>
    |
    <a href="view/chnganh.php">Quản lý lớp chuyên ngành</a>
    |
    <a href="view/quanlykhoa.php">Quản lý khoa học</a>
    |
      Bạn là ADMIN -
    <a href="login.php">THOÁT</a>
    

</div>
</div>
<div >
<span style="z-index: -1;" id="news-block-title">TRANG QUẢN LÝ THỐNG KÊ SỐ LƯỢNG</span>

</div>
<div style="padding-left: 100px;">
<div style="padding-top: 100px; padding-left: 300px;">
  <h2 style="color: #0ee82b;">TỔNG SINH VIÊN: 

  <?php 
    include('publish/connect.php');

    $username = $_SESSION['username'];

    $sql = "SELECT COUNT(masinhvien) as total FROM sinhvien";
    $kq = mysqli_query($conn, $sql);

    if (mysqli_num_rows($kq) > 0) {
      while ($row = mysqli_fetch_assoc($kq)) {
        echo $row['total']. '    ';
      }
    }
  ?>
  Sinh viên. </h2>

<div style="padding-top: 20px;">
<h2 style="color: red;">SỐ LƯỢNG MÔN HỌC: 

  <?php 
    include('publish/connect.php');

    $username = $_SESSION['username'];

    $sql = "SELECT COUNT(mamonhoc) as total FROM monhoc";
    $kq = mysqli_query($conn, $sql);

    if (mysqli_num_rows($kq) > 0) {
      while ($row = mysqli_fetch_assoc($kq)) {
        echo $row['total']. '    ';
      }
    }
  ?>
  môn học. </h2>
<div>


<div style="padding-top: 20px;">
  <h2 style="color:#0039e6;"> LỚP HỌC PHẦN: 

  <?php 
    include('publish/connect.php');

    $username = $_SESSION['username'];

    $sql = "SELECT COUNT(lop) as total FROM lophoc";
    $kq = mysqli_query($conn, $sql);

    if (mysqli_num_rows($kq) > 0) {
      while ($row = mysqli_fetch_assoc($kq)) {
        echo $row['total']. '    ';
      }
    }
  ?>
  Lớp. </h2>
<div>

<div style="padding-top: 20px;">
  <h2 style="color: #8c02cc;">KHOA HỌC: 

  <?php 
    include('publish/connect.php');

    $username = $_SESSION['username'];

    $sql = "SELECT COUNT(makhoa) as total FROM khoa";
    $kq = mysqli_query($conn, $sql);

    if (mysqli_num_rows($kq) > 0) {
      while ($row = mysqli_fetch_assoc($kq)) {
        echo $row['total']. '    ';
      }
    }
  ?>
  Khoa. </h2>
<div>

<div style="padding-top: 20px;">
  <h2 style="color: orange;"> LỚP CHUYÊN NGÀNH: 

  <?php 
    include('publish/connect.php');

    $username = $_SESSION['username'];

    $sql = "SELECT COUNT(id) as total FROM tbl_lopchuyennganh";
    $kq = mysqli_query($conn, $sql);

    if (mysqli_num_rows($kq) > 0) {
      while ($row = mysqli_fetch_assoc($kq)) {
        echo $row['total']. '    ';
      }
    }
  ?>
  Lớp. </h2>
<div>
 

<div>
</body>
</html>