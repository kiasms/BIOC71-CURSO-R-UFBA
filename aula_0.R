olha a pamonha

Com o código message("Hello World")
O R responde: - Hello World (em azul) - Na verdade acho que essa foi a minha mensagem. Não sei se ela chegou aos deuses da informática ou se Murphy ouviu também já que não obtive resposta. Será que é algo que eu devo ter fé? ter o credo de que tudo irá dar certo. Deve ser. Não sei.
Exercício com os comandos (digitados após o > da tela de console):
  letters()
->Mensagem de erro: Error in letters() : não foi possível encontrar a função "letters"  
"Letters" deve ser uma codificação para encontrar ou abrir uma determinada função. Que função? Matemática?  
  library(cars)   
->Mensagem de erro: Error in library(cars) : there is no package called ‘cars’
"library" - biblioteca - assim como acima, library deve ser uma codificação para encontrar um "pacote" que possui o título de "cars". Que pacote seria esse? Um arquivo? Um tipo  de arquivo infile?
  plot(cars)
-> Aqui já apareceu algo diferente: Assim que foi dado enter um gráfico bidimensional apareceu com pontos plotados. No eixo X há a variável velocidade "speed" e no eixo Y há a variável distancia "dist". Em resumo o gráfico está mostrando que conforme a velocidade aumenta, maior será a distância percorrida.
rep("Oi", 10)  
-> Mensagem: [1] "Oi" "Oi" "Oi" "Oi" "Oi" "Oi" "Oi" "Oi" "Oi" "Oi"
-> O R me respondeu 10 vezes oi. "rep" no caso deve ser alguma codificação para que o R replique algo pela quantidade de vezes que você definir. No exemplo foi um "oi", mas esse "oi" poderia ser substituído por outra "coisa", por exemplo, uma função, um comando, uma linha de comando, enfim.
seq(from = 100, to = 1000, by = 50)
-> Mensagem: [1]  100  150  200  250  300  350  400  450  500  550  600  650  700  750  800
[16]  850  900  950 1000
-> Aqui o R começou a contar de 100 a 1000 com intervalos de 50. "seq" deve ser uma codificação para  fazer o R contar em sequência de um ponto inicial à um ponto final com intervalos que você pode definir.
help(seq)
->Mensagem: starting httpd help server ... done
->   Uma página da internet abriu (página de dúvidas do R) com descrição e ajuda para se utilizar o comando "seq" de forma adequada no R bem como o significado de cada "argumento" do comando. Há algumas opções adicionais que podem ser aplicadas além do comando "seq", por exemplo, o uso do "seq.int", "seq_along" ou "seq_len".
seq.int
seq_along
seq_len
Argumentos seriam o significado (opções) que você dá na função "seq". Cada argumento possui um significado (função):
  ... = significa, argumentos passado de ou para métodos.
from, to = significa, o início e o fim (máximo) dos valores de uma sequencia.
by = significa, um intervalo dado é uma sequencia de números em ordem crescente, que tem um início e um fim.
lenght.out = significa, comprimento da sequência. Numeros não negativos.
along.with = significa, o comprimento de um comprimento de um argumento. 
??NA
Mensagem: Warning message:
  In gzfile(file, "rb") :
  não foi possível abrir o arquivo comprimido 'NA/Meta/vignette.rds', motivo provável 'No such file or directory'
Não foi possível achar um determinado arquivo mostrado acima, no casom o motivo é que não há o arquivo no diretrório do computador.
a = sqrt(2)  
Mensagem: Warning messages:
  1: In gzfile(file, "rb") :
  não foi possível abrir o arquivo comprimido 'NA/Meta/vignette.rds', motivo provável 'No such file or directory'
2: In gzfile(file, "rb") :
  não foi possível abrir o arquivo comprimido 'NA/Meta/vignette.rds', motivo provável 'No such file or directory'
3: In gzfile(file, "rb") :
  não foi possível abrir o arquivo comprimido 'NA/Meta/vignette.rds', motivo provável 'No such file or directory'  
