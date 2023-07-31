<?php if (session_id() == '' || !isset($_SESSION)) {
      session_start();
    } ?>
    <!DOCTYPE html>
    <html>
    <head>
    <!--     <link rel="stylesheet" href="css/qlbh.css" /> -->
        <title>Admin</title>
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
        </style>
        <div align="center">
            <a href="">
                <img src="../img/logout.png">
            </a>
        </div>
    <div id="menu">
      <a href="../trangchu2.php">Trang Chủ</a>
    |
    <a href="quanlysinhvien.php">Quản lý sinh viên</a>
    |
     <a href="quanlymonhoc.php">Quản lý môn học</a>
    |
    <a href="quanlylophoc.php">Quản lý lớp học</a>
    |
    <a href="chnganh.php">Quản lý lớp chuyên ngành</a>
    |
    <a href="quanlykhoa.php">Quản lý khoa học</a>
    |
      Bạn là ADMIN -
    <a href="../login.php">thoát</a>

    </div>
    </div>
    <div style="padding-top: 60px">
   
    <div align="center">
      <style type="text/css">
        #thongtin{
          color: black;
          margin: 30px;
          font-weight: bold;
        }
      </style>
     
    </div>
    <div>
      <div align="center" style="font-size: 30px; margin: 20px">DANH SÁCH KHOA</div>
   

<div>
<form action="" method="POST">

   <table align="center" width="100%" style="vertical-align: middle; border: 1px;border-color:white;  background: white;">
    <tbody>
      <tr style="height: 50px; text-align: center; vertical-align:middle; background: #0c4ca3;">
        <td ><b>STT</b></td>
        <td><b>Mã Khoa</b></td>
         <td><b>Tên khoa</b></td>
         
      </tr>
    
          
       
<?php
                include_once("../publish/connect.php");
  
                $sql="SELECT * FROM khoa ";
                $kq=mysqli_query($conn,$sql);
                

                $id=0;
                while ($row=mysqli_fetch_array($kq)) {
                    $khoa = $row['tenkhoa'];
                    $id+=1;
                    echo "<tr style='background: rgb(179, 215, 255); height: 30px; vertical-align: middle;'>";
                        echo "<td style='text-align:center;'>".$id."</td>";
                         echo "<td>".$row['makhoa']."</td>";
                        echo "<td>".$row['tenkhoa']."</td>";
                        // echo "<td>".$row['sdt']."</td>";

                        
                    echo "</tr>";   
                    # code...
                }

?>

    </tbody>
</table>
    
</form>
</div>




    </body>
    </html>