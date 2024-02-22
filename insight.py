#%%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#%%
file_path = "./data/wedgeData_v3_128.txt"

with open(file_path, 'r') as file:
    data_raw = file.readlines()
    
# %%
# load into pandas
data_df = pd.DataFrame([x.strip().split() for x in data_raw])

# %%
