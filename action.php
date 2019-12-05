<?php
    include("config.php");

    if(isset($_POST['query'])) {
        $input = $_POST['query'];
        $query = mysqli_query($con, "select mobile_id, mobile_name from mobile where 
        mobile_name like '%".$input."%'");
        if(mysqli_num_rows($query) > 0) {
            while($row = mysqli_fetch_array($query)) {
                echo "<a class='search-items' href='mobile.php?mobile_id=". $row[0] ."' class='search-items'>". $row[1] ."</a>";
            }
        }
        else {
            echo "<p class='search-items-not-found'>This smartphone does not exist</p>";
        }
    }
?>
