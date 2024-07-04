<?php 
//config.php
session_start();

$conexao = mysqli_connect('localhost', 'root', '', 'noticias');

mysqli_query($conexao, "SET NAMES 'utf-8'");
mysqli_query($conexao, "SET character_set_connection=utf8");
mysqli_query($conexao, "SET character_set_client=utf8");
mysqli_query($conexao, "SET character_set_results=utf8");

if (mysqli_connect_errno()){
    printf("A conexão com o banco de dados falho: %s/n", mysqli_connect_error());
    exit;
}
?>