######################################################
# Introdução Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki

# Lucas Menezes Silva

#####################################################

#####Usando o R como calculadora#####

#Digite no R os códigos abaixo.
#Dica: escreva neste arquivo, ao lado do comando, o que ele faz,
#como no exemplo abaixo

1 + 1 #soma os valores

# O símbolo # representa um comentário, isto é, tudo que vier à direita
# dele será ignorado quando o R ler o arquivo

34 - 72.3 #subtracao dos valores 34 menos 72.3 que e igual -38.3

# use pontos como separador de decimal. O que acontece se você usar virgula?
78 / 3 #divisao dos valores 78 dividido por 3 que e igual a 26
2 ^ 3 #potencia do primeiro valor elevado ao segundo valor. 2 elevado a 3 potencia que e igual a 8.
3 * 2 #multiplicacao do valores 3 vezes 2 que e igual a 6.
sqrt(2) #raiz quadrada do valor 2 que e igual a 1.414214
pi #valor de pi que e igual 3.14
log(x = 3,base = 10) #logaritmo do valor 3 na base 10 que é igual a 0.4771213
exp(x = 1) #funcao expodencial do valor 1 que e igual a 2.718282
#o que querem dizer estes valores dentro do parêntese? porque usamos o = aqui?

#especifica os argumentos da funcao e os valores que serao calculados.

#####Atribuição de valores e criação de objetos#####
#O que os comandos abaixo fazem?
objeto1=3 #cria o objeto1 com valor igual a 3
objeto1 #ao dar comando confirma que o objeto.1 tem o valor igual a 3 
objeto = 42 #cria o objeto com valor igual a 42
objeto #ao dar comando confirma que o objeto tem valor igual a 42
objeto.2 <- 42 #cria o objeto.2 com valor igual 42
objeto.2 #ao dar comando confirma que o objeto.2 tem valor igual 42
# Os símbolos = e <- fazem basicamente a mesma coisa. Que coisa?
# = significa que o objeto e igual ao valor, <- significa que o valor e  

objeto.cubico <- objeto^3 #cria o objeto objeto.cubico que é igual ao objeto(ja criado igual a 42) elevado a 3 potencia que é igual a 74088
resultado.1 <- (objeto.cubico / 3) + 7 #cria o objeto resultado.1 que é igual ao objeto objeto.cubico dividido pelo valor 3 e somando ao valor 7 que é igual a  24703 
objeto.texto <- "texto sempre vem entre aspas" #cria objeto objeto.texto que possui o texto "texto sempre vem entre aspas"
objeto.texto #ao dar comando confirma que o objeto objeto.texto possui como valor o texto "texto sempre vem entre aspas"
objeto.texto.2 <- "42" #cria o objeto objeto.texto.2 o qual é igual possui o texto "42" (não é valor)

objeto.vetor.1 = 1:34 #cria o objeto objeto.vetor.1 o qual é um vetor que se inicia com o valor 1 e vai até o valor 34 
objeto.vetor.1 #ao dar comando confirma que o objeto objeto.vetor.1 possui o vetor com o valor 1 ao 34
objeto.vetor2 = c(1, 74.5, 48) #cria o objeto objeto.vetor2 o qual combina 3 argumentos que são os 3 valores dentro do parentese
objeto.vetor2 #ao dar comando confirma que o objeto.vetor2 é composto por 3 argumentos que são valores 

?seq #comando que possui a funcao de ir até o help da funcao seq
objeto.vetor3 = seq(from = 20, to = 32, by = 0.5) #cria o objeto objeto.vetor3 que é igual a um vetor que inicia no valor 20 e finaliza no valor 32, contado de meio a meio.  

#podemos calcular estatísticas com o r
mean(objeto.vetor3) #media - valor da media dos argumentos que compõe o objeto objeto.vetor3 = 26
var(objeto.vetor3) #variancia - valor a variancia dos argumentos que compõe o objeto objeto.vetor3 = 13.54167
median(objeto.vetor3) #mediana - valor da mediana dos argumentos que compõe o objeto objeto.vetor3 = 26
min(objeto.vetor3) #maxima e minima - valores máximos e minimos de todos os valores presentes nos argumentos que compoe o objeto objeto.vetor3 = 20
max(objeto.vetor3) #max -  valor máximo de todos os valores presentes nos argumentos que compoe o objeto objeto.vetor3 = 32
diff(objeto.vetor3) #calcula a diferença entre os elementos sucessivos do vetor

