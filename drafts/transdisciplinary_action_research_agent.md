---
title: "Developing AI assistants to perform transdisciplinary action research"
author: "Bradley Venner"
draft: true
tags: []
---
# Introduction

This entry complements the entry on community wealth building, but I have decided to split it into a separate entry. I based this decision on the obvious repeating patterns related to general research that the specialized research assistant design for community wealth building obtained. 

There remains a general question about whether a transdisciplinary action research assistant is an appropriate goal. Can a single research assistant assist in all forms of transdisciplinary research, or is it better to develop specific tools for particular problem types? If the latter, is there some type of multi-stage process that could be used to move from a more general agent.

The [Systems at Play community](https://meetup.com/) has nice description of their objectives that can be directly lifted to the TARA project with minor modifications:

>The TARA community was born out of two main inspirations: the inadequacy of current dominant reductionist ways of thinking and acting in the world and the difficulty of understanding the deep and vast space of systemology and practical ways of applying it. 

## Developing an transdisciplinary action research assistant (TARA)

Can an research assistant based on an agentic AI framework be used to design a "transdisciplinary action research assistant" (TARA?) The current research assistant *skills* that I am using contain guidance to an LLM to develop an overall plan and then execute the steps of that plan using specialized agents that have access to (web) tools. One potential benefit of the TARA framework would be that the research phases could correspond to the systemology phases in abstract. For example, a research agent would understand that it's research output is intended to feed into a design phase. The recognition of a "praxis" phase naturally leads to the notion of a digital twin, which is actively engaged in the operation of the system and that continues to apply the framework thoughout the system lifecycle. 

The reflexive application of TARA to itself would require all four systemology phases, so calling it a "research assistant" isn't quite right. There is a qualitative difference between a "research assistant" and an "action research assistant". Perhaps ultimately the goal is a "praxis assistant," where praxis is defined as theory-informed practice. Praxis seems like a good term for what Peirce called "purposeful action" and therefore highlights the overlap between pragmatism and systemology.   

## Building on an existing AI "coding harness"

Cal Newport's podcast introduced me to the term "coding harness" to describe the family of specialized tools used in AI coding agents. This is a great metaphor, with a generative AI system being a horse and the driver of the cart being someone that wants to use the power of the horse for their purposes. The harness then links these agents together.

In Episode 11 of their [*AI Reality Check*](https://youtube.com/playlist?list=PL8xK8kBHHUX7s06sjENDqhLBBvcryfJbX&si=r5CUkJviZ_5sz-Bq) series, Newport discusses the recent METR graph showing a significant leap in coding proficiency shown by Anthropic's *mythos* model. Newport points to a significant shift from a reliance on pre-training and scaling to more task-specific post-training made by AI companies. Newport focuses on the importance of the coding harness in making the exponential leaps found in AI's performance on coding benchmarks, as shown on the METR graph. Newport points out that coding harnesses include a lot of technology that is similar to "good old-fashioned AI" and attributes the improvement in these models to the existence of these harnesses. 

The other improvement is the use of post-training on specific tasks, such as the use of *Group Relative Policy Optimization* (GRPO) as developed by OpenAI and published by [DeepSeek](https://arxiv.org/pdf/2402.03300). This paper discusses the GRPO on a specialized mathematical research agent. This specially trained agent achieved what was then a high score on a mathematics benchmark "without relying on external toolkits and voting techniques". So this improvement did not rely upon a coding harness. It's also easy to see that changing LLM models in the OpenCode coding harness can make a big difference in task completion ability, which shows that improvements in coding harnesses are a necessary but not sufficient 

Clearly both harnesses and post-training have been important in improving AI agents. So neither strategy should be *a priori* abandoned. It seems likely that major improvements in TARA will require specialized developments in both tools. I continue to believe that a collaboration between a systems-focused research group and a programming-focused research group, such as the University of Hull and Topos UK (maybe the planetary computing team at Oxford?), could be very valuable for developing more specialized tools. 

But it is still an important question on how much progress can be made with existing harnesses and models. There is an emerging discipline called [*harness engineering*](https://martinfowler.com/articles/harness-engineering.html) that \(thinks about\) | \(develops how\) to create a "user harness" around an existing "system harness". The rest of this section is notes on this article.

> Context engineering provides us with the means to make guides and sensors available to the agent. Engineering a user harness for a coding agent is a specific form of context engineering.

User harnesses consist of *guides*, that serve as feedforward controls, and *sensors*, that serve as feedback controls. "Guides anticipate the agent's behavior and aim to steer it before it acts". "Sensors observe after the agent acts and help it self-correct".

The article explicitly brings in cybernetics to discuss the combination of guides and sensors, with guides as rules for effectors. But this brings in the essential circularity in the project, where better systems knowledge by the agent could be used to help guide the agent. A key goal must clearly be to make this a virtuous learning cycle.

Coding agent SDKs are general-purpose tools that could be used to build a user harness. Existing coding agents such as Claude Code are built upon the Claude Agent SDK.  

## Transdisciplinary Action Research



### Systemology as a transdiscipline

Systemology is proposed as **a** transdiscipline and not **the** transdiscipline. There are likely to be many transdisciplines that could be united at yet a higher order of abstraction, perhaps arranged in a higher category. 

Rousseau's stated intention for developing the systemology framework was to improve systems engineering:

> our ability to improve systems engineering’s methods depends on making the principles of systemology, of which systems engineering is a part, more diverse and more scientific.

Another area of inspiration could be cognitive architectures, which have a rough correspondence to systems architectures but are more applied to computer science. Some of the current thinking around memory for language agents seems close to classical cognitive architectures. 

Since TARA is a system, it would be good for the reflection phase to have an understanding of systems. TARA should also emphasize *design elegance*. Griffin's criteria for *design elegance*:

1. Does the system work? Is the system effective?
2. Is it robust? If the context changes, does it degrade gracefully or fail catastrophically?
3. Is it efficient? Not only in terms of financial resources, but also human resources, energy resources, environmental resources, etc.
4. Does it minimize unintended actions, side effects, and consequences?

Rousseau summarizes as:

> the purpose of SE is to attain elegant solutions to complex problems

After highlighting Rousseau's systemology framework, why use the name "transdisciplinary action research" rather than simply adopting the systemology framework? I will leave this as an open question to be answered empirically. My initial impression is that there is a tendency with AI research assistants towards excessive formalization and that more defined frameworks can become too rigid. 

Another reason to avoid excessive reliance on the systemology framework is that it's not clear that the focus on "systems" is necessarily the most important abstraction from which to begin developing TARA. Some other possibilities would be "category" or "topos" (category theory), "organization" (tektology and organizational science), inquiry, praxis, etc.   

### Systems thinking as a transdiscipline

Systems theory has been applied to cognition, resulting in a loose tradition called *systems thinking*. This is less a focus on the systematic analysis of cognitive systems and more an action-oriented approach closely related to *systems practice*. Systems science seems to have had a huge influence on cognitive science and it's somewhat hard to separate the two approaches. 4E cognitive science in particular seems closely related to systems science. Since cognitive architectures are based in cognitive science, it's likely essentially an applied systems science.

Although the Rousseau's include systems thinking as part of systemology, and developed a paper that proposed using systems thinking to develop a "formal ontology" (in the computer science tradition) for systemology, systems thinking has often been developed within the "soft systems" tradition. The distinction between "soft" and "hard" systems theory wasn't developed in order to create a discontinuity, they definitely have been somewhat divergent developments. Although I've read a bit of "hard" systems theory, I haven't really done much reading on the "soft systems" side. Since "soft systems" approaches were developed to deal with complex real-world problems, 

### Organization as a transdiscipline

In his paper on *Organizational Hegemony* (Senalp, 2026)

> In Bogdanov's view, various forms of ideology --- such as mythologies, religions, philosophy and sceince --- as well as language and social institutions, which are part of culture (i.e., superstructural forms), are developed tools or new organs (resulting from evolutionay selection) for organizing life experience. From this perspective, praxis itself is always organizational: it aims to organize (or, conversely, disorganize, i.e.e, disrupt of transform existing organizational forms) reality and its perception, i.e., "experience".

This has a very Deweyian resonance. It would be interesting to compare these two figures, as they clearly have some parallels. Dewey's concept of "knowledge" in his "Theory of Inquiry" seems narrower than Bogdanov's understanding of "knowledge" as a part of "culture." But Dewey has a very broad concept of "association" that seems similar to Bogdanov's concept of "system." 

Senalp notes that Gramsci restricted his understanding of "organization" to the social and human sciences, in contrast to Bogdanov's more expansive view.

### Relation as a transdiscipline

