install.packages9("readxl")
install.packages("ggplot2")
library(readxl)
library(ggplot2)
end_term_IIII_advanced_business_analytics_datasets_questions <- head(end_term_IIII_advanced_business_analytics_datasets_questions, -1)
data <- end_term_IIII_advanced_business_analytics_datasets_questions[-nrow(end_term_IIII_advanced_business_analytics_datasets_questions), ]
data <- end_term_IIII_advanced_business_analytics_datasets_questions
names(data)
head(data)
# Linear regression model
model <- lm(Price_K ~ Size_sqft, data = data)
# Model summary
summary(model)
# Visualization of the regression
plot(data$Size_sqft, data$Price_K,
     main = "House Price vs Size Plot",
     xlab = "Size_sqft",
     ylab = "Price_K",
     pch = 19)
abline(model, col = "red")

# Prediction function
predict_price <- function(Size_sqft) {
  predict(model, newdata = data.frame(Size_sqft = Size_sqft))
}
predict_price(2500)
predict_price(1000)
predict_price(1500)

# Prediction interval calculation
# First, predict the value
pred_value <- predict(model, newdata = data.frame(Size_sqft = 2500), 
                      interval = "prediction", 
                      level = 0.95)
print(pred_value)