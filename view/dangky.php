<?php if (session_id() == '' || !isset($_SESSION)) {
  session_start();
} ?>
<!DOCTYPE html>
<html>
<head>
<!--     <link rel="stylesheet" href="css/qlbh.css" /> -->
    <title>Đăng ký học</title>
</head>
<body>
  <div>
    <style type="text/css">
      * {
  margin: 0;
  padding: 0;
}
.td{
  padding-left: 10px;
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
  padding: 60px;
  text-decoration: none;
  text-align: center;
  right: 55px;

}
    </style>
    <div  align="center">
        <a href="">
            <img src="../img/logout.png">
        </a>
    </div>
<div id="menu">
 
    <a href="../trangchu.php">Trang Chủ</a>
    |
    <a href="../view/dangky.php">Đăng ký học phần</a>
    |
     <a href="dsdangky.php">Thời khóa biểu</a>
    |
    <a href="../view/profile.php"> <?php 
      include('../publish/connect.php');
     
    //Lấy dữ liệu nhập vào
    $username = $_SESSION['username'] ;

    $sql="SELECT * FROM sinhvien WHERE username='$username'";
    $kq=mysqli_query($conn,$sql);
    if (mysqli_num_rows($kq) > 0) {
      {while ($row= mysqli_fetch_assoc($kq)) {
            # code...
            echo $row['hoten'];

            
          }
          }
    }


       ?></a>
       -
    <a href="../login.php">Đăng Xuất</a>
    

</div>
</div>
<div style="padding-top: 60px">
<div align="center" style="font-weight: bold; font-size: 30px; color: green; margin: 15px">ĐĂNG KÝ HỌC PHẦN</div>
<div align="center">
  <style type="text/css">
    #thongtin{
      color: black;
      margin: 30px;
      font-weight: bold;
    }
  </style>
  <div id="thongtin">
    <?php 
      include('../publish/connect.php');
     
    //Lấy dữ liệu nhập vào
    $username = $_SESSION['username'] ;

    $sql="SELECT * FROM sinhvien WHERE username='$username'";
    $kq=mysqli_query($conn,$sql);
    if (mysqli_num_rows($kq) > 0) {
      {while ($row= mysqli_fetch_assoc($kq)) {
            # code...
            echo "Họ tên: ".$row['hoten']."<br>";

            echo "Mã Sinh Viên: ".$row['masinhvien'];
            echo "  -  Lớp: ".$row['lop'];
          }
          }
    }


       ?>
   </div>
</div>

<div style="position: relative; left: 50px">
<span style="font-size: 20px">
 <b>DANH SÁCH HỌC PHẦN - KHOA: 
  

<?php
$username = $_SESSION['username'] ;
include_once("../publish/connect.php");
      
  $sql="SELECT  tenkhoa
  FROM sinhvien INNER JOIN lophoc
        on sinhvien.lop=lophoc.lop
        inner join khoa
        on lophoc.makhoa=khoa.makhoa
        
        where username='$username'";
  $kq=mysqli_query($conn,$sql);
                                    
  if (mysqli_num_rows($kq) > 0) {
      {while ($row= mysqli_fetch_assoc($kq)) {
        echo $row['tenkhoa'];
                                    }}
                                  }
?></b> 
</span>
<span style="font-size: 20px; position: relative; top: 10px">
 <form action="dangky_find.php" method="post">
Tìm kiếm Môn học - Giảng viên:
<input type="text" name="search" id="">
<input type="submit" name="tim" id="" value="Tìm kiếm">
</form>
</span>

<form action="">

    <table width="1500px" style="padding-top: 20px">
      <tr align="center" style="height: 30px; width: 500px; text-align: center;background: #009AFF; color: white;">
        <td style="width: 80px"><b>STT</b></td>
        <td style="width: 500px" ><b>Môn học</b></td>
          <td ><b>Giảng viên</b></td>
          <td style="width: 80px" ><b>Số tín chỉ</b></td>
          <td width="200px"><b>Học phí</b></td>
           <td width="200px"><b>mô tả </b></td>
          <td></td>
      </tr>
      <?php 
      $username = $_SESSION['username'] ;
      include_once("../publish/connect.php");
      
    $sql="SELECT  *
   FROM sinhvien INNER JOIN lophoc
        on sinhvien.lop=lophoc.lop
        inner join khoa
        on lophoc.makhoa=khoa.makhoa
        inner join monhoc
        on khoa.makhoa = monhoc.makhoa
        where username='$username'";
   $kq=mysqli_query($conn,$sql);
   $id=0;

    while ($row=mysqli_fetch_array($kq)) {
      $mamonhoc = $row['mamonhoc'];
       $sinhvien = $row['masinhvien'];
        $tenmonhoc = $row['tenmonhoc'];
        $giangvien = $row['giangvien'];
        $sotinchi = $row['sotinchi'];
        $hocphi = $row['hocphi'];
      $id+=1;
      echo "<tr style='background: #ffd4aa; height: 30px; vertical-align: middle;'>";
      echo "<td style='text-align:center;'>".$id."</td>";
      echo "<td class='td'>".$row['tenmonhoc']."</td>";
      echo "<td class='td'>".$row['giangvien']."</td>";
      echo "<td align='center'>".$row['sotinchi']."</td>";
      echo "<td class='td'>".$row['hocphi']."</td>";
      echo "<td width='100px' align='center'><a href='../model/xldkmonhoc.php?mamonhoc=".$mamonhoc."'> <img align='center' width='15px' src='../img/add.png'></a></td>";
      echo '</tr>';
    }
       ?>
    </table>
   </form>
</body>
</html>