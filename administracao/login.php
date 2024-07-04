<?php 
session_start();

error_reporting(~E_NOTICE);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Administrativa</title>
</head>
<body>
    <center><img src="topo.png" alt=""></center>
    <div id='geral'>
    <?php 
    (!empty($_GET["pagina"]) ? include(trim($_GET["pagina"])) : include('login2.php'));


    ?>
    </div>
</body>
</html>