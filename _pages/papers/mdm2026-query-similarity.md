---
layout: paper
title: "Embedding-Based SQL Query Similarity for Spatiotemporal Data Exploration"
permalink: /papers/2026/mdm2026-query-similarity/

# Bibliographic metadata
authors:
  - name: Evangelos Karageorgos
  - name: Alexandros Labrinidis
    url: /

venue: "27th IEEE International Conference on Mobile Data Management"
venue_short: MDM 2026
year: 2026
paper_pages: "12 pages"

# Links
pdf: /assets/pdf/papers/2026/mdm2026-query-similarity.pdf
# code:
# slides:
# poster:

# SEO
description: >
	TESS and GESS are novel SQL query similarity algorithms that capture structural and semantic content for query recommendation, workload analysis, and spatiotemporal data exploration. TESS constructs weighted embedding vectors from query label trees; GESS provides a lightweight full-text embedding alternative. Evaluated across five datasets and seven metrics, TESS achieves superior performance for interactive recommendation at scale.
---

## Abstract

Estimating the similarity of SQL queries is a fundamental building block for query recommendation systems, workload analysis, and interactive data exploration. We introduce TESS (Tree-Embedding SQL Similarity), a novel query similarity algorithm that constructs a weighted embedding vector from the label tree of a query, capturing both its structural and semantic content. We also present GESS (Global-Embedding SQL Similarity), a lightweight companion algorithm that embeds the full query text as a single vector. Our motivating application is query recommendation for spatiotemporal data exploration, where an analyst’s queries must be compared by semantic intent rather than by syntactic structure alone. We introduce a rigorous evaluation framework and perform a comprehensive evaluation across five datasets and seven metrics. Our experiments show that TESS achieves superior performance across multiple metrics, making it well-suited for interactive recommendation at scale.