CREATE DATABASE  IF NOT EXISTS `noticias` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `noticias`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: noticias
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Entretenimento'),(2,'Economia'),(3,'Esporte'),(4,'Jogos'),(5,'Saúde'),(6,'Educação'),(7,'Política'),(8,'Carros');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(120) NOT NULL,
  `conteudo` text NOT NULL,
  `cod_categoria` int NOT NULL,
  `data_noticia` date NOT NULL,
  `ativo_inativo` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_artigos_categorias_idx` (`cod_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Disparada dos preços reduz o padrão de vida dos brasileiros','A economia brasileira enfrenta neste ano uma combinação nefasta: inflação de dois dígitos com recessão. Até dezembro, a expectativa é que a atividade dê marcha à ré e caia mais de 3%, com a inflação ultrapassando os 10%. É um salto de quatro pontos em relação ao aumento do custo de vida registrado no ano passado (6,41%). A última vez que a inflação bateu dois dígitos foi em 2002, mas nesse ano não houve recessão.<br/><br/>\n\nA disparada dos preços - puxada por choque tarifário, desvalorização do real e escalada dos serviços - provoca um desconforto no padrão de vida das pessoas. \"Os brasileiros ficaram mais pobres este ano, tanto pelo aumento da inflação como pela retração da atividade\", afirma o economista Heron do Carmo, professor da Faculdade de Economia e Administração da Universidade de São Paulo e um dos maiores especialistas em inflação.<br/><br/>\n\nEle observa que a inflação combinada com recessão tem um efeito devastador: faz com que as pessoas se sintam mais desconfortáveis, afeta a confiança de consumidores e tem reflexos políticos. Esse desconforto já apareceu no carrinho do supermercado. Pela primeira vez nos últimos dez anos, as vendas do setor devem fechar no vermelho, segundo a Associação Brasileira de Supermercados. De janeiro a outubro, o recuo foi de 1,02%.',2,'2015-12-08',1),(2,'Inflação sobe mais para as famílias de menor renda, diz FGV','A inflação medida pelo Índice de Preços ao Consumidor - Classe 1 (IPC-C1) aumentou 1,06% em novembro último, resultado 0,36 ponto percentual superior à taxa apurada em outubro, quando o índice registrou 0,7%, informou o Instituto Brasileiro de Economia da Fundação Getulio Vargas (Ibre-FGV).<br/><br/>\n\nCom este resultado, o indicador, que mede a variação das famílias com renda de até 2,5 salários mínimos, acumula alta de 10,45% no ano, enquanto a inflação dos últimos 12 meses ficou em 11,22%.<br/><br/>\n\nCom o resultado de novembro, a inflação para as famílias de menor renda ficou acima do IPC-BR, que mede a variação de preços para as famílias com nível de renda situado entre 1 e 33 salários mínimos mensais, e que fechou o mês de novembro com alta de 1% e o acumulado dos últimos doze meses com variação de 10,39%, resultado que chega a ser 0,83 ponto percentual superior ao IPC-C1.',2,'2015-12-07',1),(3,'Famílias e estoques impulsionam PIB da zona do euro','A alta dos estoques e os maiores gastos das famílias foram as principais forças motrizes por trás do crescimento econômico da zona do euro no terceiro trimestre, compensando o impacto negativo do comércio, mostraram os dados finais da agência de estatística da União Europeia (Eurostat).<br/><br/>\n\nA Eurostat confirmou nesta terça-feira que o crescimento econômico nos 19 países que compartilham o euro foi de 0,3% na comparação trimestral entre julho e setembro e de 1,6% na comparação anual, como anteriormente estimado e esperado pelos mercados.',2,'2015-12-07',1),(4,'Comic Con mostrou que pode se comparar a grandes eventos pop mundiais','Maior? Com certeza. Melhor? Em termos. A Comic Con Experience encerra sua segunda edição corrigindo alguns escorregões da estreia, insistindo em outros, mas se firmando em definitivo como o maior evento pop do Brasil. A natureza da festa, que tem em seu centro (e em seu nome) as histórias em quadrinhos, ganhou status de gente grande com um elenco de convidados verdadeiramente de peso, além da representatividade gigantesca de artistas nacionais.<br/><br/>\n\nE é difícil mirar mais alto que ter Frank Miller como convidado de honra. O artista já legendário, que ajudou a definir o que é a arte sequencial moderna, não chegou à CCXP como alguém relegado a segundo plano, ou vivendo de glórias passadas. Miller está lançando o terceiro volume de seu Batman – O Cavaleiro das Trevas, três décadas depois da série original, e chega revigorado para retomar seu trabalho como um dos criadores mais controversos e indispensáveis do quadrinho moderno.',1,'2015-12-07',1),(5,'Angelina Jolie serve de inspiração a jovens cineastas cambojanos','Angelina Jolie se transformou em inspiração para os jovens cineastas cambojanos, que veem em sua relação com o país, onde a atriz adotou seu primeiro filho e atualmente roda um filme, uma esperança para a incipiente sétima arte local.<br/><br/>\n\nJolie participou recentemente de um debate com jovens criadores cambojanos no teatro Chaktomuk, em Phnom Penh, onde explicou a origem de seus laços com o Camboja para uma plateia que aplaudia cada umas de suas intervenções.<br/><br/>\n\n\"Não estava orgulhosa do que era e do que pensava e me dei conta que havia muitas pessoas que tinham muito a me ensinar\", lembrou a atriz americana sobre suas emoções durante a filmagem de \"Lara Croft: Tomb Raider\" no Camboja, em 2000.<br/><br/>\n\nA também diretora - que estava acompanhada de seu marido, Brad Pitt, que se sentou entre o público --recordou o momento em que decidiu adotar, em 2002, seu primeiro filho, Maddox, nascido em Battambang, no noroeste do país.',1,'2015-12-08',1),(6,'Flamengo fecha contratação de Juan; Rodinei e Chiquinho serão os próximos','O Flamengo fechou a contratação do zagueiro Juan nesta terça-feira (8). Um dia depois da reeleição do presidente Eduardo Bandeira de Mello, o clube sacramentou os últimos detalhes com o jogador formado na Gávea.<br/><br/>\n\nO defensor, de 36 anos, firmou vínculo por um ano com bônus por produtividade. A contratação estava acertada desde o meio de novembro e dependia apenas das urnas. Juan, ex-Internacional, será a principal referência para os mais jovens no elenco.<br/><br/>\n\nAlém do veterano, os dirigentes buscam outro zagueiro para o setor mais criticado em 2015. Os laterais Rodinei e Chiquinho serão os próximos reforços confirmados pela diretoria.<br/><br/>\n\nO primeiro se destacou na Ponte Preta e chegou a ter um acordo com o Grêmio. No entanto, o Flamengo atravessou o negócio e com maior poder financeiro seduziu o atleta e os seus representantes.',3,'2015-12-08',1),(7,'Apesar de finais, Palmeiras é o paulista que menos aparece na Globo em 2015','Classificado para duas finais do Paulista e da Copa do Brasil, o Palmeiras ainda assim foi o grande clube paulista que menos teve jogos transmitidos pela Globo em 2015. E o levantamento do blog nem levou em conta as partidas da Libertadores com Corinthians e São Paulo na tela.<br/><br/>\n\nÉ uma reclamação recorrente da torcida palmeirense que a televisão aberta passa poucos compromissos da equipe. O argumento na emissora, nos bastidores, é de que a audiência cai em relação a são-paulinos e corintianos. A final da Copa do Brasil entre santistas e alviverdes, no entanto, foi recorde de público.<br/><br/>\n\nFato é que a Globo transmitiu 23 jogos do Palmeiras na TV Aberta no ano. O Santos, outro cuja torcida reclama de poucas transmissões, teve 25 partidas. O Corinthians lidera com 40 jogos, e o São Paulo vem em seguida com 35.',3,'2015-12-08',1),(8,'Dois anos depois, \"GTA V\" ainda é um dos jogos mais populares do mundo','Lançado em setembro de 2013 para PlayStation 3 e Xbox 360, \"Grand Theft Auto V\" já tem mais de dois anos de idade e segue firme como um dos jogos mais populares dos últimos anos, graças às novas edições (PlayStation 4, Xbox One e PC receberam versões do jogo) e ao viciante modo multiplayer online.<br/><br/>\n\nEm 2013, \"GTA V\" foi alçado ao título de maior lançamento da história do entretenimento, faturando US$ 1 bilhão nas primeiras 24 horas, entre outros números mirabolantes. Este ano, quando o jogo chegou aos computadores em sua versão definitiva, o fenômeno se repetiu: \"Grand Theft Auto V\" vendeu 1 milhão de cópias para PC no primeiro dia - nada mal para um jogo com quase 2 anos de idade.<br/><br/>\n\nPara quem tem um computador de ponta, a versão PC de \"Grand Theft Auto V\" traz gráficos superiores aos vistos nos consoles atuais, mas só o incremento visual não é o bastante: o game ganhou novas músicas e ferramentas de edição de vídeo. O chamado Modo Diretor de \"GTA V\" chegou posteriormente ao PS4 e ao Xbox One, para a alegria dos fãs e diretores de cinema amadores.',4,'2015-11-30',1),(9,'Empresa britânica cria porcos resistentes à doença da orelha azul','Doença pode ser fatal ao afetar o sistema imunológico e não tem cura.\nPorcos não produzem proteína específica para que vírus se reproduza.<br/><br/>\n\nUma companhia britânica de genética animal criou os primeiros porcos do mundo resistentes a uma doença viral comum na espécie, usando uma nova tecnologia de edição de genes.<br/><br/>\n\nA Genus, que fornece sêmen de porcos e bois para fazendeiros no mundo todo, afirmou nesta terça-feira (8) que trabalhou com a universidade norte-americana do Missouri para desenvolver porcos resistentes ao vírus da Síndrome Reprodutiva e Respiratória dos Suínos (conhecido na sigla em inglês por PRRSv).\n\nAo usar técnica de edição precisa de genes, a equipe da universidade conseguiu criar porcos que não produzem uma proteína específica necessária para que o vírus se reproduza nos animais. A pesquisa foi publicada na revista científica Nature Biotechnology.<br/><br/>\n\nEstudos iniciais sugerem que os porcos resistentes ao PRRSv, quando expostos ao vírus, não ficam doentes e continuam a ganhar peso normalmente.',5,'2015-12-08',1),(10,'Tratar a pré-diabetes pode evitar o surgimento da diabetes tipo 2','A pré-diabetes é uma condição em que o nível de açúcar no sangue está entre 100 mg/dl e 125 mg/dl, ou seja, acima do normal (acima de 100 mg/dl de sangue ) e muito próximo do que define a diabetes (acima de 125 mg/dl). Para explicar como reverter esse quadro que pode levar à diabetes, o Bem Estar recebeu o endocrinologista Antônio Chacra e a nutricionista Alessandra Rodrigues.<br/><br/>\n\nPessoas com histórico de diabetes na família ou na gestação, obesos, sedentários e acima dos 40 anos são as que têm maior risco de serem pré-diabéticas. No entanto, já está cientificamente comprovado que é possível prevenir a diabetes do tipo 2 com a redução de apenas 5% a 10% do peso corporal, sem tomar remédio. Não é necessário sequer atingir o IMC ideal.<br/><br/>\n\n<b>Será que estou chegando lá?</b><br/>\nHá quatro perguntas a responder. O “sim” em pelo menos uma delas significa que é hora de checar os níveis de açúcar no sangue. A dosagem é um teste muito simples, disponível no SUS, nos planos de saúde e a R$ 8 em serviços privados.',5,'2015-12-08',1),(11,'Fuvest anula uma questão de biologia da primeira fase do vestibular 2016','A Fuvest anulou uma questão de biologia, a de número 43 da prova V, da primeira fase do vestibular 2016 aplicada no dia 29 de novembro. A pergunta tratava da fecundação em mamíferos e em plantas.\nNas outras versões, a mesma questão aparece como K – 88, Q – 08, X – 19, Z – 53.<br/><br/>\n\nSegundo a Fuvest, nenhuma das alternativas propostas para a questão estavam corretas.<br/><br/>\n\nO edital prevê que na hipótese de anulação de questão do exame, será atribuído a todos\nos candidatos presentes na prova o valor da questão anulada.<br/><br/>\n\nDe acordo com a correção do cursinho Oficina do Estudante, realmente não havia alternativa correta. Tanto em mamíferos quanto em gimnosperamas e angiospermas, o resultado da fecundação é um embrião diploide. E nas gimnospermas, o tecido de reserva é haploide, já que não se origina da fecundação. Nas angiospermas, ele é proveniente da fecundação de duas células masculinas e uma feminina, conforme afirma o gabarito da Oficina.<br/><br/>\n\nO Etapa também havia apontado o erro. O cursinho explica que, em fanerógamas, o endosperma primário das gimnospermas é haploide e isso não foi considerado na alternativa A, antes considerada a correta. O endosperma das angiospermas é tipicamente triploide.',6,'2015-12-07',1),(12,'Filho de ex-diarista se forma em Yale e trabalha pela educação do Brasil','Uma bolsa de estudos em um colégio católico conseguida pela tia, que era freira, e a cobrança da mãe por boas notas foram determinantes na história de Daniel José da Silva Oliveira, de 27 anos. Ele diz que, além das oportunidades, teve sorte. Mas não teria saído de Bragança Paulista, no interior de São Paulo, e estudado na Suíça, ajudado refugiados de guerra na Jordânia, trabalhado no mercado financeiro no Brasil, e concluído o mestrado em Yale, uma das universidades mais importantes do mundo, se tivesse deixado de lado seu sonho de - fazer grandes coisas e mudar o mundo.<br/><br/>\n\nDaniel voltou ao Brasil em junho deste ano, depois de várias temporadas no exterior, para realizar a vontade de trabalhar com algo que ajude a transformar o país. Daniel atua em uma consultoria, em São Paulo, que auxilia estados e municípios a melhorarem a educação pública.',6,'2015-12-07',1),(13,'Oposição apresenta chapa alternativa para comissão do impeachment','Deputados de oposição e dissidentes da base governista protocolaram nesta terça-feira (8) uma chapa alternativa (pró-impeachment) para concorrer a vagas na comissão especial que dará parecer pela continuidade ou não do processo de afastamento da presidente Dilma Rousseff.<br/><br/>\n\nDe acordo com os oposicionistas, integram a chapa 39 deputados indicados por PSDB, SD, DEM, PPS, PSC, PMDB, PHS, PP, PTB, PEN, PMB, PSB e PSD (veja a lista com os deputados ao final desta reportagem). Segundo os deputados, a chapa foi batizada de \"Unindo o Brasil\" e foi protocolada na Câmara às 13h50. Para poder participar da eleição do colegiado, que terá 65 vagas, uma chapa precisa contar com 33 indicações.<br/><br/>\n\nNa hora da eleição para a comissão especial, que deve ser realizada na tarde desta terça em sessão no plenário da Câmara, os deputados terão que escolher entre a chapa oficial e a alternativa.\nOs partidos que não tiverem indicações na chapa vencedora serão instados a apresentar as indicações para completar as vagas. Em seguida, esses nomes serão votados. A votação para eleger os integrantes da comissão será secreta.',7,'2015-12-07',1),(14,'Wagner oferece almoço em Brasília aos nove governadores do Nordeste','O ministro-chefe da Casa Civil, Jaques Wagner, oferece almoço nesta terça-feira (8) aos nove governadores dos estados do Nordeste no Palácio do Planalto para discutir o zika vírus e a “pauta política” do país, informou a assessoria da pasta.<br/><br/>\n\nA reunião entre eles ocorre uma semana após o presidente da Câmara dos Deputados, Eduardo Cunha (PMDB-RJ), acolher pedido de impeachment da presidente Dilma Rousseff e um dia após sair na imprensa conteúdo de uma carta do vice-presidente da República Michel Temer à petista na qual diz que ela não confia nele nem no PMDB, partido do qual ele é presidente.',7,'2015-12-08',1),(15,'Volkswagen mostra nova cara com Passat, seu \"Classe C melhorado\"','Se deixou de ter o carro mais vendido ainda em 2014, em 2015 a marca não fez um novo best seller com Fox e up!, ao passo em que também foi afetada pelo escândalo global de fraude com motores a diesel. A Volkswagen do Brasil quer entrar em 2016 com ar de renovação. O ciclo será iniciado pela oitava geração do Passat, modelo executivo que virou carro de imagem da fabricante no Brasil, e que chega às lojas oficialmente em janeiro. O primeiro lote desembarca até o fim deste ano no país, com apenas 25 unidades.<br/><br/>\n\nPor enquanto, o novo Passat será vendido apenas na configuração sedã. Aliás, ele é o primeiro três-volumes da marca a ser construído sobre a plataforma modular MQB, a mesma do hatch Golf e do Audi A3 (hatch e sedã). Tal base garante presença de mais tecnologias para segurança e condução dinâmica.',8,'2015-12-07',1),(16,'nordeste enchente','enchente',2,'2015-12-08',1),(17,'nor','erert',6,'1111-11-11',1),(18,'OPA','QWQWWQW',6,'1111-11-11',1);
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_nome` varchar(80) NOT NULL,
  `user_login` varchar(80) NOT NULL,
  `user_senha` varchar(90) NOT NULL,
  `email` varchar(90) NOT NULL,
  `tipo` int NOT NULL,
  `ativo_inativo` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Fulano da Silva','fulano','e10adc3949ba59abbe56e057f20f883e','fulano@gmail.com',1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 11:03:13