Aqui também não foi possível executar a função poque  um determinado arquivo não foi achado no diretório do computador. Aqui é preciso que o Git deve ser instalado.
iris  
Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
1            5.1         3.5          1.4         0.2     setosa
2            4.9         3.0          1.4         0.2     setosa
3            4.7         3.2          1.3         0.2     setosa
4            4.6         3.1          1.5         0.2     setosa
5            5.0         3.6          1.4         0.2     setosa
6            5.4         3.9          1.7         0.4     setosa
7            4.6         3.4          1.4         0.3     setosa
8            5.0         3.4          1.5         0.2     setosa
9            4.4         2.9          1.4         0.2     setosa
10           4.9         3.1          1.5         0.1     setosa
11           5.4         3.7          1.5         0.2     setosa
12           4.8         3.4          1.6         0.2     setosa
13           4.8         3.0          1.4         0.1     setosa
14           4.3         3.0          1.1         0.1     setosa
15           5.8         4.0          1.2         0.2     setosa
16           5.7         4.4          1.5         0.4     setosa
17           5.4         3.9          1.3         0.4     setosa
18           5.1         3.5          1.4         0.3     setosa
19           5.7         3.8          1.7         0.3     setosa
20           5.1         3.8          1.5         0.3     setosa
21           5.4         3.4          1.7         0.2     setosa
22           5.1         3.7          1.5         0.4     setosa
23           4.6         3.6          1.0         0.2     setosa
24           5.1         3.3          1.7         0.5     setosa
25           4.8         3.4          1.9         0.2     setosa
26           5.0         3.0          1.6         0.2     setosa
27           5.0         3.4          1.6         0.4     setosa
28           5.2         3.5          1.5         0.2     setosa
29           5.2         3.4          1.4         0.2     setosa
30           4.7         3.2          1.6         0.2     setosa
31           4.8         3.1          1.6         0.2     setosa
32           5.4         3.4          1.5         0.4     setosa
33           5.2         4.1          1.5         0.1     setosa
34           5.5         4.2          1.4         0.2     setosa
35           4.9         3.1          1.5         0.2     setosa
36           5.0         3.2          1.2         0.2     setosa
37           5.5         3.5          1.3         0.2     setosa
38           4.9         3.6          1.4         0.1     setosa
39           4.4         3.0          1.3         0.2     setosa
40           5.1         3.4          1.5         0.2     setosa
41           5.0         3.5          1.3         0.3     setosa
42           4.5         2.3          1.3         0.3     setosa
43           4.4         3.2          1.3         0.2     setosa
44           5.0         3.5          1.6         0.6     setosa
45           5.1         3.8          1.9         0.4     setosa
46           4.8         3.0          1.4         0.3     setosa
47           5.1         3.8          1.6         0.2     setosa
48           4.6         3.2          1.4         0.2     setosa
49           5.3         3.7          1.5         0.2     setosa
50           5.0         3.3          1.4         0.2     setosa
51           7.0         3.2          4.7         1.4 versicolor
52           6.4         3.2          4.5         1.5 versicolor
53           6.9         3.1          4.9         1.5 versicolor
54           5.5         2.3          4.0         1.3 versicolor
55           6.5         2.8          4.6         1.5 versicolor
56           5.7         2.8          4.5         1.3 versicolor
57           6.3         3.3          4.7         1.6 versicolor
58           4.9         2.4          3.3         1.0 versicolor
59           6.6         2.9          4.6         1.3 versicolor
60           5.2         2.7          3.9         1.4 versicolor
61           5.0         2.0          3.5         1.0 versicolor
62           5.9         3.0          4.2         1.5 versicolor
63           6.0         2.2          4.0         1.0 versicolor
64           6.1         2.9          4.7         1.4 versicolor
65           5.6         2.9          3.6         1.3 versicolor
66           6.7         3.1          4.4         1.4 versicolor
67           5.6         3.0          4.5         1.5 versicolor
68           5.8         2.7          4.1         1.0 versicolor
69           6.2         2.2          4.5         1.5 versicolor
70           5.6         2.5          3.9         1.1 versicolor
71           5.9         3.2          4.8         1.8 versicolor
72           6.1         2.8          4.0         1.3 versicolor
73           6.3         2.5          4.9         1.5 versicolor
74           6.1         2.8          4.7         1.2 versicolor
75           6.4         2.9          4.3         1.3 versicolor
76           6.6         3.0          4.4         1.4 versicolor
77           6.8         2.8          4.8         1.4 versicolor
78           6.7         3.0          5.0         1.7 versicolor
79           6.0         2.9          4.5         1.5 versicolor
80           5.7         2.6          3.5         1.0 versicolor
81           5.5         2.4          3.8         1.1 versicolor
82           5.5         2.4          3.7         1.0 versicolor
83           5.8         2.7          3.9         1.2 versicolor
84           6.0         2.7          5.1         1.6 versicolor
85           5.4         3.0          4.5         1.5 versicolor
86           6.0         3.4          4.5         1.6 versicolor
87           6.7         3.1          4.7         1.5 versicolor
88           6.3         2.3          4.4         1.3 versicolor
89           5.6         3.0          4.1         1.3 versicolor
90           5.5         2.5          4.0         1.3 versicolor
91           5.5         2.6          4.4         1.2 versicolor
92           6.1         3.0          4.6         1.4 versicolor
93           5.8         2.6          4.0         1.2 versicolor
94           5.0         2.3          3.3         1.0 versicolor
95           5.6         2.7          4.2         1.3 versicolor
96           5.7         3.0          4.2         1.2 versicolor
97           5.7         2.9          4.2         1.3 versicolor
98           6.2         2.9          4.3         1.3 versicolor
99           5.1         2.5          3.0         1.1 versicolor
100          5.7         2.8          4.1         1.3 versicolor
101          6.3         3.3          6.0         2.5  virginica
102          5.8         2.7          5.1         1.9  virginica
103          7.1         3.0          5.9         2.1  virginica
104          6.3         2.9          5.6         1.8  virginica
105          6.5         3.0          5.8         2.2  virginica
106          7.6         3.0          6.6         2.1  virginica
107          4.9         2.5          4.5         1.7  virginica
108          7.3         2.9          6.3         1.8  virginica
109          6.7         2.5          5.8         1.8  virginica
110          7.2         3.6          6.1         2.5  virginica
111          6.5         3.2          5.1         2.0  virginica
112          6.4         2.7          5.3         1.9  virginica
113          6.8         3.0          5.5         2.1  virginica
114          5.7         2.5          5.0         2.0  virginica
115          5.8         2.8          5.1         2.4  virginica
116          6.4         3.2          5.3         2.3  virginica
117          6.5         3.0          5.5         1.8  virginica
118          7.7         3.8          6.7         2.2  virginica
119          7.7         2.6          6.9         2.3  virginica
120          6.0         2.2          5.0         1.5  virginica
121          6.9         3.2          5.7         2.3  virginica
122          5.6         2.8          4.9         2.0  virginica
123          7.7         2.8          6.7         2.0  virginica
124          6.3         2.7          4.9         1.8  virginica
125          6.7         3.3          5.7         2.1  virginica
126          7.2         3.2          6.0         1.8  virginica
127          6.2         2.8          4.8         1.8  virginica
128          6.1         3.0          4.9         1.8  virginica
129          6.4         2.8          5.6         2.1  virginica
130          7.2         3.0          5.8         1.6  virginica
131          7.4         2.8          6.1         1.9  virginica
132          7.9         3.8          6.4         2.0  virginica
133          6.4         2.8          5.6         2.2  virginica
134          6.3         2.8          5.1         1.5  virginica
135          6.1         2.6          5.6         1.4  virginica
136          7.7         3.0          6.1         2.3  virginica
137          6.3         3.4          5.6         2.4  virginica
138          6.4         3.1          5.5         1.8  virginica
139          6.0         3.0          4.8         1.8  virginica
140          6.9         3.1          5.4         2.1  virginica
141          6.7         3.1          5.6         2.4  virginica
142          6.9         3.1          5.1         2.3  virginica
143          5.8         2.7          5.1         1.9  virginica
144          6.8         3.2          5.9         2.3  virginica
145          6.7         3.3          5.7         2.5  virginica
146          6.7         3.0          5.2         2.3  virginica
147          6.3         2.5          5.0         1.9  virginica
148          6.5         3.0          5.2         2.0  virginica
149          6.2         3.4          5.4         2.3  virginica
150          5.9         3.0          5.1         1.8  virginica
Tabela exibida com 6 colunas. Aqui é exibida variáveis morfometricas de cada espécime medida bem como a espécie que foi medida também.
summary(iris)  
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500
Tabela com valores minimos, médios e máximos de cada espécie.
x = c(1:70)
Nada acontece. Provavelmente deve faltar algum arquivo do GIT.  
plot(x)  
Graf
Grafico bidimensional com eixos X e Y crescendo diretamente proporcional.
mean(x)  
Mensagem: [1] 35.5
Média do eixo X
mean(x^2)  
Mensagem: [1] 1668.5
Aqui eu não sei.
mean(x)^2
Mensagem: 
  [1] 1260.25
