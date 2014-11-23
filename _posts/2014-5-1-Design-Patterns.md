---
date: 2014-2-1 13:24:1+00:00
layout: post
title: Summary:Design Patterns
thread: 18
categories: Reading
tags: Reading CS
---
 
<img src="http://ecx.images-amazon.com/images/I/51szD9HC9pL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg" width="200" />

[Design Patterns: Elements of Reusable Object-Oriented Software](http://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612/ref=sr_1_1?ie=UTF8&qid=1397993114&sr=8-1&keywords=design+pattern)


ISBN: 0201633612 READ: 2014-05-1 RATING: */10

This book is written in 1996 by the GOF(Gang Of Four) literally started the whole pattern movement.This book depicts design patterns as "description of communicating objects and classes that are customized to solve a general design problem in a particular context".  

### What Is a Design Pattern?

A "Pattern" is a named,well-understood solution to a common problem in the special context.


> “Each pattern describes a problem which occurs over and over again in our environment, and then
describes the core of the solution to that problem,in such a way that you can use this solution a million times over, without ever doing the same thing twice.” -Christopher Alexander

Each pattern is a three-part rule, which expresses a relation between a certain context, a problem, and a solution. 

Design patterns are descriptions of communicating objects and classes that are customized to solve a general design problem in a particular context.

### Describing Design Patterns

- Name and Classification
- Intent
- Also Known As
- Motivation
- Applicability
- Structure
- Participants 
- Collaborations 
- Consequences 
- Implementation 
- Sample Code and Usage
- Known Uses
- Related Patterns


### A pattern has four essential elements:

- The pattern name that we use to describe a design problem,

- The problem that describes when to apply the pattern,

- The solution that describes the elements that make up the design, and

- The consequences that are the results and trade-offs of applying the pattern.


### Types of Design Pattern

- Creational Patterns

	These design patterns provides way to create objects while hiding the creation logic, rather than instantiating objects directly using new opreator. This gives program more flexibility in deciding which objects need to be created for a given use case.


- Structural Patterns
	
	These design patterns concern class and object composition. Concept of inheritance is used to compose interfaces and define ways to compose objects to obtain new functionalities.

- Behavioral Patterns

	These design patterns are specifically concerned with communication between objects.

### Creational Patterns

- Abstract Factory

	Provide an interface for creating families of related or dependent objects without specifying their concrete classes.

	<img src="/images/designpatterns/AbstractFactory.png" width="400" />

- Builder

	Separate the construction of a complex object from its representation so that the same construction process can create different representations.

- Factory Method

	Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.
	
- Prototype 
- Singleton


###	Structural Patterns

- Adapter 

	Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces.

	<img src="/images/designpatterns/Adapter.png" width="400" />

- Bridge
	
	Decouple an abstraction from its implementation so that the two can vary independently.
	
- Composite
	
	Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.
	
- Decorator

	Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.
	
- Facade

	Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.

- Flyweight

	Use sharing to support large numbers of fine-grained objects efficiently.

- Proxy
	
	Provide a surrogate or placeholder for another object to control access to it.

### Behaviour Patterns

- Chain of Responsibility

	Avoid coupling the sender of a request to its receiver by giving morethan one object a chance to handle the request. Chain the receivingobjects and pass the request along the chain until an objecthandles it.
	

	<img src="/images/designpatterns/ChainOfRespinsibility.png" width="400" />

- Command

	Encapsulate a request as an object, thereby letting you parameterizeclients with different requests, queue or log requests, and supportundoable operations.

	<img src="/images/designpatterns/Command.png" width="400" />

- Interpreter
 
- Iterator

	Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

	<img src="/images/designpatterns/Iterator.png" width="400" />

- Mediator

	Define an object that encapsulates how a set of objects interact.Mediator promotes loose coupling by keeping objects from referring toeach other explicitly, and it lets you vary their interactionindependently.

- Memento
- Observer

	Define a one-to-many dependency between objects so that when oneobject changes state, all its dependents are notified and updatedautomatically.

	<img src="/images/designpatterns/Observer.png" width="400" />
	

- State
- Strategy
- Template Method
- Visitor



###Userful Resources
- [Design Patterns Card](file:///Users/Geek4IT/EBooks/CS/%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F/Cheat%20Sheet/designpatternscard.pdf)
- [.NET Design Patterns](http://www.dofactory.com/Patterns/Patterns.aspx)

###Statement
These ablove pics come from [Mcdonaldland' Design Patterns Card](http://www.mcdonaldland.info/files/designpatterns/designpatternscard.pdf)




