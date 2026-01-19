---
title: Thoughts on validation and uncertainty in environmental chemistry
author: Bradley Venner
date: '2020-05-26'
slug: thoughts-on-validation-and-uncertainty-in-environmental-chemistry
---

With our recently announced return to work, I am going to need to move this project towards a practical deliverable and only work on what is most important.  It's OK for my work presentation to be only a partial aspect of the larger project, but it would be nice if the general framework was sufficiently developed to move forward.

Measurement is a key element of science.  Although the results of measurement, or data, lie in the past, as an aspect of inquiry it is essentially future-oriented.  Peirce struggled with the question of measurements that had not been made, and his answer of 'real possibilities' was in part a solution to the connundrum.  A diamond whose hardness is never tested can still be said to be hard, even if the question is never put to nature.  Induction, the knowledge of laws, results in a 'would-be', a rule who's subjects dwell in the realm of the possible.

The concept of reproducibility is of the nature of a 'would-be.'  In a dynamic universe, there are simply questions that can never be answered as the universe sweeps them into the past.  Longo's notion of an evolving dynamical system with an ever-changing phase space implies that at a fundamental level some questions can simply never be answered.  This means that actual reproducibility is a local condition - samples are changed, destroyed, lost and the results of measurement will often lie in an inaccessible past.  So reproducibility is an aspect of the plan of measurement, a 'would-be'.

The reason to specify the execution of a measurement, to provide a detailed discussion of what was done, is to allow for a semiotic notion of reproducibility.  While actual reproducibility is rare, there are a 

# Math/Theory

## Categorical Metrology

Metrology is a practical, rather than theoretical, discipline, historically driven by the needs of commerce, not science.  So attacking the notion of 'elementary particle', as used in the SI definition of the mole, could be considered punching down.  One reason chemical metrology is interesting is the very idea that Nick stated this morning - isn't chemistry just another form of physics?  Is there a meaningful change in level between physics and chemistry, and if so does this imply a meaningful change in chemical metrology?   

"Amount of substance" in the SI is very different from the other 6 base units.  The others are traceable to fundamental physical constants, which typically relate different areas of physics.  However, amount of substance is now simply a number, with no particular reference to any particular physical system.  

It is notable that the concept of 'elementary particles' is not defined in the definition of a mole.  Do these elementary particles have a type?  Or it the type of the particle a secondary consideration, like a property in set theory?  The latter interpretation would make 'substance' like an element of a set.  But this 'extrinsic' notion of property seems incorrect, since what distinguishes 'elementary particles' in chemistry are there 'non-elementary' structure - their composition of yet other elementary particles.  This set-theoretic notion of chemistry seems reductionist, an attempt to reduce chemistry to physics by only treating the notion of 'elementary particle'.  Thermodynamics does this in various simplfications such as the ideal gas law, but there is a reason this is called 'physical chemistry'.

These seem like very elementary considerations, for which someone has likely worked out the details.  One classical category in chemistry is the Petri net, which was intended for molecular analysis.  Is there a large-number interpretation of Petri nets that would correspond to the 'elementary particle' category?  I believe that Statebox has developed a positive integer Petri net that could serve.  

Lawvere developed the categories of 'space' and 'quantity', which could be thought of


How does Jacob's notion of 'state' fit with the notion of chemical state as a mixture of 'elementary' particles.  The convex combination of 'elements' could be interpreted as a typed version of chemical metrology, with

## Memory evolutive systems
Another approach is the memory evolutive systems of

## Behavioral mereology-

Could Spivak's work on behavioral mereology be applied to the notion of analytical method?  There are two main domains - material type and analytical method.  But can these really be modeled as hierarchies?  Material type seems more like a complex domain with many attributes.  

## Resource theories
Chapter 2 of Seven Sketches focuses on ‘resource theories’, for which the canonical example is a recipe for baking a pie.  Although analytical methods are considerably more complex than baking (or are they?), there are enough similarities between the two domains that it seems like there is a potential there.

The link between resource theories and Petri nets seems like it should be clear, but I’m not sure what the link is.  Are resource theories symmetric monoidal categories?  Are all of them?  What about Mardsen’s quantitative resource theories?  

# Computation

## CQL
The red-headed stepchild of my work.  There seems to be so much potential here, but I’ve never developed a project out of it.  Many of my ideas about things like Viper were motivated by this work.  The Haskell port seems interesting, but is Haskell the right language for this project?

## Catlab.jl
Implements wiring diagrams in Julia.  Evan Patterson’s interests seem at least related to the validation notion.  Julia is an interesting language in that it’s simple enough to perhaps be learned by your average analytical chemist.  
Brick diagrams (Statebox, cubical pasting diagrams)
The categorical dual to wiring diagrams.  Statebox

## Sequential decision theory in Idris
PI’s name and affiliation are eluding me, but this seemed to be

## Business process modeling using Petri nets

Would it be helpful to distinguish the validation process from the inference process?  My previous attempt to apply Bayesian networks to the validation process used a hierarchical model to arrange validation information, with primary sample at the top.  

## Jupyter notebooks
