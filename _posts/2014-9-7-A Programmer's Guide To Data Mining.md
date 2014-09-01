---
layout: post
title: Summary:A Programmer's Guide to Data Mining
---

{{ page.title }}
================

<p class="meta">7 Sep 2014 - Beijing</p>



<img src="http://guidetodatamining.com/wp-content/uploads/2012/10/mozi.jpeg" width="200" />


#[Summary:A Programmer's Guide to Data Mining](http://guidetodatamining.com/)

READ: 2014-09-7 RATING: */10

# Chapter 1: Introduction

How to find stuff?

- Years ago, in that small town, our friends helped us find stuff. 

- We used experts to help us find stuff.

- We also use the thing itself to help us find stuff. 

These methods of finding relevant stuff— friends, experts, the thing itself—are still present today but we need some computational help to transform them into the 21st century where we have billions of choices.

# Chapter 2: Getting Started with Recommendation Systems
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

# Chapter 3: Implicit ratings and item based filtering

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

Chapter #4: Classification based on item attributes

- A classifier is a program that uses an object’s attributes to determine what group or class it belongs to.A classifier uses a set of objects that are already labeled with the class they belong to. It uses that set to classify new, unlabeled objects. 

- Classifiers can be used in a wide range of applications:
	- Twitter Sentiment Classification
	- Automatic identification of people in photos.
	- Classification for Targeted Political Ads
	- Targeted Marketing
- Normalizing data is critical when attributes have drastically different scales (for example, income and age). In order to get accurate distance measurements, we should rescale the attributes so they all have the same scale.

- Recall that one way to normalize an attribute on a scale between 0 and 1 is to find the minimum (min) and maximum (max) values of that attribute. The normalized value of a value is then value − min/max− min