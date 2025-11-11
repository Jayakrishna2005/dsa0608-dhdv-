
library(ggplot2)
performance_data <- data.frame(
  Month = c("Jan", "Jan", "Jan",
            "Feb", "Feb", "Feb",
            "Mar", "Mar", "Mar"),
  Employee = c("A", "B", "C",
               "A", "B", "C",
               "A", "B", "C"),
  Score = c(85, 90, 78,
            88, 92, 80,
            90, 94, 82)
)

ggplot(performance_data, aes(x = Score, fill = Employee)) +
  geom_histogram(binwidth = 5, color = "black", alpha = 0.7, position = "dodge") +
  labs(title = "Employee Performance Evaluation",
       x = "Performance Score",
       y = "Frequency",
       fill = "Employee") +
  theme_minimal()
