#Baixando pacotes
library(dplyr)
library(ggplot2)
library(GGally)
library(psych)


#Importando os dados
dados_AC <- read.csv('maior_menor_desmat_AC.csv', sep = ',', dec = '.')
dados_AM <- read.csv('maior_menor_desmat_AM.csv', sep = ',', dec = '.')
dados_AP <- read.csv('maior_menor_desmat_AP.csv', sep = ',', dec = '.')
dados_MA <- read.csv('maior_menor_desmat_MA.csv', sep = ',', dec = '.')
dados_MT <- read.csv('maior_menor_desmat_MT.csv', sep = ',', dec = '.')
dados_PA <- read.csv('maior_menor_desmat_PA.csv', sep = ',', dec = '.')
dados_RO <- read.csv('maior_menor_desmat_RO.csv', sep = ',', dec = '.')
dados_RR <- read.csv('maior_menor_desmat_RR.csv', sep = ',', dec = '.')
dados_TO <- read.csv('maior_menor_desmat_TO.csv', sep = ',', dec = '.')


#Verificando o nome das colunas
colnames(dados_AC)


#Corringindo o nome da penultima e da ultima coluna
names(dados_AC)[13] <- "Internacoes_dengue"
names(dados_AC)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_AM)[13] <- "Internacoes_dengue"
names(dados_AM)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_AP)[13] <- "Internacoes_dengue"
names(dados_AP)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_MA)[13] <- "Internacoes_dengue"
names(dados_MA)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_MT)[13] <- "Internacoes_dengue"
names(dados_MT)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_PA)[13] <- "Internacoes_dengue"
names(dados_PA)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_RO)[13] <- "Internacoes_dengue"
names(dados_RO)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_RR)[13] <- "Internacoes_dengue"
names(dados_RR)[14] <- "Internacoes_AnoSeguinte_dengue"

names(dados_TO)[13] <- "Internacoes_dengue"
names(dados_TO)[14] <- "Internacoes_AnoSeguinte_dengue"


#Verificando a distribuição 

