# This utilizes the blinded data. It loads the frame and shuffles the rows
# to keep the data blind. Treatment and Age key located in data_check.R along
# with none blind data to check work with.

setwd("C:/Users/srmsi/Documents/University of Toronto/Year 4/Winter 2025/STA305/Project/Beverage-Impact-on-Problem-Solving-STA305H5S2025")
library(tidyverse)
data2 <- sample_frac(read.csv("blind_cleaned_data.csv"), 1)
attach(data2)
data2$treatment <- as.factor(data2$treatment)
ggplot(data2, aes(x=treatment, y=score, fill = treatment)) + 
  geom_boxplot() +
  scale_fill_brewer(palette = "Dark2") + 
  labs(title = "Problem Solving (20 min) Score Categorized by Drink", 
       x="Treatment (Drink Type)", y="Problem Solving (20 min) Score")

