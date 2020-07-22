# Lista de Exercícios Parte 2 - Capítulo 11

# Regressão Linear
# Definição do Problema: Prever as notas dos alunos com base em diversas métricas
# https://archive.ics.uci.edu/ml/datasets/Student+Performance
# Dataset com dados de estudantes

# Vamos prever a nota final (grade) dos alunos

# Carregando o dataset
df <- read.csv2('estudantes.csv')

# Explorando os dados
View(df)
summary(df)
str(df)
any(is.na(df)) #verificando valores vazios

library(dplyr)

#Obtendo apenas colunas numéricas

colunas_numericas <- sapply(df, is.numeric)
colunas_numericas

#Filtrando as colunas numéricas para correlação

data_cor <- cor(df[,colunas_numericas])
data_cor

# Pacotes para visualizar a análise de correlação
installed.packages("corrgram")

install.packages("corrplot")