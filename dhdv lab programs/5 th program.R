library(ggplot2)

data <- data.frame(
  Company = c("A", "B", "C", "D"),
  Market_Share = c(20, 30, 25, 25)
)

ggplot(data, aes(x = "", y = Market_Share, fill = Company)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Market Share by Company") +
  theme_void()
