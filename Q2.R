data <- end_term_IIII_advanced_business_analytics_datasets_q2
# Create vectors from the dataset
Month <- 1:24
Sales <- c(200, 210, 215, 225, 230, 240, 245, 255, 260, 270, 275, 285, 
           290, 300, 310, 320, 330, 335, 345, 350, 360, 365, 375, 380)
# Create a time series object
sales_ts <- ts(Sales, start = c(1), frequency = 12)  # Assuming Month 1 is January
# Plot the time series
plot(sales_ts, type = "o", col = "blue", lwd = 2, 
     main = "Monthly Sales Over 24 Months", 
     xlab = "Month", ylab = "Sales")
# Fit linear regression model
trend_model <- lm(Sales ~ Month)
summary(trend_model)
# Forecast for months 25 to 30
future_months <- data.frame(Month = 25:30)
# Predict using the linear model
future_sales <- predict(trend_model, newdata = future_months)
# Combine and display results
data.frame(Month = 25:30, Forecasted_Sales = round(future_sales, 2))