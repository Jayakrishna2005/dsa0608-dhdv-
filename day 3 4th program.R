
env <- data.frame(
  Location = c("A", "B", "C", "D", "E"),
  Temperature = c(15, 20, 18, 12, 17),
  Humidity = c(65, 70, 68, 60, 72),
  CO2 = c(400, 450, 420, 380, 430)
)

library(scatterplot3d)
scatterplot3d(env$Temperature, env$Humidity, env$CO2,
              color = "darkgreen", pch = 19,
              xlab = "Temperature (°C)",
              ylab = "Humidity (%)",
              zlab = "CO2 Levels (ppm)",
              main = "3D Scatter: CO2 vs Temperature & Humidity")

text(env$Temperature, env$Humidity, env$CO2 + 5, env$Location, cex = 0.8)
N