#AC
par(mfrow=c(1,2))
hist(dados_AC$Internacoes_dengue [dados_AC$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_AC$Internacoes_dengue [dados_AC$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")


par(mfrow=c(1,2))
boxplot(dados_AC$Internacoes_dengue [dados_AC$Grupo=="Menor"],
        ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
boxplot(dados_AC$Internacoes_dengue [dados_AC$Grupo=="Maior"],
        ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")



#AM
par(mfrow=c(1,2))
hist(dados_AM$Internacoes_dengue [dados_AM$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_AM$Internacoes_dengue [dados_AM$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#AP
par(mfrow=c(1,2))
hist(dados_AP$Internacoes_dengue [dados_AP$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_AP$Internacoes_dengue [dados_AP$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#MA
par(mfrow=c(1,2))
hist(dados_MA$Internacoes_dengue [dados_MA$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_MA$Internacoes_dengue [dados_MA$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#MT
par(mfrow=c(1,2))
hist(dados_MT$Internacoes_dengue [dados_MT$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_MT$Internacoes_dengue [dados_MT$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#PA
par(mfrow=c(1,2))
hist(dados_PA$Internacoes_dengue [dados_PA$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_PA$Internacoes_dengue [dados_PA$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#RO
par(mfrow=c(1,2))
hist(dados_RO$Internacoes_dengue [dados_RO$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_RO$Internacoes_dengue [dados_RO$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#RR
par(mfrow=c(1,2))
hist(dados_RR$Internacoes_dengue [dados_RR$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_RR$Internacoes_dengue [dados_RR$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")

#TO
par(mfrow=c(1,2))
hist(dados_TO$Internacoes_dengue [dados_TO$Grupo=="Menor"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Menor")
hist(dados_TO$Internacoes_dengue [dados_TO$Grupo=="Maior"],
     ylab = "Frequência", xlab = "Internações Dengue", main = "Grupo Maior")


#Teste de Levene para vericar variâncias + Testes de Hipotese

#Internações Dengue (mesmo ano)

leveneTest(Internacoes_dengue ~ Grupo, data = dados_AC)
leveneTest(Internacoes_dengue ~ Grupo, data = dados_AM)          
leveneTest(Internacoes_dengue ~ Grupo, data = dados_AP)
leveneTest(Internacoes_dengue ~ Grupo, data = dados_MA)
leveneTest(Internacoes_dengue ~ Grupo, data = dados_MT)
leveneTest(Internacoes_dengue ~ Grupo, data = dados_PA)
leveneTest(Internacoes_dengue ~ Grupo, data = dados_RO)          
leveneTest(Internacoes_dengue ~ Grupo, data = dados_RR)
leveneTest(Internacoes_dengue ~ Grupo, data = dados_TO)

#teste paramétrico (t de Student)
t.test(Internacoes_dengue ~ Grupo, data = dados_AC, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = dados_AM, var.equal=TRUE)
t.test(Internacoes_dengue ~ Grupo, data = dados_AP, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = dados_MA, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = dados_MT, var.equal=TRUE)
t.test(Internacoes_dengue ~ Grupo, data = dados_PA, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = dados_RO, var.equal=TRUE)
t.test(Internacoes_dengue ~ Grupo, data = dados_RR, var.equal=TRUE)
t.test(Internacoes_dengue ~ Grupo, data = dados_TO, var.equal=FALSE)


#teste não paramétrico (Mann-Whitney)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_AC)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_AM)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_MA)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_MT)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_PA)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_RO)
wilcox.test(Internacoes_dengue ~ Grupo, data = dados_TO)



#Internações Dengue (ano seguinte)

#Verificando homogeneidade de variâncias
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AC)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AM)          
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AP)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_MA)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_MT)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_PA)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_RO)          
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_RR)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_TO)

#teste paramétrico (t de Student)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AC, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AM, var.equal=TRUE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AP, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_MA, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_MT, var.equal=TRUE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_PA, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_RO, var.equal=TRUE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_RR, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_TO, var.equal=FALSE)


#teste não paramétrico (Mann-Whitney)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AC)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_AM)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_MA)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_MT)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_PA)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_RO)
wilcox.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = dados_TO)



#Juntando todas as tabelas em 1

total <- merge(dados_AC, dados_AM, all = T)
total <- merge(total, dados_AP, all = T)
total <- merge(total, dados_MA, all = T)
total <- merge(total, dados_MT, all = T)
total <- merge(total, dados_PA, all = T)
total <- merge(total, dados_RO, all = T)
total <- merge(total, dados_RR, all = T)
total <- merge(total, dados_TO, all = T)


#Filtrando dados por ano

total_2008 <- total%>%filter(Ano=="2008")
total_2009 <- total%>%filter(Ano=="2009")
total_2010 <- total%>%filter(Ano=="2010")
total_2011 <- total%>%filter(Ano=="2011")
total_2012 <- total%>%filter(Ano=="2012")
total_2013 <- total%>%filter(Ano=="2013")
total_2014 <- total%>%filter(Ano=="2014")
total_2015 <- total%>%filter(Ano=="2015")
total_2016 <- total%>%filter(Ano=="2016")
total_2017 <- total%>%filter(Ano=="2017")
total_2018 <- total%>%filter(Ano=="2018")
total_2019 <- total%>%filter(Ano=="2019")


#Internações Dengue separados por ano (mesmo ano)

leveneTest(Internacoes_dengue ~ Grupo, data = total_2008)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2009)          
leveneTest(Internacoes_dengue ~ Grupo, data = total_2010)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2011)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2012)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2013)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2014)          
leveneTest(Internacoes_dengue ~ Grupo, data = total_2015)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2016)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2017)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2018)
leveneTest(Internacoes_dengue ~ Grupo, data = total_2019)

t.test(Internacoes_dengue ~ Grupo, data = total_2008, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2009, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2010, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2011, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2012, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2013, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2014, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2015, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2016, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2017, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2018, var.equal=FALSE)
t.test(Internacoes_dengue ~ Grupo, data = total_2019, var.equal=FALSE)


#Internações Dengue separados por ano (ano seguinte)

leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2008)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2009)          
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2010)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2011)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2012)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2013)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2014)          
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2015)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2016)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2017)
leveneTest(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2018)


t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2008, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2009, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2010, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2011, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2012, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2013, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2014, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2015, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2016, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2017, var.equal=FALSE)
t.test(Internacoes_AnoSeguinte_dengue ~ Grupo, data = total_2018, var.equal=FALSE)

