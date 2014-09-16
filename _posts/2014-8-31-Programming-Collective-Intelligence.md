---
layout: post
title: Summary:Programming Collective Intelligence
---

{{ page.title }}
================

<p class="meta">24 Aug 2014 - Beijing</p>



<img src="http://media-cache-ec0.pinimg.com/736x/a0/04/d2/a004d2aa900ac248f670d403e2487ea5.jpg" width="200" />


#[Programming Collective Intelligence: Building Smart Web 2.0 Applications](http://amzn.com/0596529325)


ISBN: 0596529325 READ: 2014-08-24 RATING: */10


##Chapter #2 Making Recommendations

Steps to build a Recommendation System:

- Collecting data about the things people like;
- Find a way to determine how similar people are in their tastes: Euclidean distance and Pearson correlation;
- Now that you have functions for comparing two people, you can create a function that scores everyone against a given person and finds the closest matches.

Recommendation Engine are of two types:

####User based
Recommendation of anything to you based on your data or your profile, like Facebook recommending you friends(though it is more of a collective intelligence) or Gmail displaying ad on the basis of your mails. It can also be collaborative. Collaborative is when other users are also taken into consideration for your recommendation, not only your profile.

####Item based 
Recommendation of anything to you based on the item you are watching. Eg:- Amazon recommending you books when you were going through the books related to collective intelligence or recommendations.


[Item-Based Collaborative Filtering Recommendation Algorithms](http://files.grouplens.org/papers/www10_sarwar.pdf)



##Euclidean Distance
[Euclidean Distance](http://en.wikipedia.org/wiki/Euclidean_distance) finds the distance between two points in multidimensional space, which is the kind of distance you measure with a ruler. If the points are written as (p1, p2, p3, p4, ...) and (q1, q2, q3, q4, ...), then the formula for Euclidean distance can be expressed as shown：

<img src="/images/recommander/diagram_euclidean_distance_metric.png" width="500" />
<img src="/images/recommander/code_euclidean_distance.png" width="500" />

##Pearson Correlation Coefficient
[Pearson Correlation Coefficient](http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient) is a measure of how highly correlated two variables are. It is a value between 1 and –1, where 1 indicates that the variables are per- fectly correlated, 0 
indicates no correlation, and –1 means they are perfectly inversely correlated.

<img src="/images/recommander/pearson_correlation_coefficient.png" width="500" />
<img src="/images/recommander/code_pearson_distance.png" width="500" />
<img src="/images/recommander/Correlation_coefficient.gif" width="500" />
<img src="/images/recommander/Correlation_examples2.svg.png" width="500" />


##Chapter #3 Discovering Group

##Chapter #4 Searching and Ranking

What’s in a Search Engine?

- 1.Creating a search engine is to develop a way to collect the docu- ments. In some cases, this will involve crawling (starting with a small set of documents and following links to others) and in other cases it will begin with a fixed collection of documents, perhaps from a corporate intranet.
- 2.After you collect the documents, they need to be indexed. This usually involves cre- ating a big table of the documents and the locations of all the different words.
- 3.Returning a ranked list of documents from a query.
- 4.Build a neural network for ranking queries. The neural network will learn to associate searches with results based on what links people click on after they get a list of search results. 
	
##Chapter #5 Optimization

##Chapter #6 Document Filterling

##Chapter #7 Modeling with Decision Tree

##Chapter #8 Build Price Model




