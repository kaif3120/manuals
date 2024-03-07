import numpy as np
import matplotlib.pyplot as plt 
import seaborn as sns
import pandas as pd

sns.set()
data=pd.read_csv('bloodpressure.csv',header=None,names=['patient','gender','agegrp','bp_before','bp_after'])
data['patient']=pd.to_numeric(data['patient'],errors='coerce')
data['gender']=pd.to_numeric(data['gender'],errors='coerce')
data['agegrp']=pd.to_numeric(data['agegrp'],errors='coerce')
data['bp_before']=pd.to_numeric(data['bp_before'],errors='coerce')
data['bp_after']=pd.to_numeric(data['bp_after'],errors='coerce')

sns.jointplot(data=data,patient='patient',gender='gender',agegrp='agegrp',bp_before='bp_before',
              bp_after='bp_after',kind='kde').plot_joint(sns.scatterplot)
plt.show()