---
date: 2015-7-1 23:00:00+00:00
layout: post
title: Code Complete(R)
thread: 48
categories: Reading
tags:  Reading
---

<img src="http://ecx.images-amazon.com/images/I/515iO%2B-PRUL.jpg" width="200" />

##[Code Complete](http://amzn.com/0735619670)

ISBN: 0735619670 2015-7-1 RATING: */10

- The gap between the best software engineering practice and the average practice is very wide—perhaps wider than in any other engineering discipline. A tool that disseminates good practice would be important.

- Numerous distinct activities that go into software development. They include
 	- Problem definition
	- Requirements development
	- Construction planning	
	- Software architecture, or high-level design
	- Detailed design
	- Coding and debugging
	- Unit testing
	- Integration testing
	- Integration
	- System testing
	
- Software construction is the central activity in software development; construction is the only activity that's guaranteed to happen on every project. The main activities in construction are detailed design, coding, debugging, integration, and developer testing (unit testing and integration testing).

- It doesn't tell you how to get directly from point A to point B; it might not even know where point A and point B are. In effect, a heuristic is an algorithm in a clown suit. It's less predictable, it's more fun, and it comes without a 30-day, money-back guarantee.

- How do you use software metaphors? Use them to give you insight into your programming problems and processes. Use them to help you think about your 
programming activities and to help you imagine better ways of doing things.

- The most primitive metaphor for software development grows out of the expression "writing code."

- This doesn't mean that you have to learn how to make code out of waterborne sediment; it means that you have to learn how to add to your software systems a small amount at a time. Other words closely related to accretion are "incremental," "iterative," "adaptive," and "evolutionary." Incremental designing, building, and testing are some of the most powerful software-development concepts available.

- In incremental development, you first make the simplest possible version of the system that will run. It doesn't have to accept realistic input, it doesn't have to perform realistic manipulations on data, it doesn't have to produce realistic output—it just has to be a skeleton strong enough to hold the real system as it's developed. It might call dummy classes for each of the basic functions you have identified. This basic beginning is like the oyster's beginning a pearl with a small grain of sand.

- The image of an oyster forming a pearl is a good way to visualize incremental development, or accretion.

- Metaphors are heuristics, not algorithms.

- Thinking of software-development practices as tools in an intellectual toolbox suggests further that every programmer has many tools and that no single tool is right for every job. Choosing the right tool for each problem is one key to being an effective programmer.

- Before beginning construction of a house, a builder reviews blueprints, checks that all permits have been obtained, and surveys the house's foundation.

- The first prerequisite you need to fulfill before beginning construction is a clear statement of the problem that the system is supposed to solve. This is sometimes called "product vision," "vision statement," "mission statement," or "product definition."

- Explicit requirements help to ensure that the user rather than the programmer drives the system's functionality. If the requirements are explicit, the user can review them and agree to them. If they're not, the programmer usually ends up making requirements decisions during programming. Explicit requirements keep you from guessing what the user wants.

- Paying attention to requirements helps to minimize changes to a system after development begins. If you find a coding error during coding, you change a few lines of code and work goes on. If you find a requirements error during coding, you have to alter the design to meet the changed requirement. 

- Stable requirements are the holy grail of software development. With stable requirements, a project can proceed from architecture to design to coding to testing in a way that's orderly, predictable, and calm.

- Requirements are like water. They're easier to build on when they're frozen.

