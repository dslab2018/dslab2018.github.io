# Week 12 Data Science Lab

## Final Project

### Problem Description

You are a regular user of the public transit system, and you are checking the operator's schedule to meet your friends
in a restaurant at 7pm. The choices are:

1. You could leave in 30mins, and arrive with spare time to order an appetizer with other early comers before 7pm.

2. You could leave in 15mins on a different route and arrive barely in time for dinner.

Undoubtly, with only information at hands, most people will opt for option 1.

If we now tell you that option 1. has a connection with a short inter-connection time of 3mins, that if missed
you will not make it in time for dessert.

In the final project of this class, we will reuse the SBB data set (TODO: which city).

### Grading Method
- Routing engine (design and implementation)
- Visualization
- Documentation (written, oral)

### Hints

Before you get started, we offer a few hints:

Reserve some time to Google up the state of the art before implementing. There is a substantial amount of work on this topic. Start with a few key words such as time-dependent
or time-varying networks, stochastic, and uncertainty. Throw in a pinch of transit and isochrone to the recipe and voilà.
Or you can start with the references provided below.

You should already be acquainted with the data.
However, as you learn about the state of the art, spend time to better understand your data before you build.
Anticipate what can and cannot be done from what is available and plan your design strategy accordingly. Do not hesitate to
search for additional data sources to help improve your system (e.g. canton's holidays).

Start small with a simple working solution and improve from there.
In a first version assume that all trains and busses are alwayws sharp on time.
Focus on creating a sane programming environment that you can use to develop and test your work as it evolve.
Next work-out the risk-aware solution gradually, beginning with a __path-based__ approach with uncertainty between two
selected stops, then the __policy-based__ method, and finally scale to the full public transit network under consideration.

### References

As a starter we offer a list of references. Feel free to look up your own.

* Adi Botea, Stefano Braghin, "Contingent versus Deterministic Plans in Multi-Modal Journey Planning". ICAPS 2015: 268-272.
* Adi Botea, Evdokia Nikolova, Michele Berlingerio, "Multi-Modal Journey Planning in the Presence of Uncertainty". ICAPS 2013.
* S Gao, I Chabini, "Optimal routing policy problems in stochastic time-dependent networks", Transportation Research Part B: Methodological, 2006.

### FAQ

This section will be updated with the Frequently Asked Questions during the course of this project. Please stay tuned.

#### 1 - 
