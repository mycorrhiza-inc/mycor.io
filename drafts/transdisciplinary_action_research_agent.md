---
title: "Developing AI assistants to perform transdisciplinary action research"
author: "Bradley Venner"
draft: true
tags: []
---
# Introduction

This entry complements the entry on community wealth building, but I have decided to split it into a separate entry. I based this decision on the obvious repeating patterns related to general research obtained by the specialized research assistant design for community wealth building. 

There remains a general question about whether a transdisciplinary action research assistant is an appropriate goal. Can a single research assistant assist in all forms of transdisciplinary research, or is it better to develop specific tools for particular problem types? If the latter, is there some type of multi-stage process that could be used to move from a more general agent. So one goal is to develop a form of continuous improvement in the development and application of the agent. 

The [Systems at Play community](https://meetup.com/) has nice description of their objectives that can be directly lifted to the TARA project with minor modifications:

>The TARA project was born out of two main inspirations: the inadequacy of current dominant reductionist ways of thinking and acting in the world and the difficulty of understanding the deep and vast space of systemology and practical ways of applying it. 

# Bootstrapping TARA from coding agents

Can research assistants based on existing agentic AI frameworks and "coding harnesses" be used to design a "transdisciplinary action research assistant" (TARA?) The current research assistant *skills* that I am using contain guidance to an LLM to develop an overall plan and then execute the steps of that plan using specialized agents that have access to (web) tools. One potential benefit of the TARA framework would be that research phases could correspond to systemology phases in abstract. For example, a research agent would understand that it's research output is intended to feed into a design phase. The recognition of a "praxis" phase naturally leads to the notion of the co-design of a specialized research assistant that functions as a digital twin that is actively engaged in the operation of the system thoughout the system lifecycle. 

Reflexive application of TARA to itself would require all four systemology phases, so calling it a "research assistant" isn't quite right. There is a qualitative difference between a "research assistant" and an "action research assistant". Perhaps ultimately the goal is a "praxis assistant," where praxis is defined as theory-informed practice. Praxis seems like a good term for what Peirce called "purposeful action" and therefore highlights the overlap between pragmatism and systemology.   

## Building on existing AI "coding harnesses"

A Cal Newport podcast introduced me to the term "coding harness" to describe the family of specialized tools used in AI coding agents. This is a great metaphor, with a generative AI system being a horse and the driver of the cart being someone that wants to use the power of the horse for their purposes. The harness then links these agents together.

In Episode 11 of their [*AI Reality Check*](https://youtube.com/playlist?list=PL8xK8kBHHUX7s06sjENDqhLBBvcryfJbX&si=r5CUkJviZ_5sz-Bq) series, Newport discusses the recent METR graph showing a significant leap in coding proficiency shown by Anthropic's *mythos* model. Newport points to a significant shift from a reliance on pre-training and scaling to more task-specific post-training made by AI companies. Newport focuses on the importance of the coding harness in making the exponential leaps found in AI's performance on coding benchmarks, as shown on the METR graph. Newport points out that coding harnesses include a lot of technology that is similar to "good old-fashioned AI" and attributes the improvement in these models to the existence of these harnesses. 

The other improvement is the use of post-training on specific tasks, such as the use of *Group Relative Policy Optimization* (GRPO) as developed by OpenAI and published by [DeepSeek](https://arxiv.org/pdf/2402.03300). This paper discusses the GRPO on a specialized mathematical research agent. This specially trained agent achieved what was then a high score on a mathematics benchmark "without relying on external toolkits and voting techniques". So this improvement did not rely upon a coding harness. It's also easy to see that changing LLM models in the OpenCode coding harness can make a big difference in task completion ability, which shows that improvements in coding harnesses are a necessary but not sufficient 

Clearly both harnesses and post-training have been important in improving AI agents. So neither strategy should be *a priori* abandoned. It seems likely that major improvements in TARA will require specialized developments in both tools. I continue to believe that a collaboration between a systems-focused research group and a programming-focused research group, such as the University of Hull and Topos UK (maybe the planetary computing team at Oxford?), could be very valuable for developing more specialized tools. AI safety groups also may provide valuable input.

Because of the significant risks associated with letting AI agents engineer their own harnesses, it seems likely to me that formal verification of programming languages will play an important role in helping ensure that runaway states cannot be reached. I am increasingly attracted to OxCaml as a tool and I think the potential ecosystem of gradual verification and the MirageOS unikernel framework could be a very good setup to ensure safe operation of long-running AI research frameworks.

On the other hand, it's easy to take the control metaphor too seriously. One of the member of the AI agentic research framework that I was looking at this weekend (name escapes me) stressed the important of a research assistant as an effective collaborator rather than an automated tool. 

But it is still an important question on how much progress can be made with existing harnesses and models. There is an emerging discipline called [*harness engineering*](https://martinfowler.com/articles/harness-engineering.html) that \(thinks about\) | \(develops how\) to create a "user harness" around an existing "system harness". The rest of this section is notes on this article.

> Context engineering provides us with the means to make guides and sensors available to the agent. Engineering a user harness for a coding agent is a specific form of context engineering.

User harnesses consist of *guides*, that serve as feedforward controls, and *sensors*, that serve as feedback controls. "Guides anticipate the agent's behavior and aim to steer it before it acts". "Sensors observe after the agent acts and help it self-correct".

The article explicitly brings in cybernetics to discuss the combination of guides and sensors, with guides as rules for effectors. But this brings in the essential circularity in the project, where better systems knowledge by the agent could be used to help guide the agent. A key goal must clearly be to make this a virtuous learning cycle.

Coding agent SDKs are general-purpose tools that could be used to build a user harness. Existing coding agents such as Claude Code are built upon the Claude Agent SDK.  

# Transdisciplinary Action Research

1. What does "transdisciplinary action research" mean?

2. Is it possible to teach a machine to perform it?

3. Consider the terms step by step

## Design of inquiring systems

C. West Churchman's book *Design of Inquiring Systems* [@churchman:1971:design] is the earliest and most fully fleshed out precursor to TARA. While there are certainly lots of philosophical precursors, Churchman explicitly developed the notion of an "inquiring system" and that these systems would be intentionally designed. 

Churchman develops his approach by casting several "modern" philosophical thinkers as theorists of inquiring systems. These are all after the modern turn to the "way of ideas." Unfortunately, Churchman neglects Peirce and certainly does not appreciate how far Peirce was willing to backtrack. He also neglects Dewey's very relevant "Logic: The Theory of Inquiry" that does not explictly take a design point of view but is certainty relevant. He also does not consider Bogdanov, who does take the "labor" point of view and who's ideas of "proletkult" are very broad.   

Jackson claims that Checkland was heavily influenced by C. West Churchman, who was a trained philosopher but spent their career in the business school at University of California at Berkeley. Churchman explicitly included pragmatic thought in their work. Churchman was a student of Edgar Arthur Singer Jr., who briefly was an instructor in William James's psychology lab  Churchman wrote *The Design of Inquiring Systems*, which is directly relevant to the design of TARA. Churchman also supervised Werner Ulrich, who was a key developer of critical systems thinking. 

[Maxim Raginsky](https://realizable.substack.com/p/c-west-churchmans-systems-epistemology) reviews *DIS* with an eye towards LLM applications. Raginsky cites Gopnik and Farrel's idea that an LLM should be thought of as a "cultural technology" similar to markets and bureaucracies, which was the main loci of Churchman's efforts. Churchman reviews the history of inquiring systems through the lens of different philosophers. The last in the chain was Singer, his doctoral advisor. Singer chose *metrology* as the center of their approach, somewhat coincidentally. 

Werner Ulrich wrote a (brief intellectual biography)[https://wulrich.com/cwc_appreciation.html] about Churchman. Churchman was a pioneer in operations research, writing one of the field's first textbooks, together with Russel Ackoff. This book had a strong philosophical component, but the field evolved to be a more technical subdiscipline. In the 60's, he moved into the "systems approach", which he also viewed as applied philosophy. In 1968 he wrote *Challenge to Reason* and *The Systems Approach*.  The former opens with:

> How can we design improvement in large systems without understanding the whole system, and if the answer is that we cannot, how is it possible to understand the whole system?’ (p. 2)

In 1971 he wrote DIS. Early in the book Churchman employs the question

> whether it is possible to tell a computer how to design an inquiring system

because this question helps

> to discover what in the research process is truly the 'lonely' part, the part that cannot be designed, at least relative to a standard  computer

Jaynes used a similar approach in developing objective Bayesian probability theory.

Ulrich summarizes Churchman's approach towards "comprehensiveness" as "sweeping-in" (aka transdisciplinary) but emphasizes that the failure to be comprehensive was inevitable and that part of the systems approach was managing this failure.

Ulrich summarizes the *design of inquiring systems* as 

> designing adequate approaches to inquiry amounts tot he design of inquiring systems, i.e. forms of inquiry that have a built-in capability of exploring their own whole-systems implications.

In his 1979 book *The Systems Approach and Its Enemies*, Churchman seems to anticipate the need for a transdisciplinary approach that does not exclude citizens that contest the rationality of a system as "irrational".  

According to Ulrich's summary of the enemies of the systems approach:

> There are approaches to social problem solving that do not respect the rationality criteria of a scientific approach but merely seek to achieve their own particular rationalities (e.g. of a political or religious nature). Although they are the 'deadly enemies' of the inquirer's conceptualization of rationality in terms of whole-systems design, they cannot be ignored.

> Although the 'enemies' subvert the inquirer's indispensable quest for comprehensiveness, sound inquiry cannot avoid listening to them and trying to do justice to them without abandoning the quest for comprehensiveness - the ultimate paradox of all search for rational inquiry and practice.

*An overview of the Singer/Churchman/Ackoff school of thought*, (Systems Practice, v. 7 (5), 487-521)[https://web.archive.org/web/20140513195235/http://www.bth.se/faculty/gba/system2.htm] 

Jackson traces the somewhat oppositional approach to "hard" systems approaches as due to Checkland's commitment to interpretive sociology.

Ian Mitroff was a student of West Churchman at Berkeley and wrote a short 2019 book called *Technology Run Amok: Crisis Management in the Digital Age* [@mitroff:2019:technology]. This book contains some explicit consideration of "inquiry systems" that compares Dewey, James, Singer and Churchman. Mitroff wrote an earlier book called *The Unbounded Mind* [@mitroff:1993:unbounded] that is (an easier-reading follow-on to *The Design of Inquiring Systems*)[https://coevolving.com/blogs/inquiring-systems-and-asking-the-right-question/]. 

## Transdisciplinarity

In one sense, language models are already transdisciplinary as they have read every single discipline in a way that no single human could ever do and have compressed it in such a way that they can converse somewhat intelligently about any scientific discipline. All previous "unity of knowledge" efforts look incredibly weak compared to the awesome power

Yet although language models can use language very effectively, they do not necessarily have semantics. Although language models can not only speak every human language, they also speak multiple formal languages. Although they are amazingly fluent in some pretty backwater areas of knowledge, their lack of semantics make them relatively shallow conversation partners.  


### Systemology

David Rousseau's proposed transdisciplinary framework. Moves from "hard" systems theory to incorporate "soft" systems practice.

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

### Systems thinking

Although the term "systems thinking" appears earlier, Checkland's book *Systems Thinking, Systems Practice" distinguishes it from earlier "hard" systems approaches. I'm not a huge fan of the dualism as it ignores the "organismic" tradition of systems as holism developed in German idealism and romanticism. Checkland's main reaction seems to be against systems engineering, which had developed as a technical discipline with limited application to social-technical systems. Jackson has a good summary of Checkland's intellectual development [@citation-needed].

Speaking of Jackson, who was a student of Checkland, developed critical systems thinking and practice and wrote several books on the subject. Critical systems practice meets the criteria for a transdisciplinary action research tradition. 

Systems theory has been applied to cognition, resulting in a loose tradition called *systems thinking*. This is less a focus on the systematic analysis of cognitive systems and more an action-oriented approach closely related to *systems practice*. Systems science seems to have had a huge influence on cognitive science and it's somewhat hard to separate the two approaches. 4E cognitive science in particular seems closely related to systems science. Since cognitive architectures are based in cognitive science, it's likely essentially an applied systems science.

Although the Rousseau's include systems thinking as part of systemology, and developed a paper that proposed using systems thinking to develop a "formal ontology" (in the computer science tradition) for systemology, systems thinking has often been developed within the "soft systems" tradition. The distinction between "soft" and "hard" systems theory wasn't developed in order to create a discontinuity, they definitely have been somewhat divergent developments. Although I've read a bit of "hard" systems theory, I haven't really done much reading on the "soft systems" side. "Soft systems" approaches were developed to deal with complex real-world problems.

Michael C Jackson reviewed the development of systems thinking by Peter Checkland, who is credited as the developer of "soft systems methodology." Checkland developed this approach in reaction to the "hard systems" engineering that was developed in the 60's. Checkland's ideas were developed from a management consulting practice that explicitly moved from the technical realm to the social-technical realm.

This opposition between soft and hard reminded me of Apel's book on Explanation and Understanding, which I never read. The analogy is that explanation is hard while understanding is soft. Gemini summarizes it as Apel trying to find a synthesis between both approaches using a transcendental pragmatic approach. It might be a good time to revisit this work when I have time (ha ha).


### Organization

In his paper on *Organizational Hegemony* (Senalp, 2026)

> In Bogdanov's view, various forms of ideology --- such as mythologies, religions, philosophy and science --- as well as language and social institutions, which are part of culture (i.e., superstructural forms), are developed tools or new organs (resulting from evolutionary selection) for organizing life experience. From this perspective, praxis itself is always organizational: it aims to organize (or, conversely, disorganize, i.e.e, disrupt of transform existing organizational forms) reality and its perception, i.e., "experience".

This has a very Deweyian resonance. It would be interesting to compare these two figures, as they clearly have some parallels. Dewey's concept of "knowledge" in his "Theory of Inquiry" seems narrower than Bogdanov's understanding of "knowledge" as a part of "culture." But Dewey has a very broad concept of "association" that seems similar to Bogdanov's concept of "system." 

Senalp notes that Gramsci restricted his understanding of "organization" to the social and human sciences, in contrast to Bogdanov's more expansive view.

The idea of "organizing experience" kind of relates to the semantic-pragmatic distinction drawn by Brandom. Thinking of the "new pragmatics" as being "linguistic pragmatists" as opposed to the classical "experience pragmatists" can help leverage the potential benefits of the "linguistic turn" made by "analytical pragmatism" to understanding the language model era without falling prisoner to the identification of language with experience.

Is there a parallel between "the habit of changing habits" and "organizing experience". Peirce's notion of the "logical interpretant" was the change in habit that sign interpretation induced.

### Relation

### Pragmatism



## Action

## Research

# Notes

## Causal Generalist Medical AI

On May 19, 2026 I attended a webinar put on by Dr. Hongtu Zhu, a biostatistician from the University of North Carolina. The talk was titled (Causal Generalist Medical AI)[https://www.niss.org/events/niss-ai-statistics-and-data-science-practice-webinar-causal-generalist-medical-ai-dr-hongtu]. Slides were not made available and this work does not seem to be published. It might be worth keeping an eye on this space to see how the idea develops.

I found this talk both inspiring and frustrating. Many of the broad conceptual ideas I've had around TARA were represented - knowledge graphs, causal inference, horizontal and vertical data integration. 

The frustrating thing was the pro-AI capitalist framing of the talk. He presented a slide where his proposed AI would link patients and doctors with an Uber-like matching service. He's done a bunch of work on reinforcement learning in ride sharing that probably gave him this idea. But this idea seems to have wondered out of an AI lab and seems completely tone deaf to the anti-AI backlash that we're currently undergoing. The idea that we can simply abandon existing institutions and AI will seamlessly replace them 

It also reminded me of the drunk looking for his car keys under the street lamp. The much more important problem is institutional reform in medicine and AI should be focused here, not on the much more narrow problem of diagnostics. I also thought that the focus on "decision-making" has a very neoliberal outcome as decisions are considered as atomic units. Kilpinen had some nice work on this atomic theory of "action" in his writings on pragmatism as social theory.