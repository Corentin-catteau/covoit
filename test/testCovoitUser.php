<?php

include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_ENTITY.'CovoitUser.php';

$user0 = new CovoitUser();
$user1 = new CovoitUser(100, "catteau", "corentin", "0101010101", "corentin.catt@gmail.com", "jeSuisT@nPer3!");

var_dump($user0);
var_dump($user1);

//Recup les setter et les getter
 
?>
