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


I spent a week on this book,nice read：）

##Creating and Destroying Objects

###Item 1:  Consider static factory methods instead of constructors.
Advantages:

* 1.Can have descriptive names, unlike constructors.

* 2.Not required to create new object, each time they are called.

* 3.Can return any subtype of their return type.
 
* 4.Reduce the verbosity of creating parameterized types. (Obviated by diamond in Java 7).

Disadvantages:

* 1.Classes with only static factory methods without non-private constructors cannot be sub-classed.

* 2.Not readily distinguishable from other static methods.  Follow conventional names like valueOf, of, getInstance, newInstance, getType, and newType.

###Item 2:  Consider a builder when faced with many constructor parameters.

* Builder pattern is a good choice when designing classes whose constructors or static factories would have more than a handful of parameters

* Builder is set as a static inner class. Builder makes the object initialized immutable.


###Item 3:  Enforce the singleton property with a private constructor or an enum type.

Three ways to implement Singleton pattern:

* Public field

* Static factory method

* Enum Singleton

###Item 4:  Enforce non-instantiability with a private constructor

Some utility classes like java.lang.Math or java.util.Arrays are not designed to be instantiated. For preventing them from instantiation and subclassing, make the constructor to be private.

###Item 5:  Avoid creating unnecessary objects.

* Prefer primitives to boxed primitives, and watch out for unintentional autoboxing.

* An object can always be reused if it is immutable.

* Ex: Do not do this BAD String s = new String("string"); Do
this instead String s = "string";String appending, Boxed primitives

###Item 6:  Eliminate obsolete object references.

* Although Java has garbage collector, memory leak can still happen. GC reclaims the memory by inspecting the references of objects.

* Nulling out object references should be the exception rather than the norm.

* Common source of memory leaks, whenever a class manages its
own memory, caches,listeners and other callbacks.

* Common memory leak scenarios: Objects constructed inside classes, Cache, Callbacks


###Item 7:  Avoid finalizers

* Severe performance penalty for using finalizers.

* No guarantee that it will actually run.

##Methods Common to All Objects

###Item 8:  Obey the general contract when overriding equals.

Conditions do not need overriding equals():

* Instances are distinguished by reference.

* Equals() defined in superclass works.

* You do not care the equals() function.


Contract when overriding equals():

* Use the == operator to check if the argument is a reference to this object.
Use the instanceof operator to check if the argument has the correct type.

* Reflexivee (x.equals(x) ==true), Symmetric (x.equals(y)==y.equals(x)), Transitivee (x==y,y==z then
x==z), Consistent(x !=null x.equals(null)==false).

* Notice the @Override annotation.

###Item 9:  Always override hashCode when you override equals.

* Whenever invoked in the same run, must return the same integer
provided no information used in equals is modified

###Item 10:  Always override toString.

* Return all of the interesting information contained in the object.

###Item 11:  Override clone judiciously.

###Item 12:  Consider implementing Comparable.

* If you override the clone() method in a nonfinal class, you should return an object obtained by invoking super.clone()

* Never make the client do anything the library can do for the client.


##Classes and Interfaces

###Item 13:  Minimize the accessibility of classes and interfaces.

* Make each class or member as inaccessible as possible.

* Don't provide any methods that modify the objects state.

* Make all fields final.

* Make all fields private.

* Top level Classes and interfaces have only two possible levels
package-private and public

* Members can be private,package-private (default) ,protected,public


###Item 14:  In public classes, use accessor methods not public fields.

* Exception to this rule is, if a class is package private or is a private
nested class, you could expose its data fields

###Item 15:  Minimize mutability.

* Do not have a public static final array of things (cause it is not immutable).In general make sure public static final fields are immutable

* Immutable objects are inherently thread-safe; they require no synchronization 

* Classes should be immutable unless there is a very good reason to make them mutable

* If a class cannot be made immutable, limit its mutability as much as possible

* Make every field final unless there is a compelling reason to make it nonfinal


###Item 16:  Favor composition over inheritance.

* Inheritance violates encapsulation, subclass depend on internals of
super class.Use composition and forwarding instead

* Inheritance is appropriate only in circumstances where the subclass really is a subtype of the superclass. 

###Item 17: Design and document for inheritance or else prohibit it

* You must test your class by writing subclasses before you release it,
this will make it obvious what methods need to be private and
protected.

* The only way to test a class designed for inheritance is to write at least three subclasses and test.

* Constructors (as well as clone and readObject) methods must not invoke overridable methods.

* Prohibit subclassing in classes that are not designed and documented to be safely subclassed by “final” or making the constructor “private”.

###Item 18: Prefer interfaces to abstract classes

* Interfaces are usually the best way to implement a type.

*Advantages:

> 1).Existing classes can easily be retrofitted to implement a new interface.

> 2).Interfaces are ideal for defining mixins.  Mixin is a type that a class can implement in addition to its primary type to show that it can provide additional behaviour.

> 3).Interfaces allow the construction of non-hierarchial type frameworks.  If you use abstract classes, you risk a combinatorial explosion of classes to take care of each choice.

> 4).Interfaces enable safe, powerful functionality enhancements via the wrapper class idiom.
   
* Abstract classes have one advantage over interfaces in that they are easier to evolve.  In general, once an interface is published, it is not possible to change it any more.

###Item 19: Use interfaces only to define types

###Item 20: Prefer class hierarchies to tagged classes

* Tagged classes are cluttered with tag fields, and switch statements, messing the encapsulation and  being prone to run-time errors.

* Tagged classes are verbose, error-prone, and inefficient.

* Tagged class should be abandoned and replaced by abstract classes.

###Item 21: Use function objects to represent strategies

###Item 22: Favor static member classes over nonstatic

* Four kinds of nested classes: static member classes, nonstatic member classes, anonymous classes, and local classes.

* A nested class should only exist to serve its enclosing class.

##Generics





