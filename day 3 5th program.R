
data <- data.frame(
  Student = c("A", "B", "C", "D", "E"),
  Math = c(85, 72, 90, 78, 88),
  Science = c(78, 85, 80, 75, 82),
  Attendance = c(95, 92, 98, 85, 93)
)
library(scatterplot3d)
scatterplot3d(data$Math, data$Attendance, data$Science,
              color = "blue", pch = 19,
              xlab = "Math Score",
              ylab = "Attendance (%)",
              zlab = "Science Score",
              main = "3D Scatter: Science vs Math & Attendance")
text(data$Math, data$Attendance, data$Science + 0.5, data$Student, cex = 0.8)
