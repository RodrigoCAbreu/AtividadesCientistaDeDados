# Lista de Exercícios - Capítulo 2

#Exercício 1 - Crie um vetor com 30 números inteiros

vetor = c(1:30)
vetor


# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros

ma = matrix(c(1:16), nrow = 4, ncol = 4)
ma

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente

Lis = list(vetor,ma)
Lis

# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

?read.table

tabela <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
View(tabela)


# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")

names(tabela) <- c("config", "esfc", "chang")
tabela

# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset

?iris
df <- data.frame(iris)
View(df)
str(df)
dim(df)

# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris

plot(iris$Sepal.Length,iris$Sepal.Width)

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()

?subset
df1 <- subset(df, Sepal.Length > 7)
df1
View(df1)

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()

new_iris = iris
new_iris
library(dplyr)
slice(new_iris, 1:15)

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter

filter(new_iris, Sepal.Length > 7)









