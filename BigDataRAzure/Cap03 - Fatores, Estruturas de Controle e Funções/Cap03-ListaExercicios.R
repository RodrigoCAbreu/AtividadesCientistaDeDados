# Lista de Exercícios - Capítulo 3


# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho

dir()
dir("../") #Arquivos no Diretorio superior

# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números

str <- c("a","b","c","d","e")
log <- c(TRUE, FALSE, TRUE, FALSE, FALSE) 
num <- c(1:5)

df <- data.frame(str,log,num)
df


# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)
vec1

for (i in 1:length(vec1)) {
    if(vec1[i] > 10){
      print(vec1[i]) 
      print("Esse Elemento é maior do que 10")
    } else {NA}
}

# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2

for (i in 1:length(lst2)){
  print(lst2[[i]])
}

# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
mat1*mat2

# Multiplicação de matrizes
mat1%*%mat2

# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos

vetor <- c(1:10)
vetor

vec3 <- c(1:9)
mt <- matrix(vec3,  nrow = 3, ncol = 3, byrow = T)
mt

lista <- list(c(1:9))
lista

df <- data.frame(1,2,3)

# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2

mat2[sample(1:50,30)] = NA
mat2

# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
rowSums(mat1)
colSums(mat1)

# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a
order(a)
a[order(a)]

# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1


