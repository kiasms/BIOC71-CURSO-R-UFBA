######################################################
# Introdução Linguagem R                          ####
# Vitor Passos Rios                               ####
# Universidade Federal da Bahia                   ####
# https://github.com/vrios/Intro-Linguagem-R/wiki#####

# Lucas Menezes Silva

######################################################

#diferencie a função source da função load()
#Source vai ler todo o seu script e executar até o fim do mesmo. load() é uma função que vai colocar o conteúdo de um arquivo para um objeto no R. 

#baixe para seu diretório de trabalho o arquivo toroidal.distance.R, disponível
#em https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/toroidal.distance.R, e o arquivo distancias.csv, disponivel em 

#Abra toroidal.distances.R no R
# O que você precisa fazer para que as funções contidas nesse arquivo estejam disponíveis para uso no R?
source(file="toroidal.distance.R")
#precisa utilizar a função source. Digitar source(endereço onde o arquivo está, no caso, o diretorio dos arquivos)

# Faça o procedimento que você descreveu acima
source(file="toroidal.distance.R")

# Dentro do script toroidal.distance.R, altere o nome da função toroidal.distances para distance.matrix (substitua o nome dentro do arquivo) e salve o arquivo
# com o script aberto, substituido, salvando clicando no disquete azul

# Carregue o arquivo distancias.csv para dentro do objeto distancias
distancias = read.csv("distancias.csv")

#chame a função distance.matrix() com o objeto distancias, e o argumento tam = 100
distance.matrix(distancias, tam = 100)

# O que aconteceu?
#AIDSSSSSSSSS O MAMUTE PEGOU AIDSSSSSSSSSS
#O R carregou, mas só carregou porque eu já tinha recarregado toroidal.distance.R com a função distnce.matrix 

# O que você precisa fazer para que você possa usar a função distance.matrix?
# recarregar o arquivo editado toroidal.distance.R com a função distance.matrix 

# Salve o resultado do comando acima com o nome de matriz.distancias.csv
write.csv(x= distance.matrix(distancias, tam = 100), 
          file = "matriz.distancias.csv")

# Usando a linha de comando, importe o arquivo dragoes.xsls para o objeto DnD
#https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/dragoes.xlsx (não abra o excel nem salve em .csv)
library(readxl)
download.file("https://raw.githubusercontent.com/vrios/Intro-Linguagem-R/master/arquivos/dragoes.xlsx", destfile = dragoes.xlsx)
read_xlsx("dragoes.xlsx")
DnD = read_xlsx("dragoes.xlsx")

# Confira a estrutura do arquivo
#conferido

# Há algum NA? houve algum problema com o cabeçalho?
#sim! Sim! há colonas com o título com parentese, palavras com acento e dados faltantes (NA).

# Refaça o script da aula 2, salvando o objeto caixeta, adicionando a coluna coletor e desvio, em um arquivo chamado caixeta_com_desvio.csv
read.csv(file = "caixeta.csv")
caixeta = read.csv(file = "caixeta.csv")
caixeta$coletor = "Darwin"
mean(caixeta$h)
altura = c(caixeta$h)
mediaaltura = rep(90.28238, 1027)
caixeta$desvio= (c(caixeta$h) - c(mediaaltura)) 
write.csv(x= caixeta, 
          file = "caixeta_com_desvio.csv")
