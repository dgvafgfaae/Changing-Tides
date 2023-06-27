# Changing Tides

# Introduction

# This code will illustrate the effects of changing tides on sea levels over time. We will be using the tide data from the National Oceanic and Atmospheric Administration (NOAA) to analyze the impacts of changing tides on sea levels.

# 1. Load Packages

# We will start by installing and loading the necessary packages to be used in our analysis.

# Install packages, if necessary 

install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")
install.packages("lubridate")

# Load packages

library(dplyr)
library(ggplot2)
library(tidyr)
library(lubridate)

# 2. Read and Process the Data

# We will start by reading our tide data from NOAA into a data frame.

# Read in the data 

tidedata <- read.csv("tide_data.csv")

# Convert the date column into Date objects

tidedata$Date <- as.Date(tidedata$Date, format = "%m/%d/%y")

# Summarize the data

tide.summary <- tidedata %>% group_by(Date) %>% summarise(mean.tide = mean(Tide))

# 3. Visualize the Data

# We can now visualize our tide data with a line graph.

# Generate a line graph 

ggplot(tide.summary, aes(x = Date, y = mean.tide)) + geom_line() + scale_x_date(date_breaks = "2 months")

# 4. Calculate the Variability of Sea Levels

# We can now use our tide data to calculate the variability of sea levels over time.

# Calculate the variance 

variance <- var(tide.summary$mean.tide)

# Calculate the standard deviation 

stdev <- sd(tide.summary$mean.tide)

# 5. Compare and Contrast

# We can now compare our results to the historical data provided by NOAA. 

# Load the historical data 

historical <- read.csv("historical_data.csv")

# Plot the historical data alongside the calculated values 

ggplot() + geom_line(data = tidedata, aes(x = Date, y = mean.tide), color = "red") + geom_line(data = historical, aes(x = Date, y = mean.tide), color = "blue") + scale_x_date(date_breaks = "2 months")

# 6. Model the Sea Levels

# We can now use the data to model sea levels over time. 

# Fit a linear regression model 

lm <- lm(mean.tide ~ Date, data = tidedata)

# Plot the regression line 

ggplot(data = tidedata, aes(x = Date, y = mean.tide)) + geom_point() + geom_smooth(method = "lm") + scale_x_date(date_breaks = "2 months")

# 7. Analyze the Results

# We can now analyze the results of our model to draw conclusions about the effects of changing tides on sea levels over time.

# Calculate the slope of the regression line

slope <- coef(lm)[2]

# Draw conclusions

The slope of the regression line shows that the mean sea level is increasing over time, likely due to the effects of changing tides.