<?php

include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_MODELE.'DAOCovoitUser.php';

header('content-type:application/json');

$method = $_SERVER['REQUEST_METHOD'];
switch ($method){
	case "GET":
	    if (isset($_GET['id'])){
		    $id = $_GET['id'];
            $unCovoitUser = getUnCovoitUser($id);
            echo(json_encode($unCovoitUser));
	    } else {
		echo(json_encode(getLesCovoitUser()));
	    }
	    break;

	case "POST":
        if (isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['tel']) && isset($_POST['mail']) && isset($_POST['mdp'])){
            $nom = $_POST['nom'];
            $prenom = $_POST['prenom'];
            $tel = $_POST['tel'];
            $mail = $_POST['mail'];
            $mdp = $_POST['mdp'];
            $unC = new CovoitUser(null, $nom, $prenom, $tel, $mail, $mdp);
            addCovoitUser($unC); 
        }
	     break;


	case "PATCH":
        parse_str(file_get_contents('php://input'), $_PATCH);
        if (isset($_PATCH['id']) && isset($_PATCH['nom']) && isset($_PATCH['prenom']) && isset($_PATCH['tel']) && isset($_PATCH['mail']) && isset($_PATCH['mdp'])){
            $id = $_PATCH['id'];
            $nom = $_PATCH['nom'];
            $prenom = $_PATCH['prenom'];
            $tel = $_PATCH['tel'];
            $mail = $_POST['mail'];
            $mdp = $_POST['mdp'];
            $unC = new CovoitUser($id, $nom, $prenom, $tel, $mail, $mdp);
            updateCovoitUser($unC);
        }
	   break; 

    case "DELETE":
	   parse_str(file_get_contents('php://input'), $_DELETE);
          if (isset($_DELETE['id'])) {
            $id = $_DELETE['id'];
            $unC = new CovoitUser($id, null, null, null, null ,null);
            deleteCovoitUser($unC);
          }
	   break; 
	  	
}


?>