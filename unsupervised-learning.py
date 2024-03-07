import numpy as np
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.datasets import make_blobs

n_samples=200
n_features=2    
n_clusters=4

X, _ = make_blobs(n_samples=n_samples, n_features=n_features, centers=n_clusters, random_state=42)

n_init_value=10
kmeans=KMeans(n_clusters=n_clusters, n_init=n_init_value)
kmeans.fit(X)

cluster_labels=kmeans.predict(X)
centroids = kmeans.cluster_centers_


plt.scatter(X[:, 0], X[:, 1], c = cluster_labels, cmap='viridis')
plt.scatter(centroids[:, 0], centroids[:, 1], c='blue', marker='X', s=200, label='Centroids')
plt.legend()
plt.title('K-Means Clustering')
plt.title('Feature 1')
plt.title('Feature 2')
plt.show()