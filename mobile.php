<?php
	include("config.php");
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
	        <a href="../index.php" id="brand-link" class="brand-logo">Lithium</a>

	        <div class="sidebar black">
	        	<div class="sideItems" id="first">
	        		<a class="sideLinks" href="../search.php"><i class="medium sideIcons material-icons">search</i>Search</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="../genre.php"><i class="medium sideIcons material-icons">music_note</i>Genre</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="../playlist.php"><i class="medium sideIcons material-icons">library_music</i>Playlists</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="../queries.php"><i class="medium sideIcons material-icons">question_answer</i>Queries</a>
	        	</div>	
			</div>
			<a class="sideBtn"></a>
	      </div>
	    </nav>
    </div>
    
    <div class="mobileContainer">
    	<?php
			$mobileQuery = mysqli_query($con, "SELECT * FROM mobile WHERE mobile_id=12");
			while ($row = mysqli_fetch_array($mobileQuery)) {

if($row['mobile_soc'] == '')
								echo "Hello World";
				
				echo "<div class='row'>
						<div id='mobile-desc' class='col m7 l7'>
							<img src=' ".  $row['mobile_picture'] ."' class = 'img-fluid'>
							<h2 align = 'center'>". $row['mobile_name'] ." </h2>
						</div>
						<div id='mobile-spec' class='col m5 l5 grey darken-4'>
							<h2 align='center'>Specifications</h2>

							<div class='spec-items'>
								<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-microchip'></i> ". $row['mobile_soc'] ."</p>
							</div>
							<div class='spec-items'>
								<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-mobile-alt'></i> ". $row['mobile_display'] ."</p>
							</div>
							<div class='spec-items'>
								<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-camera'></i> ". $row['mobile_camera'] ."</p>
							</div>
							<div class='spec-items'>
								<p class='spec-desc'><i style='margin-right: 20px; font-size: 30px;' class='sideIcons fas fa-battery-three-quarters'></i> ". $row['mobile_battery'] ."</p>
							</div>
						</div>
					</div>";
			}

		?>
    </div>
</body>
<script type="text/javascript" src="js/index.js"></script>
</html>