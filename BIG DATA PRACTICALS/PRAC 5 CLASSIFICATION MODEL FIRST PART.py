import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
fruit = pd.read_table('fruit_data_with_colors.txt')
fruit.head()
print(fruit['fruit_name'].unique())
print(fruit.shape)
             