Média de X elevda ao quadrado

Analise estatístitica
Carreguei antes:
  Idade = c(3.0, 4.0, 5.0, 6.0, 8.0, 9.0, 10.0, 11.0, 12.0, 14.0, 15.0, 16.0, 17.0)
TamanhoDaAsa = c(1.4, 1.5, 2.2, 2.4, 3.1, 3.2, 3.2, 3.9, 4.1, 4.7, 4.5, 5.2, 5.0)
Depois:
  plot(Idade, TamanhoDaAsa)
Depois:
  modelo = lm(TamanhoDaAsa~Idade) -  (lm)modelo linear - Tamanho da Asa em função da idade.







Gerando gráfico de regressão
Comandos usados: (1 a 1)
plot(TamanhoDaAsa ~ Idade, xlab = "Idade (décadas)",  
     ylab = "Comprimento (metros)",  
     main = "Tamanho da asa"  
     , bty = "n"  
     , xlim = c(0, 23)  
     , ylim = c(0, max(TamanhoDaAsa))  
     , lwd = 2  
     , yaxt = "n"  
     , xaxt = "n"  
)  
axis(1, pos = 0)  
axis(2, pos = 0)  
abline(a = a, b = b, col = "red", lwd = 2)

amova - Teste de Variancia
Comando: anova(modelo)
Analysis of Variance Table
Response: TamanhoDaAsa
Df  Sum Sq Mean Sq F value    Pr(>F)    
Idade      1 19.1322 19.1322  401.09 5.267e-10 ***
  Residuals 11  0.5247  0.0477                      
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 

comando: coefficients(modelo)
(Intercept)       Idade 
0.7130945   0.2702290

comando: plot(modelo)
(Click 1)

(Click 2)

(Click 3)

(Click 4)


Comando: summary(modelo)
Call:
  lm(formula = TamanhoDaAsa ~ Idade)
Residuals:
  Min       1Q   Median       3Q      Max 
-0.30699 -0.21538  0.06553  0.16324  0.22507 
Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.71309    0.14790   4.821 0.000535 ***
  Idade        0.27023    0.01349  20.027 5.27e-10 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Residual standard error: 0.2184 on 11 degrees of freedom
Multiple R-squared:  0.9733,    Adjusted R-squared:  0.9709 
F-statistic: 401.1 on 1 and 11 DF,  p-value: 5.267e-10

Comandos: 
  plot(Idade, modelo$residuals)  
abline(h = 0)


Testando a significância e plotando
