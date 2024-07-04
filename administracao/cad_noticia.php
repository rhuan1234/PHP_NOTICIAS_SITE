<?php 
//cad_noticia.php
include('../config.php')
?>
<table width="650" align="center" cellpadding="2" cellspacing="2" border="0">
    <form name="form1" method="post" action="cad_noticia_x.php?processa_pagina=inclui">
    <tr>
        <td>ID NOTÍCIA</td>
        <td><input type="text" name="txt_id_noticia" size="3" readonly style="background-color: #e0e0e0;"</td>
    </tr>
    <tr>
        <td>TÍTULO</td>
        <td><input type="text" name="txt_titulo" size="58" value="" maxlength="150" required="required"></td>
    </tr>
    <tr>
        <td>CONTEÚDO</td>
        <td><textarea type="text" name="txt_conteudo" rows="10" cols="58" required="required"></textarea></td>
    </tr>
    <tr>
        <td>CATEGORIA</td>
        <td>
            <select name="txt_categoria" required="required">
                <option>Escolha categoria</option>
                <?php 
                $categoria_sql = "select * from categorias";

                $resultado = mysqli_query($conexao, $categoria_sql);

                while($linha_categoria=mysqli_fetch_row($resultado)){
                    echo "<option value=$linha_categoria[0]>$linha_categoria[1]</option>";
                }

                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td>DATA NOTÍCIA</td>
        <td>
            <input type="date" name="txt_data" value="" required="required">
        </td>
    </tr>
    <tr>
        <td>ATIVO OU INATIVO</td>
        <td><input type="radio" name="txt_ativo_inativo" value="1" required="required">Ativo

        <input type="radio" name="txt_ativo_inativo" value="2" required="required">Inativo</td>
    </tr>
    <tr>
        <td colspan="2" align="center" > <input type="submit" value="Incluir" >&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <input type="button" value="Limpar" onclick="javascript:document.location='login.php?pagina=cad_noticia.php'"> &nbsp;&nbsp;&nbsp;&nbsp; 
        
        <input type="button" value="Voltar" onclick="javascript:document.location='login.php?pagina=index.php'"></td>
    </tr>
    </form>
</table>
<table width="650" align="center" cellpadding="2" cellspacing="2" border="1">
<tr>
    <td>ID</td>
    <td>TÍTULO</td>
    <td>CONTEÚDO</td>
    <td>CATEGORIA</td>
    <td>DATA</td>
    <td>ATIV/INATIV</td>
    <td>AÇÃO</td>
</tr>
<?php 
$sql_generico="select n.id, n.titulo, n.conteudo, c.nome, n.data_noticia, case n.ativo_inativo when '1' then 'Ativo' when '2' then 'Inativo' end as ativo_inativo 
from noticias n
inner join categorias c on c.id=n.cod_categoria
order by n.data_noticia";

$consulta_generico=mysqli_query($conexao, $sql_generico);

while($linha=mysqli_fetch_array($consulta_generico)){
    echo '<tr>';
    echo '<td>'.$linha['id'].'</td>';
    echo '<td>'.$linha['titulo'].'</td>';
    echo '<td>'.substr($linha['conteudo'], 0, 200).'</td>';
    echo '<td>'.$linha['nome'].'</td>';
    echo '<td>'.$linha['data_noticia'].'</td>';
    echo '<td>'.$linha['ativo_inativo'].'</td>';
    echo '<td><img src="botao_editar.jpg" width="30" heigth="30">&nbsp;&nbsp;&nbsp;<img src="botao_excluir.jpg" width="30" heigth="30"></td>';
    echo '</tr>';
};
?>
</table>