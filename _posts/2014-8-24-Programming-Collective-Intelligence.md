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



[Item-Based Collaborative Filtering Recommendation Algorithms](http://files.grouplens.org/papers/www10_sarwar.pdf)



##Euclidean Distance
[Euclidean Distance](http://en.wikipedia.org/wiki/Euclidean_distance) finds the distance between two points in multidimensional space, which is the kind of distance you measure with a ruler. If the points are written as (p1, p2, p3, p4, ...) and (q1, q2, q3, q4, ...), then the formula for Euclidean distance can be expressed as shown：

 `
 
 	def euclidean(p,q): 	 	       sumSq=0.0       # add up the squared differences       for i in range(len(p)):         sumSq+=(p[i]-q[i])**2       # take the square root       return (sumSq**0.5)
 `

