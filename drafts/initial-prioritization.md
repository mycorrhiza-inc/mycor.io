# What the fuck is this project?

So as I am writing this I have just spent 2 years trying to do a startup only to have said startup, and you want to figure out why it 


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



