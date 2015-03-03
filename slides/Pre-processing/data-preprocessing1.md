% Relative Defect Proneness - Report
% Apeksha Saxena, Gaurav Saraf
% Shivani Angane and Yiyang Wang

# Data Preprocessing

- Selected Datasets from the ['Open Science Repository'](http://openscience.us/repo)
- As part of data cleaning, removed unnecessary columns from the datasets.
- The Bug column being numeric was converted to binary 0/1 values to perform classification and not regression.
- Bug = 0 corresponds to Class 0
- Bug > 0 corresponds to Class 1 
- To improve the efficiency of trained models, used the SMOTE algorithm to synthetize the datasets to have near equal data points for each class. 

