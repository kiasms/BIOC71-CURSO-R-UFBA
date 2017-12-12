###Aula 5 R###
###Lucas Menezes Silva###

#Revisado

#Exercicio 1 

aves.c <- read.csv2(file = "aves_cerrado.csv", row.names=1, as.is=T)
head(aves.c) #verifica na tabela as 6 primeiras linhas
tail(aves.c) #verifica na tabela as 6 ultimas linhas
str(aves.c) #exibe as estruturas dos objetos: se é numerico, se é fator, se é vetor, quantidade...
summary(aves.c) #Exibe estatísticas básicas como valores minimos, maximos, media, mediana, 1 e 3 quartis para valores numericos, quantidade de classes para variaveis e etc.

#Os NAs são dados faltantes

aves.c[aves.c$urubu == NA,] #o R exibe que não funciona. Para funcionar precisa utilizar o is.na

is.na(aves.c) #aqui ele vai exibir quem são os NAs nas variáveis. A partir disso sabe-se que há há NAs em urubu, carcara e seriema.
is.na(aves.c$urubu) # aqui pode-se verificar a presença de NAs por variáveis, no caso aqui somente para urubu.

aves.c[is.na(aves.c$urubu),] # com esse argumento da função a partir da indexação, dá para saber onde está o NA na coluna urubu.
aves.c[is.na(aves.c$urubu)|is.na(aves.c$carcara)|is.na(aves.c$seriema),] # com esse argumento da função a partir da indexação, dá para saber onde está o NA na coluna urubu ou carcara ou seriema. "ou" é dado pelo simbolo | (barra vertical)

temp1 <- aves.c[is.na(aves.c$urubu)|is.na(aves.c$carcara)|is.na(aves.c$seriema),]

aves.c$urubu[is.na(aves.c$urubu)] <- 0
aves.c[is.na(aves.c$urubu),2] <- 0
aves.c[is.na(aves.c[,2]), 2] <- 0
#aqui você está dizendo que na tabela aves.c (que está como objeto), é "NA" somente na coluna 2 (urubu) e faça com que esse "nA" seja substituido por 0.

aves.c[is.na(aves.c[,3]), 3] <- 0
aves.c[is.na(aves.c[,4]), 4] <- 0

aves.c[aves.c$urubu==0|aves.c$carcara==0|aves.c$seriema==0,] #nas colunas das aves, quem é examente igual a 0 sendo, ou carcara, ou urubu ou seriema

table(aves.c$fisionomia) #conferindo os dados que há ta variavel fisionomia. Foi verificado que Ce foi escrito de 2 maneiras (Ce e ce), precisa substituir todos para para Ce para padronizar
aves.c$fisionomia[aves.c$fisionomia=="ce"] <- "Ce" #substituindo
table(aves.c$fisionomia) #conferindo se substituiu mesmo...

aves.c$fisionomia <- factor(aves.c$fisionomia, levels=c("CL","CC","Ce"))
#converteu a coluna fisionomia que originalmente era texto para fator

str(aves.c)
summary(aves.c)
#verificado a estrutura dos dados em aves.c. com essa função dá para saber agora que fisionomi agora é fator com 3 niveis.

#Média, Mediana e Quantis

mean(aves.c[,2:4]) #tirando a media n tabela aves, coluna 2 a coluna 4 (urubu, carcara e seriema)

sapply(aves.c[,2:4],mean) #outra forma de tirar a media n tabela aves, coluna 2 a coluna 4 (urubu, carcara e seriema)
sapply(aves.c[,2:4],median) #tirando a mediana n tabela aves, coluna 2 a coluna 4 (urubu, carcara e seriema)

apply(aves.c[,2:4],2,median)
apply(aves.c[,2:4], 2, mean, trim=0.1)
#há diferença. A mediana vai exibir examente onde está a posição do meio de cada variavel, a media vai exibir o valor medio dos dados de cada variavel, já a media truncada é similiar a media porem tirando uma porcemtagem igual dos dados, no caso de 10%.

quantile(aves.c$urubu)
summary(aves.c$urubu)
#sumary exibe exatamente os mesmos valores que quantile, porem quantile exibe as porcentagens onde os dados estão concentrados.

quantile(aves.c$urubu, probs= seq(from=0,to=1,by=0.1)) #quartis da variavel urubu com probabilidade de 0 a 100% separados de 10% em 10%

