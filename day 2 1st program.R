
library(ggplot2)
temperature_data <- data.frame(
  Week = as.Date(c("2023-01-01","2023-01-01","2023-01-01",
                   "2023-01-08","2023-01-08","2023-01-08",
                   "2023-01-15","2023-01-15","2023-01-15")),
  City = c("New York", "Los Angeles", "Chicago",
           "New York", "Los Angeles", "Chicago",
           "New York", "Los Angeles", "Chicago"),
  AvgTemp = c(-2, 15, -5, 0, 17, -3, 2, 18, -2)
)

ggplot(temperature_data, aes(x = Week, y = AvgTemp, color = City, group = City)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Weekly Average Temperature Comparison",
       x = "Week",
       y = "Average Temperature (°C)",
       color = "City") +
  theme_minimal()
