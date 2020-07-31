# Expressões Regulares

# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressões", "regulares", "em linguagem R", 
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")

length(str)
str

# grep()
?grep
#Busca por padrões no texto, palavras, letras, etc
grep("ex", str, value = F)
grep("ex", str, value = T)
grep("\\d", str, value = F)
grep("\\d", str, value = T)


# grepl()
?grepl
#Busca por padrões regulares retornando por false ou true, lista de padrões no PDF
grepl("\\d+", str)p
grepl("\\D", str)


# gsub
?gsub
#Faz uma busca e substitui 
gsub("em", "***", str)
gsub("ex", "EX", str, ignore.case = T)


# sub()
#Faz uma busca e substitui 
sub("em", "EM", str)


# regexpr()
frase <- "Isso é uma string."
regexpr(pattern = "u", frase)


#Identifica a posição na frase
# gregexpr()
gregexpr(pattern = "u", frase)



str2 <- c("2678 é maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")

str2

# gsub()
gsub("\\d", "", str2) #Remove digitos 
gsub("\\D", "", str2)
gsub("\\s", "", str2) #Remove espaço do texto
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2) 






