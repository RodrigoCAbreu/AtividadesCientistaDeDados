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

hist(df$G2)
