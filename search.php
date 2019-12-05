<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lithium</title>
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
                <a href="index.html" id="brand-link" class="brand-logo hvr-grow">Lithium</a>
    
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
        <!--Navbar ends here -->

        <div class="searchBack">
            <h2 id="searchHead">Search for Smartphones...</h2>
            <form action="search.php" method="post">
                <input id="bar" type="text" name="searchField" required>
                <button id="srch" class="waves-effect waves-light btn hvr-grow" type="submit" value="Search" name="search-btn">Search</button>
            </form>
            <div id="results">
            </div>
        </div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</html>