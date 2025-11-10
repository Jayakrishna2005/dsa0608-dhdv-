# Load libraries
library(ggplot2)
library(tidyr)

# Create a data frame
temperature_data <- data.frame(
  Month  = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)

# Reshape data for heatmap (use tidyr instead of reshape2)
melted_data <- pivot_longer(temperature_data,
                            cols = c(City_A, City_B, City_C),
                            names_to = "City",
                            values_to = "Temperature")

# Plot heatmap
ggplot(melted_data, aes(x = Month, y = City, fill = Temperature)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Monthly Temperatures",
       x = "Month", y = "City") +
  theme_minimal()
