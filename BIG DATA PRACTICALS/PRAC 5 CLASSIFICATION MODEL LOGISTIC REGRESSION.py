from sklearn.linear_model import LogisticRegression
logreg = LogisticRegression()
logreg.fit(X_train, y_train)
print('Accuracy of Logistic Regression Classifier On Training Set: {;,2f}'.format(logreg.score(X_train, y_train)))
print('Accuracy of Logistic Regression Classifier On Test Set: {;,2f}'.format(logreg.score(X_test, y_test)))
