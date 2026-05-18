---
layout: paper
title: "Avoiding Class Warfare: Managing Continuous Queries with Differentiated Classes of Service"
permalink: /papers/2016/vldbj2016-avoiding-class-warfare/

# Bibliographic metadata
authors:
  - name: Thao N. Pham
  - name: Panos K. Chrysanthis
    url: https://panos.cs.pitt.edu
  - name: Alexandros Labrinidis
    url: /

venue: "The VLDB Journal"
venue_short: VLDB J. 2016
year: 2016
volume: 25
number: 2
paper_pages: "197–221"
doi: 10.1007/s00778-015-0411-4

# Links
pdf: /assets/pdf/papers/2016/vldbj2016-avoiding-class-warfare.pdf
url: https://doi.org/10.1007/s00778-015-0411-4

# SEO
description: >
  DILoS, a framework for managing continuous queries in data stream management
  systems with differentiated classes of service. By exploiting the synergy
  between priority-based scheduling and load shedding via the ALoMa adaptive
  load manager, DILoS consistently honors query priorities while maximizing
  system capacity utilization and avoiding priority inversion.
---

## Abstract

Data stream management systems (DSMSs) offer the most effective solution for
processing data streams by efficiently executing continuous queries (CQs) over
the incoming data. CQs inherently have different levels of criticality and
hence different levels of expected quality of service (QoS) and quality of
data (QoD). Adhering to such expected QoS/QoD metrics is even more important
in cases of multi-tenant data stream management services. In this work, we
propose DILoS, a framework that, through priority-based scheduling and load
shedding, supports differentiated QoS and QoD for multiple classes of CQs.
Unlike existing works that consider scheduling and load shedding separately,
DILoS is a novel unified framework that exploits the synergy between scheduling
and load shedding. We also propose ALoMa, a general, adaptive load manager
that DILoS is built upon. Our experimental evaluation of DILoS showed that it
(a) allows the scheduler and load shedder to consistently honor CQs' priorities,
(b) significantly increases system capacity utilization by exploiting batch
processing, and (c) enables operator sharing among query classes of different
priorities while avoiding priority inversion, i.e., a lower-priority class
never blocks a higher-priority one.
