---
layout: post
title: Summary:Clean Code:A Handbook Of Agile Software Craftsmanship
---

{{ page.title }}
================

<p class="meta">8 Jun 2014 - Beijing</p>


[Clean Code:A Handbook Of Agile Software Craftsmanship](http://amzn.com/0132350882)


ISBN: 0132350882 READ: 2014-06-8 RATING: */10

This is a book talking about writing clean,readable,functional and best practice pattren codes.


###Chapter 1: Clean code
- Straightforward to make it hard for bugs to hide
- First make it work -> Make it clean and work


###Chapter 2: Meaningful Names
- Use Intention-Revealing Names
- Avoid “noise” words in variable names. 

	Instead of ProductInfo or ProductData, just use Product. “Info” and “Data” don’t provide real meaning or anything more specific.

- Use Pronounceable Names
- Think about the “search friendliness” of a name. 

	you had to come back in 6 months and find this code, what would you search for? Using constants instead of numbers can also help. 

- Don't Be Cute
- Pick One Word per Concept
- Class Names should usually be Nouns.
- Method names should usually be Verbs.


###Chapter 3: Functions
- Do One Thing
- Have No Side Effects
- Don't Repeat Yourself

###Chapter 4: Comments
- Comments are not like Schindler’s List. They are not “pure good.” Indeed, comments are, at best, a necessary evil. If our programming languages were expressive enough, or if we had the talent to subtly wield those languages to express our intent, we would not need
comments very much—perhaps not at all.

- It is just plain silly to have a rule that says that every function must have a javadoc, or every variable must have a comment. Comments like this just clutter up the code, propa- gate lies, and lend to general confusion and disorganization.

- It is a pity when a comment needs its own explanation.

#####Good Comments
- Legal Comments
- Informative Comments
- Explanation of Intent
- Clarification
- Warning of Consequences
- TODO Comments
- Amplification
- Javadocs in Public APIs

####Bad Comments
- Mumbling
- Redundant Comments
- Misleading Comments
- Mandated Comments
- Journal Comments
- Noise Comments
- Scary Noise
- Don’t Use a Comment When You Can Use a Function or a Variable
- Position Markers
- Closing Brace Comments
- Attributions and Bylines
- Commented-Out Code
- HTML Comments
- Nonlocal Information
- Too Much Information
- Inobvious Connection
- Function Headers
- Javadocs in Nonpublic Code

###Chapter 5: Formatting
－ Code formatting is about communication, and communication is the professional developer’s first order of business.

####Vertical Formatting
- The Newspaper Metaphor
- Vertical Openness Between Concepts
- Vertical Density
- Vertical Distance
- Conceptual Affinity
- Vertical Ordering

####Horizontal Formatting
- Horizontal Openness and Density
- Horizontal Alignment
- Indentation
- Dummy Scopes

###Chapter 6: Objects and Data Structures


