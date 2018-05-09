# Final Project

## Important dates

The project will be evaluated on the project report and an oral presentation.

The deadline for the submission of the project report is __June 15th, 23:59__.

Students can choose to either present their work on the last week of May, or mid June. Each group are invited to indicate their availability in [Doodle](doodle.com).

We will hold office hours in INN 211 from 16:00 to 17:00, on the following Thursdays:
- May 17th
- May 31st
- June 15th


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

- Model the public transist infrastructure for your route planning algorithm.

- Build a predictive model using historical arrival/departure time data for your public transit network.

- Implement a robust route planning algorithm using this predictive model.

- Implement a method to test and validate your results.

- Implement a web visualization to demonstrate your method.

Solving this problem accurately can be difficult. You are allowed a few simplifying assumptions:

- There is no penalty for assuming that delays or travel times on the public transit network are uncorrelated with one another. You will get extra credits if you do. 

- One a route is computed, a traveller is expected to follow the planned routes to the end, or until it fails with unkown consequences (e.g. miss a connection). You __do not__ need to address the case where travellers are able to defer their decisions and adapt their journey "en route", as more information becomes available. This requires to consider all alternate routes (contengency plans) in the computation of the uncertainty levels, which is more difficult to implement.

- The planner will not need to mitigate the traveller's inconvenience if a plan fails. Two routes with identical travel times under the uncertainty tolerance are equivalent, even if outside this uncertainty tolerance on one route has a much worse outcome than the other.

## Grading Method

Your solution will be evaluated as follows:

- Design and method used to model the public transit network: 10
- Design and method used to create the predictive models: 20
- Route planning algorithm: 20
- Validation method: 5
- Visualization: 15
- Documentation (written, oral): 10

## Hints

Before you get started, we offer a few hints:

* Reserve some time to Google-up the state of the art before implementing. There is a substantial amount of work on this topic. Look for _time-dependent_, or _time-varying networks_, _stochastic route planning under uncertainty_ and _isochrone maps_. You should also look in the references provided below.

* You should already be acquainted with the data.
However, as you learn more about the state of the art, spend time to better understand your data.
Anticipate what can and cannot be done from what is available to you, and plan your design strategy accordingly. Do not hesitate to complete the proposed data sources with your own if necessary.

* Start small with a simple working solution and improve on it.
In a first version, assume that all trains and busses are always sharp on time.
Focus on creating a sane programming environment that you can use to develop and test your work as it evolves.
Next, work-out the risk-aware solution gradually - start with a simple predictive model and improve it. In addition you can test your algorithm on selected pairs of stops before generalizing to the full public transit network under consideration.

## References

We offer a list of useful references as a starting point:

* Adi Botea, Stefano Braghin, "Contingent versus Deterministic Plans in Multi-Modal Journey Planning". ICAPS 2015: 268-272.
* Adi Botea, Evdokia Nikolova, Michele Berlingerio, "Multi-Modal Journey Planning in the Presence of Uncertainty". ICAPS 2013.
* S Gao, I Chabini, "Optimal routing policy problems in stochastic time-dependent networks", Transportation Research Part B: Methodological, 2006.

## FAQ

This section will be updated with the Frequently Asked Questions during the course of this project. Please stay tuned.

### 1 - 
