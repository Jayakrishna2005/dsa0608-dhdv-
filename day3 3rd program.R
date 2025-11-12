
survey <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Price = c(50, 70, 60, 45, 55),
  Rating = c(4.2, 3.8, 4.0, 4.5, 3.9),
  AgeGroup = c("25-35", "35-45", "18-25", "45-55", "25-35")
)

survey$AgeNum <- as.numeric(factor(survey$AgeGroup, 
                                   levels = c("18-25","25-35","35-45","45-55")))

library(scatterplot3d)
scatterplot3d(survey$Price, survey$AgeNum, survey$Rating,
              color = "blue", pch = 19,
              xlab = "Price ($)",
              ylab = "Age Group",
              zlab = "Rating (out of 5)",
              main = "3D Scatter: Rating vs Price & Age Group")
text(survey$Price, survey$AgeNum, survey$Rating + 0.05, survey$Product, cex = 0.8)
