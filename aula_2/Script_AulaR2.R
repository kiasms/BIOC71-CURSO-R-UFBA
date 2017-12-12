######################################################
# Introdução Linguagem R
# Vitor Passos Rios
# Universidade Federal da Bahia
# https://github.com/vrios/Intro-Linguagem-R/wiki
#####################################################

#quando possível, sua resposta deve ser um código do R

#####Trabalhando com dados#####
# o que é um dataframe? Qual a diferneça entre um dataframe e um list?
#data.frame é função que cria matriz a qual é composta por objetos que podem ter classes diferentes (numeros, texto, fator) no R. List é o comando que faz listagem elementos que compõe um determinado objeto.

# o que as funções abaixo fazem? O que elas retornam?
is.vector() #Esta função pergunta ao R se o que está dentro do parentese é um vetor. Se for um vetor a resposta é TRUE (no console) e não for um vetor a resposta é FALSE. 
is.numeric() #Esta função pergunta ao R se o que está dentro do parentese é composto por valores. Se forem valores a resposta é TRUE (no console) e não forem valores a resposta é FALSE.
is.character() #Esta função pergunta ao R se o que está dentro do parentese é texto. Se for texto a resposta é TRUE (no console) e não for texto a resposta é FALSE.
is.matrix(peso) #Esta função pergunta ao R se o que está dentro do parentese é uma matriz. Se for uma matriz a resposta é TRUE (no console) e não for uma matriz a resposta é FALSE.
is.na(vacas) #Esta função pergunta ao R se o que está dentro do parentese (pode ser um objeto, ou tabelas) possui celulas vazias. Se sim é TRUE e se não é FALSE.


#o que queremos dizer quando dizemos uma função "retorna" alguma coisa?
#Falta responder

#o que a função summary() faz?
#Função que sumariza os seus dados em várias analises estatísticas como media, mediana, valor max-min.

#Três áreas foram submetidas aplicação de três adubos diferentes, e uma foi
#mantida como controle. A biomassa seca (kg) por parcela foi medida para
#verificar se houve efeito do adubo. Os dados obtidos foram:

#(Controle)	A	37	34	36	42	31  33
#B	62	54	57	64	60
#C	63	58	60	62	61 44
#D	41	37	38	49	35 49
#Crie um dataframe com estes dados

tratamentos = c(rep("a",6), rep("b",5), rep("c",6) , rep("d",6))
pesos = c (37, 34,	36,	42,	31, 33, 62,	54,	57,	64,	60, 63,	58,	60,	62,	61, 44, 41,	37,	38,	49,	35, 49)
adubados=data.frame(tratamentos,pesos)

#Calcule a média de cada tipo de adubo, sem usar summary(), usando o dataframe
media.a=mean(adubados$pesos[adubados$tratamentos == "a"])
media.b=mean(adubados$pesos[adubados$tratamentos == "b"])
media.c=mean(adubados$pesos[adubados$tratamentos == "c"])
media.d=mean(adubados$pesos[adubados$tratamentos == "d"])

#que você criou acima
#criei 4 objetos que equivalem às medias de cada tratamento, sendo elas: a, b, c, d.

#que problemas você teve ao fazer o exercício acima?
#criei vetores para cada tratameto. Porem um dos vetores possui menor numero de elementos (B). Assim não daria para criar um data frame com esses vetores ja que os mesmos possuem numero de elementos distintos.

# O que a função unique() faz?
#Função que reconhece nos dados quais são os objetos que são únicos (que tem nomes únicos). Assim pode ter ideia de quais itens são duplicatas. 

#Usando o conjunto de dados caixeta.csv, disponivel em
#http://ecologia.ib.usp.br/bie5782/doku.php?id=dados:dados-caixeta, calcule
#quantas espécies estão presentes na coluna especie. Para ler o arquivo, execute
#o código abaixo
caixeta = read.table("caixeta.csv", header=T, sep=",", as.is=T)
# o arquivo deve estar no seu diretório de trabalho
str(caixeta) #o que este comando faz?
#Este comando exibe como os elementos  estao estruturados bem como a quantidade de variaveis do dataframe como local, parcelas, quantidade de árvores, altura, nome da especie.

