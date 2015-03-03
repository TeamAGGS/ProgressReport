
# Classifier: Decision Tree

- Decision tree classifier was used to generate models in the cross validation process
- It is used to build regression models in the form of a tree structure
- The Datasets were partitioned into data into subsets that contain instances with homogeneous data
- The function *rpart(formula, data, weights, subset, na.action = na.rpart, method,
      model = FALSE, x = FALSE, y = TRUE, parms, control, cost, ...)*
was used to generate the model
- The ‘gini’ index was used for splitting the data
- The control options like **minsplit** and **minbucket** were used to control the rpart algorithm
- **minsplit** - the minimum number of observations that must exist in a node in order for a split to be attempted ( For our smaller datasets the value of minsplit was set accordingly)
- **minbucket** - the minimum number of observations in any terminal <leaf> node. If only one of minbucket or minsplit is specified, the code either sets minsplit to minbucket*3 or minbucket to minsplit/3, as appropriate.
