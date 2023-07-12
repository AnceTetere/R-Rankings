library(ggplot2)
#--------------------Plotting With Layers
p <- ggplot(data=movies, aes(x=CriticRating,y=AudienceRating, 
                             colour=Genre, size=BudgetMillions))
#points
p + geom_point()

#lines
p + geom_line() # meningless graph

#multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()