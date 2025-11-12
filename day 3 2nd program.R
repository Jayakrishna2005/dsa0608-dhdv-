
finance <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
  StockPrice = c(100, 102, 98, 105, 108),
  Volume = c(2.5, 3.0, 2.2, 2.8, 3.5),
  MarketCap = c(500, 510, 490, 525, 540)
)

library(scatterplot3d)
scatterplot3d(finance$Volume, finance$MarketCap, finance$StockPrice,
              color = "blue", pch = 19,
              xlab = "Volume (millions)",
              ylab = "Market Cap ($M)",
              zlab = "Stock Price ($)",
              main = "3D Scatter: Stock Price vs Volume & Market Cap")
