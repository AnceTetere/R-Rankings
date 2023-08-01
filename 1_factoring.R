getwd()
setwd("D:\\R scripts and databases\\Data sets")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating",
                      "BudgetMillions", "Year")
tail(movies)
str(movies)

movies$Genre <- factor(movies$Genre)
str(movies$Genre)

summary(movies)
movies$Year <- factor(movies$Year)

summary(movies)
str(movies)
