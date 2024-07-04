<div class="wrapper col1">
  <div id="featured_slide"> 
    <!-- ####################################################################################################### -->
    <div id="slider">
      <ul id="categories">
        <?php 
        $var_categoria=(!empty($_GET['categoria'])? "and c.nome='".trim($_GET['categoria']."'") : "");

        $procurar = (!empty($_GET['procurar'])? "and n.conteudo like '%".trim($_GET['procurar']."%'") : "");

        // 1) Cria o sql da pesquisa no banco de dados
        $categoria="select c.nome, n.titulo, n.conteudo, n.id
        from noticias n
        inner join categorias c on c.id=n.cod_categoria
        where (n.ativo_inativo=1)"
        .$var_categoria."
        ".$procurar."order by n.data_noticia
        limit 0,30";

        // 2) Executar sql acima
        $consulta_categoria=mysqli_query($conexao, $categoria);

        // 3) Mostrar o sql acima
        while ($linha_cat_noticia=mysqli_fetch_row($consulta_categoria)){
            echo '<li class="category">
            <h2>'.$linha_cat_noticia[0].'</h2>
            <a href="#"><img src="images/demo/150x110.gif" alt="" /></a>
            <p>'.substr($linha_cat_noticia[2], 0, 200).'</p>
            <p class="readmore"><a href="index.php?pagina=noticia.php&id_noticia='.$linha_cat_noticia[3].'">Read More &raquo;</a></p>
          </li>';
        }
        ?>
        
      </ul>
      <a class="prev disabled"></a> <a class="next disabled"></a>
      <div style="clear:both"></div>
    </div>
    <!-- ####################################################################################################### --> 
  </div>
</div>
<!-- ####################################################################################################### -->
