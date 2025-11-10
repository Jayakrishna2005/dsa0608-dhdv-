library(ggplot2)

data <- data.frame(Weight = c(60, 65, 70, 75, 80, 85, 90, 95, 100))

ggplot(data, aes(Weight)) +
  geom_density(fill = "lightblue") +
  labs(title = "Density Plot of Weights",
       x = "Weight (kg)", y = "Density") +
  theme_minimal()
