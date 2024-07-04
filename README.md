# BAIXANDO E RODANDO O PROJETO
- crie uma pasta no localhost que você usa para rodar o PHP com o nome /photofolio2
- Salve todos os arquivos do projeto na pasta photofolio2
- Exporte o arquivo "banco_de_noticias.sql" para o banco de dados mysql.
- No arquivo "config.php" linha 5 faça a seguinte alteração -> $conexao = mysqli_connect('Seu_Server', 'Seu_Usuário', 'Sua_Senha ', 'noticias');  -  ('Noticias' é o nome do banco de dados importado. Não precisa ser alterado)
- Para acessar o site, acesse a url -> http://localhost/photofolio2/
- Para cadastrar uma noticia acesse a url -> http://localhost/photofolio2/administracao/
- O usuario é -> fulano
- A senha é -> 123456
- Clique em 'Cadastro de Noticia' para poder cadastrar novas notícias e ver as cadastradas

# OBJETIVOS DO PROJETO
Foi feito enquanto eu fazia uma das matérias do curso Técnico em Sistemas Para Internet chamada Programação Dinâmica para Web.
O foco é no Back End, por isso a linguagem empregada foi o PHP para otimizar algumas partes que em HTML ficam muito repetitivas e fazer conexão
com o banco de dados para por o conteúdo de notícias na página, com uma área específica para o usuário (o site propriamente dito) e uma área
para o administrador da página para poder gerenciar com novas notícias, ver as postadas, inativar e editar alguma caso queira.

# SOBRE O PROJETO
- Como o foco não é FrontEnd, foi utilizado um template de http://www.os-templates.com/ para a estética do site. O arquivo licence.txt mostra todos os créditos do template.
- Falta terminar os botões de Inativar e editar uma notícia
- Foram empregadas as seguintes tecnologias em todo o projeto: PHP, HTML, MYSQL, CSS e GIT
