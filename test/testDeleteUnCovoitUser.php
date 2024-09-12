<?php

include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_MODELE.'DAOCovoitUser.php';

$user1 = new CovoitUser(17, "Denis", "Bris", "0101010101", "casser@gmail.com", "jeSuisT@nPer3!");

var_dump(deleteCovoitUser($user1));

?>