summary(caixeta)
#sumariza e exibe as estatisticas sumarias seus dados como o valor max-min, media, mediana.

#podemos criar uma coluna a mais no nosso dataframe apenas dizendo ao R o que
#colocar lá. Por exemplo, criamos uma coluna com o nome do coletor do dado
caixeta$coletor= "Darwin" #regra da reciclagem
str(caixeta)

#agora adicione no objeto caixeta uma coluna chamada "desvio" com o quanto a
#altura de cada árvore difere da média de todas as árvores
mean(caixeta$h)
altura = c(caixeta$h)
mediaaltura = rep(90.28238, 1027)

caixeta$desvio= (c(caixeta$h) - c(mediaaltura)) 

#Usando a função table(), conte quantos indivíduos de cada espécie existem
table(caixeta$especie)
#contabilizou a quantidade de indivíduos por espécie.

#A função table() também pode contar por espécie em cada local, depois por local
#em cada espécie). Como?
table(caixeta$especie, caixeta$local)

#crie um objeto chamado pequenas que contenha todas as árvores com altura (h)
#menor que um metro.(Os dados no arquivo estão em centímetros)

pequenas = caixeta[caixeta$h < 100,]
pequenas

#crie um objeto chamado grandes que contenha todas as árvores acima de 3 metros
grandes = caixeta[caixeta$h > 300,]
grandes

#crie um objeto chamado medias que todas as árvores com alturas entre um metro e
#tres metros
medias = caixeta[caixeta$h >100 & caixeta$h <300,]
medias

#agora em uma linha de comando, crie um objeto que contenha a quantidade de
#árvores pequenas, médias e grandes, separadamente
#, a virgula diz "pegue todas as colunas"

quantidade = c(length(pequenas), length(medias), length(grandes))
quantidade
#length no caso é uma função do R. Ele vai te dizer q quantidade de linhas (elementos) das tabelas.

#Crie um objeto chamado obj somente com os individuos de "Alchornea
#triplinervia" Em quantas localidades esta espécie ocorre? Qual comando para
#encontrar essa informação?

obj = caixeta[caixeta$especie == "Alchornea triplinervia",] #precisa colocar o sinal de igual = duas vezes ==
table(obj$local)


#podemos remover dados de um dataframe, usando o sinal de menos

caixeta.sem.tabebuia = caixeta[ - which(caixeta$especie=="Tabebuia cassinoides"),]

unique(caixeta.sem.tabebuia$especie)
sort(unique(caixeta.sem.tabebuia$especie)) #ordena em ordem alfabetica

#which - comando que vai retirar um determinado texto que você quer numa tabela.

#agora crie um objeto removendo todas as "Tabebuia cassinoides" do local retiro
#(somente do local retiro)

caixeta.sem.retiro = caixeta[!(caixeta$local == "retiro" & caixeta$especie == "Tabebuia cassinoides"),] 
#a funcao exclamacao ! vai mostrar tudo que não pertence ao que você definiu após dela.
caixeta.sem.retiro

#crie os objetos abaixo, junte eles num dataframe de duas colunas chamado comNA,
#depois crie um novo objeto chamado semNA, removendo todas as linhas que
#contenham NA, usando a notação acima (dica: só se usa "" para valores do tipo
#character)

