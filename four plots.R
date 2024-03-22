 # Configure the required environment
  library(ggplot2)
  library(dplyr)
  
 # Generate a set of 300 normally distributed random numbers
  num <- rnorm(300)
  index <- 1:300
  
 # Create a dataframe
  df_num <- data.frame(index = index, value = num)
  
 # Boxplot
  boxplot(num, main = "Boxplot", col = "blue", boxwex = 0.3, outline = FALSE)
  
 # Histogram
  hist(num, col = "lightgreen", border = "white")
  rug(num, col = "green")
  
 # Jittered plot
  plot(index, jitter(num), col = "darkorange", main = "Jittered plot", pch = 19, cex = 0.7, xlab = "Index", ylab = "Jittered Value")
  grid(col = "lightgray")
  
 # Generate data
  set.seed(123)
  df <- data.frame(
    group = rep(c("A", "B", "C", "D", "E"), each = 60),
    value = rnorm(300)
  )
  
 # Create plot
  ggplot(df, aes(x = group, y = value)) +
    stat_boxplot(geom ='errorbar', width = 0.4, linewidth = 0.5) +
    geom_boxplot(width = 0.4, fill = "skyblue", colour = "black", linetype = 1, outlier.shape = NA) +
    labs(title = "Box Plunger Plot", x = "Group", y = "Median Value") +
    theme_minimal()