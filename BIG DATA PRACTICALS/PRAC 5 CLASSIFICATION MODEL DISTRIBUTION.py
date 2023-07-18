import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
fruit = pd.read_table('fruit_data_with_colors.txt')
fruit.head()
print(fruit['fruit_name'].unique())
print(fruit.shape)
print(fruit.groupby('fruit_name').size())
import seaborn as sns
sns.countplot(fruit['fruit_name'],label="count")
plt.show()
