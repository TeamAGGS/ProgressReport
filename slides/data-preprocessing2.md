
# Training and Testing Datasets

- Training datasets created to build models
- Datasets with ‘n’ versions have the training dataset consisting of ‘n-1’ versions and the nth dataset is used for testing purpose
- The merged dataset of ‘n-1’ versions is SMOTEd to build a more effective classifier.
- Datasets with only ‘1’ version available are SMOTEd to create near equal data objects to represent class 0 and class 1.
- This dataset is divided into 70% and 30% for training and testing purposes respectively.  

