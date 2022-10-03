library(tidyverse)
##objective download and match alphabet to letters
letters
length(x)
x <- letters
y <- 1:26
rbind(x,y) 
cbind(x,y)
typeof(x)
rbind(x)
#v[c(“letters”, “y”)]
as.factor(x)
as.factor(y)

cbind(x,y)

#v('a','e','i''o','u')

#x("a","e","i","o","u")
#x[,"a","e","i","o","u" , drop = FALSE]
#x[,'1','5','9''15' , drop = FALSE]

##instrictors way##
I <- letters
length(I)
i<- 1:26
i <- seq(1:length(letters))
typeof(x)
#as.integer(x)

names(i) <- letters
x
vowels <- i[c("a","e","i","o","u")]
#as indices
indices <- which(names(i) %in% c("a","e","i","o","u"))




####counties
top_10_settlements <- c(
  "Dublin", "Belfast", "Cork", "Limerick", "Derry",
  "Galway", "Newtownabbey", "Bangor", "Waterford", "Lisburn"
)
# Corresponding provinces
provinces <- c(
  "Leinster", "Ulster", "Munster", "Munster", "Ulster",
  "Connacht", "Ulster", "Ulster", "Munster", "Ulster"
)

typeof(provinces)
typeof(Table)
typeof(top_10_settlements)
table(top_10_settlements, provinces)

Table <- table(provinces)
sort(Table, decreasing = TRUE)
str(table)
plot(Table)
?ggplot2