- Specific Functional Requirements:
	- Are all the inputs to the system specified, including their source, accuracy, range of values, and frequency? 
	- Are all the outputs from the system specified, including their destination, accuracy, range of values, frequency, and format? 
	- Are all output formats specified for Web pages, reports, and so on? 
	- Are all the external hardware and software interfaces specified? 
	- Are all the external communication interfaces specified, including handshaking, error-checking, and communication protocols? 
	- Are all the tasks the user wants to perform specified? Is the data used in each task and the data resulting from each task specified? 
	- Specific Nonfunctional (Quality) Requirements Is the expected response time, from the user's point of view, specified for all necessary operations? 
	- Are other timing considerations specified, such as processing time, datatransfer rate, and system throughput? 
	- Is the level of security specified? Is the reliability specified, including the consequences of software failure, the vital information that needs to be protected from failure, and the strategy for error detection and recovery? 
	- Are minimum machine memory and free disk space specified? 
	- Is the maintainability of the system specified, including its ability to adapt to changes in specific functionality, changes in the operating environment, and changes in its interfaces with other software? 
	- Is the definition of success included? Of failure? 
	- Requirements Quality Are the requirements written in the user's language? Do the users think so? 
	- Does each requirement avoid conflicts with other requirements? 
	- Are acceptable tradeoffs between competing attributes specified—for example, between robustness and correctness? 
	- Do the requirements avoid specifying the design? Are the requirements at a fairly consistent level of detail? 
	- Should any requirement be specified in more detail? Should any requirement be specified in less detail? 
	- Are the requirements clear enough to be turned over to an independent group for construction and still be understood? Do the developers think so? Is each item relevant to the problem and its solution? Can each item be traced to its origin in the problem environment? 
	- Is each requirement testable? Will it be possible for independent testing to determine whether each requirement has been satisfied? 
	- Are all possible changes to the requirements specified, including the likelihood of each change?
	- Requirements Completeness Where information isn't available before development begins, are the areas of incompleteness specified?
	- Are the requirements complete in the sense that if the product satisfies every requirement, it will be acceptable? 
	- Are you comfortable with all the requirements? 
	- Have you eliminated requirements that are impossible to implement and included just to appease your customer or your boss?
	
- "If you can't explain something to a six-year-old, you really don't understand it yourself." — Albert Einstein

- Part of a programmer's job is to educate bosses and coworkers about the software-development process, including the importance of adequate preparation before programming begins.

- If a good problem definition hasn't been specified, you might be solving the wrong problem during construction. If a good architectural design hasn't been done, you might be solving the right problem the wrong way during construction. The cost of architectural changes increases as more code is written for the wrong architecture, so be sure the architecture is right, too.

- Programmers may be similarly influenced by their languages. The words available in a programming language for expressing your programming thoughts certainly determine how you express your thoughts and might even determine what thoughts you can express.

- Before construction begins, spell out the programming conventions you'll use. Coding-convention details are at such a level of precision that they're nearly impossible to retrofit into software after it's written.

- Programmers who program "in" a language limit their thoughts to constructs that the language directly supports. If the language tools are primitive, the programmer's thoughts will also be primitive.

- The goal of all software-design techniques is to break a complicated problem into simple pieces.

- The more independent the subsystems are, the more you make it safe to focus on one bit of complexity at a time.

- Minimize the amount of essential complexity that anyone's brain has to deal with at any one time.

- "When I am working on a problem I never think about beauty. I think only how to solve the problem. But when I have finished, if the solution is not beautiful, I know it is wrong." — R. Buckminster Fuller

- Think of the maintenance programmer as your audience, and then design the system to be self-explanatory.

- From a complexity point of view, the principal benefit of abstraction is that it allows you to ignore irrelevant details.

- Most real-world objects are already abstractions of some kind. As just mentioned, a house is an abstraction of windows, doors, siding, wiring, plumbing, insulation, and a particular way of organizing them. A door is in turn an abstraction of a particular arrangement of a rectangular piece of material with hinges and a doorknob. And the doorknob is an abstraction of a particular formation of brass, nickel, iron, or steel.

- Encapsulation is a way of saying that you can look at the outside of the house but you can't get close enough to make out the door's details.

- A class is a lot like an iceberg: seven-eighths is under water, and you can see only the one-eighth that's above the surface.

- Avoid such dependency loops. They make it hard to test a system because you can't test either class A or class B until at least part of the other is ready.

- Global data is generally subject to two problems: routines operate on global data without knowing that other routines are operating on it, and routines are aware that other routines are operating on the global data but they don't know exactly what they're doing to it. Class data isn't subject to either of these problems. Direct access to the data is restricted to a few routines organized into a single class. The routines are aware that other routines operate on the data, and they know exactly which other routines they are.

- Business rules tend to be the source of frequent software changes.































