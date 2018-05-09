# Final Project

## Important dates

The project will be evaluated on the project report and an oral presentation.

The deadline for the submission of the project report is June 15th, 23:59.

Students can choose to present at the end of May, or mid June. Each group must indicate their availability in [Doodle](doodle.com).

## Problem Description

Imagine you are a regular user of the public transit system, and you are checking the operator's schedule to meet your friends for a class reunion. The choices are:

1. You could leave in 10mins, and arrive with enough time to spare for gossips before the reunion starts.

2. You could leave now on a different route and arrive just in time for the reunion.

Undoubtly, if this is the only information available, most of us will opt for 1.

If we now tell you that option 1 carries a fifty percent chance of missing a connection and be late for the reunion. Whereas, option 2 is almost guaranteed to take you there on time. Would you still consider option 1?

Probably not. However, most public transit applications will insist on the first option. This is because they are programmed to plan routes that offer the shortest travel times, without considering the risk factors.

In this final project you will team up in groups of 3 to 4, and will build your own public transit route planner to improve on that. You will reuse the SBB data set (from a city to be announced later).

Given a desired departure, or arrival time, your route planner will compute the fastest route between two stops within a provided uncertainty tolerance expressed as interquartiles. For instance, "what route from A to B is the fastest at least Q% of the time if I want to leave from A (resp. arrive at B) at instant T". Note that _uncertainty_ is a measure of a route not being feasible within the time computed by the algorithm.

In order to answer this question you will need to:

- Design a data representation of the public transist network for your route planning algorithm.

- Build a predictive model using historical arrival/departure time data for your public transit network representation.

- Implement a robust route planning algorithm using this predictive model.

- Implement a method to test and validate your results.

Solving this problem correctly can be difficult. You are allowed a few simplifying assumptions:

- There is no penalty for assuming that delays or travel times on the public transit network are uncorrelated with one another, both in time and space. 

- Routes are computed before-hand, and the travellers follow their planned routes to the end, or until they fail with unkown outcome (e.g. miss a connection). __Do not__ consider the case where travellers can defer their decisions and adapt their journey as more information becomes available. This routing strategy must take all alternate routes into account when computing the uncertainty levels, and is thus more difficult to implement.

- The planner will not need to mitigate the traveller's inconvenience if a plan fails. For instance two routes that have a 90% chance of having a 30mins travel time are considered equivalent, even if a route has a 10% chance of having a 1h travel time and the other a 10% chance of arriving the next day.

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
