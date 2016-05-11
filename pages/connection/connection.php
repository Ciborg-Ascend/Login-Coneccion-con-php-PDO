<?php
  $server = 'mysql:dbname=ctrl; host=127.0.0.1';
  $user = 'root';
  $password = '';
      try {
          $con = new PDO($server,$user, $password);
          //echo "Conect success!!";
      } catch (PDOException $e) {
          echo "<center>";
          echo "Ha ocurrido un error!!";
          echo "<br>";
          echo "Number:";
          print $e->getCode();
          echo "<br>";
          echo "Información:";
          print $e->getMessage();
          echo "</center>";
      }

?>