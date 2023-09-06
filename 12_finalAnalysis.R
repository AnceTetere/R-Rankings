#import the data
getwd()
setwd("D:\\Data_sets")
getwd()

mov <- read.csv("Data.csv")

#data exploration
head(mov)
summary(mov)
str(mov)

#activate ggplot2
#install.packages("ggplot2")
library(ggplot2)

#cool insight:
mov$Day.of.Week <- factor(mov$Day.of.Week) 
ggplot(data = mov, aes(x=Day.of.Week)) + geom_bar()

#filter Nr.1 for the data frame
filt <- (mov$Genre == "action") | (mov$Genre == "adventure")|(mov$Genre == "animation")|
  (mov$Genre == "comedy"|(mov$Genre == "drama"))

#filter Nr.2
filt2 <- mov$Studio %in% c("Buena Vista Studios", "WB", " Fox", "Universal", "Sony", "Paramount Pictures")

mov2 <- mov[filt & filt2, ]
mov2

#prepare the plot's data and aes layers:
p <- ggplot(data=mov2, aes(x=Genre, y=Gross...US))
p

#add geometries
p +
  geom_point()
p + geom_boxplot()+ geom_jitter()
p + geom_jitter() + geom_boxplot()
p + geom_jitter() + geom_boxplot(alpha = 0.7)
p + geom_jitter(aes(size=Budget...mill.)) + geom_boxplot(alpha = 0.7)
p + geom_jitter(aes(size=Budget...mill., colour = Studio)) + 
  geom_boxplot(alpha = 0.7)
q <- p + geom_jitter(aes(size=Budget...mill., colour = Studio)) + 
  geom_boxplot(alpha = 0.7, outlier.colour = NA)

#non-data ink
q <- q + 
  xlab("Genre") +
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre")
q

#theme
q <- q +
  theme(axis.title.x = element_text(colour = "Blue", size = 20),
        axis.title.y = element_text(colour = "Blue", size = 20),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        plot.title = element_text(size = 22),
        
        legend.title = element_text(size = 15),
        legend.text = element_text(size = 15)
        
        text = element_text(family = "Comic Sans MS")
        )
q

#final touch
q$labels$size <- "Budget $M"
