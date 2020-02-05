<?php
session_start();
//header('location:a.html');

$con = mysqli_connect('localhost','root','');

mysqli_select_db($con,'homeservice');

$name=$_POST['user'];
$pass=$_POST['Password'];

$s="select * from user where name='$name'";

$result = mysqli_query($con,$s);

$num = mysqli_num_rows($result);

if($num == 1){
	echo '<script type="text/javascript">';
	echo "alert('Username already exist');window.location.href='login_user.html' ";
	echo '</script>';
	//header('location:login_user.html');
}else{
	$reg="insert into user(name,pass) values ('$name','$pass')";
	mysqli_query($con,$reg);
	echo '<script type="text/javascript">';
	echo "alert('Successfully registered');window.location.href='a.html' ";
	echo '</script>';
	//echo "Registration successfull";
}


?>