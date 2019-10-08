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
	<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/fontawesome-all.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</head>
<body>

	<div class="navbar-fixed">
	    <nav id="navbar" class="black">
	      <div class="nav-wrapper">
	        <a href="../index.php" id="brand-link" class="brand-logo">Fireflies</a>

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
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                1st coloumn containing the image of the mobile
            </div>
            <div class="col-md-6">
                2nd coloumn containing the specs
            </div>
        </div>
    </div>
    
</body>
<script type="text/javascript" src="js/index.js"></script>
</html>