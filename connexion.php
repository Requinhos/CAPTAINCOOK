<?php

		$serveur ="localhost";

		$base = "captain cook";

		$utilisateur = "root";

		$mot_passe = "";


$cx_serv = @mysql_connect($serveur,$utilisateur,$mot_passe);

if (!$cx_serv)
{
	echo 'Erreur de connexion';
}
else
{
	$cx_base = @mysql_select_db($base,$cx_serv);
}



?>
