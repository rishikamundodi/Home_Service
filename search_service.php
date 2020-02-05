<?php
session_start();

$con = mysqli_connect('localhost','root','');

mysqli_select_db($con,'homeservice');

$name=$_POST['searchservice'];

$s="select * from service where name='$name'";

$result = mysqli_query($con,$s);

$num = mysqli_num_rows($result);

if($num == 1){
	$_SESSION['username']=$name;
	header('location:carpenter.php');
}else{
	header('location:carpenter.php');
}
?>