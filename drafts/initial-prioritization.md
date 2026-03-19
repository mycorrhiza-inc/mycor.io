# What the fuck is this project?

I have been playing with these sentence descriptions:

`CNCF but for the specialized needs of Cooperatives and Nonprofits`

and maybe a longer description and problem statement 

```
This organization aims to solve two problems
- Nonprofits/Cooperatives who have a desperate need for software that will help them in their mission
and 
- A bunch of volunteer software developers who have 10 spare volunteer hours a week and want to "destroy capitalism", but are kinda directionless otherwise.
We are hoping to solve both of these problems by having an organization that does all the components of a traditional startup, such as:
- Market Research 
- User Interviews
- Project Specification
- Sprint Planning
- And the actual Software Engineering
inside of an organization run almost completely by volunteers.
```
My main thought for this is that when making modern software you can either
- *Software as an Investment Vehicle:* You try to sell a vision to VC's, where you convince them that the software can generate enough revenue to make back their investment ~100x. You then use this capital to pay a bunch of software engineers 100k a year 
- *Other unexplored methodologies:* Lots of very successful software, both including developer tools like neovim, linux, postgres, and even some consumer software like blender, godot, jellyfin. Have successfully developed projects outside the traditional VC models of software dev. 

But yeah I talked to a few people about the best form on setting this up and most of them settled on 


## Reflections on Failure



So as I am writing this I have just spent 2 years trying to do a startup only to have said startup, and you want to figure out why it failed.

I dont think there was anything fundamentally wrong with the seance pivot. The main issues with it were 
- not pivoting away from kessler sooner so we both had more time to work on it 
- A major case of Skill Issue Syndrome that preventedus from actually meeting our deadlines.
- Maybe leaning a bit too much into vibe coding at the detriment of having a really stable underlying base layer and networking stack which would have allowed us to ship sooner instead of adding more features.

Kessler is a much more interesting project since it was fundamentally flawed in so many different ways.

## The desires of activists and nonprofits are actually infinite

There is this impression in the buisness community that people who do nonprofit and government work are less ambitious, but I think that this wrong on a fundamental level. 

- People's desires in the business community are often very personal. I.E. I want to make partner at a firm, get promoted to <some position>, or even start a company that might eventually get valued at more than a billion dollars.  
- Activists desires are often global, ie world peace, ending fossil fuel emissions, ending hunger, or putting economic investment under democratic control.

The only large difference between these two groups is the ability for both groups to get what they want. But just because nonprofits/activists constantly adjust their expectations down, doesnt mean the desire has gone away.

FOOTNOTE: I actually think that lots of radicals will dismiss large nonprofit organizations because they aren't "ambitious" enough but for almost every single person I have met in these organizations, this is always the result of beginning with a more ambitious project and failing. For example there was this one law firm in portland, who does smaller constitutional challenge lawsuits against  environmental regulations and might say something like. "Well why dont you do something more ambitious like challenge the last 50 years of fossil fuel subsidies on the national level and partner with a bunch of mass mobilization organizations to put pressure oh the court", except the organization spent the first 10 years of their existance doing that ambitious stuff, and only started doing the smaller scale stuff after a bunch of painful failures.

This makes them uniquely shitty customers
 
Typically if a business expresses some amount of desire for a software product, they typically are willing to pay some amount of money for it. Nonprofits when they say "this would be great to have", to a software product, and mean that it would be helpful for the broader political movement, not a thing that they would actually find useful in their day to day work.

So don't let it get to your head. Only take positive feedback seriously if they sign a check and say "I will give this to you once you give me the software".


## 


# Initial Proposals


## Products

1. Kessler (2.0)

Target Market:
Movement Organizations

This a product that goes to a government website.

Does a bunch of research on it, guesses the internal data model behind the display on the main page.

Then goes ahead and tries to write a scraper that will take that data and give you a sqlite instance that represents the website data to the best knowledge of the LLM.


The LLM will then validate the website data manually to make sure it makes sense.

And also provide as part of the scripting services updater scripts that will take new data and update the old sqlite with a bunch of new data.


2. CoopStack
Target Market: 

Economic Organizations


A one click deployment that will go ahead and bundle together a bunch of existing OSS software and allow you to own as much of your own buisness infrastructure as possible.


There are fundamental usability problems with self hosting your software.

