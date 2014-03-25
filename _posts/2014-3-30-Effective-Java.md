---
layout: post
title: Summary:Effective Java(2nd Edition) 
---

{{ page.title }}
================

<p class="meta">30 Mar 2014 - Beijing</p>
 
<img src="http://ecx.images-amazon.com/images/I/51Om5Z2IiML._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg" width="200" />

##[Effective Java](http://www.amazon.com/Effective-Java-Edition-Joshua-Bloch/dp/0321356683/ref=sr_1_1?ie=UTF8&qid=1395706824&sr=8-1&keywords=effective+java)


ISBN: 0321356683 READ: 2014-03-30 RATING: 9/10


##Creating and Destroying Objects

###Item 1:  Consider static factory methods instead of constructors.
Advantages:

> 1.Can have descriptive names, unlike constructors.

> 2.Not required to create new object, each time they are called.

> 3.Can return any subtype of their return type.
 
> 4.Reduce the verbosity of creating parameterized types. (Obviated by diamond in Java 7).

Disadvantages:

> 1.Classes with only static factory methods without non-private constructors cannot be sub-classed.

> 2.Not readily distinguishable from other static methods.  Follow conventional names like valueOf, of, getInstance, newInstance, getType, and newType.

###Item 2:  Consider a builder when faced with many constructor parameters.

###Item 3:  Enforce the singleton property with a private constructor or an enum type.

###Item 4:  Enforce non-instantiability with a private constructor

###Item 5:  Avoid creating unnecessary objects.

###Item 6:  Eliminate obsolete object references.

###Item 7:  Avoid finalizers

##Methods Common to All Objects

###Item 8:  Obey the general contract when overriding equals.

###Item 9:  Always override hashCode when you override equals.

###Item 10:  Always override toString.
