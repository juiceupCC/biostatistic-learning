#Configuring the ggplot2 environment
library(ggplot2)
library(dplyr)

  #Generate a set of 300 normally distributed random numbers
    num<-rnorm(300)
    index <- 1:300
  #boxplot
    boxplot(num,main = "Boxplot",col = "blue")
  #histogram
    hist(num, col = "green")
    rug(num)
  #jittered plot
    plot(index,jitter(num),col = "orange", main = "Jittered plot", pch = 20)
  #plunger plot    
    ymin <- min(num)
    ymax <- max(num)
    plot(x = index, y = num, type = "n", ylim = c(ymin, ymax), main = "Plunger plot")
    for(i in  1:length(num)){
    lines(x = c(index[i], index[i]), y = c(ymin, num[i]), col = "brown")
    }
    points(x = index, y = num, pch = 20, col = "red")