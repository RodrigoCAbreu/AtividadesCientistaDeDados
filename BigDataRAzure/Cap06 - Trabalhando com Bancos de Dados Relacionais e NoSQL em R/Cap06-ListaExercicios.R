# Solução Lista de Exercícios - Capítulo 6

# Exercicio 1 - Instale a carregue os pacotes necessários para trabalhar com SQLite e R

install.packages("RSQLite")

library(RSQLite)

# Exercicio 2 - Crie a conexão para o arquivo mamiferos.sqlite em anexo a este script

drv = dbDriver("SQLite")
con = dbConnect(drv, dbname = "mamiferos.sqlite")
dbListTables(con)

# Exercicio 3 - Qual a versão do SQLite usada no banco de dados?
# Dica: Consulte o help da função src_dbi()
install.packages("dbplyr")
library("dbplyr")
?src_dbi


# Exercicio 4 - Execute a query abaixo no banco de dados e grave em um objero em R:
# SELECT year, species_id, plot_id FROM surveys

qry = "SELECT year, species_id, plot_id FROM surveys"
rs = dbSendQuery(con, qry)
dados = fetch(rs, n = -1)
dados

# Exercicio 5 - Qual o tipo de objeto criado no item anterior?
class(dados)  #data Frame


# Exercicio 6 - Já carregamos a tabela abaixo para você. Selecione as colunas species_id, sex e weight com a seguinte condição:
# Condição: weight < 5
library("dplyr")
qry1 = "select species_id, sex e weight from surveys where weight < 5"
rs = dbSendQuery(con, qry)

# Exercicio 7 - Grave o resultado do item anterior em um objeto R. O objeto final deve ser um dataframe
dados1 = fetch(rs, n = -1)
dados1

# Exercicio 8 - Liste as tabelas do banco de dados carregado

drv = dbDriver("SQLite")
con = dbConnect(drv, dbname = "mamiferos.sqlite")
dbListTables(con)


# Exercicio 9 - A partir do dataframe criado no item 7, crie uma tabela no banco de dados
class(dados1)

write.csv(dados1, "df_dados1.csv")

dbWriteTable(con, "dados", "df_dados1.csv", sep = ",", header = T)
dbListTables(con)

# Exercicio 10 - Imprima os dados da tabela criada no item anterior

dbReadTable(con, "dados")


