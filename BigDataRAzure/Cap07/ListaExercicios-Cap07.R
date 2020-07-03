# Solução Lista de Exercícios - Capítulo 7

# Formatando os dados de uma página web
library(rvest)
library(stringr)
library(tidyr)

# Exercício 1 - Faça a leitura da url abaixo e grave no objeto pagina
# http://forecast.weather.gov/MapClick.php?lat=42.31674913306716&lon=-71.42487878862437&site=all&smap=1#.VRsEpZPF84I

pagina <- read_html("http://forecast.weather.gov/MapClick.php?lat=42.31674913306716&lon=-71.42487878862437&site=all&smap=1#.VRsEpZPF84I")
View(pagina)

# Exercício 2 - Da página coletada no item anterior, extraia o texto que contenha as tags:
# "#detailed-forecast-body b  e .forecast-text"

resultado <- pagina%>%html_nodes("#detailed-forecast-body b, .forecast-text")
View(resultado)

# Exercício 3 - Transforme o item anterior em texto

texto <- html_text(resultado)
paste(texto, collapse = " ")

# Exercício 4 - Extraímos a página web abaixo para você. Agora faça a coleta da tag "table"
url <- 'http://espn.go.com/nfl/superbowl/history/winners'
pagina <- read_html(url)
table <- html_nodes(pagina,"table")


# Exercício 5 - Converta o item anterior em um dataframe

tabela <- html_table(table)[[1]]
View(tabela)

# Exercício 6 - Remova as duas primeiras linhas e adicione nomes as colunas

tabela <- tabela[-(1:2), ]
names(tabela) <- c("number", "date", "site", "result" )
View(tabela)

# Exercício 7 - Converta de algarismos romanos para números inteiros

tabela$number <- 1:54

tabela$date <- as.Date(tabela$date, "%B. %d, %Y")
View(tabela)

?as.Date
# locale-specific version of the date
#format(Sys.Date(), "%a %b %d")

# Exercício 8 - Divida a coluna result em 2 colunas com vencedores e perdedores

tabela <- separate(tabela, result, c("vencedor","perdedor"), sep = ", ", remove = TRUE)
View(tabela)

# Exercício 9 - Inclua mais 2 colunas com o score dos vencedores e perdedores
# Dica: Você deve fazer mais uma divisão nas colunas

pattern <- " \\d+$"  #Definido um padrão, quando inicia um digito

tabela$winnerScore <- as.numeric(str_extract(tabela$winner, pattern)) #busca pelo padrão, extrai e insere na nova coluna
tabela$loserScore <- as.numeric(str_extract(tabela$loser, pattern))

tab$winner <- gsub(pattern, "", tab$winner) #exclui os numeros da antiga coluna
tab$loser <- gsub(pattern, "", tab$loser)
head(tab)



# Exercício 10 - Grave o resultado em um arquivo csv

write.csv(tabela, 'superbowl.csv', row.names = F)
dir()



