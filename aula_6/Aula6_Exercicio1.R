###############################
###Aula 6 exercicio 1 script###
###Lucas Menezes Silva#########

#Revisado

#FAZENDO VERSÕES PIORADAS DE FUNÇÕES EXISTENTES

#Com a função simples

media <-function(x) #função média criada com argumento "x" (que podem ser objetos, vetores). Esta função é realiza cria 3 objetos que representam respectivamente funções de soma, nobs e media. Cada objeto carrega uma função e retorna com o resultado da media (que no caso é soma dividido por nobs) 
{
  soma=sum(x) #objeto soma criado com o resuldado da função sum de x
  nobs=length(x) #objeto nobs criado com o resuldado da função de length de x (n. de observações)
  media=soma/nobs #objeto media criado com o resuldado da divisão dos objetos soma por nobs
  return(media) #O R retorna com o valor (resultado) do objeto media
}

#Testando a função
ls()
media
media()
dados=rnorm(20,2,1) #objeto dados com funcao de distribuição normal, com 20 valores, media 2 e desvio padrao 1.
media(dados) #media do objeto dados
dados1=rnorm(200,2,1) #objeto dados com função de distribuição normal temporaria, com 200 valores, media 2 e desvio padrao 1.
media(dados1)
dados2=(rnorm(10000,2,1)) #objeto dados com função de distribuição normal temporaria, com 10000 valores, media 2 e desvio padrao 1.
media(dados2)
sd(dados)
dados3=rnorm(20,2,0.01) #objeto dados com função de distribuição normal temporaria, com 20 valores, media 2 e desvio padrao 0.01
media(dados3)
dados4=rnorm(200,2,0.01) #objeto dados com função de distribuição normal temporaria, com 200 valores, media 2 e desvio padrao 0.01
media(dados4)
dados[2]<-NA #no objeto dados a indexação vai substituir o valor da segunda posição por NA
dados
media(dados) #com o NA no data set o resultado da media será NA.

#criando objetos para serem carregados numa função (aquela de cima).

media<-function(x,rmNA=TRUE)  #Agora essa função sobrepôs aquela ultima criada. Agora essa função remorver os NAs (pelo rmNA= TRUE) contidos em dados (x,rmNA=TRUE).
{
  if(rmNA==TRUE) #se (if) em dados tem NA irá executar as linhas de comando abaixo
  {
    dados=(na.omit(x)) #tendo NA, irá criar um objeto chamado dados o qual contem os valores retirando os NAs
    n.NA=length(x)-length(dados) #agora ele vai criar o objeto n.NA o qual contera a diferenca entre a quantidade de elementos de dados original pela quantidade de elementos em dados agora retirando os NAs.
    cat("\t", n.NA," valores NA excluídos\n") #vai concatenar e mostrar o valor do objeto n.NA (separado por tabulacao \t), a frase "valores NA excluidos" e pula uma linha (\n)  
  }
  else #execute as linhas a baixo caso em dados não tenha NAs. "se (if) tiver NAs ENTAO (else) faça os comandos abaixo. 
  {
    dados=x #ele vai pegar dados e fazer a função basica (o que ja comentei acima)
  }
  soma=sum(dados)
  nobs=length(dados)
  media=soma/nobs
  return(media)
}


#Calcular a média do vetor dados
media(dados) #Agora o R vai mostrar o resultado a partir da função carregada de media(dados). O resultado conterá o numero de NAs removidos, a frase e o valor da media. 

#Função para calcular variância

var.curso<-function(x) #outra função carregada para memoria que agora cria funcao var.curso . Essa função vai criar objeto media com a media dos dados, objeto dados com sem os NAs. Objeto disvquad com a diferença entre dados e media elevado ao quadrado e por fim a variancia do curso. Outra função retorna o valor da variancia do curso.  
{
  media=media(x) #vai criar objeto media com a media dos dados
  dados=na.omit(x) #vai criar objeto dados com x (seus dados) menos os NAs (na.omit = omitindo os NAs)	
  disvquad=(dados-media)^2 #vai criar o objeto disvquad com a diferença entre dados e media elevado ao quadrado. 
  var.curso=sum(disvquad)/(length(dados)-1) #por fim cria o objeto var.curso que contem o somatorio dos valores do objeto disvquad dividido pela quantidade de elementos de dados menos 1. 
  return(var.curso) #retorne com o valor de var.curso
}

