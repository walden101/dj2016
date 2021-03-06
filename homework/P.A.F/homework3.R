# tryR
# P.A.F
# 20161006
###########chapter5############

chests <- c('gold', 'silver', 'gems', 'gold', 'gems')

types <- factor(chests)

print(chests)

print(types)

as.integer(types)

levels(types)

weights <- c(300, 200, 100, 250, 150)

prices <- c(9000, 5000, 12000, 7500, 18000)

plot(weights, prices)

plot(weights, prices, pch=as.integer(types))

legend("topright", c("gems", "gold", "silver"), pch=1:3)

legend("topright", levels(types), pch=1:length(levels(types)))

###########chapter6############

treasure <- data.frame(weights, prices, types)

print(treasure)

treasure[[2]]

treasure[["weights"]]

treasure$prices

treasure$types

list.files()

read.csv("targets.csv")

read.table("infantry.txt", sep="\t")

read.table("infantry.txt", sep="\t", header=TRUE)

targets <- read.csv("targets.csv")

print(targets)

infantry <- read.table("infantry.txt", sep="\t", header=TRUE)

print(infantry)

merge(x = targets, y = infantry)

###########chapter7############

piracy <- read.table("piracy.txt",sep=";",header=TRUE)

gdp <- read.table("gdp.txt", sep=";", header=TRUE)

print(gdp)

print(piracy)

countries <- merge(x = gdp, y = piracy)

print(countries)

plot(countries$GDP, countries$Piracy)

cor.test(countries$GDP, countries$Piracy)

line <- lm(countries$Piracy ~ countries$GDP)

abline(line)

install.packages("ggplot2")

help(package = "ggplot2")
          
weights <- c(300, 200, 100, 250, 150)

prices <- c(9000, 5000, 12000, 7500, 18000)

chests <- c('gold', 'silver', 'gems', 'gold', 'gems')

types <- factor(chests)

qplot(weights, prices, color = types)




