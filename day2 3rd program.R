
library(ggplot2)

sales_data <- data.frame(
  Month = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov"),
  Product_A = c(500,600,700,800,750,850,900,950,1000,1050,1100),
  Product_B = c(300,320,350,400,420,450,480,500,550,580,600),
  Product_C = c(200,250,300,350,400,420,450,470,500,530,550)
)

sales_long <- reshape2::melt(sales_data, id.vars = "Month",
                             variable.name = "Product",
                             value.name = "Sales")

ggplot(sales_long, aes(x = Product, y = Sales, fill = Product)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1, color = "black", alpha = 0.7) +
  labs(title = "Sales Performance of Products Over a Year",
       x = "Product",
       y = "Sales") +
  theme_minimal()
