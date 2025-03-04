# Data Key for Blind Data:
# Age Group: (18-35, 36-54, 55+) -> (C, A, B)
# Treatment: (Water, Energy Drink, Energy Drink (Decaf), Coffee
#             Coffee (Decaf)) -> (4, 1, 2, 5, 3)
# Check work with non-blind data:
setwd("C:/Users/srmsi/Documents/University of Toronto/Year 4/Winter 2025/STA305/Project/Beverage-Impact-on-Problem-Solving-STA305H5S2025")
library(tidyverse)
library(patchwork)
data <- read.csv("cleaned_data.csv")
attach(data)

# By Treatment
tr <- ggplot(data, aes(x=treatment, y=score, fill = treatment)) + 
  geom_boxplot() +
  scale_x_discrete(labels = c("Coffee", "Coffee (Decaf)", "Energy Drink", 
                              "Energy Drink (Decaf)", "Water")) +
  scale_fill_brewer(palette = "Set1") + 
  labs(title = "Problem Solving (20 min) Score Categorized by Drink", 
       x="Treatment (Drink Type)", y="Problem Solving (20 min) Score") +
  theme(legend.position = "none")
  
# By Age
ag <- ggplot(data, aes(x=age_group, y=score, fill = age_group)) + 
  geom_boxplot() +
  scale_fill_brewer(palette = "Set2") + 
  scale_x_discrete(labels = c("36-54", "55+", "18-35")) + 
  labs(title = "Problem Solving (20 min) Score Categorized by Age Group", 
       x="Age Group", y="Problem Solving (20 min) Score") +
  theme(legend.position = "none")

(tr + ag) + plot_layout(widths = c(1,1))


