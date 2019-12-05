<?php
	include("config.php");
?>

<!DOCTYPE html>
<html>
<head>
	<title>Categories</title>
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
	<!--Navbar begins here -->
	<div class="navbar-fixed ">
	    <nav id="navbar" class="black">
	    	<div class="nav-wrapper">
				<a href="index.html" id="brand-link" class="brand-logo hvr-grow">Lithium</a>

				<div class="sidebar black">
					<div class="sideItems" id="first">
						<a class="sideLinks" href="brands.php"><i class="medium sideIcons material-icons">building</i>Brands</a>
					</div>
					<div class="sideItems">
						<a class="sideLinks" href="search.php"><i class="medium sideIcons material-icons">search</i>Search</a>
					</div>				
				</div>

				<a class="sideBtn"></a>
			</div>
	    </nav>
	</div>
	<!--Navbar ends here -->

	<div class="categoryContainer">
		<div class="row">
			<div class="col s12 m12 l12">
				<h3 id="Head" align="center">Smartphone categories</h3>
				<?php
					$categoryQuery = mysqli_query($con, "SELECT * FROM category");
					$count = 0;

					while ($row = mysqli_fetch_array($categoryQuery)) {
						if($count == 0) {
							echo " <div class='row cat-right'>
									<div class='col m4 l5 catName'>
									<a href='category.php?category_id=" .$row['category_id']. "'>
									<h2 class='categoryText'>" . $row['category_name'] . "</h2>
									<p class='categoryText'>" . $row['category_desc'] . "</p>
									</div>
									<div class='col m8 l7 second'>
										<img class='catImage' src=' ". $row['category_photo']. " '>
									</div>
									</a>
								</div>";
							$count = 1;
						}
						else {
							echo " <div class='row cat-left'>
									<a href='category.php?category_id=" .$row['category_id']. "'>
									<div class='col m8 l7 second'>
										<img class='catImage' src=' ". $row['category_photo']. " '>
									</div>
									<div class='col m4 l5 catName'> <h2 id='left-data-h2'>" 
										. $row['category_name'] . "</h2>
										<p id='left-data-p'>" . $row['category_desc'] . "</p>
									</div>
									</a>
								</div>";
							$count = 0;
						}
					}
				?>
			</div>
				</div>	
</body>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  		crossorigin="anonymous"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</html>