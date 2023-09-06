#------------------- Theme

o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth = 10, aes(fill = Genre), colour="Black")
h

#axes labels
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies")

#label formatting
h +
  xlab("Money Axis") +
  ylab("Number of Movies")+
  theme(axis.title.x = 
          element_text(colour = "DarkGreen",
                       size = 10),
        axis.title.y = 
          element_text(colour = "DarkRed", size = 10))

#tick mark formatting
h + 
  xlab("Money Axis") +
  ylab("Number of Movies")+
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 12),
        axis.title.y = element_text(colour = "DarkRed", size = 12),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size = 12))

?theme

#legend formatting
h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 12),
        axis.title.y = element_text(colour="DarkRed", size = 12),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1), 
        legend.justification = c(1,1))

#title
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 12),
        axis.title.y = element_text(colour = "DarkRed", size = 12),
        axis.text.x = element_text(size = 12),
        axis.text.y = element_text(size = 12),
        
        legend.title = element_text(size = 12),
        legend.text = element_text(size=12),
        legend.position = c(1,1),
        legend.justification = c(1, 1),
        
        plot.title = element_text(hjust = 0.5,
                                  colour = "DarkBlue",
                                  size = 20,
                                  family = "mono"))