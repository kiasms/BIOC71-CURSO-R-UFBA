##############################
#####Exercicio Aula 4 R###########
#Lucas Menezes Silva

#Revisado

#Editando alguns parâmetros gráficos 5.1

read.csv("esaligna.csv") #lendo o arquivo csv
esaligna = read.csv("esaligna.csv") #criando objeto a partir da tabela
plot(esaligna$dap~esaligna$ht, xlab = "ht (m)", ylab = "dap (m)", bty="l", tcl=0.3, main = "diâmetro a altura do peito x altura da árvore", cex = 2)
#Criando o gráfico com as configurações pedidas.

#5.2 Dois gráficos juntos

#primeiro calcula a média para cada dap para cada talhão especifico. 
m1=mean(esaligna$dap[esaligna$talhao == "16"])
m2=mean(esaligna$dap[esaligna$talhao == "17"])
m3=mean(esaligna$dap[esaligna$talhao == "18"])
m4=mean(esaligna$dap[esaligna$talhao == "22"])
m5=mean(esaligna$dap[esaligna$talhao == "23"])
m6=mean(esaligna$dap[esaligna$talhao == "32"])

#depois calcula a média para cada dap para cada talhão especifico. 
sd1=sd(esaligna$dap[esaligna$talhao == "16"])
sd2=sd(esaligna$dap[esaligna$talhao == "17"])
sd3=sd(esaligna$dap[esaligna$talhao == "18"])
sd4=sd(esaligna$dap[esaligna$talhao == "22"])
sd5=sd(esaligna$dap[esaligna$talhao == "23"])
sd6=sd(esaligna$dap[esaligna$talhao == "32"])

#criando vetores com as medias e os desvios padrão de cada dap
avg=c(m1,m2,m3,m4,m5,m6)
sdev=c(sd1,sd2,sd3,sd4,sd5,sd6)

par(mfrow=c(1,2))
boxplot(esaligna$dap~esaligna$talhao)
plot(x= 1:6, y= avg,cex=1.5,pch=16, col=1:6, ylim=range(c(avg-sdev, avg+sdev)))
arrows(x0=1:6, y0=avg-sdev, x1=1:6, y1=avg+sdev, length=0.05, angle=90, code=3)

###parei por aqui. 




