# Engineering Simulation Lab

Status: scaffolded
Publication state: public scaffold
Release state: not released

## What This Repo Is

`engineering-simulation-lab` is a published Phase 4 public scaffold for public-safe Python engineering simulation and validation studies. It organizes synthetic assumptions, model boundaries, inputs, outputs, reports, and review checklists for thermal, airflow, power, control, and system-level studies.

## What This Repo Is Not

This repo is not a released benchmark suite, certified engineering package, product validation record, deployment record, customer study, or source of physical proof. It does not contain private traces, customer data, Foundation-private data, private measurements, production thermal data, production airflow data, production power data, private workloads, internal company product names, sealed assumptions, deployment proof, certification claims, released model or dataset claims, or unsupported result claims.

## Current Status

| Field | Value |
| --- | --- |
| Status | scaffolded |
| Publication state | public scaffold |
| Release state | not released |
| Public GitHub repo | published scaffold |
| First artifact | `studies/synthetic-thermal-airflow-power-study.md` scaffolded |
| Published artifact | scaffolded |
| Profile routing | planned |
| Proof-stack routing | planned |

## Engineering Scope

- Python simulation study structure.
- Assumptions tables.
- Synthetic CSV and JSON input fixtures.
- Model-boundary documentation.
- Synthetic outputs and generated report patterns.
- Validation questions and review gates.

## Tools And Stack

Python, Jupyter where useful, NumPy, pandas, matplotlib, CSV/JSON synthetic inputs, generated plots/reports, Markdown validation reports, and Mermaid diagrams.

## Study Format

Every study must name the problem, synthetic context, assumptions, inputs, model, outputs, limits, validation path, what it proves, and what it does not prove.

## Synthetic Inputs And Outputs

Inputs and outputs are synthetic unless a later human review marks them as reviewed public material. Synthetic files must not use production thermal data, private measurements, private workloads, customer data, or unreleased metrics.

## Model Boundaries

Models are simplified public-safe reasoning aids. They do not prove deployment readiness, physical validation, certification, benchmark standing, or production performance.

## Generated Reports

Reports must preserve source assumptions, model limits, review status, and non-proof boundaries. A generated report may be `scaffolded`; it must not be marked `released` without a separate reviewed release.

## Validation Method

Run:

```bash
bash scripts/validate-public-boundary.sh
rg -n "planned|scaffolded|published|released|private/not-public|private traces|customer data|unreleased benchmark|private measurements|production thermal|private workloads|unsupported result|validation|review" .
git diff --check
git status --short
```

## Public / Private / Sealed Boundary

This repository contains public-safe synthetic simulation and validation studies only. It does not contain private traces, customer data, Foundation-private data, unreleased benchmark results, private measurements, production thermal data, production airflow data, production power data, private workloads, internal company product names, sealed assumptions, deployment proof, certification claims, released model or dataset claims, or unsupported result claims. All inputs, outputs, plots, reports, and notebooks are synthetic unless explicitly marked as reviewed public material.

## Links Back After Public Creation

Profile routing and proof-stack routing are planned. Any `Franzabner` or `franzabner-proof-stack` link must be handled in a separate reviewed routing patch. This repo must not be marked released or proof-complete.

## First Build Task

Published artifact: scaffolded. `studies/synthetic-thermal-airflow-power-study.md` includes a problem statement, synthetic system context, assumptions table, synthetic input references, model boundary, simplified method, synthetic output table, generated report plan, Mermaid validation diagram, validation questions, what this proves, what this does not prove, public/private/sealed checklist, and `Status: scaffolded`.
