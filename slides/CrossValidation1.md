
# K-fold Cross Validation

- K fold cross validation technique was used for estimating the performance of the Decision Tree classifier 
- This technique was used to save best possible model generated using pre-processed training data sets
- The entire dataset was divided into ‘K’ almost equal parts
- For each of the ‘K’ folds,
  * A model was trained using *k-1* of the folds as training data
  * The resulting model was validated on the remaining part of the data (this is equivalent to the *Leave One Out* strategy)
  * Cross validation error was computed during each iteration
  * The model with the least cross validation error was saved to be used on the original testing dataset
    - Cross validation(CV) error is computed as,
	For i =  1, …, k, if n{i} is the number of examples wrongly classified,
	then,
    CV = \frac{\sum_{i=1}^{k} n_{i}}{m} 
	Where *m* is the number of training examples
- The value of ‘K’ here was adjusted depending on the size of the data sets to be trained.