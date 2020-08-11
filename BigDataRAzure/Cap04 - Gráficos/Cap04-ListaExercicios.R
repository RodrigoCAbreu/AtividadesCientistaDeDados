# Lista de Exercíci os - Capítulo 4

# Exercicio 1 - Crie uma função que receba os dois vetores abaixo como parâmetro, 
# converta-os em um dataframe e imprima no console
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")


myfunc <- function(a, b) {
  x <- a
  y <- b
  df <- data.frame(x,y)
  View(df)
}

myfunc(vec1, vec2)


# Exercicio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com 
# números inteiros e calcule a média de cada linha

x <- matrix(data = c(1:16),nrow = 4,ncol = 4, byrow = T)
?apply
#For a matrix 1 indicates rows, 2 indicates columns, c(1, 2) indicates rows and columns.
apply(x, 1, mean) #Apresenta a média de cada linha


# Exercicio 3 - Considere o dataframe abaixo. 
# Calcule a média por disciplina e depois calcule a média de apenas uma disciplina
escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))
escola

MediaDisciplinas <- apply(escola[,c(2,3,4)], 2, mean)
#espaço em branco antes da virgula indica todas as linhas

MediaDisciplinas

MediaMatematica <- apply(escola[,c(2), drop = F], 2, mean)

MediaMatematica


# Exercicio 4 - Cria uma lista com 3 elementos, todos numéricos 
# e calcule a soma de todos os elementos da lista

lista <- list(x = (1:3))
lista
soma <- lapply(lista, sum)
soma
do.call(sum, lista)


# Exercicio 5 - Transforme a lista anterior um vetor

vec <- unlist(lista)
vec
class(vec)
 
 
# Exercicio 6 - Considere a string abaixo. Substitua a palavra "textos" por "frases"
str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")
??str_replace
library(stringr)
?str_replace

str_replace(str,"textos","frases")

gsub("textos","frases", str) #Outra opção


# Exercicio 7 - Usando o dataset mtcars, crie um gráfico com ggplot do tipo 
# scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente

ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()

mtcars
?qplot
qplot(disp, mpg, data = mtcars, geom = "point")
colors()

#colorindo o grafico
camada1 <- geom_point(
  mapping = aes(x = disp, y = mpg, color = "chocolate" ),
  data = mtcars,
  size = 3
)
ggplot() + camada1



# Exercicio 8 - Considere a matriz abaixo.
# Crie um bar plot que represente os dados em barras individuais.
mat1 <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
mat1

barplot(mat1, beside = T)

barplot(mat1)

# Exercício 9 - Qual o erro do código abaixo?
data(diamonds)
ggplot(data = diamonds, aes(x = price, group = fill, fill = cut)) + 
  geom_density(adjust = 1.5)

#Correto
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) + 
  geom_density(adjust = 1.5)


# Exercício 10 - Qual o erro do código abaixo?
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl")


