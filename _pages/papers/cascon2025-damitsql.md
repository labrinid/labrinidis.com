---
layout: page
title: "DaMiT-SQL: Detecting and Mitigating Text-to-SQL Prompt Injection Attacks"
permalink: /papers/2025/cascon2025-damitsql/

# Bibliographic metadata
authors:
  - name: Zi Han Ding
    url:
  - name: Alexandros Labrinidis
    url: /

venue: "2025 IEEE International Conference on Collaborative Advances in Software and COmputiNg (CASCON)"
venue_short: CASCON 2025
year: 2025
pages: "641--646"
doi: 10.1109/CASCON66301.2025.00116

# Links
pdf: /assets/pdf/papers/cascon2025-damitsql.pdf
# code:
# slides:
# poster:

# SEO
description: >
  DaMiT-SQL detects and mitigates text-to-SQL prompt injection attacks by comparing
  semantic similarity of incoming prompts against known attack patterns, offering a
  time- and cost-efficient defense for LLM-powered natural language database interfaces.
---

## Abstract

Large Language Models (LLMs) are known for their ability to understand and respond to
human instructions and prompts. As such, LLMs can be used to produce natural language
interfaces for databases. However, LLMs also have an attack surface that, if not properly
secured, can cause serious damage. This paper explores the possibilities of exploiting
LLMs as an attack surface for SQL injection. We propose a time- and cost-efficient
approach to quickly detect malicious prompts by comparing the semantic similarity of the
attack against a dedicated list of known patterns.

## Links

- [DOI](https://doi.org/10.1109/CASCON66301.2025.00116)
- [PDF]({{ page.pdf }})
