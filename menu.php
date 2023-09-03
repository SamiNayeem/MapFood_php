<?php

require_once "dbconnect.php";




$getMenu = "SELECT item_name, description, price FROM menu WHERE restaurant = 4";

$result = mysqli_query($conn, $getMenu);
foreach($result as $row){
    echo $row['item_name'] . " " . $row['description'] . " " . $row['price'] . "<br>";
}

?>