# R também faz comparações entre objetos
42 > 7 #valor 42 é maior que o valor 7
objeto == objeto.2 #objeto é igual ao objeto.2 que possuem os mesmos valores 42
objeto == objeto.texto.2 #objeto é igual ao objeto.texto.2 sendo o último com o texto 42.
# o que aconteceu acima? #em 42>7 apareceu TRUE no console o que significa que o valor 42 de fato é maior do que o valor 7; em objeto==objeto.2 também resultou em TRUE no console o que mais uma vez confirma como verdadeiro já que ambos possuem o mesmo valor; em objeto==objeto.texto.2 resultou em TRUE no console mesmo o valor 42 do primeiro não ser exatamente igual ao  texto "42" do segundo o R interpretou com verdadeiro.
7.1 <= 7.001 #FALSE no console já que 7.001 não é igual ao valor anterior 7.1
?"<" #comando help para pedir ajuda do comando "<"

#pedindo ajuda
?pi #comando para pedir help que refere-se às constantes incorporadas no R.
?log #comando para pedir help das funções logaritmos e expondenciais
??lm #comando para procurar pelo termo "lm" dentro de todas as páginas de ajuda do R
help(log) #comando similar ao ? - pede help para a função log
help.search("anova") #comando para procurar pelo termo "anova" dentro de todas as páginas de ajuda do R

#####Arquivos e diretórios#####
# Como você descobre o diretório de trabalho? 
#Depende do SO do computador. Como estou usando Windows o diretório defaut é onde o R foi instalado. Para descobrir e verificar onde o diretório está basta usar o comando getwd(). Ao executar, o console irá exibir onde está o caminho do diretório.
getwd()
# Como você lista o conteúdo do diretório de trabalho?
#O conteúdo do diretório pode ser exibido a partir do comando dir(). Ao executar, o console irá listar o conteúdo do diretorio que está definido para o R.
dir()
# Como você define o diretório de trabalho?
#A difinição do diretório pode ser feita a sua escolha. Para definir o diretório basta seguir os comandos setwd("endereco do diretorio de sua preferencia" - lembrando que precisa colocar no padrão linux, ou seja, as barras são invertidas \ = /).
setwd("S:/RStudio/Analises")
getwd()
# Como você carrega um arquivo de script?
#Basta ir na barra de tarefas do R e clicar em File/Open file/procurar onde seu script está salvo.

# Como você salva os objetos que criou?
#Na janela do canto superior a direita do R clicando no disquete azul.

# Como você carrega os objetos que criou?
#Na janela do canto superior a direita do R clicando no disquete azul.


# Como ver quis objetos estão na sua área de trabalho?
#Na janela do canto superior a direita do R na aba "Enviroment"

# Como remover objetos da área de trabalho?
#Na janela do canto superior a direita do R clicando na vassoura

##### Lidando com erros#####
# O que acontece quando você digita os comandos abaixo? Como consertar cada erro?
objetol #objeto não encontrado. Para corrigir basta você verificar se o nome do objeto está realmente certo e dar o comando novamente ou atribuir um valor ou valores ao seu objeto (neste caso criando um novo objeto)
objeto. texto #objeto não encontrado. Para corrigir basta tirar o espaço que está entre "." e "texto" e dar comando.
Objeto #objeto não encontrado. Para corrigir basta substituir a letra "O" que está maiúscula para "o" minuscula em Objeto.
source("chuchu.R") #O arquivo chuchu.R não encontra-se no diretorio. Para corrigir coloque o arquivo "chuchu.R" no diretorio do R o qual foi definido por você.
source(chuchu.R) #objeto chuchu.R não foi encontado. Para corrigir crie o objeto chuchu.R ou verifique se o nome do objeto está correto.
setwd("C:/CavernaDoDragão") #não pode musar o diretorio de trabalho. Para corrigir verifique se de fato este diretorio existe. Se não existir, crie-o e retorne ao comando.
getwd #necessita do complemento () para exibir o endereço do diretorio. Para corrigir complete o comando com ().
Getwd() #erro em achar a função. Para corrir edite o comando em questão trocando a letra "G" em maiúsculo para "g" em minúsculo.
#dica: quando o R der erro, copie e cole a mensagem de erro no google

higiene = c("papel", "pasta", "sabao")
list(higiene)
