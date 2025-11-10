library(ggplot2)

data <- data.frame(
  Year = 2010:2014,
  Population = c(1000, 1020, 1040, 1060, 1080)
)

ggplot(data, aes(Year, Population)) +
  geom_line(color = "green") +
  geom_point(color = "red") +
  labs(title = "Year vs Population",
       x = "Year", y = "Population (millions)") +
  theme_minimal()
