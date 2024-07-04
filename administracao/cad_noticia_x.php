<?php 
// 1) passo - conexão com o banco de dados

use function PHPSTORM_META\type;

include ('../config.php');

// Aqui eu pego as informações digitadas pelo usuário
$titulo = mysqli_real_escape_string($conexao, $_POST['txt_titulo']);
$conteudo = mysqli_real_escape_string($conexao, $_POST['txt_conteudo']);
$categoria = mysqli_real_escape_string($conexao, $_POST['txt_categoria']);
$data = mysqli_real_escape_string($conexao, $_POST['txt_data']);
$ativo_inativo = mysqli_real_escape_string($conexao, $_POST['txt_ativo_inativo']);




// 2) Comando para inserir os dados na tabela
$sql_user = "INSERT INTO noticias (titulo, conteudo, cod_categoria, data_noticia, ativo_inativo) VALUES
('$titulo', '$conteudo', '$categoria', '$data', '$ativo_inativo');";

// 3) passo - executar o sql acima
mysqli_query($conexao, $sql_user);
header("Refresh: 2; URL=cad_noticia.php");
?>
<h1>NOTICIA INCLUÍDA COM SUCESSO!</h1>