<?php 
// 1) Criar o sql que comunica com o banco
$categoria="select c.nome, n.titulo, n.conteudo, n.id
from noticias n
inner join categorias c on c.id=n.cod_categoria
where n.id=".$_GET['id_noticia'];

// 2) Executar o sql acima
$consulta_categoria=mysqli_query($conexao, $categoria);

// 3) Mostrar a consulta acima
$linha_categoria=mysqli_fetch_row($consulta_categoria);
?>
<div class="wrapper col2">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <h1><?php echo $linha_categoria[0].' &raquo;'.$linha_categoria[1]; ?></h1>

    <p><?php echo $linha_categoria[2];
    ?></p>
    
  </div>
</div>