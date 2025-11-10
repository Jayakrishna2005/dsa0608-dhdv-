library(ggplot2)

data <- data.frame(Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70))

ggplot(data, aes(Age)) +
  geom_histogram(binwidth = 5, fill = "purple", color = "black") +
  labs(title = "Age Distribution", x = "Age", y = "Frequency") +
  theme_minimal()
