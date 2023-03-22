PATH %>%
  select(Q3) %>%
  group_by(as.factor(Q3))%>%
  summarise(n = n(),
            total =)
##confusion above

library("readr")
library("dplyr")

PATH <- "kaggle_survey_2021_responses.csv"
getwd()
questions <- readr::read_csv(PATH, n_max = 2)
spec()
show_col_types= FALSE

kaggle2021 <- readr::read_csv(PATH, col_names = names(questions), skip = 2)

head(kaggle2021, 1)

questions[,1:10]

questions[,4]

kaggle2021 %>%
  select(Q3,1:369)


kaggle2021_q1_5_wide_2 <- kaggle2021  
tidyr::pivot_wider(
  names_from = "Q1",
  names_prefix ="Q1",
  values_from = "Q1",
  values_fn = function(x) ifelse(is.na(x),0,1),
  values_fill = 0
)





Q7 <- kaggle2021 %>%
  select(Q7_Part_1:Q7_OTHER,1:369)

Q7 %>%
  filter(Q7_Part_1:Q7_OTHER)

sort(Q7,na.last=TRUE)


order(A7,na.last = TRUE,decreasing = TRUE)

Q7 %>%
  count(Q7_Part_1:Q7_OTHER, sort = TRUE)

percent_rank(as.character.numeric_version(A7$Q7_Part_1))

percent_rank(A7$Q7_Part_1)

A7$Q7_Part_1 
Q%>%
  pivot_wider()

A7 <- Q7[,1:13]
arrange(A7,decreasing = TRUE,)


values_fn = function(x) ifelse(is.na(x),0,1),
values_fill = 0





  
Q7p <- sort(c(100-(colMeans(is.na(A7)))*100),decreasing = TRUE)
Q7df <- as.data.frame(Q7p)

Piv_Q7df <- tidyr::pivot_wider(Q7df)




