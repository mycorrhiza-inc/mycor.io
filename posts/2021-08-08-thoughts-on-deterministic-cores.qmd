---
title:  Thoughts on Deterministic Cores
author: Bradley Venner
date:   7/8/2021
---

I've read several papers lately that have a vaguely similar structure - a 'deterministic' core is embedded in a larger 'non-deterministic' system in a structured way. Some of these are hinted at, others are explicit.

In categorical probability, the 'deterministic core' is a category with products, and the 'non-deterministic' system is the Kleisli category for a monad. The 'non-deterministic' category is a monoidal category that maps the product in the deterministic category to a monoidal product in the 'non-deterministic' category. 

In Pavlovic's **Retracing some paths in categorical semantics** paper, he develops in detail the relationship between a functional language, modeled as a cartesian closed category, and a more general category of 'processes', which presumably includes non-deterministic processes. The main difference with the probabilistic case seems to be the addition of the 'closed' structure, which takes the deterministic core from a more propositional flavor to a higher-order flavor. I haven't yet finished this paper, which soars to dizzying heights, but this preliminary model shows that the 'embedding' is 'similar' to the relationship between the integers and the real numbers.  Pavlovic develops linear algebra from his construction on real numbers, (perhaps?) showing the close relationship between linear algebra and linear logic. 

Pavlovic's construction seem related to a 'linear-non-linear adjunction' in intuitionistic linear logic. This adjunction relates a 'multiple' category with cartesian products and a 'linear' category that is symmetric monoidal closed.

Is an early model of this reasoning the relationship between Boolean algebra and probability that was developed by Cox and extended by Jaynes? This would be a good exercise to make sure that I understand the "information transformer" construction. A few facts.

> The Kliesli category of the powerset monad is isomorphic to the category $\mathbf{Rel}$ of sets and binary relations under relational composition [https://www.cs.cornell.edu/courses/cs6110/2011sp/lectures/lecture37.pdf]

> Assuming excluded middle, complete atomic Boolean algebras are (up to isomorphism) precisely power sets [https://ncatlab.org/nlab/show/complete+Boolean+algebra].


Golubtsov considers information transformer models in Set in some detail.

Mellies seems to have taken this construction as primary and has extended it to a 'game semantics' model that considers more general structures than *-autonomous categories. 

A recent paper from Mellies, **A functorial excursion between algebraic geometry and linear logic", extends this construction to algebraic geometry**.  The abstract states:

> The purpose of this work is to establish on firm mathematical foundations the idea that linear logic should be understood as a logic of generalized vector bundles, in the same way as dependent type theory is understood today as a logic of spaces up to homotopy.

This connection of a covariant presheaf from Ring -> Set, which is a cartesian closed category, to a "presheaf of modules" generalizes the analogy between linear logic and linear algebra, since a module over a ring is a generalization of a vector space over a field. 

This extension to algebraic geometry seems particularly important in light of 'singular learning theory'. Murfort shows that deep learning models are singular. Murfort has also developed several papers on 'differential linear logic' and wrote an expository paper on the connection between linear algebra and linear logic.

It may be possible to extend this process to monoidal bicategories. For example, the monoidal bicategory *CAT* is cartesian closed, whereas the monoidal bicategory *PROF* (small categories, profunctors, and natural transformations) is something like a symmetric monoidal closed category.  Dunn [@dunn:2015:profunctor] shows that profunctors can be used as a semantics for linear logic using 3-D "surface" models of proof nets. 

It's suggestive that profunctors are generalizations of 'distributions' in the same way that functors are generalizations of functions. On the other hand, profunctors are also proposed as a generalization of 'relations'. This analogy was recognized early by ?, who originally called profunctors "distributors."  My naive take that this has something to do with probability distributions doesn't seem correct, but it may still be fruitful. Relations are generalizations of functions, monoidal products are generalizations of cartesion products, and profunctors are generalizations of distributions. Pavlovic's construction may be the most relevant, where the space of 'processes' is analagous to the real numbers, in constrast to the (details here). Distributions, as generalized functions, complete the space of functions.

Another suggestive analogy is between 'space' and 'quantity'.  Lawvere draws an analogy between distributive and linear categories and extensive and intensive quantities.  Distributive categories respect the distributive law, whereas in linear categories they coincide. Toposes are distributive, as well as sheaves.  Distributive categories are categories of space, while linear categories are categories of quantity.  

Extensive quantities are 'a covariance coproduct-preserving functor from a distributive category to a linear category'. Lawevere gives interesting examples of why covariance captures the notion of 'extensive'

> By contrast an intensive quantity-type is a **contravariant** functor, taking copoducts to products, from a distributive category, but now a functor whose values have a multiplicative structure as well as an additive structure.

This whole paragraph that begins with the previous quote needs quite a bit of work to understand. 

"the fact that our knowledge will of course never be complete, and hence no general theory will be final, is no excuse for not using now the most general theory which science can support, and indeed for accuracy we must do so" - William Lawvere, *Categories of Space and Quantity"

(Lawevere's list of opponents includes "Dewey, Mussolini, Goebbels".  
There is also the legendary fight between Lawvere and Girard. Spiritual friends are corporeal enemies).

Are energy and power extensive and intensive quantities? Is this generally true of the hydrodynamic analogy? If economics is the science of confusing stocks and flows, are categories of space and quantity the cure?

How do these ideas relate, if at all, to the 'deterministic core' pattern? The most direct analogy seems to be the linear-(non-linear) adjunction and Lawevere's intensive-extensive adjunction. To what extent is the distributive category required?  Are there 'categories of space' that do not have product?  Are there 'linear' categories that are not symmetric monoidal?

Page 278 of *Conceptual Mathematics* states that any category with exponential objects is distributive, so when the **Multiple** category is cartesian closed, as in Pavlovic's work, then it is distributive.  Mellies' paper states that it is not required to 

nlab states that a linear category is a category enriched over a monoidal category of K-modules, where K is a commutative ring.  A linear category is also called an 'algebroid.'

How much of this chain could be formalized in Catlab?  