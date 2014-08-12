---
layout: post
title: Summary:Effective Java
---

{{ page.title }}
================

<p class="meta">30 Mar 2014 - Beijing</p>

<img src="http://ecx.images-amazon.com/images/I/51Om5Z2IiML._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg" width="200" />

#[Effective Java](http://www.amazon.com/Effective-Java-Edition-Joshua-Bloch/dp/0321356683/ref=sr_1_1?ie=UTF8&qid=1395706824&sr=8-1&keywords=effective+java)


ISBN: 0321356683 READ: 2014-08-17 RATING: 9/10


I spent two weeks on this book, nice read：）, it gives you the best practices, every chapter focus on
different best practice about java, if you have known the basic of java, you should definitely read this book. There are
a lot of advises on how to make your code more correct and perfect.

The book is structured in 11 Chapters containing 78 items.There items covers these themes:

- Creating and Destroying Objects
- Methods Common to All Objects
- Classes and Interfaces
- Generics
- Enum and Annitations
- Methods
- General Programming
- Exceptions
- Concurrency
- Serialization


#Creating and Destroying Objects
--------------

###Item 1:  Consider static factory methods instead of constructors.

Advantages:

- Can have descriptive names, unlike constructors.
- Not required to create new object, each time they are called.
- Can return any subtype of their return type.
- Reduce the verbosity of creating parameterized types. (Obviated by diamond in Java 7).

Disadvantages:

- Classes with only static factory methods without non-private constructors cannot be sub-classed.
- Not readily distinguishable from other static methods.  Follow conventional names like valueOf, of, getInstance, newInstance, getType, and newType.

###Item 2:  Consider a builder when faced with many constructor parameters.

- Builder pattern is a good choice when designing classes whose constructors or static factories would have more than a handful of parameters

- Builder is set as a static inner class. Builder makes the object initialized immutable.


###Item 3:  Enforce the singleton property with a private constructor or an enum type.

Three ways to implement Singleton pattern:

- Public field
- Static factory method
- Enum Singleton

###Item 4:  Enforce non-instantiability with a private constructor

Some utility classes like java.lang.Math or java.util.Arrays are not designed to be instantiated. For preventing them from instantiation and subclassing, make the constructor to be private.

###Item 5:  Avoid creating unnecessary objects.

- Prefer primitives to boxed primitives, and watch out for unintentional autoboxing.
- An object can always be reused if it is immutable.
- Ex: Do not do this BAD String s = new String("string"); Do
this instead String s = "string";String appending, Boxed primitives
- Prefer primitives toboxed primitives, and watch out for unintentional autoboxing

###Item 6:  Eliminate obsolete object references.

- Although Java has garbage collector, memory leak can still happen. GC reclaims the memory by inspecting the references of objects.
- The fix for this sort of problem is simple: null out references once they become obsolete
- Nulling out object references should be the exception rather than the norm.
- Common source of memory leaks, whenever a class manages its
own memory, caches,listeners and other callbacks.
- Common memory leak scenarios: Objects constructed inside classes, Cache, Callbacks
- Generally speaking, whenever a class manages its own memory, the pro-grammer should be alert for memory leaks. Whenever an element is freed, any object references contained in the element should be nulled out.
- The best way to ensure that callbacks are garbage collected promptly is to store only weak refer-ences to them, for instance, by storing them only as keys in a WeakHashMap.
###Item 7:  Avoid finalizers

- Severe performance penalty for using finalizers.
- No guarantee that it will actually run.

<!--

#Methods Common to All Objects
--------------

###Item 8:  Obey the general contract when overriding equals.

Conditions do not need overriding equals():

- Instances are distinguished by reference.
- Equals() defined in superclass works.
- You do not care the equals() function.


Contract when overriding equals():

- Use the == operator to check if the argument is a reference to this object.
Use the instanceof operator to check if the argument has the correct type.
- Reflexivee (x.equals(x) ==true), Symmetric (x.equals(y)==y.equals(x)), Transitivee (x==y,y==z then
x==z), Consistent(x !=null x.equals(null)==false).
- Notice the @Override annotation.

###Item 9:  Always override hashCode when you override equals.

- Whenever invoked in the same run, must return the same integer
provided no information used in equals is modified

###Item 10:  Always override toString.

- Return all of the interesting information contained in the object.

###Item 11:  Override clone judiciously.

###Item 12:  Consider implementing Comparable.

- If you override the clone() method in a nonfinal class, you should return an object obtained by invoking super.clone()
- Never make the client do anything the library can do for the client.


