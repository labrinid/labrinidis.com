---
layout: paper
title: "Context-aware Multi-stakeholder Recommender Systems"
permalink: /papers/2022/flairs2022-context-aware-recsys/

# Bibliographic metadata
authors:
  - name: Tahereh Arabghalizi
  - name: Alexandros Labrinidis
    url: /

venue: "Proceedings of the Thirty-Fifth International Florida Artificial Intelligence Research Society Conference"
venue_short: FLAIRS 2022
year: 2022
doi: 10.32473/FLAIRS.V35I.130573

# Links
pdf: /assets/pdf/papers/2022/flairs2022-context-aware-recsys.pdf
url: https://doi.org/10.32473/flairs.v35i.130573

# SEO
description: >
  A contextual multi-armed bandit approach for multi-stakeholder recommender
  systems that balances the preferences of all involved parties — users,
  suppliers, and minority stakeholders — using a multi-sided relevance function
  with adjustable weights. Evaluated on MovieLens and IMDB data, outperforming
  single-stakeholder baselines in both mean reward and satisfaction percentage.
---

## Abstract

Traditional recommender systems help users find the most relevant products or
services to match their needs and preferences. However, they overlook the
preferences of other sides of the market (aka stakeholders) involved in the
system. In this paper, we propose to use contextual bandit algorithms in
multi-stakeholder platforms where a multi-sided relevance function with
adjusting weights is modeled to consider the preferences of all involved
stakeholders. This algorithm sequentially recommends items based on the
contextual features of users along with the priority of the stakeholders and
their relevance to the items. Our extensive experimental results on a dataset
consisting of MovieLens (1m), IMDB (81k+), and a synthetic dataset show that
our proposed approach outperforms the baseline methods and provides a good
trade-off between the satisfaction of different stakeholders over time.