var.curso(dados) #Carrega dados na função var.curso()
var(dados) ### dica: veja o help dessa função "help(var)" deu NA, porque foi executado a função variancia considerando os Nas.
var(dados,na.rm=TRUE) #Calcula a variancia sem considerar os NAs (na.rm = TRUE)
var(dados,na.rm=FALSE) #Calcula a variancia considerando os NAs (na.rm = FALSE)

#Função para calcular o Índice de Dispersão

ID.curso<-function(x) #outra função criada chamada ID.curso. . Depois disso o R retorna com o valor de id.
{
  id=var.curso(x)/media(x) #Essa função criar um objeto id, esse objeto tem o resuldado da funcao var.curso dividido por media.
  return(id) #o R retorna com o resultado de id
}

ID.curso(dados) #carrega dados para a função ID.curso. Vai ter 2 vezes o NA excluido porque em var.curso há um NA e em media tambem há um NA.

#Simulando dados com parâmetros conhecidos

#Simulando Aleatório

aleat=rpois(200,2) #criando objeto aleat que contém 200 numeros aleatorios (ditribuiçao de poison) com o lambda igual a 2.
aleat #o R exibe o objeto aleat no console

#Uniforme

unif=runif(200,0,4) #criado objeto unif que cria 200 numeros entre 0 e 4 randomica. Neste caso fracionado, usando numeros fracionados tambem.
unif #o R vai exibir o objeto unif
unif=round(unif,0) #criado objeto unif que vai arredonda os valores de unif para uma casa decimal (round = vai arredondar).
unif #vai mostrar unif agora com os valores arredondados

#Agregado

agreg=round(c(runif(100,0,1),runif(100,5,10))) #criado objeto agreg que apresenta 1 vetor que contem uma distribuição uniforme de 100 numeros entre 0 e 1 e depois outra distribuição uniforme de 100 numeros de 5 a 10 totalizando 200. Com o comando round essa sequencia de numeros será arredondada para uma casa decimal.
agreg #vai motrar agreg com os valores (200) arredondados

#Calcular o coeficiente de dispersão

ID.curso(aleat) #aplicando a funcao ID.curso no objeto aleat 

ID.curso(unif) #aplicando a funcao ID.curso no objeto unif

ID.curso(agreg) #aplicando a funcao agreg no objeto agreg 

#Função para criar o teste de signficância do ID

