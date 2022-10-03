##Exercise 1: Subsetting (20 points)

#Write 3 separate subsetting operations to extract the following elements from the list below:
#All consonants from the first character vector
#Second columns in all dimensions from the array A
#Odd rows from the matrix M
library(tidyverse)
glimpse(l)
l <- list(
  mapply(assign, letters, 1:26),
  A = array(1:60, c(5,2,3)),
  M = matrix(1:50, c(10,5))
)
subcons <- c("b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x",
             "y","z")
subcons
#
scol_a <- l$A[1:5,2,1:3]
scol_a
#
oddrow_m <- l$M[rowSums(l$M %% 2)!=0, ]
oddrow_m


###Exercise 2: Working with vectors (20 points)
#Look at the vector below. What is its type? Convert it into numeric. 
#Note that some values get missing due to letter o used instead of digit 0. 
#What proportion of the vector elements did we fail to convert correctly? 
#Now let us fix this issue. 
#Using either subsetting and assignment or ifelse() function replace all NAs in
#the converted numeric vector into 0 (zeros).
set.seed(2022)
vec <- sample(c("1", "0", "o"), size = 100, replace = TRUE)
vec
typeof(vec)
##character
vecn <- as.numeric(vec)
na.rm=FALSE
table(vecn)
vec
prop.table(is.na(vec))

vecn[is.na(vecn)] = 0
vecn
##Exercise 3: Vectorized operations (20 points)
#Using function mean() calculate the percentage of book titles in the vector 
#below that have more than 10 characters in them (including whitespaces).
#Tip: You can use nchar() function to calculate the number of characters in a vector
books <- c(
  "Dubliners",
  "Ulysses",
  "War and Peace",
  "Normal People",
  "Crime and Punishment",
  "The Picture of Dorian Gray"
)
nbook <- nchar(books)
table(nbook)
blist <- cbind(books,nbook)
sort(nbook,decreasing = TRUE)
nnbook <- as.numeric(nbook)
mean(nnbook>10)


#Exercise 4: Attributes and factors (20 points)
#
#Suppose you read in a variable which represents education of survey respondents. 
#After consulting the codebook for this survey you determined that specific values that the 
#variable takes are coded as follows:
#0 - No formal education
#1 - Primary Education
#2 - Secondary Education
#3 - College Education
#4 - Post-graduate Education
#Convert the variable educ below into a factor variable with each value coded 
#explicitly as one of the education levels. Tabulate the variable using table() function. 
#Change the order of the levels of this factor variable such that the most common education
#level is the first (baseline/reference) category 
#(you can leave other education levels in their origianl order). Tabulate the variable again.
set.seed(2022)
educ <- rpois(1000, 2)
educ <- ifelse(educ > 4, 4, educ)
table(educ)
feduc <- as.factor(educ)
feduc
table(feduc)
sort(feduc,decreasing = TRUE)
sort(table(feduc))




#Exercise 5: Conditional statements and loops (20 points)

#Levenshtein distance is a string distance metric that measures 
#how many transformations (insertion, deletion, substitution) 
#are required to convert one string into another. For example,
#consider words 'cat' and 'can'. Letter 't' in the first word can be substituted
#with a character 'n' in order for the two words to become identical.
#
#For classical Levenshtein distance each of the transformations has the same cost of 1. 
#In other words, the distance (of 1) is the same between the word pairs 'cat' - 'can' and 'cat' - 'cats'.
#Below you can see two character vectors that were transformed to have
#a single letter as an individual element. Write a loop to compare each of the elements 
#from one string to each of the elements from another string while keeping 
#track of the number of transformations. Print out the result of the transformations count.
char_1 <- unlist(strsplit("kitten", split = ""))
char_2 <- unlist(strsplit("sitting", split = ""))

char_1
char_2

levsh <- adist(char_1,char_2,ignore.case = FALSE)
stringdist(char_1,char_2,method = "lv")

