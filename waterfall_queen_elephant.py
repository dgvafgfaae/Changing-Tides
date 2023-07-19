# Changing Tides
# A Python Script for Studying Tides

# Import necessary modules
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Create a list of months in a year
months = ['January', 'February', 'March', 'April', 'May', 'June', 
          'July', 'August', 'September', 'October', 'November', 'December']

# Set the number of days in a month
days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

# Create an empty 2D array to store the total tide level for each day
tide_level = np.zeros((12, max(days_in_month)))

# Define the mean and standard deviation of the tide
mean_tide_level = 0.5
tide_level_std = 0.3

# Generate the tide level for each day with a normal distribution
for i in range(12):
    tide_level[i] = np.random.normal(mean_tide_level, tide_level_std,
                                     days_in_month[i])

# Create a pandas dataframe to store the tide level data
tide_df = pd.DataFrame(columns=months, data=tide_level)

# Plot the tide level data
fig, ax = plt.subplots()
ax.set_title('Tide Level by Month')
ax.set_xlabel('Days')
ax.set_ylabel('Tide Level')
ax.set_xlim([1, 31])
ax.set_ylim([0, 1])
tide_df.plot(ax=ax)

# Create a figure to store the tide level data
fig1, ax1 = plt.subplots()
ax1.set_title('Tide Level by Month')
ax1.set_xlabel('Months')
ax1.set_ylabel('Tide Level')
ax1.set_xlim([0, 11])
ax1.set_ylim([0, 1])
tide_df.mean(axis=1).plot(ax=ax1)

# Calculate the mean tide level for each month
mean_tide_by_month = tide_df.mean(axis=1)
for i in range(12):
    print("The mean tide level for {} is {:.2f}".format(
        months[i], mean_tide_by_month[i]))

# Calculate the monthly coastal erosion
coastal_erosion = mean_tide_by_month - mean_tide_level
for i in range(12):
    print("The coastal erosion for {} is {:.2f}".format(
        months[i], coastal_erosion[i]))

# Calculate the total coastal erosion in a year
total_coastal_erosion = np.sum(coastal_erosion)
print("The total coastal erosion in a year is {:.2f}"
      .format(total_coastal_erosion))