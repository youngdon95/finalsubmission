<?php
  
  # $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
 //Connect to the database
    $host = "127.0.0.1";
    $user = "champion_boy";                     //Your Cloud 9 username
    $pass = "";                                  //Remember, there is NO password by default!
    $dbb = "TRNAPPLICATION";                                  //Your database name you want to connect to
    $port = 3306;      
    $database2 = "IRD";//The port #. It is always 3306
    
     $db = mysqli_connect($host, $user, $pass, $database2, $port)or die(mysql_error());
     $link = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());
?>