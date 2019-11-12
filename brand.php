<?php
	include("config.php");
	include("assets/classes/Brand.php");
	include("assets/classes/Mobile.php");

	if(isset($_GET['brand_id'])) {
			$brandId = $_GET['brand_id'];
	}	 
	else {
	 	echo "Not Found";	
	 }

	$brand = new Brand($con, $brandId);
	$mobile = new Mobile($con, $brandId);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Brands</title>
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
	        <a href="index.php" id="brand-link" class="brand-logo">Lithium</a>

	        <div class="sidebar black">
	        	<div class="sideItems" id="first">
	        		<a class="sideLinks" href="brands.php"><i class="medium sideIcons material-icons">search</i>Brands</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="categories.php"><i class="medium sideIcons material-icons">folder</i>Categories</a>
	        	</div>			
			</div>

			<a class="sideBtn"></a>

	      </div>
	    </nav>
	</div>

	<div class="albumContainer">
		<div class="entity">
			<h1 id="Head" align="center"><?php echo $brand->getTitle(); ?></h1>
			<?php
				$query = $mobile->getQuery();
				while($row = mysqli_fetch_array($query)) {
					echo "
						<div class='hvr-shrink gridViewItemMobile'>
							<a href='mobile.php?mobile_id=" .$row['mobile_id']. "'>
								<img class='brandImage' src=' ". $row['mobile_picture']. " '>
								<div class='gridViewInfoMobile'> <p class='categoryText'>" 
									. $row['mobile_name'] . "</p>
								</div>
							</a>   
						</div>;
					";
				}
			?>
			
		</div>
	</div>
</body>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</html>



