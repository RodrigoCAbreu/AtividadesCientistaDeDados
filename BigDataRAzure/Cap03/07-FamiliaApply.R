# Família Apply - Uma Forma Elegante de Fazer Loops

#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: 

# list, numeric, character (list/vecor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

# Usando um Loop
lista1 <- list(a = (1:20), b = (35:67))
lista1

# Calculando a soma total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0

for (i in lista1$a){
  valor_a = valor_a + i 
}

for (j in lista1$b){
  valor_b = valor_b + j
}

print(valor_a)
print(valor_b)

# Calculando cada elemento da lista com sapply
?sapply
sapply(lista1, sum)

# Aplicando funções com sapply
sapply(lista1, mean)

# apply()
?apply

x <- matrix(c(20, 13, 65, 32, 45, 12, 76, 49, 82), nr = 3, byrow = T)
x

apply(x, mean)
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)


resultapply <- apply(x, 1, mean)
resultapply
