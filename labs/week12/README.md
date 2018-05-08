# Final Project

## Problem Description

Imagine you are a regular user of the public transit system, and you are checking the operator's schedule to meet your friends for a class reunion. The choices are:

1. You could leave in 10mins, and arrive with enough time to spare for gossips while waiting for the latecomers.

2. You could leave now on a different route and arrive just in time for the reunion.

Undoubtly, with only this information at hands, most of us will opt for 1.

If we now tell you that option 1 includes a connection that you must not miss, you have 5 minutes to catch the connection, and we know from experience that the bus on the first leg is late 50% the time. If we also tell you that option 2 will take you there mostly on time, barring an act of god or other unforseable event. Would you still consider option 1?

Probably not. However, most public transit applications will insist on the first option. This is because they are programmed to plan routes that offer the shortest travel times on the paper without considering the risk factors.

In this final project you will team up in groups of 3 minimum, ideally 4, and will propose our own public transit route planner to improve on that. You will reuse the SBB data set (TODO: which city).

Given a desired departure or arrival time, your route planner will compute the fastest route between two stops within an adjustable uncertainty tolerance. Where uncertainty is specified by the user as an inter-quartile. E.g. what route from A to B is fastest 75% of the time if I leave from A at 10am, or when should I leave from A at the latest if I want to be at B before 10am 75% of the time?

You will consider two routing strategies: _path-based_, and _routing-based_ (or _adaptive_) policies. Under the _path-based_ policy, the traveller must follow the proposed route to the end or until they fail the journey (e.g. miss a connection, with unkown consequences). Under the _route-based_ policy, travellers can defer their decisions and adapt their journey as more information becomes available.

In either case, your planner will not need to mitigate the traveller's inconvenience if the plan fails. For instance, if the  

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

* Start small with a simple working solution and improve from there.
In a first version, assume that all trains and busses are always sharp on time.
Focus on creating a sane programming environment that you can use to develop and test your work as it evolve.
Next work-out the risk-aware solution gradually, beginning with a _path-based_ policy with uncertainty, then the _routing-based_ policy. In addition you can test your algorithm on selected pairs of stops before generalizing to the full public transit network under consideration.

## References

As a starter we offer a list of references. Feel free to look up your own.

* Adi Botea, Stefano Braghin, "Contingent versus Deterministic Plans in Multi-Modal Journey Planning". ICAPS 2015: 268-272.
* Adi Botea, Evdokia Nikolova, Michele Berlingerio, "Multi-Modal Journey Planning in the Presence of Uncertainty". ICAPS 2013.
* S Gao, I Chabini, "Optimal routing policy problems in stochastic time-dependent networks", Transportation Research Part B: Methodological, 2006.

## FAQ

This section will be updated with the Frequently Asked Questions during the course of this project. Please stay tuned.

### 1 - 
