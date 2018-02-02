library(ggplot2)
library(ggcorrplot)

# Correlation matrix
data = read.csv("wineDATA.csv")

corr <- round(cor(data), 1)

# Plot
ggcorrplot(corr, hc.order = TRUE, 
           type = "lower", 
           lab = TRUE, 
           lab_size = 3, 
           method="circle", 
           colors = c("yellow", "white", "purple"), 
           title="Correlogram of Wine Data", 
           ggtheme=theme_bw)
