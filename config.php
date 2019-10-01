<?php
	ob_start();

	$con = mysqli_connect("localhost", "root", "", "lithium");

	if(mysqli_connect_errno()) {
		echo "Failed to connect: " . mysqli_connect_errno();
	}
?>