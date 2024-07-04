<?php 
//func.login.php

// 1) passo - conexão com o banco de dados
include ('../config.php');

// Aqui eu pego as informações digitadas pelo usuário
$login = (string)addslashes($_POST['user']);

$senha = (string)addslashes(md5($_POST['pass']));

// 2) passo - sql que busca informações digitadas pelo usuário
$sql_user="select * from usuario where user_login='".$login."' and user_senha='".$senha."'";

// 3) passo - executar o sql acima
$rel = mysqli_query($conexao, $sql_user);

// captura os registros executados
$valor = mysqli_fetch_array($rel);
// Testar o login contando os registros que foram executados acima
$existe = mysqli_num_rows($rel);

// Testar a senha, se estiver ok, a variável $existe=1
if ($existe==1){
    $_SESSION['codsessao']=$valor['id'];
    $_SESSION['nome']=$valor['user_nome'];
    $_SESSION['tipo']=$valor['tipo'];
    $_SESSION['ativo_inativo']=$valor['ativo_inativo'];

    print "<script>document.location='login.php?pagina=index.php'</script>";
}
else{
    print "<script>document.location='login.php?pagina=login2.php'</script>";
}
?>