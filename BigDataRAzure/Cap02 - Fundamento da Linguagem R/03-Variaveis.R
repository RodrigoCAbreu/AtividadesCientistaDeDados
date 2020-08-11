#Variáveis em R

# Criando Variáveis
var1 = 100
var1
mode(var1)
help("mode")
typeof(var1)
sqrt(var1)


# Criação de vetor
var2 = c("um","dois","tres")
var2
mode(var2)


# Uma variável pode ser uma função
var4 = function(x) {x+3}
var4
mode(var4)


# Podemos também mudar o modo do dado. 
var5 = as.character(var1)
var5
mode(var5)



# Atribuindo valores a objetos
x <- c(1,2,3)
x

assign("x", c(6.3,4,-2))
x


# Verificando o valor em uma posição específica do  vetor
x[1]
x[3]
x[5]

# Verificar objetos
ls()
objects()


# Remover objetos
rm(var4)
var4