summary(aves.c[,2:4])

#Exploração de uma Variável Categórica
#partindo para o conjunto de dados de caixeta

caixeta <- read.csv("caixeta.csv", as.is=T) #le o arquivo csv de caixeta
names(caixeta) #exibe os nomes das variaveis de caixeta
table(caixeta$especie) #exibe a quantidade de cada espécie especificando a coluna espécie 

sort(table(caixeta$especie), decreasing=T)
#a diferença está na ordem, que no caso agora, está especificado que você esta pedindo ao R para exibir a quantidade de sps. em ordem decrescente.

barplot(sort(table(caixeta$especie), decreasing=T)) #plotanto a variavel espécie no grafico de barras em ordem decrescente *o argumento sort tem o objetivo de sinalizar que voce quer que os dados sejam exibidos em ordem crescente ou decrescente.
barplot(table(caixeta$local)) #aqui no caso não está exibindo ordem crescente ou decrescente 

#Gráficos para uma Variável
#recarregando os dados das aves do cerrado

par(mfrow=c(2,2)) #seta o R para exibir como layout dos graficos gerados em 2 linhas e 2 colunas
boxplot(aves.c$urubu) #grafico de boxplot
hist(aves.c$urubu) #grafico histograma
plot(density(aves.c$urubu)) #grafico de dispersao
stripchart(aves.c$urubu, method="stack") #grafico do tipo stipchart

par(mfrow=c(1,1))
#O que acontce? é que os graficos são gerados independentemente, sem juntar num único layout onde todos são exibidos ao mesmo tempo.

#Variações do Histograma


hist(aves.c$urubu)
rug(jitter (aves.c$urubu)) #rug vai adicionar uma barra horizontal no grafico com os valores de ruido da variavel urubu 
#jitter vai adicionar um ruido ao vetor numerico, no caso para a variavel urubu

hist(aves.c$urubu, prob=T)
lines( density(aves.c$urubu),col="blue" ) #plota sobre o grafico uma linha de densidade da variavel urubu, usando o comando lines, de cor azul.
curve(expr = dnorm(x,mean=mean(aves.c$urubu),sd=sd(aves.c$urubu)),add=T, col="red")
#curve exibe uma curva normal sobre os dados que reflete a media e desvio padrao com a cor vermelha


plot(density(aves.c$urubu),col="blue", ylim=c(0,0.08)) #grafico de dispersao com densidade da variavel urubu, na cor azil, sendo o eixo y limitado de 0 a 0.08
curve(expr = dnorm(x,mean=mean(aves.c$urubu),sd=sd(aves.c$urubu)),add=T, col="red")
#exibe a curva normal, a mesma feita, no anterior, porem sem o histograma.

#estes graficos mostram que a densidade parece possuir uma distribuição bimodal enquanto que as variavel urubu (levando em consideração a media e o desvio padrao) apresenta distribuição normal.

#table e aggregate

table(caixeta$especie,caixeta$local) #tabela com espécies (quantidade), por local

caixeta.alt <- aggregate(caixeta$h, by=list(local=caixeta$local,especie=caixeta$especie),
                         FUN=mean)
#criou objeto caixeta.alt e a partir do aggregat gerou um data frame com as medias da variavel local,  

#Xtabs

Titanic.df = read.csv("Titanic.csv")

xtabs(Freq~Sex+Survived, data=Titanic.df) 
#O R vai criar tabela de contigencia

prop.table(xtabs(Freq~Sex+Survived, data=Titanic.df), margin=1)
#Agora vai ter a proprocao da tabela de contigencia 

xtabs(Freq~Class+Survived, data=Titanic.df) #Tabela de contigencia criada.
prop.table(xtabs(Freq~Class+Survived, data=Titanic.df), margin=1) # retorna a proprocao da tabela de contigencia criada anteriormente

#Formula Estatística em Graficos
boxplot(urubu~fisionomia, data=aves.c)
plot(seriema~urubu, data=aves.c, subset=fisionomia=="Ce") #plota seriema por urubu apenas para o subgrupo de nivel Ce na fisionomia
plot(seriema~urubu, data=aves.c, subset=fisionomia=="CC")
plot(seriema~urubu, data=aves.c, subset=fisionomia!="CL")

library(lattice) #subgrupos para graficos
xyplot(seriema~urubu|fisionomia, data= aves.c)






