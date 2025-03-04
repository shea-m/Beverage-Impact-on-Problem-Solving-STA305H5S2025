# If not installed, uncomment the next line
# install.packages("clipr")

library(clipr)
groups <- c("Water", "Coffee", "Coffee (Decaf)", "Energy Drink", "Energy Drink (Decaf)")
labels <- rep(groups, 10)
shuffled <- sample(labels)
write_clip(shuffled, type = "text")
