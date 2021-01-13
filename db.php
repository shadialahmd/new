<?php
    // Enter your host name, database username, password, and database name.
    // If you have not set database password on localhost then set empty.
$DBhost="localhost";
    $DBuser="root";
    $DBname="souqps";
    $DBpassword="";
    $con = mysqli_connect($DBhost,$DBuser,$DBpassword,$DBname);
    // Check connection
    // Check connection
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
?>
