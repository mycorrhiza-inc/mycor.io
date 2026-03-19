---
title: "Agrobacterium"
tagline: "LLM-maintained adapters for radical software compatibility"
status: concept
target: Developers & Organizations
order: 7
---

One of the most effective mechanisms proprietary software uses to maintain lock-in is interface churn: constantly-changing internal APIs and formats that make any external integration expensive to maintain. Building an adapter to interoperate with a closed-source system has historically required ongoing engineering time every time the upstream changes — making sustained interoperability economically irrational for most organizations.

Language models change this calculation. If you can describe in precise detail how you want to interact with a system, an LLM can write the adapter code and update it when the upstream changes. The maintenance cost that previously made interoperability prohibitive becomes a fraction of a cent per update.

Agrobacterium is a framework for this pattern: specify the desired interface, generate the adapter, and automate the update loop. The open questions are about adversarial robustness — how far does this hold when the upstream is actively obfuscating its interfaces, or when updates are intentionally breaking? — and about the limits of specification: some proprietary systems are complex enough that describing what you want from them is itself a hard problem.

The name is from the soil bacterium that transfers DNA between species. The project is about making open systems able to exchange data with closed ones without surrendering control.
