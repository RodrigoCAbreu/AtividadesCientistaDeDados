# Estudo de Caso 1 - Features Engineering com Variáveis Categóricas

dataset <- read.table("bank/bank-full.csv", header = TRUE, sep = ";" )

View(dataset)

#### Criando nova coluna

#Sumarizando dados (agrupados) da coluna job
table(dataset$job)

##Reproduzindo dados na forma gráfica
library(dplyr)
library(ggplot2)

#Sumarizando dados (agrupados) da coluna job
dataset %>%
  group_by(job) %>%
  summarise(n = n())

#Apresentação gráfica
dataset %>%
  group_by(job) %>%
  summarise(n = n()) %>%
  ggplot(aes( x = job, y = n)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Criando a nova coluna

dataset <- dataset %>% 
              mutate(technology_use =
                       case_when(
                         job == 'admin' ~ "medio",
                         job == 'blue-collar' ~ "baixo",
                         job == 'entrepreneur' ~ "alto",
                         job == 'housemaid' ~ "baixo",
                         job == 'management' ~ "medio",
                         job == 'retired' ~ "baixo",
                         job == 'self-employed' ~ "baixo",
                         job == 'services' ~ "medio",
                         job == 'student' ~ "alto",
                         job == 'technician' ~ "alto",
                         job == 'unemployed' ~ "baixo",
                         job == 'unknown' ~ "baixo"
                                )
                      )

View(dataset)

dataset %>%
  group_by(technology_use) %>%
  summarise(n = n())

#Apresentação dos dados em percentual
round(prop.table(table(dataset$technology_use)),2)


# Variáveis Dummies - Convertendo variável categorica em numérica

dataset <- dataset %>% 
              mutate(defaulted = ifelse(default == "yes",1,0))

View(dataset)



# One Hot Enconding

library(caret)

dmy <- dummyVars(" ~ .", data = dataset)
dataset.dummies <- data.frame(predict(dmy, newdata = dataset))

View(dataset.dummies)



###Agrupando Variáveis combinadas

#Criação dos dados sumarizados

dataset %>% 
  group_by(job, marital) %>%
  summarise(n = n())

#Representação gráfica
dataset %>% 
  group_by(job, marital) %>%
  summarise(n = n()) %>%
  ggplot(aes(x = job, y = n, fill = marital)) + 
  geom_bar(stat = "identity", position =  "dodge") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))





