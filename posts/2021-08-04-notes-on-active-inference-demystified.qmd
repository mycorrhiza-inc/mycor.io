---
title:  Notes on Active Inference Demystified
author: Bradley Venner
date:   6/1/2021
---

The stated goal in the abstract of the paper is to compare active inference and reinforcement learning in the discrete-state case.  My stated goal is to develop an active inference formulation of energy planning using an agent-based model such as SwarmGrid-X (or something similar), with an intermediate goal of understanding measurement uncertainty and method validation.23 

The paper sates the main conributions of AI to RL are: (p. 5)

1. reward functions (i.e., prior preferences) are not always necessary because any policy has an epistemic value, even in the absence of prior preferences,
2. agents can learn their own reward function and this becomes a way of describing how the agent expects itself to behave —– as opposed to getting something from the environment,
3. a principled account of epistemic exploration and intrinsic motivation as minimizing uncertainty,
4. incorporating uncertainty as a natural part of belief updating.

PA: The distinction between extrinsic rewards provided by the environment and intrinsic rewards provided in part by the agent is a crucial one for understanding capitalism. Rationalizations for capitalism posit that external rewards are crucial for motivating behavior and that people (agents?) left to their own devices will produce bad outcomes.

The notion of entropy as the value of an experiment was developed by Lindley in the mid 60's (look this up).  The advantage of the entropy map is that there is no distinction between the prior and the loss function.

Active inference also proposes to find a balance between 'epistemic exploration' and 'pragmatic behavior.

PA:  Many of the themes in this paper were addressed in papers by David Ellerman, including exploitation/exploration, 'brain functors', and entropy models. Could 'someone' develop a 'categorical' approach to active inference by mining these insights?

> We note that whilst all agents are able to perform appropriately in a stationary setting, active inference’s ability to carry out online planning allows for Bayes–optimal behavior in the non-stationary environment. (p. 10)

> This distinction is key: in standard model-based reinforcement learning frameworks the agent is interested in optimizing the value function of the states [Sutton et al., 1998]; i.e., making decisions that maximize expected value. In active inference, we are interested in optimizing a free energy functional of beliefs about states; i.e., making decisions that minimize expected free energy.

Once the paper got into the math, I stopped following very well. I will need to develop a strategy about how to learn the more mathematical material quickly. 

The next sentence seems important in the energy modeling context (energy modeling by minimizing free energy?)
> Lastly, temporal discounting emerges naturally from active inference, where the generative model determines the nature of discounting (based on {the?} parameter capturing precision), with predictions in the distant future being less precise and thus discounted in a Bayes–optimal fashion [Friston et al., 2017a]

Where's my Markov blanket of Markov Blankets that I was promised?
> Additionally, future work looks to evaluate how these formulations (agents) may interact with each other to emulate multi-agent exchanges.

The applications section considers the OpenAI gym's FrozenLake environment.