#Classes and Interfaces
--------------

###Item 13:  Minimize the accessibility of classes and interfaces.

- Make each class or member as inaccessible as possible.
- Don't provide any methods that modify the objects state.
- Make all fields final.
- Make all fields private.
- Top level Classes and interfaces have only two possible levels
package-private and public
- Members can be private,package-private (default) ,protected,public


###Item 14:  In public classes, use accessor methods not public fields.

- Exception to this rule is, if a class is package private or is a private
nested class, you could expose its data fields

###Item 15:  Minimize mutability.

- Do not have a public static final array of things (cause it is not immutable).In general make sure public static final fields are immutable
- Immutable objects are inherently thread-safe; they require no synchronization
- Classes should be immutable unless there is a very good reason to make them mutable
- If a class cannot be made immutable, limit its mutability as much as possible
- Make every field final unless there is a compelling reason to make it nonfinal


###Item 16:  Favor composition over inheritance.

- Inheritance violates encapsulation, subclass depend on internals of
super class.Use composition and forwarding instead
- Inheritance is appropriate only in circumstances where the subclass really is a subtype of the superclass.

###Item 17: Design and document for inheritance or else prohibit it

- You must test your class by writing subclasses before you release it,
this will make it obvious what methods need to be private and
protected.
- The only way to test a class designed for inheritance is to write at least three subclasses and test.
- Constructors (as well as clone and readObject) methods must not invoke overridable methods.
- Prohibit subclassing in classes that are not designed and documented to be safely subclassed by “final” or making the constructor “private”.

###Item 18: Prefer interfaces to abstract classes

- Interfaces are usually the best way to implement a type.

*Advantages:

- Existing classes can easily be retrofitted to implement a new interface.
- Interfaces are ideal for defining mixins.  Mixin is a type that a class can implement in addition to its primary type to show that it can provide additional behaviour.
- Interfaces allow the construction of non-hierarchial type frameworks.  If you use abstract classes, you risk a combinatorial explosion of classes to take care of each choice.
- Interfaces enable safe, powerful functionality enhancements via the wrapper class idiom.

- Abstract classes have one advantage over interfaces in that they are easier to evolve.  In general, once an interface is published, it is not possible to change it any more.

###Item 19: Use interfaces only to define types

###Item 20: Prefer class hierarchies to tagged classes

- Tagged classes are cluttered with tag fields, and switch statements, messing the encapsulation and  being prone to run-time errors.
- Tagged classes are verbose, error-prone, and inefficient.
- Tagged class should be abandoned and replaced by abstract classes.

###Item 21: Use function objects to represent strategies

###Item 22: Favor static member classes over nonstatic

- Four kinds of nested classes: static member classes, nonstatic member classes, anonymous classes, and local classe.
- A nested class should only exist to serve its enclosing class.


#Generics
--------------

###Item 23: Don’t use raw types in new code

###Item 24: Eliminate unchecked warnings

* Eliminate every unchecked exception that you can and only after
you prove that the code that provoked warning is type-safe
suppress the warning with a @SuppressWarnings("unchecked")
annotation.

* Always use the @SuppressWarnings annotation on the smallest scope possible.

* Every time you use an @SuppressWarnings("unchecked") - annotation, add a comment saying why its safe to do so.


###Item 25: Prefer lists to arrays

* Arrays are covariant and reifiable. Generics are invariant and erased in run-time.

* Arrays enforce their type at runtime, generics enforce their type only at compile time.

* Generics enforce their type constraints only at compile time and discard (or erase) their element type information at runtime.

* Arrays and generics don't mix well since they have very different type rules.


###Item 26: Favor generic types

###Item 27: Favor generic methods

###Item 28: Use bounded wildcards to increase API flexibility

#Enums and Annotations
--------------

###Item 30: Use enums instead of int constants.

###Item 31:  Use instance fields instead of ordinals.

###Item 32:  Use EnumSet instead of bit fields.

###Item 33:  Use EnumMap instead of ordinal indexing.

###Item 34:  Emulate extensible enums with interfaces.

###Item 35:  Prefer annotations to naming patterns.

###Item 36: Consistently use the override annotation.

###Item 37:  Use marker interfaces to define types.

#Methods
--------------

###Item 38: Check parameters for validity.

###Item 39: Make defensive copies when needed.

###Item 40: Design method signatures carefully.

###Item 41:  Use overloading judiciously.

###Item 42:  Use varargs judiciously.

