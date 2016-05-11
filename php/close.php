<?php 
	session_start();
	//Nota no he utilizado session_destroy() porque en dado caso que haya mas de una web en el servidor con sesiones las cerraria todas

	//solo destruyo las variales creadas al inicio una a una
	unset($_SESSION["i"]); 
  	unset($_SESSION["u"]);
  	unset($_SESSION["full"]);
  	unset($_SESSION["access"]);
	//session_destroy();
	header("Location: ../index.php");
 ?>