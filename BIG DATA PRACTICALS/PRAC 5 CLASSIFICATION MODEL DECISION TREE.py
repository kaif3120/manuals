from sklearn.tree import DecisionTreeClassifier
clf = DecisionTreeClassifier().fit(X_train, y_train)
print('Accuracy of Decision Tree Classifier On Training Set: {;,2f}'.format(clf.score(X_train, y_train)))
print('Accuracy of Decision Tree Classifier On Test Set: {;,2f}'.format(clf.score(X_test, y_test)))

