<?php
	include("config.php");
?>

<!DOCTYPE html>
<html>
<head>
	<title>Albums</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/materialize.css">
	<link rel="stylesheet" type="text/css" href="css/hover-min.css">
	<link rel="stylesheet" type="text/css" href="css/fa-svg-with-js.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://unpkg.com/ionicons@4.4.6/dist/css/ionicons.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/fontawesome-all.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</head>
<body>

	<div class="navbar-fixed">
	    <nav id="navbar" class="black">
	      <div class="nav-wrapper">
	        <a href="index.php" id="brand-link" class="brand-logo">Fireflies</a>

	        <div class="sidebar black">
	        	<div class="sideItems" id="first">
	        		<a class="sideLinks" href="brands.php"><i class="medium sideIcons material-icons">search</i>Brands</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="category.php"><i class="medium sideIcons material-icons">folder</i>Categories</a>
	        	</div>			
			</div>

			<a class="sideBtn"></a>

	      </div>
	    </nav>
	</div>

	<div class="albumContainer">
		<div class="row">
			<div class="col s12 m12 l12">
				<h3 id="Head" align="center">Explore the Brands</h3>
			</div>
		</div>
        <!-- <a href='album.php?Album_id=" .$row['Album_id']. "'> -->
		<?php
			$albumQuery = mysqli_query($con, "SELECT * FROM brands");

			while ($row = mysqli_fetch_array($albumQuery)) {
				echo " <div class='hvr-shrink gridViewItem'>
							
								<img class='circle' src=' ". $row['brand_logo']. " '>
								<div class='gridViewInfo' align='center'> " 
									. $row['brand_name'] . "
								</div>
							</a>   
						</div>";	
			}
		?>

	</div>
</body>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</html>