id = 1:80
a = c(121.72355, 103.79754, 130.15442, 98.29305, 103.43365, 102.44998,
      NA, 111.07215, 113.74047, 103.16081, 80.87149, 98.66692,
      65.09549, 155.74965, 88.30168, 147.43610, 114.60806, 109.87433,
      149.54772, 83.54137
)
b = c(77.91352, 78.07251, 81.95604, 75.64862, 78.45213, 79.11058,
      79.98952, 79.18127, 840.1635, 74.86860, 82.01886, 78.26936,
      77.94691, 78.75372, 77.64901, NA, 77.19803, 72.48175,
      83.45336, 78.99681
)
c = c(127.9366, 201.7158, NA, 136.5880, 131.7213, 118.1486,
      125.7534, 139.6544, 163.5890, 139.7455, NA, 141.4450, 110.7311,
      157.5921, 176.8437, 102.8659, 121.8286, 134.7097, 157.1392, 166.7133
)
d = c(191.3721, 216.1671, 165.4380, 196.2730, 172.6565, 178.2955,
      193.6687, NA, 160.2968, 208.4400, 204.0934, 208.1798,
      186.6380, 193.9446, NA, 198.6853, 213.8838, 210.1881,
      209.9109, 210.9228
)

todos = c(a,b,c,d)

comNA = data.frame(id,todos)

semNA = comNA[!is.na(comNA$todos),]

#A virgula quer dizer que voce quer todas as informacoes tanto das linhas como das colunas. Se voce colocar algum numero antes da linha voce estará especificando a linha que voce quer, se voce colocar depois da virgula voce estara especificando a coluna o que voce quer.



#Abaixo temos dados de tamanho de mandíbula de chacal dourado. Crie um dataframe
#com esses dados. Qual a média por sexo? E para a espécie? Guarde estes valores
#em tres objetos diferentes.
#machos: 120 107 110 116 114 111 113 117 114 112
#femeas: 110 111 107 108 110 105 107 106 111 111 Quantos machos têm a mandíbula
#maior do que a média das fêmeas?

machos = c(120, 107, 110, 116, 114, 111, 113, 117, 114, 112)
femeas = c(110, 111, 107, 108, 110, 105, 107, 106, 111, 111)
tabelachacal = data.frame(machos, femeas) 

media.m = mean(machos)
media.f = mean(femeas)
media.sp = mean(c(machos,femeas))

machos.grandes = machos[machos > media.f]

machos.grandes2 = tabelachacal$machos[tabelachacal$machos > media.f]

#parentese remete a função
#colchete remete a indexação

#escreva **uma** linha de código que testa se um número é par, e caso seja,
#manda uma mensagem dizendo "par". dica: use a função %% (resto da divisão, ou
#remainder em inglês) e a função message()

if(par){diga par}
if(par){message "par"}
if(8 %% 2 == 0){message ("ai que delicia")}
#"se 8 dividido por 2 restar 0 dê a mensagem ai que delicia"

#agora crie um código  como acima, mas que diga "par" se for par e "impar" se
#for impar. Dica: leia sobre as funções else e ifelse

if(8 %% 2 == 0){message ("ai que delicia")} else {message ("trabalhando e relaxando")}
if(7 %% 2 == 0){message ("ai que delicia")} else {message ("trabalhando e relaxando")}
if(0 %% 2 == 0){message ("ai que delicia")} else {message ("trabalhando e relaxando")}

#crie um ciclo (for) que mostre o console todos os inteiros de 1 até 10, um por
#um

for (i in 1:10) {
  a = i^2
  message(a)
}

#crie um ciclo (for) que some todos os inteiros de 25 até 43, guardando esses
#valores num objeto soma (dica: crie o objeto soma com valor zero antes do
#código do ciclo)

soma = 0 

for(i in 25:43){
  soma=soma + i
  message(soma)
} 


#####Desafio level Hard#####
#Escreva um código que escreva os números de um a 100, com as seguintes
#condições: Se o número for multiplo de 3, ao invés do dígito, escreva "Fu". Se
#o número for múltiplo de 5, ao invés do dígito, escreva "bá". Para números que
#forem multiplos tanto de 3 quanto de 5, escreva "Fubá". A melhor solução ganha
#um chocolate