---
author: Joakim
place: KJL2
date: 11.01.24
---

# Recommended Systems

Computer programs that recommend the 'best' items to users in different contexts.

## Building blocks

- Set of users, w/o features
- Set of items, w/o features
- Objective function. What do you want to achieve with the recommendations (increased revenue, make users come back to the service as much as possible, etc...)

## Schematic Approach

- Content Modeling: How to represent items? By text, grouped in categories, etc...
- User Profile: What does a user like? User history...
- Scoring: How well does a specific **item** fit a specific **user**? Give it a score between 0 and 1.
- Ranking: With the scoring, choose the best candidate items for the given user.

## What should a Recommender System optimize?

- Preference Match: Does the user actually pay attention to the recommendations?
- Serendipity: Find recommendations for items that the user would not be able to find themselves.

## Explore vs Exploit

- How often do we need to update the recommender systems?

### Explore

- Try out new (explore) new ideas to improve the system.

### Exploit

- I have a system that works well, so I just exploit it further.

## Unpersonalized vs Personalized

### Unpersonalized

- Recommend the most popular items.

### Personalized

- Consider users individually.

## Possible exame questions

- Define the rem recommender system.
- Describe the building blocks of a recommender system.
- What is the difference between recommender systems and information retrieval systems?

## Languages

- [Python: Rec Bole](https://recbole.io/)? (Python library for recommender systems)
