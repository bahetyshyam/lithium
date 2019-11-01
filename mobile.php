<?php
	include("config.php");
	include("assets/classes/Mobile.php");

	if(isset($_GET['mobile_id'])) {
			$mobileId = $_GET['mobile_id'];
	}	 
	else {
	 	echo "Not Found";	
	 }

	$mobile = new Mobile($con, $mobileId);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Mobile</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/materialize.css">
	<link rel="stylesheet" type="text/css" href="css/hover-min.css">
	<link rel="stylesheet" type="text/css" href="css/fa-svg-with-js.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://unpkg.com/ionicons@4.4.6/dist/css/ionicons.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
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
    
    <div class="mobileContainer">
		<div class='row'>
			<div id='mobile-desc' class='col m7 l7'>
				<img src='<?php echo $mobile->getPicture() ?>'  class = 'img-fluid'>
				<h2 align = 'center'><?php echo $mobile->getTitle() ?></h2>
			</div>
			<div id='mobile-spec' class='col m5 l5 grey darken-4'>
				<h2 align='center'>Specifications</h2>

				<div class='spec-items'>
					<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-microchip'></i><?php echo $mobile->getSoc() ?></p>
				</div>
				<div class='spec-items'>
					<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-mobile-alt'></i><?php echo $mobile->getDisplay() ?></p>
				</div>
				<div class='spec-items'>
					<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-camera'></i><?php echo $mobile->getCamera() ?></p>
				</div>
				<div class='spec-items'>
					<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-battery-three-quarters'></i> <?php echo $mobile->getBattery() ?></p>
				</div>
				<?php 
					$flip = $mobile->getFlipkart();
					$amaz = $mobile->getAmazon();
					if($flip != '') {
						echo "<a href='$flip' id='brand-btn' class='waves-effect waves-light btn'><img class='circle brand-icon' src='assets/images/flipkart.jpg'>Flipkart</a>";
					}
					if($amaz != '') {
						echo "<a href='$amaz' id='brand-btn' class='waves-effect waves-light btn'><img class='circle brand-icon' src='assets/images/amazon.jpg'>Amazon</a>";
					} 
				?>
			</div>
		</div>
    </div>

    <div class="videoContainer">
    	<div class="row">
    		<div id="videoFile" class="col l12">
    			<iframe width="960" height="600" src='<?php echo $mobile->getReview() ?>' frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    		</div>
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