These large incumbents have a very lucrative method, where they have very extensive free teirs, and subsidize those with revenue from customers that are already locked in.

How do you do free tiers without the self hosting stuff.

Maybe something similar to SRT,  

The whole thing is maybe a transiational thing that exists because lots of necessary ERP is not compatible with a local first development process.



3. Synthayse


Cooperatives and Nonprofits can use management and other decision making software from software intended for for-profit companies. But this introduces friction in regards to how they make decisions. Specifically tools all assume that there is one central decision maker on top, and once a decision has been made there, the directive flows downhill to everyone else at the organization.

However most cooperatives (and some nonprofits) are different, because the individual members of the organization need to be able to see the entire decision structure, make their own proposals, and then collaboratively work together whith other members of the coop to combine, and edit proposals until one of them eventually achives concensus and is implemented.

Almost no ERP software does this, so its a thing that needs to exist.


Also might be helpful for some cooperative budgeting platform or something else lol.


Right now cooperatives tend to solve this in 2 ways:

a. Elect someone to just make all decisions in a hierarchical manner, which means you inherit all the efficencies but also downsides of traditional capitalist management.

b. Consensus Hell: Every decision takes 500 meetings. Everyone hates life, their coworkers and themselves. Also happens in capitalism due to inter-firm realpoltik.

are there better ways to do things????


yes

i dont know what they are though


Maybe this is also a way of replacing management with a democratic system in a software assisted way.

This is possible and has been implemented at a few companies like valve for instance.







4. Luthen

A system for distributed storage of camera data combined with object detection and ASR in a fully decentralized way.


5. Pando 


Systems for running elections extremely cheaply at scale, using serverless lambda processes to have the ability for an organization to run a large election have up to 100 million requests in a single day, but only pay for the services they actually use, and in general reduce the cost of this as much as possible.

After talking a bunch about this we had pretty much determined that the main problem with this at scale is actually the identity verification angle. If we break down how elections work in the USA we can see that it's essentially handled in multiple layers.

**Municipal Layer** The municipalities will do all of the sensitive trustworthy information, ie taking in someone's real identification, checking that they are validated to vote inside a specific election, giving them a voting psuedononomous id, then eventually tabulating up all the results that will then get sent to the 

**State/Federal Layer** Which actually takes the votes from the local level and preforms a public tally from all the municipal layers.

This has the nice security design that the only real way to break down the election is to break a bunch of municipal layers. So how do we extend this to the virtual system. Namely you would want something that keeps the distributed trust system inherent in the municipality system, where your real world information only ever is verified and validated by your local election node, and the voter data never ends up in some scary national database. But the entire election is also way more auditable at the federal level. So I had some thoughts namely:

- Is it possible to eliminate the trust in the municipal level to just providing proof of verification. IE can you generate some kind of certificate or ZKP that lets you prove that "I am a registered voter in Example County, NY", but without giving away any information about what voter you are. While also letting you be sure that no every ballot corresponds to a unique person. (IE no person voted twice and submitted 2 ballots.)
- Ideally it would also let you give each voter some kind of unique uid. (In the USA this might be something like the hash of their birthday + SSN). And even though this number contains a bunch of identifying information, it would be nice to check that no 2 ballots in the election have this same underlying uid to prevent people from registering on multiple identity providers.

There is still a lot more to think about here, but I think using something like MACI from ethereum is a good foundation, and adding on the verification + secure voter ID is something we can add afterward.



6. Hyphae
Physical Economic Analysis/ Physical Make or Buy. 

In general we want this tool to be very very capable, of both understanding components in the real world, and understanding how they interact with each other economically.

But in the beginning I think you can start with assuming marginalism axiomaitically where all the information about an object is contained in its price, the market price of its inputs, and the market price of its dependant outputs. ()


Okay 

7. Agrobacterium

A framework for radical compatibility. One of the things LLMs change the balance on is the tools that large companies use to keep tools proprietary. Under previous architectures it would have been very foolish to publish a system based on the whims or internal protocols of a closed source system. But now it might be feasible to take a certain part of your software stack, describe in extreme specificitity how you are wanting to interact with a closed source solution, have an llm write the adapter code and keep it up to date as the software continuously changes. 




# Partially Baked Ideas
Make or buy analysis software.

Target Market:
Economic Organizations
Governments potentially



