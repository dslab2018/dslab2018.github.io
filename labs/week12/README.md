# Final Project

## Problem Description

Imagine you are a regular user of the public transit system, and you are checking the operator's schedule to meet your friends
for a class reunion. The choices are:

1. You could leave in 10mins, and arrive with enough time to spare for gossips while waiting for the latecomers.

2. You could leave now on a different route and arrive just in time for the reunion.

Undoubtly, with only this information at hands, most people will opt for 1.

If we now tell you that option 1 includes a connection that you must not miss, there is a 5 minutes waiting time between connections, and that we know from experience that the bus on the first leg is late 50% the time. If we also tell you that option 2 will take you there mostly on time, barring an act of god or other unforseable event. Would you still consider option 1?

Probably not. However, most public transit applications will insist on the first option. This is because they are programmed to plan routes that offer the shortest travel times on the paper, and this without taking risks into account.

In this final project you will team up in groups of 3 minimum, ideally 4, and will propose our own public transit planner to improve on that. You will reuse the SBB data set (TODO: which city).

## Grading Method
- Routing engine (design and implementation)
- Visualization
- Documentation (written, oral)

## Hints

Before you get started, we offer a few hints:

Reserve some time to Google up the state of the art before implementing. There is a substantial amount of work on this topic. Look for time-dependent, or time-varying networks, stochastic route planning under uncertainty and isochrone maps. Throw in public transit here and there. Or you can start with the references provided below.

You should already be acquainted with the data.
However, as you learn about the state of the art, spend time to better understand your data before you build.
Anticipate what can and cannot be done from what is available and plan your design strategy accordingly. Do not hesitate to
search for additional data sources to help improve your system (e.g. canton's holidays).

Start small with a simple working solution and improve from there.
In a first version assume that all trains and busses are alwayws sharp on time.
Focus on creating a sane programming environment that you can use to develop and test your work as it evolve.
Next work-out the risk-aware solution gradually, beginning with a __path-based__ approach with uncertainty between two
selected stops, then the __policy-based__ method, and finally scale to the full public transit network under consideration.

## References

As a starter we offer a list of references. Feel free to look up your own.

* Adi Botea, Stefano Braghin, "Contingent versus Deterministic Plans in Multi-Modal Journey Planning". ICAPS 2015: 268-272.
* Adi Botea, Evdokia Nikolova, Michele Berlingerio, "Multi-Modal Journey Planning in the Presence of Uncertainty". ICAPS 2013.
* S Gao, I Chabini, "Optimal routing policy problems in stochastic time-dependent networks", Transportation Research Part B: Methodological, 2006.

## FAQ

This section will be updated with the Frequently Asked Questions during the course of this project. Please stay tuned.

### 1 - 
