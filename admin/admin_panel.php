<!DOCTYPE html>
<html>
<head>
	<title>Admin Panel</title>
	<style>
		body{
			margin: 0px;
			border: 0px;
			background-color: #028b7f;
		}
		#header{
			width:100%;
			height: 150px;
			background:#028b7f;
			color: white;
			margin-left: 140px;
		}
		#sidebar{
			width: 300px;
			height: 700px;
			background:#028b7f;
			color: white;
			float: left;
		}
		#data{
			height: 700px;
			font-family: sans-serif;
	        background: #009688;
			color: white;
			font-family: Helvetica;
			font-size: 25px;
		}
		#adminLogo{
			background:white;
			border-radius: 50px;
		}
		ul li{
			padding:20px;
			border-bottom: 2px solid grey;
		}
		ul li:hover{
           background:black;
           color: white;
		}
		li a{
			color: white;
		}
	</style>
</head>
<body>
  <div id="header">
  	 <center><img src="adminlog.png" alt = "adminLogo" id="adminLogo">
  	 	<br><br>Admin Panel
  	 </center>
  </div>
  <div id="sidebar">
  	<ul>
  		<li><a href="view_carpenter.php"> carpenter </a></li>
  		<li><a href="view_cleaner.php"> cleaner </a></li>
  		<li><a href="view_gardener.php"> gardener </a></li>
  		<li><a href="view_painter.php"> painter </a></li>
  		<li><a href="view_mechanic.php"> mechanic </a></li>
  		<li><a href="view_electrician.php"> electrican </a></li>
  		<li><a href="view_pest.php"> pest control </a></li>
  		<li><a href="view_plumber.php"> plumber </a></li>
  		<li><a href="view_salon.php"> salon </a></li>
  		<li><a href="logout.php"> logout </a></li>
  	</ul>
  </div>
  <div id="data"><br>
  	 <center><h3>Hello!</h3>
  	 <p>Welcome to admin panel</p>
  	 </center>
  </div>
</body>
</html>