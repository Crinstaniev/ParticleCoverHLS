#%%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#%%
file_path = "./data/wedgeData_v3_128.txt"

with open(file_path, 'r') as file:
    data_raw = file.readlines()
    
# %%
# iterate through each line
def parse_file(file_path):
    events = []
    with open(file_path, 'r') as file:
        for line in file:
            # Remove newline characters and split the line into tuple strings
            tuple_strings = line.strip().split('),')
            event = []
            for tuple_string in tuple_strings:
                # Clean up each tuple string and convert to tuple of integers
                clean_tuple_string = tuple_string.replace('(', '').replace(')', '')
                tuple_values = tuple(map(float, clean_tuple_string.split(',')))
                event.append(tuple_values)
            events.append(event)
    return events    

# %%
events = parse_file(file_path)
# %%
# create dataframe
def parse_file_to_df(file_path):
    data = []  # Initialize an empty list to hold all rows as dictionaries
    
    with open(file_path, 'r') as file:
        for event_no, line in enumerate(file):
            tuple_strings = line.strip().split('),')
            for hit_no, tuple_string in enumerate(tuple_strings):
                clean_tuple_string = tuple_string.replace('(', '').replace(')', '')
                tuple_values = tuple(map(float, clean_tuple_string.split(',')))
                # Add a new row as a dictionary to the data list
                data.append({
                    'event_no': event_no,
                    'hit_no': hit_no,
                    'layer_num': tuple_values[0],
                    'radius': tuple_values[1],
                    'phi': tuple_values[2],
                    'z': tuple_values[3],
                })
                
    # Create the DataFrame from the list of dictionaries
    df = pd.DataFrame(data)
    return df

# %%
data_df = parse_file_to_df(file_path)

# %%
# calculate number of points of each event
num_points = data_df.groupby('event_no').size()

# make histogram
plt.hist(num_points, bins=20)
plt.xlabel('Number of Points')
plt.ylabel('Frequency')
plt.title('Histogram of Number of Points in Each Event')
# save to stats/ directory
plt.savefig('./stats/histogram_num_points.png')

plt.show()

# %%
# print a table of the number of points in each event in descending order
num_points.sort_values(ascending=False)

# save to stats/ directory
num_points.sort_values(ascending=False).to_csv('./stats/num_points_per_event.csv')

# %%
# calculate the number of points in each layer in every event
num_points_per_layer = data_df.groupby(['event_no', 'layer_num']).size()

# %%
# make a histogram of the number of points in each layer
num_points_per_layer.hist(bins=20)

# save to stats/ directory
plt.savefig('./stats/histogram_num_points_per_layer.png')

# %%
# print a table of the number of points in each layer in every event, in descending order
num_points_per_layer.sort_values(ascending=False)

# save to stats/ directory
num_points_per_layer.sort_values(ascending=False).to_csv('./stats/num_points_per_layer.csv')

# %%
