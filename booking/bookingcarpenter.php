<?php
session_start();
header('location:../a.html');
$link = mysqli_connect("localhost", "root", "", "homeservice");
 
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
$name = mysqli_real_escape_string($link, $_REQUEST['name']);
$mobileno = mysqli_real_escape_string($link,$_REQUEST['mobileno']);
$date = mysqli_real_escape_string($link,$_REQUEST['date']);
$time = mysqli_real_escape_string($link,$_REQUEST['time']);
$pincode = mysqli_real_escape_string($link,$_REQUEST['pincode']);
$place = mysqli_real_escape_string($link, $_REQUEST['place']);
$address = mysqli_real_escape_string($link, $_REQUEST['address']);

 
$sql = "INSERT INTO carpenter (name,mob_no,date,pin_code,place,address,time) VALUES ('$name','$mobileno','$date','$pincode','$place','$address','$time')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

mysqli_close($link);
?>