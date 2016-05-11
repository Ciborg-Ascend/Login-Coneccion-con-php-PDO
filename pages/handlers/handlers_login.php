<?php
include '../connection/connection.php';
    session_start();
    
    if(isset($_POST['txtUser']) && !empty($_POST['txtUser']) && isset($_POST['txtPassword']) && !empty($_POST['txtPassword'])){

        $user = $_POST['txtUser'];
        $pass = $_POST['txtPassword'];

        //Esto de abajo md5  te puede servir por si tienes cifradas las claves en tu base de datos
        //$pass = md5($_POST['txtPassword']);
        //Las claves las puedes cifrar de la misma manera; al momento que recibas los valores has
        //$pass = md5($REQUEST['tutext']); y la mandas a tu insert y es recomendable usar en mysql el tipo de dato char(32)

        $stat = $con->prepare("SELECT * FROM ctrl_sesion WHERE user_name = '$user' AND password = '$pass' AND status = 1");
        $stat->execute();
        $row = $stat->fetch(PDO::FETCH_ASSOC);
        $id = $row['id'];
        $username = $row['user_name'];
        $password = $row['password'];
        $name = $row['name'];
        $lastname = $row['lastname'];
        $type = $row['type_access'];

        if($row){
            //Despues de la consulta con los datos que se extraen de la db creamos variales de sesion propias de php
            $_SESSION['i'] = $id;
            $_SESSION['u'] = $username;
            $_SESSION['full'] = $name." ".$lastname;
            $_SESSION['access'] = $type;
            $html = "<div class='mensaje'>Procesando...<div>;";
            echo $html;
?>
        <script type="text/javascript">
            window.location = "pages/home.php";
        </script>
<?php 
        }else{
            $html = "<div class='mensaje'>Datos incorrectos<div>";
            echo $html;
        }
    }else{
        $html = "<div class='mensaje'>Error al iniciar sesión!!<div>;";
            echo $html;
    }
?>