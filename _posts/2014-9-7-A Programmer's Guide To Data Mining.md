---
date: 2014-9-7 22:13:20+00:00
layout: post
title: A Programmers Guide to Data Mining(R)
thread: 31
categories: Reading
tags: Reading CS
---

<img src="http://guidetodatamining.com/wp-content/uploads/2012/10/mozi.jpeg" width="200" />

#[Summary:A Programmer's Guide to Data Mining](http://guidetodatamining.com/)

READ: 2014-09-7 RATING: 8/10

[Chapter 1: Introduction](http://guidetodatamining.com/chapter-1/)

How to find stuff?

- Years ago, in that small town, our friends helped us find stuff.

- We used experts to help us find stuff.

- We also use the thing itself to help us find stuff.

These methods of finding relevant stuff— friends, experts, the thing itself—are still present today but we need some computational help to transform them into the 21st century where we have billions of choices.

[Chapter 2: Getting Started with Recommendation Systems](http://guidetodatamining.com/chapter-2/)

- How a recommendation system works.
- How social filtering works
- How to find similar items
- Manhattan distance
- Euclidean distance
- Minkowski distance
- Pearson Correlation Coefficient
- Cosine similarity

## [Manhattan Distance](http://en.wikipedia.org/wiki/Manhattan_distance)
<img src="/images/A Programmer's Guide To Data Mining/ManhattanDistance.jpg" width="300" />

## [Euclidean Distance](http://en.wikipedia.org/wiki/Euclidean_distance)

## [Pearson Correlation Coefficient]()

[Chapter 3: Implicit ratings and item based filtering](http://guidetodatamining.com/chapter-3/)

- Explicit ratings: Explicit ratings are when the user herself explicitly rates the item. One example of this is the thumbs up / thumbs down rating on sites such as Pandora and YouTube.
- Implicit Ratings: For implicit ratings, we don't ask users to give any ratings—we just observe their behavior. An example of this is keeping track of what a user clicks on in the online New York Times.


- Problems with explicit ratings:

	- Problem 1: People are lazy and don't rate items.

	- Problem 2: People may lie or give only partial information.

	- Problem 3: People don't update their ratings.

- Problems with User-based filtering:

	- Scalability. As we have just discussed, the computation increases as the number of users increases. User-based methods work fine for thousands of users, but scalability gets to be a problem when we have a million users.

	- Sparsity. Most recommendation systems have many users and many products but the average user rates a small fraction of the total products. For example, Amazon carries millions of books but the average user rates just a handful of books.

- Cosine Similarity

<img src="/images/A Programmer's Guide To Data Mining/Cosine Similarity.jpg" width="300" />

This formula is from a seminal article in collaborative filtering: [“Item-based collaborative filtering recommendation algorithms”](http://www.grouplens.org/papers/pdf/www10_sarwar.pdf)

[Chapter 4: Classification based on item attributes](http://guidetodatamining.com/chapter-4/)

- A classifier is a program that uses an object’s attributes to determine what group or class it belongs to.A classifier uses a set of objects that are already labeled with the class they belong to. It uses that set to classify new, unlabeled objects.

- Classifiers can be used in a wide range of applications:
	- Twitter Sentiment Classification
	- Automatic identification of people in photos.
	- Classification for Targeted Political Ads
	- Targeted Marketing
- Normalizing data is critical when attributes have drastically different scales (for example, income and age). In order to get accurate distance measurements, we should rescale the attributes so they all have the same scale.

- Recall that one way to normalize an attribute on a scale between 0 and 1 is to find the minimum (min) and maximum (max) values of that attribute. The normalized value of a value is then value − min/max− min


[Chapter 5: Further Explorations in Classification](http://guidetodatamining.com/chapter-5/)

- We divided each of these datasets in turn into two subsets. One subset we used to construct the classifier. This data set is called the training set. The other set was used to evaluate the classifier. That data is called the test set. Training set and test set are common terms in data mining.

- People in data mining never test with the data they used to train the system.

- The accuracy based on a single test set may not reflect the true accuracy when our classifier is used with new data. A solution to this problem might be to repeat the process a number of times and average the results.

- 10-fold Cross Validation: With this method we have one data set which we divide randomly into 10 parts. We use 9 of those parts for training and reserve one tenth for testing. We repeat this procedure 10 times each time reserving a different tenth for testing.

- Ten-fold cross validation example:
	- Step 1, we equally divide the data into 10 buckets:
	- Step 2, we iterate through the following steps ten times:
	- Step 3, we sum up the results.

- Leave-One-Out: In the machine learning literature, n-fold cross validation (where n is the number of samples in our data set) is called leave-one-out. We already mentioned one benefit of leave-one-out— at every iteration we are using the largest possible amount of our data for training. The other benefit is that it is deterministic.

[Chapter 6: Naïve Bayes](http://guidetodatamining.com/chapter-6/)

[Chapter 7: Naïve Bayes and unstructured text](http://guidetodatamining.com/chapter-7/)

[Bayes' theorem](http://en.wikipedia.org/wiki/Bayes'_theorem)
