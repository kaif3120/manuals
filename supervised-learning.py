import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_classification
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, classification_report

# Create a simulated dataset for classification
X, y = make_classification(
    n_samples=2000, 
    n_features=2,     # Total number of features
    n_informative=2,  # Number of informative features
    n_redundant=0,    # Number of redundant features
    random_state=50
)

# Split the dataset into a training and testing set
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create and train a supervised learning model (Logistic Regression)
classifier = DecisionTreeClassifier()
classifier.fit(X_train, y_train)

# Make predictions using the trained classifier
y_pred = classifier.predict(X_test)

# Calculate and display the accuracy of the classifier
accuracy = accuracy_score(y_test, y_pred)
print(f"Supervised Learning Accuracy: {accuracy:.2f}")

classification_rep = classification_report(y_test,y_pred)
print("Classification Report\n", classification_rep)

xx, yy = np.meshgrid(np.linspace(X[:,0].min(),X[:,0].max(),100),
                     np.linspace(X[:,1].min(),X[:,1].max(),100))
Z = classifier.predict(np.c_[xx.ravel(),yy.ravel()])
Z = Z.reshape(xx.shape)

plt.contourf(xx,yy,Z,alpha=0.8)
plt.scatter(X[:, 0], X[:, 1], c = y, marker='o',edgecolors='k')
plt.xlabel('feature 1')
plt.xlabel('feature 2')
plt.title('Decisin Tree Classifier')
plt.show()