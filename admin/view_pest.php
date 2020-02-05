<!DOCTYPE html>
<html>
<head>
	<title></title>
<style>

table{
	border-collapse: collapse;
	width: 100%;
}
th,td{
	text-align: left;
	padding: 8px;
	text-align: center;
}
tr:nth-child(even){
	background-color: #f2f2f2;
}
th{
	background-color: #009688;
	color: white;
}

</style>
</head>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "homeservice";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT name,mob_no,date,time,pin_code,place,address FROM pest";
$result = $conn->query($sql);

if (!$result) {
    trigger_error('Invalid query: ' . $conn->error);
}

if ($result->num_rows > 0) { 
    echo "<table><tr><th>name</th><th>Mobileno</th><th>Date</th><th>Time</th><th>pin code</th><th>Place</th><th>Address</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["name"]. "</td><td>" . $row["mob_no"]."</td><td>" . $row["date"]."</td><td>" . $row["time"]."</td><td>" . $row["pin_code"]."</td><td>" . $row["place"]."</td><td>" . $row["address"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "<table><tr><th>No carpenter Services requested</th></tr></table>";
}

$conn->close();
?> 
<body>

</body>
</html>