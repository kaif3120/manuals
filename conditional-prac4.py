import numpy as np
import pandas as pd
df=pd.read_csv('student-mat.csv')
print(df.head(3))
num_rows=len(df)
df['grade_A'] = np.where(df['G3']*5 >= 80, 1, 0)
df['high_absenses'] = np.where(df['absenses'] >= 10, 1, 0)
df['Count'] = 1
df=df[['grade_A','high_absenses','Count']]
print(df.head())
pivot_table=pd.pivot_table(df,values='Count',index=['grade_A'],columns=['high_absenses'],aggfunc=np.size,fill_value=0)
print(pivot_table)