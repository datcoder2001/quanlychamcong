<?php
$manv=$_GET['x'];
$con=mysqli_connect('localhost','root',"",'quanlychamcong')or die("Kết nối database không thành công");
$sql="delete from nhan_vien where Ma_nv='$manv'";
$result=mysqli_query($con, $sql) or die("Câu truy vấn sai!");
if($result==true)
{
     header("Location:ql_nhan_vien.php");
}
?>