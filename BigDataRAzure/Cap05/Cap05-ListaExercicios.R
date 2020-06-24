# Exercicio 1 - Encontre e faça a correção do erro na instrução abaixo:

write.table(mtcars, file = 'mtcars.txt')

df_mtcars <- read.table("mtcars.txt")

df_mtcars

write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = NA, qmethod = "double")


# Exercicio 2 - Encontre e faça a correção do erro na instrução abaixo:
library(readr)
write_csv(iris, "iris.csv")

iris

df_iris <- read_csv("iris.csv", col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c("setosa", "versicolor", "virginica"))
))

df_iris


# Exercício 3 - Abaixo você encontra dois histogramas criados separadamente.
# Mas isso dificulta a comparação das distribuições. Crie um novo plot que faça a união 
# de ambos histogramas em apenas uma área de plotagem.

# Dados aleatórios
dataset1=rnorm(4000 , 100 , 30)     
dataset2=rnorm(4000 , 200 , 30) 

# Histogramas
par(mfrow=c(1,2))
hist(dataset1, breaks=30 , xlim=c(0,300) , col=rgb(1,0,0,0.5) , xlab="Altura" , ylab="Peso" , main="" )
hist(dataset2, breaks=30 , xlim=c(0,300) , col=rgb(0,0,1,0.5) , xlab="Altura" , ylab="Peso" , main="", add = T)

#add = T, sobrepoem os histogramas para facilitar a comparação

# Exercício 4 - Encontre e corrija o erro no gráfico abaixo
install.packages("plotly")
library(plotly)
head(iris)

plot_ly(iris, 
        x = ~Petal.Length, 
        y = ~Petal.Width,  
        type="scatter", 
        mode = "markers" , 
        color = Species , marker=list(size=20 , opacity=0.5))


# Exercício 5 - Em anexo você encontra o arquivo exercicio5.png. Crie o gráfico que resulta nesta imagem.

#https://www.r-graph-gallery.com/index.html
#Dicas de gráficos em R

# Exercício 6 - Carregue o arquivo input.json anexo a este script e imprima o conteúdo no console
# Dica: Use o pacote rjson
install.packages("rjson")
library("rjson")
resultado <- fromJSON(file = "input.json")
resultado


# Exercício 7 - Converta o objeto criado ao carregar o arquivo json do exercício anterior 
# em um dataframe e imprima o conteúdo no console.
df_resultado <- as.data.frame(resultado)
df_resultado

# Exercício 8 - Carregue o arquivo input.xml anexo a este script.
# Dica: Use o pacote XML
install.packages("XML")
library("XML")
library("methods") #Dependencia necessária para o pacote XML funcionar

resultadoXML <- xmlParse(file = "input.xml")
resultadoXML

# Exercício 9 - Converta o objeto criado no exercício anterior em um dataframe
df_resultadoXML <- xmlToDataFrame(resultadoXML)
df_resultadoXML

# Exercício 10 - Carregue o arquivo input.csv em anexo e então responda às seguintes perguntas:

# Pergunta 1 - Quantas linhas e quantas colunas tem o objeto resultante em R?
# Pergunta 2 - Qual o maior salário?
# Pergunta 3 - Imprima no console o registro da pessoa com o maior salário.
# Pergunta 4 - Imprima no console todas as pessoas que trabalham no departamento de IT.
# Pergunta 5 - Imprima no console as pessoas do departamento de IT com salário superior a 600. 


data <- read.csv("input.csv")
print(data)
class(data)

#1
print(ncol(data))
print(nrow(data))

#Outra opção
dim(data)

#2
MaiorSal <- max(data$salary)
MaiorSal

#3
Pessoa <- subset(data, salary == max(salary))
Pessoa

#4
Departamento <- subset(data, dept == "IT")
Departamento

#5
info <- subset(data, salary > 600 & dept == "IT")
info










