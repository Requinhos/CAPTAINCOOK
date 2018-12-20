<?php
include("connexion.php");

$email="email";
$psw="psw";
$nom="nom";
$prenom="prenom"
  
if ( isset($_GET['email']) ) {
    $email =$_GET['email'];
    }
if ( isset($_GET['psw']) ) {
    $psw =$_GET['psw'];
    }
if ( isset($_GET['nom']) ) {
    $nom =$_GET['nom'];
    }
if ( isset($_GET['prenom']) ) {
    $prenom =$_GET['prenom'];
    }

$requetes= [
  "INSERT INTO utilisateur (id_utilisateur,rang_utilisateur,nom,prenom,mot_de_passe,email)
  VALUES (default,'','$nom','$prenom','$psw','$email')"
];


foreach($requetes as $requete){
  echo $requete.'<br>';
  $bdd->query($requete);
}
