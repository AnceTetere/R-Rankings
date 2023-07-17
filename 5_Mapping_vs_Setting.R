library("ggplot2")

#---------------Mapping vs Setting

r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

#Add colour
#1. Mapping
r + geom_point(aes(colour=Genre))
#2. Setting
r + geom_point(colour="DarkGreen")
#ERROR
#r + geom_point(aes(colour="DarkGreen"))

#1. Mapping
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r + geom_point(size=10)
#ERROR
#r + geom_point(aes(size=10))
