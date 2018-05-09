# Final Project

## Important dates

Project report submission deadline: June 15th, 23:59.

## Problem Description

Imagine you are a regular user of the public transit system, and you are checking the operator's schedule to meet your friends for a class reunion. The choices are:

1. You could leave in 10mins, and arrive with enough time to spare for gossips before the reunion starts.

2. You could leave now on a different route and arrive just in time for the reunion.

Undoubtly, if this is the only information available, most of us will opt for 1.

If we now tell you that option 1 carries a fifty percent chance of missing a connection and be late for the reunion. Whereas, option 2 is almost guaranteed to take you there on time. Would you still consider option 1?

Probably not. However, most public transit applications will insist on the first option. This is because they are programmed to plan routes that offer the shortest travel times, without considering the risk factors.

In this final project you will team up in groups of 3 to 4, and will build your own public transit route planner to improve on that. You will reuse the SBB data set (from a city to be announced later).

Given a desired departure, or arrival time, your route planner will compute the fastest route between two stops within a provided risk tolerance expressed as interquartiles. For instance, "what route from A to B is the fastest at least Q% of the time if I want to leave from A (resp. arrive at B) at instant T".

In order to answer this question you will need to:

- Design a data representation of the public transist network for your route planning algorithm.

- Build a predictive model for your public transit network representation; train the model with historical data.

- Implement a robust route planning algorithm using this predictive model.

Solving this problem correctly can be difficult. You are allowed a few simplifying assumptions:

- There is no penalty for assuming that delays on the public transit network are uncorrelated with one another, both in time and space. 

- We only consider the case where the route is known before hand, and the traveller follows the planned route to the end, or until the plan fails (e.g. miss a connection), with unkown outcome. We __do not__ consider the case where travellers can defer their decisions and adapt their journey as more information becomes available.

- The planner will not need to mitigate the traveller's inconvenience if the plan fails. 

## Grading Method
- Routing engine (design and implementation)
- Visualization
- Documentation (written, oral)

## Hints

Before you get started, we offer a few hints:

* Reserve some time to Google-up the state of the art before implementing. There is a substantial amount of work on this topic. Look for _time-dependent_, or _time-varying networks_, _stochastic route planning under uncertainty_ and _isochrone maps_. Throw-in a bit of _public transit_ here and there. Alternatively, you could begin with the references provided below.

* You should already be acquainted with the data.
However, as you learn more about the state of the art, spend time to better understand your data.
Anticipate what can and cannot be done from what is available to you, and plan your design strategy accordingly. Do not hesitate to complete the proposed data sources with your own if necessary.

* Start small with a simple working solution and improve on it.
In a first version, assume that all trains and busses are always sharp on time.
Focus on creating a sane programming environment that you can use to develop and test your work as it evolves.
Next work-out the risk-aware solution gradually, start with a simple predictive model and improve it. In addition you can test your algorithm on selected pairs of stops before generalizing to the full public transit network under consideration.

## References

We offer a list of useful references as a starting point:

* Adi Botea, Stefano Braghin, "Contingent versus Deterministic Plans in Multi-Modal Journey Planning". ICAPS 2015: 268-272.
* Adi Botea, Evdokia Nikolova, Michele Berlingerio, "Multi-Modal Journey Planning in the Presence of Uncertainty". ICAPS 2013.
* S Gao, I Chabini, "Optimal routing policy problems in stochastic time-dependent networks", Transportation Research Part B: Methodological, 2006.

## FAQ

This section will be updated with the Frequently Asked Questions during the course of this project. Please stay tuned.

### 1 - 
