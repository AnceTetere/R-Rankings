library(ggplot2)
#---------------------Overriding Aesthetics

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                            colour=Genre, size=BudgetMillions))
#add geom layer
q + geom_point()

#overriding aes
#ex1
q + geom_point(aes(size=CriticRating))

#ex2
q + geom_point(aes(colour=BudgetMillions))

#q remains the same
q + geom_point()

#ex3
q + geom_point(aes(x=BudgetMillions))+
  xlab("Budget Millions $$$")

#ex4
q + geom_line() + geom_point()

#reduce line size
q + geom_line(size=1) + geom_point()
