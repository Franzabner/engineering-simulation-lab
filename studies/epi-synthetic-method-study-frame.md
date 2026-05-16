# EPI Synthetic Method Study Frame

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This file defines a synthetic study frame for Energy Per Intelligence (EPI) method comparison. It is a planning and simulation scaffold only.

The frame allows public-safe discussion of attention-head intervention, mixed quantization, and expert pruning as generic method families without publishing method code, benchmark output, result values, raw traces, model identifiers, private workload assumptions, or proof-completion claims.

## Study Posture

| Field | Public-safe value |
| --- | --- |
| Study status | Scaffolded |
| Input status | Synthetic or reviewed public-safe only |
| Method status | Taxonomy only; no released method |
| Benchmark status | No validated benchmark |
| Result status | No evaluated public result |
| Model status | No model release, model identifier, weight, or adapter |
| Dataset status | No dataset release |
| External release status | No external release activity represented |

## Synthetic Comparison Categories

| Category | Synthetic question | Boundary |
| --- | --- | --- |
| Attention-head intervention | How would a study frame compare useful output and energy if attention-head participation were varied? | No real model path, private trace, implementation workflow, or measured result. |
| Mixed quantization | How would a study frame compare precision-class choices against quality and energy fields? | No quantization command, model artifact, benchmark output, or result value. |
| Expert pruning | How would a study frame compare sparse expert participation against quality and energy fields? | No router data, private harness, model weights, adapter, or measured result. |

## Synthetic Study Sections

Any future public-safe EPI study should include:

- hypothesis statement;
- synthetic input description;
- method-family category;
- field dictionary;
- assumption table;
- model boundary;
- output boundary;
- what this can test;
- what this cannot prove;
- human review gate.

## What This Does Not Prove

This scaffold does not prove:

- a released method;
- a validated EPI result;
- a benchmark output;
- a model release;
- a dataset release;
- deployment readiness;
- production readiness;
- proof completion.

## Review Gate

Any movement from synthetic study framing to measured evidence requires human review, provenance review, public boundary review, and claim-language approval before publication.
