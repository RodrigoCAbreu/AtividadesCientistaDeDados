# Classificação KNN em R

# Prevendo o resultado do índice S&P (The Standard & Poor's 500) do American stock market index (NYSE or NASDAQ)

# https://rdrr.io/cran/ISLR/man/Smarket.html

# Instalando os pacotes
install.packages("ISLR")
install.packages("caret")
install.packages("e1071")

# Carregando os pacotes
library(ISLR)
library(caret)
library(e1071)


# Definindo o seed
set.seed(300)

# Carregando e Explorando o Dataset

summary(Smarket)
str(Smarket)
head(Smarket)
View(Smarket)

# Split do dataset em treino e teste
indxTrain <- createDataPartition(y = Smarket$Direction, p = 0.75, list = FALSE)
View(indxTrain)
dados_treino <- Smarket[indxTrain,]
dados_teste <- Smarket[-indxTrain,]
class(dados_treino)
class(dados_teste)