<?php
	include("config.php");
?>

<!DOCTYPC html>
<html>
<head>
	<title>BuyingGuide</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/materialize.css">
	<link rel="stylesheet" type="text/css" href="css/hover-min.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="https://unpkg.com/ionicons@4.4.6/dist/css/ionicons.min.css" rel="stylesheet">
</head>
<body>

	<!--Navbar begins here -->
	<div class="navbar-fixed ">
	    <nav id="navbar" class="black">
	      <div class="nav-wrapper">
	        <a href="#" id="brand-link" class="brand-logo hvr-grow">Lithium</a>
	        <!--<ul class="right hide-on-med-and-down">
	          <li><a class="links hvr-grow" href="register.php">Log In</a></li>
	        </ul> -->

	        <div class="sidebar black">
	        	<div class="sideItems" id="first">
	        		<a class="sideLinks" href="Search.php"><i class="medium sideIcons material-icons">search</i>Search</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="webpages/albums.php"><i class="medium sideIcons material-icons">music_note</i>Albums</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="playlist.php"><i class="medium sideIcons material-icons">library_music</i>Playlists</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="genre.php"><i class="medium sideIcons material-icons">library_music</i>Genre</a>
	        	</div>
	        	<div class="sideItems">
	        		<a class="sideLinks" href="queries.php"><i class="medium sideIcons material-icons">library_music</i>Queries</a>
	        	</div>				
			</div>

			<a class="sideBtn"></a>
	      </div>

	    </nav>

	</div>
	<!--Navbar ends here -->

	

	<div id="page">
		<div class="row">
			<div class="col s12 m12 l12">
				<h2 id="main-title" align="center">Welcome To Lithium</h2>
				<p id="sub" align="center">If it ain't broke, don't fix it</p>
				<!--<a id="join-us" class="waves-effect waves-light btn" href="#">Join Us</a> -->
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