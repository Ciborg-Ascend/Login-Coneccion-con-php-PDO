<!Doctype html>
<html lang="es">
<head>
    <title>Inicio de sesion</title>
    <?php include 'php/header.php'; ?>
    <script language="javascript">
        $(document).ready(function() {
            $('#form, #form_login').submit(function() {
                $.ajax({
                    type: 'POST',
                    url: $(this).attr('action'),
                    data: $(this).serialize(),
                    success: function(data) {
                        $('#result').html(data);
                    }
                    
                })        
                return false;
            });
            
        });
        function alert(){
            $(document).ready(function() {
                setTimeout(function() {
                    $(".mensaje").fadeOut(2500);
                },5000);
            });
            setTimeout("alert()",3000);
        }
    </script>
</head>

<body onload="alert();">
    <?php include 'php/menu.php'; ?>
    <div id="content">
        <div class="login">
            <label>INICIO DE SESIÓN</label>
            <form action="pages/handlers/handlers_login.php" id="form_login">
                <label class="label-left">Usuario</label>
                <input type="text" name="txtUser" required maxlength="20">
                <label class="label-left">Contraseña</label>
                <input type="password" name="txtPassword" required maxlength="32">
                <input class="btn" type="submit" name="btnLogin" value="Iniciar">
            </form>
            <div id="result">

            </div>
        </div>
    </div>
</body>
    <?php include 'php/foot.php'; ?>
</html>