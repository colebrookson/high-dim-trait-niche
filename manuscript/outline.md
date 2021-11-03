---
title: Trait-based methods comparisons for identifying trait-based shifts in Albacore Tuna diets
author: Cole Brookson
---

## Introduction

Originally defined, a species' "niche" is ultimately based on the traits of that species. Whether conceptualized as being defined by the traits themselves (i.e. @eltonAnimalEcologyLondon1927; harmonConvergenceMultidimensionalNiche2005) or as the set of environments for which a particular set of traits are suitable (i.e. @hutchinsonConcludingRemarksCold1957; @harpoleGrasslandSpeciesLoss2007), species traits are fundamental to the concept of niches. Species niches have also been used prevalently to 

Food web rewiring is, at the base level, defined by the shifting of a) interactions in a network, and b) the strength of interactions in a network. 

* Given some event that predicates the event, consumers will shift the set of resources they consume by some non-zero amount, resulting in a new set of resource items
* Given the same or some different event that predicates the rewiring, the *strength* of interactions between a consumer and its set of resource prey items may change
* These two changes are likely to happen together, and therefore any method used to model how this rewiring event happens much account for both 1) the incorporation and/or disunion of resources, and 2) the shift of interaction strengths in interactions that stay consistent in their presence

There have been numerous methods proposed to identify how consumers select their resources and then subsequently how intensely they consume them, but a significant number rely on incorporating some conception of a species' "niche", perhaps most famously in williamsSimpleRulesYield2000a oft-cited first proposal of the aptly named "Niche Model"
* Whether the niche is defined, as originally posited, as simply the traits of the species at hand (i.e. @eltonAnimalEcologyLondon1927; harmonConvergenceMultidimensionalNiche2005) or as the set of environments for which a particular set of traits are suitable (i.e. @hutchinsonConcludingRemarksCold1957; @harpoleGrasslandSpeciesLoss2007), species traits are fundamental to the concept of niches. 
* Indeed, species traits lend themselves to myriad approaches that can address the question of how to model a species' trophic interactions (@ottoAllometricDegreeDistributions2007b; @rossbergHowTrophicInteraction2010; @pomeranzInferringPredatorPrey2019c)

The ways in which traits are most commonly used to model trophic interactions is through first determining the topological structure of the set of interactions, and then determining their strength. Traits can be used via to determine whether a given resource is a *possible* prey item for a consumer by determining whether some consumer $i$ and resource $j$ overlap in time and space through traits like habitat association or migration habits. Then, using some coarse measurements, a possible unidirectional consumer resource interaction between $i$ and $j$ can be deemed possible or not via traits like feeding habits and body size. Subsequently, the same traits in addition to others, can be used to determine not just the *possibility* but the *strength* of that consumer-resource interaction between $i$ and $j$. This process usually takes the form of estimating some probability $P(i,j)$ of consumer $i$ eating resource $j$, epitomized by the probabilistic niche model proposed as a follow-up to the classic niche model by williamsProbabilisticNicheModel2010a. While most implementations of this approach consider only body size as the trait of interest, it is possible that for some consumers, including additional traits would actually improve estimates of interaction strength. 


#### NOTES

Could do something like looking at "perfect" data and seeing how much we can get out of it then working backwards to the data we have