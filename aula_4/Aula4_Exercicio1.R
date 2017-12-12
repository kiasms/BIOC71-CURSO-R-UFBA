##############################
#####Exercicio Aula 4 R###########
###Lucas Menezes Silva ###

#Revisado

#Criando graficos


riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45) #cria objeto riqueza
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85) #cria objeto area
area.cate <- rep(c("pequeno", "grande"), each=6) #Cria objeto area.cate

par(las=1) #explicação lá em baixo, mas basicamente eu setei para que os proximos graficos sejam gerados com as legendas na posição vertical
plot(riqueza~area, las=3) #aqui setei para que o grafico gerado apresente a lagenda dos eixos escrita na horizontal  
plot(riqueza~area) #cria grafico de dispersão da riqueza em funcao da area
plot(area,riqueza) # o mesmo que o anterior, aham!
boxplot(riqueza~area.cate) #cria um grafico de boxsplot com as classes pequeno e grande e a variação da variavel riqueza dentro dessas classes.
barplot(riqueza) #cria grafico de barplot com a riqueza

#exercicio 1

Biomassa = read.csv(file="esaligna.csv") #com essa funçao pedi ao R para ler o arquivo .csv que salvei no meu diretório de trabalho
plot(Biomassa$dap~Biomassa$ht) #com essa função pedi ao R para plotar em um grafico de dispersão a variavel dap em função de ht
plot(Biomassa$ht~Biomassa$tronco) #com essa função pedi ao R para plotar em um grafico de dispersão a variavel ht em função de tronco
plot(Biomassa$dap~Biomassa$classe) #Essa função acaba nao plotando os dados num gráfico de dispersão, mas sim em um gráfico do tipo boxplot. Isso é devido a variável classe a qual possui quatro classes (a,b,c e d) e dentro dessas classes há a variação da variavel "dap". O R interpreta isso automaticamente.
plot(Biomassa$dap~Biomassa$talhao) #Essa função plota o diametro (a altura do peito da arvore) em função do talhão, porém talhão funciona como uma classe, já que é o local onde a árvore está. Como o talhão é dado em números o R não interpreta como classe. Esse grafico acaba apenas mostrando a quantidade de arvores em cada talhao.
plot(Biomassa$dap) #Essa função plota num grafico de dispersão os valores de dap de cada árvore
plot(Biomassa$ht) #Essa função plota num grafico de dispersão os valores de ht de cada árvore

#Editando graficos

par(las=1) #explicação lá em cima, mas basicamente eu setei para que os proximos graficos sejam gerados com as legendas na posição vertical
plot(riqueza~area, las=3) #aqui setei para que o grafico gerado apresente a lagenda dos eixos escrita na horizontal  

par(cex=.1) #setei para mudar o tamanho dos pontos do grafico e dos proximos graficos. Precisei mudar para .1
plot(riqueza~area, cex=.1) #plotei o grafico também com o tamanhos dos pontos do grafico com tamanho igual a 2. Aqui ele acusou que o tamanho das margens está muito larga. Precisa deixar ela menos larga, precisei mudar para .1.
dev.off() #aqui eu usei essa função para limpar os os plots que tinha feito anteriormente para poder replotar os dados com as caracteristicas que eu quero.

#exercicio 2

?plot #abre o help da função plot = função de plotar em graficos de dispersão

riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)

par(pch=3, cex=.7, las=1, family = "serif")
plot(riqueza~area,
xlab ="Tamanho da ilha (ha)",
ylab ="Riqueza de Espécies",
main = "Aves das Ilhas Samoa")

#par=(pch=1) #possui a função de setar o R para que os proximos graficos sejam gerados pela mesma configuração que você setou.Neste caso vamos setar para que os graficos sejam gerados com pontos em forma de cruz com o parametro "pch" para que os proximos graficos sejam todos gerados por um tipo de ponto específico.  
#parametro cex parapara setar graficos com tamamnho de fonte e e legentas especificos. Vai depender onde você colocar o cex. Se for fora fo plot ele vai setar tudo.  
#las outro parametro para por dentro da função par, no caso o par=1 vai setar os graficos gerarem gerarem os numeros dos eixos x e y na posição vertical.
#family outro parametro para por dentro da função par, no caso "serif" vai setar para que o tipo de fonte seja times new roman

#Exercitando par e os parametros mfrow

par(mfrow=c(2,1)) #parametro que seta o layout dos graficos gerados, neste caso duas linhas (grafico) com uma colunas (grafico) - layout da prancha de gráficos
plot(riqueza~area) #plotei no grafico de dispersão
boxplot(riqueza~area.cate) #plotei no grafico de boxsplot

par(mfrow=c(1,2)) #aqui no caso vou fazer o layout inverso do que foi no escrito acima. No caso uma linha com duas colunas.
plot(riqueza~area)
boxplot(riqueza~area.cate)

par(mfrow=c(2,1))
par(mar=c(4,14,2,6)) #aqui no caso vou colocar margens especificas para os 2 graficos que serão gerados. Os quatros numeros separados por virgulas dentro de mar() indicam a posição, em relação a margem, que os graficos irão ser exibidos (numeros de margem de forma sequencial: baixo, esquerda, cima e direita). Aqui serão 2 graficos dispostos em 2 linhas e em 1 coluna.
plot(riqueza~area)
boxplot(riqueza~area.cate)

par(mfrow=c(1,2)) #mudou o layout dos graficos para 1 linha e 2 colunas.
par(mar=c(14,4,8,2)) #mudou as configurações de margem
plot(riqueza~area)
boxplot(riqueza~area.cate)

