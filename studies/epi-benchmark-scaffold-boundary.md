# EPI Benchmark Scaffold Boundary

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This file defines the public-safe boundary for EPI benchmark scaffolding migrated from Batch 6 legacy context. It is a study-planning boundary only.

The legacy `epi-bench` repository is context for reusable scaffold vocabulary. It is not the active architecture source for EPI simulation work.

## Allowed Scaffold Material

| Material | Allowed use | Boundary |
| --- | --- | --- |
| Benchmark question | State the synthetic question a future reviewed study might ask. | No score, ranking, result table, or evidence claim. |
| Report outline | Define public-safe sections for a future report. | No measured value, chart, trace, or workload identity. |
| Field dictionary | Name synthetic fields needed by a study frame. | Field names only; no values. |
| Review gate | State what human review must approve later. | No approval implied by scaffold status. |
| Limitation note | Explain what the scaffold cannot show. | No proof, deployment, or production statement. |

## Required Exclusions

Do not include:

- executable benchmark harness proof;
- implementation code as evidence;
- private workloads;
- private corpora;
- model paths or identifiers;
- raw traces;
- measured values;
- output tables;
- ranking language;
- release-surface metadata;
- production or deployment language;
- customer or client outcome language.

## Review Gate

Any future artifact that adds values, traces, model outputs, workload details, or external release references must leave this scaffold boundary and receive human public-boundary review before publication.
