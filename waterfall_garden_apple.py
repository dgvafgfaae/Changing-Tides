# Imports 
import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt 

# Create data 
x = np.linspace(-3, 3, 2000) 
y = np.cos(x)*np.sin(x**2) 

# Create a DataFrame to store the data 
df = pd.DataFrame({'x': x, 'y': y}) 

# Set up plot 
fig, ax = plt.subplots(figsize=(7, 7)) 
ax.set_title('Changing Tides', fontsize=14, fontweight='bold') 
ax.set_xlabel('X Values', fontsize=12) 
ax.set_ylabel('Y Values', fontsize=12)

# Plot data 
ax.plot(df.x, df.y, color='purple') 

# Set plot limits 
ax.set_xlim(-3, 3) 
ax.set_ylim(-1, 1) 

# Turn off spines 
ax.spines['right'].set_visible(False) 
ax.spines['top'].set_visible(False)

# Show plot 
plt.show()