par(mfrow=c(1,2))
par(mar=c(8,4,8,1)) #mudou as configurações de margem para o grafico de dispersçao
plot(riqueza~area)
par(mar=c(14,2,4,0.5)) #mudou as configurações de margem para o grafico de boxsplot
boxplot(riqueza~area.cate)


#exercicio 3

#utilizando as variaveis abaixo:
riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)
area.cate <- rep(c("pequeno", "grande"), each=6)
plot(riqueza~area)
plot(riqueza~area, bty="l", tcl=0.3) # Percebi! o grafico mudou de forma. No caso agora possui uma nova forma, uma forma da letra L, onde a linhas superior e lateral direita sumiram. Tcl, tcky marks dos eixos mudou para o tamanho 0.3 e a partir do momento que foi executado passou a ficar dentro da caixa do grafico. Anteriormente estava fora da caixa.
#bty é a forma da caixa, no caso em forma da letra L.
boxplot(riqueza~area.cate, bty="l", tcl=0.3)
#Eu pensei que o grafico de boxplot gerado iria apresentar a forma da letra "l" porem o mesmo apresenta formato quadrado.
par(bty="l") #setando cada configuração a parte
par(tcl=0.3) #setando cada configuração a parte
boxplot(riqueza~area.cate)
#UAU! Vi! agora sim ele ficou com a configuração que eu procurava. A forma do grafico agora está em formato da letra "l".
# o R deve entender para graficos de boxplot desta maneira. Precisa setar as configurações antes e não dentro da função boxplot.

#exercicio 4

riqueza <- c(15,18,22,24,25,30,31,34,37,39,41,45)
area <- c(2,4.5,6,10,30,34,50,56,60,77.5,80,85)
abundancia <- rev(riqueza)

dev.off()

plot(riqueza~area) #criando grafico de dispersao de riqueza em função da área 
lines(lowess(area, riqueza)) #Inserindo curva nao-paramtrica de regressao da riqueza em função da área. Esta linha é curva e não reta.

model <-  lm(riqueza~area) #criando um modelo linear para os meus dados de riqueza em função da área
plot(riqueza~area)
abline(model) #aqui no caso criou-se uma linha reta de regressão para o modelo linear gerado pelos meus dados de riqueza e área

plot(riqueza~area)
abline(15,0.4) #inclinação da reta onde o primeiro numero dentro de abline é onde a reta corta o eixo e o segundo valor é a inclinação na reta (coeficiente de inclinação).

plot(riqueza~area)
abline(v=mean(area)) #linha vertical setada pela letra V que representa a media da variável área
abline(h=mean(riqueza)) #linha horizontal setada pela letra h que representa a media da variável riqueza

plot(riqueza~area)
text(20,40,"texto") #aqui na exata posição do grafico gerado (x=20 e y=40) eu criei um ponto com um texto.

plot(riqueza~area)
mtext("legenda no lado errado", side=4, line=0.9, at=20,cex=2, family="serif")
#com mtext criei a leganda do grafico nas posições definicas acima, com tamanho de fonte (cex) e fonte (family) definida a priori, porem ela esta no local errado. at = posicao em relação a margem de baixo, line = posição em relação a margem da direita.

plot(riqueza~area)
par(new=TRUE)
plot(abundancia~area)
#sobrepos os graficos de dispersão porem as legendas dos eixos estão sobrepostas tambem

plot(riqueza~area)
par(new=TRUE) #sobrepoe um grafico sobre o outro sem precisar deletar ou trocar de posição
plot(abundancia~area, axes=FALSE, ann=FALSE, pch=16) 
axis(4) #plotou o grafico de dispersao de abuncancia em funcao da riqueza porem os eixos não são exibidos, ann = nao aparecer as legendas do eixo, pch = tipo de ponto, no caso ponto preto preenchido para poder diferenciar os plots.

dev.off()

plot(riqueza~area)
rect(20,20,40,40) #função para inserir retangulos dentro do grafico, no caso aqui eu defini 20 para o tamanho em relação a variavel area para em cima e em baixo e 40 para o tamanho em relação a variavel riquza nos lados esquero e direito.

#### Para Salvar os gráficos

#seta previamente as configurações de imagem que voce quer
jpeg(filename = "Rplotaula.jpg", width = 480, height = 480, #inicia com o tipo de extensao do arquivo no caso jpg, depois o nome do arquivo "Rplotaula.jpg" e as duas dimensoes largura de 480 altura 480. 
     units = "px", pointsize = 12, quality = 100, #unit = unidade do tamanho da extensao, no caso aqui em pixels,point size=definição da imagem , quality= qualidade do do arquivo gerado quanto maior melhor a qualidade.
     bg = "white",  res = NA, restoreConsole = TRUE) #bg= cor de fundo, no caso branco, res = resolução, restoreConsole = aqui eu nao sei.

par(mfrow=c(1,2))
par(mar=c(14,4,8,2))
plot(riqueza~area)
boxplot(riqueza~area.cate)

dev.off()

png("meugrafico%02d.png") #o R gerará imagens dos graficos com extensao .png, com o nome pre-definido por voce tambem, 02 é de 1 a 99 graficos, 01 de 1 a 10 graficos  e 03 é de 1 a 999 graficos.
plot(riqueza~area)
boxplot(riqueza~area.cate)

bmp(filename = "Rplot%03d.bmp")
jpeg(filename = "Rplot%03d.jpg")
png(filename = "Rplot%03d.png")
tiff(filename = "Rplot%03d.bmp")
#mesma essencia do que foi feito acima, porem muda-se a o tipo de extensao do arquivo de imagem do grafico gerado.
#notar que em tiff(filename = "Rplot%03d.bmp") deveria ter a extensao "tif" depois de "Rplot%03d."
