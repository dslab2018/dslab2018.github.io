# DS Lab - Final Assignment: Robust Journey Planning

The final assignment is to be done in __groups of 3 or, preferably, 4__.

If needed, please start by _creating a new group_ or _update a existing group_ for the final project (to be used in Dooble below).

## Important dates

The assignment (clear, well-annotated notebook; report-like) is due on __June 15th, 23:59__.

The oral defense will take place either before the end of the semester or after the end of the semester (before or during exam period).

You are invited to indicate your group's availability __using your final assignment's group name__ in [Doodle](https://doodle.com/poll/t2s5ndf8iugtgvi5). Please __do so ASAP__ to be assured a good spot. Single vote! First come, first served!

Finally, we will hold office hours in __INN 211__ on the following days:

* Thursday May 17th 16:00 - 17:00
* Tuesday May 22nd 15:00 - 16:00
* Thursday May 31st 16:00 - 17:00

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

- Build a predictive model using historical arrival/departure time data and potentially other sources of data for your public transit network.

- Implement a robust route planning algorithm using this predictive model.

- Implement a method to test and validate your results.

- Implement a web visualization to demonstrate your method.

Solving this problem accurately can be difficult. You are allowed a few simplifying assumptions:

- There is no penalty for assuming that delays or travel times on the public transit network are uncorrelated with one another. You will get extra credits if you do. 

- Once a route is computed, a traveller is expected to follow the planned routes to the end, or until it fails with unknown consequences (e.g. miss a connection). You __do not__ need to address the case where travellers are able to defer their decisions and adapt their journey "en route", as more information becomes available. This requires to consider all alternative routes (contingency plans) in the computation of the uncertainty levels, which is more difficult to implement.

- The planner will not need to mitigate the traveller's inconvenience if a plan fails. Two routes with identical travel times under the uncertainty tolerance are equivalent, even if outside this uncertainty tolerance on one route has a much worse outcome than the other.

## Grading Method

We will grade both your Jupyter-based report (60%) and your 15-minute oral presentation (40%).

We will use the following criteria:

1. The clarity and conciseness of the written and oral reports (written: 15 pts, oral: 10 pts)
1. The formulation of the problem and its decomposition into smaller tasks (written: 5 pts, oral: 5 pts)
1. The originality of the solution (system design, analytics, visualization) (written: 10 pts, oral: 5 pts)
1. The quality of the solution (system design, analytics and associated implementation) (written: 20 pts, oral: 10 pts)
1. The explanation of the pro's and con's / shortcomings of the proposed solution  (written: 10 pts, oral: 10 pts)

The solution and associated implementation & explanations will be weighted across the different parts as follows:

* Design and method used to model the public transit network: 10%
* Design and method used to create the predictive models: 30%
* Route planning algorithm: 30%
* Validation method: 10%
* Visualization: 20%

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
