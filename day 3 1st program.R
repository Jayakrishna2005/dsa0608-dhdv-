
library(plotly)
weather <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)
plot_ly(weather, x = ~Humidity, y = ~WindSpeed, z = ~Temperature,
        type = "scatter3d", mode = "markers",
        marker = list(size = 6, color = ~Temperature, colorscale = "Viridis")) %>%
  layout(title = "3D Scatter: Temperature vs Humidity & Wind Speed")
H <- seq(min(weather$Humidity), max(weather$Humidity), length = 5)
W <- seq(min(weather$WindSpeed), max(weather$WindSpeed), length = 5)
T <- outer(H, W, function(h, w) 0.05*h + 0.2*w - 10)

plot_ly(x = H, y = W, z = T, type = "surface") %>%
  layout(title = "3D Surface: Temperature vs Humidity & Wind Speed",
         scene = list(xaxis = list(title = "Humidity"),
                      yaxis = list(title = "Wind Speed"),
                      zaxis = list(title = "Temperature")))

p1 <- plot_ly(weather, x = ~Humidity, y = ~Temperature, z = ~WindSpeed,
              type = "scatter3d", mode = "lines", line = list(color = "blue"))
p2 <- plot_ly(weather, x = ~WindSpeed, y = ~Temperature, z = ~Humidity,
              type = "scatter3d", mode = "lines", line = list(color = "orange"))
subplot(p1, p2, titleX = TRUE, titleY = TRUE)