test.ID <- function(x, nsim=1000) #Criando uma uma funcao chamada test.ID. Essa funcao tem 2 argumentos: x e numeros de simulações igual a 1000.
{ 
  ID.curso=function(x){var(x)/mean(x)} #essa funcao vai chamar a funcao ID.curso. Essa funcao tem a variancia dos dados dividido pela media dos dados. 
  dados=na.omit(x) #cria o objeto dados, a partir dos seus dados, omitindo os NAs.
  ndados=length(dados) #cria o objeto ndados que contem a quantidade de elementos do objeto dados
  med=mean(dados) #cria o objeto med que contem a media de dados
  id=var(dados)/med #cria o objeto id que contem a variancia de dados dividido por med
  simula.aleat=rpois(length(dados)*nsim, lambda=med) #cria o objeto simula.aleat que contem uma distribuição de poison a partir do numero de elementos de dados vezes numeros de simulacoes (1000 ver acima), aplicando um labda igual ao valor da media.
  sim.dados=matrix(simula.aleat,ncol= ndados) #cria o objeto sim.dados o qual contem uma matriz gerada pelo objeto simula.aleat com o numero colunas igual ao objeto ndados.
  sim.ID=apply(sim.dados,1,ID.curso) #cria o objeto sim.ID que contem um apply: pegar a matriz sim.dados, aplique nas suas linhas a função ID.curso
  quant.ID=quantile(sim.ID, probs=c(0.025,0.975)) #cria o objeto quant.ID que contem um quantile: o quantile sera a partir do objeto sim.ID dando os quantis  das probabilidades da distribuicao 0.025 e 0.975. 
  if(id>=quant.ID[1] & id<=quant.ID[2]) #SE o resultado do objeto id for maior ou igual ao quantil 0.025 e menor igual ao quantil 0.975 execute o que dentro das chaves.
  { 
    cat("\n\n\n\t distribuição aleatória para alfa=0.05 \n\t ID= ",id,"\n\n\n")
  }
  if(id < quant.ID[1]) #SE o resultado do objeto id for menor ao quantil 0.025 execute o que dentro das chaves.
  { 
    cat("\n\n\n\t distribuição uniforme, p<0.025 \n\t ID= ",id,"\n\n\n")
  }
  if(id>quant.ID[2]) #SE o resultado do objeto id for maior ao quantil 0.975 execute o que dentro das chaves.
  { 
    cat("\n\n\n\t distribuição agregado, p>0.975 \n\t ID= ",id,"\n\n\n")
  }
  resulta=c(id,quant.ID) #cria o objeto resulta que contem um vetor com o valor de id e o resultado de quant.ID
  names(resulta)<-c("Indice de Dispersão", "critico 0.025", "critico 0.975") #executa a funcao names no vetor resulta e troca os nomes para indice de dispersao, critico 0.025 e critico 0.975.
  return(resulta) #retorna com os resultados
}

test.ID(aleat) #funcao carregada no ob
test.ID(agreg) #testes de significancia carregados na função test.ID
test.ID(unif) #testes de significancia carregados na função test.ID

#Outra função

eda.shape <- function(x) #criação de função grafica chamada eda.shape, essa função vai produzir quatro graficos.
{
  x11() 
  par(mfrow = c(2,2))	## muda o dispositivo gráfico para 2x2
  hist(x)                 ## produz histograma de x
  boxplot(x)
  iqd <- summary(x)[5] -	summary(x)[2]     ## faz a diferença entre o quinto elemento x e o segundo
  plot(density(x,width=2*iqd),xlab="x",ylab="",type="l")
  qqnorm(x)
  qqline(x)
  par(mfrow=c(1,1))
  
}

set.seed(22) ## estabelece uma semente aleatória 
dados.pois20<-rpois(20,lambda=6) ## sorteia dados aleatórios de uma função poisson com média 6
sum(dados.pois20) ## a somatória aqui sempre dará 131, somente porque a semente é a mesma
set.seed(22)
dados.norm20<-rnorm(20,mean=6, sd=2) ## sorteia 20 dados de uma função normal com média 6 e dp = 1
sum (dados.norm20)               ### aqui o resultado dará sempre 130.48

###aplicar eda.shape para dados.dens

eda.shape(dados.pois20)

eda.shape(dados.norm20)

###aumentando a amostra

eda.shape(rpois(500,6))

eda.shape(rnorm(500,6))

#Modificando uma função

eda.shape1 <- function(x) #função eda.shape1 carregada para o R.
{
  x11()
  par(mfrow = c(2,2))
  hist(x,main="Histograma de x")
  boxplot(x, main="BoxPlot de x")
  iqd <- summary(x)[5] -	summary(x)[2]
  plot(density(x,width=2*iqd),xlab="x",ylab="",type="l", main="Distribuição de densidade de x")
  qqnorm(x,col="red",main="Gráfico Quantil x Quantil",xlab="Quantil Teórico",ylab="Quantil da Amostra")
  qqline(x)
  par(mfrow=c(1,1))
  
}

eda.shape1(rnorm(500,6))

