###Item 43: Return empty arrays or collections, not nulls.

###Item 44: Write doc comments for all exposed API elements.

* Use @param, @return and @throws tags.  You can use HTML tags in your comment.

* Use @code instead of <code> because it eliminates the need to escape HTML metacharacters.

* The first sentence of each doc comment becomes the summary description of the element. No two members or constructors should have the same summary description.

* When documenting a generic type or method, be sure to document all type parameters.

* When documenting an enum type, be sure to document the constants as well as the type and all public methods.

* When documenting an annotation type, be sure to document any members as well as the type itself.

#General Programming
--------------

###Item 45: Minimize the scope of local variables

* The most powerful technique for minimizing the scope of a local variable is to declare it where it is first used.

* Prefer for loop to whie loops.

* Keep methods small and focused.


###Item 46: Prefer for-each loops to traditional for loops


###Item 47: Know and use the libraries

###Item 48: Avoid float and double if exact answers are required

* Use BigDecimal, it gives you full control over rounding.


###Item 49: Prefer primitive types to boxed primitives

* Applying the == operator to boxed primitives is almost always wrong.

* There are three differences between the primitives and the boxed primitives.

> 1).Primitives only have their values, boxed primitives have their identities distinct from values.

> 2).Boxed primitive have only non-functional value - null.

> 3).Primitives are generally time and space efficient as compared to boxed primitives.


###Item 50: Avoid strings where other types are more appropriate

* Using string concatenation operator repeatedly to concatenate n
strings requires time quadratic in n use StringBuilder instead.

* Strings are more cumbersome, less flexible, slower and error-prone than other types, if they are used inappropriately.  Do not use strings in place of primitive types, enums and aggregate types.

###Item 51: Beware the performance of string concatenation

###Item 52: Refer to objects by their interfaces

* If appropriate interface types exist, then parameters, return values, variables, and fields should all be declared using interface types.

* It is entirely appropriate to refer to an object by a class rather than aninterface if no appropriate interface exists.

###Item 53: Prefer interfaces to reflection

###Item 54: Use native methods judiciously

* Objects should not be accessed reflectively in normal applications at runtime. Reflection uses verbose code and does not perform well.

* It is rarely advisable to use native methods for improved performance.


###Item 55: Optimize judiciously

* Strive to write good programs rather than fast ones.

* Strive to avoid design decisions that would limit performance

* It is a very bad idea to warp an API to achieve good performance.



###Item 56: Adhere to generally accepted naming conventions

See [Java Language Specification,Chapter 6. Names](http://docs.oracle.com/javase/specs/jls/se8/html/jls-6.html#jls-6.7)

#Exceptions
--------------

###Item 57:  Use exceptions only for exceptional conditions.

###Item 58: Use checked exceptions for recoverable conditions and runtime exceptions for programming errors.

###Item 59: Avoid unnecessary use of checked exceptions.

###Item 60: Favor the use of standard exceptions.

* Use IllegalArgumentException when you are passed an argument whose value is inappropriate.  

* Use IllegalStateException when you the caller attempted to use an object before it was properly initialized.

* Use a NullPointerException when a caller passes null for a parameter for which null values are prohibited.  

* Use IndexOutOfBoundsException on receiving an out-of-range value for a parameter representing an index into a sequence.

* Use ConcurrentModificationException if an object designed for use b a single thread (or with external synchronization) is being concurrently modified.  

* Use UnSupportedOperationException if an object does not support an attempted operation.

###Item 61 Throw exceptions appropriate to the abstraction.

###tem 62  Document all exceptions thrown by each method.

###Item 63 Include failure-capture information in detail messages.

###Item 64  Strive for failure atomicity.

###Item 65  Don't ignore exceptions.


#Concurrency
--------------

###Item 66:  Synchronize access to shared mutable data.

###Item 67:  Avoid excessive synchronization.

###Item 68:  Prefer executors and tasks to threads.

###Item 69:  Prefer concurrency utilities to wait and notify.

###Item 70:  Document thread safety.

###Item 71:  Use lazy initialization judiciously.

###Item 72:  Don't depend on the thread scheduler.

###Item 73:  Avoid thread groups.

#Serialization
--------------

###Item 74:  Implement Serializable judiciously.

###Item 75:  Consider using a custom serialized form.

###Item 76:  Write readObject methods defensively.

###Item 77:  For instance control, prefer enum types to readResolve.

###Item 78:  Consider serialization proxies instead of serialized instances.
-->
