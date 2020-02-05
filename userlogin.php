<?php
session_start();

$con = mysqli_connect('localhost','root','');

mysqli_select_db($con,'homeservice');

$name=$_POST['user'];
$pass=$_POST['Password'];

$s="select * from user where name='$name' && Pass='$pass'";

$result = mysqli_query($con,$s);

$num = mysqli_num_rows($result);

if($num == 1){
	$_SESSION['username']=$name;
	header('location:a.html');
}else{
	echo '<script type="text/javascript">';
	echo "alert('Incorrect username or password');window.location.href='login_user.html' ";
	echo '</script>';
}

?>