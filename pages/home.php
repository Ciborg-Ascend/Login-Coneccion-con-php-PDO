<?php
	session_start();
	if (isset($_SESSION['i']) && isset($_SESSION['u']) && isset($_SESSION['full']) && isset($_SESSION['access'])) {
		$id = $_SESSION['i'];
		$username = $_SESSION['u'];
        $fullname = $_SESSION['full'];
        $typeaccess = $_SESSION['access'];
?>
<!Doctype html>
<html lang="es">
<head>
	<title>Panel principal</title>
<body>
	<div id="content">
        <?php
        echo "Bienvenido: ".$username."<br>";
        echo "Tu nombre es: ".$fullname."<br>";
        echo "Tus privilegios son: ".$typeaccess."<br>";
        ?>
        <a href="../php/close.php">Cerrar la sesion</a>
    </div>
</body>
</html>
<?php
	}else{
		header("Location: ../index.php");
	}
?>