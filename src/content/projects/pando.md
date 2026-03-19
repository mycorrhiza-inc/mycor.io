---
title: "Pando"
tagline: "Scalable, auditable elections for organizations of any size"
status: concept
target: Democratic Organizations
order: 5
---

Running a binding election is expensive enough that most organizations — unions, cooperatives, political parties, community groups — either skip formal elections, use insecure methods, or pay significant amounts to third-party vendors. This is a structural problem: the tools that make democratic governance possible are priced out of reach for the organizations that need them most.

Serverless architecture makes the compute cost proportional to actual usage, which means the infrastructure cost of a large election approaches zero in normal operation. That's the easy part.

The hard problem is identity. How do you verify that each ballot represents a real, eligible voter without building a centralized database of who voted for what? The current research direction adapts the distributed trust model from US election administration — where municipalities handle identity verification and the state level handles tabulation — into a cryptographic system using zero-knowledge proofs. The goal is a voter who can prove "I am a registered eligible voter in this election" without revealing which ballot they cast, and an election authority who can verify uniqueness without learning the correspondence between voters and votes.
