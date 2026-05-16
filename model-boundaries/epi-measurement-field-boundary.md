# EPI Measurement Field Boundary

Status: scaffolded
Publication state: public scaffold
Release state: not released

## Purpose

This file defines synthetic measurement field names and review categories for Energy Per Intelligence (EPI) study planning.

The fields below are not measured values. They are placeholders for study design and review discipline only.

## Synthetic Field Names

| Field name | Meaning | Public boundary |
| --- | --- | --- |
| `quality_score` | Synthetic quality or utility score category. | No real benchmark score or private eval output. |
| `tokens_processed` | Synthetic throughput count category. | No production workload, customer data, or private trace. |
| `elapsed_seconds` | Synthetic runtime duration category. | No deployment timing or private system measurement. |
| `average_power_watts` | Synthetic energy-planning field. | No raw power trace or hardware measurement claim. |
| `joules_per_unit` | Synthetic energy-per-output field. | No validated EPI result or measured energy value. |
| `epi_index` | Synthetic normalized comparison field. | No public result, ranking, or proof claim. |
| `method_family` | Generic category such as attention-head intervention, mixed quantization, or expert pruning. | No implementation evidence or released method. |
| `review_state` | Review status for whether the artifact is draft, scaffolded, or reviewed. | No approval implied unless explicitly recorded by humans. |

## Excluded Fields

Do not include:

- raw trace paths;
- model paths or identifiers;
- dataset names tied to private corpora;
- private workload names;
- customer or Foundation-private references;
- endpoint or topology fields;
- credential fields;
- numeric result values in boundary documents;
- benchmark output tables.

## Publication Boundary

Field names may appear in synthetic templates and study frames. Field values require separate review before publication.

Any public artifact that contains measured values, traces, model outputs, benchmark outputs, or result comparisons must be treated as a new evidence artifact and reviewed before release.

## Batch 6 Additional Synthetic Fields

These additional field names support public-safe EPI and release-readiness templates. They are labels only.

| Field name | Meaning | Public boundary |
| --- | --- | --- |
| `input_boundary_class` | Synthetic category for whether inputs are synthetic or reviewed public-safe. | No private workload, corpus, source path, or customer context. |
| `artifact_status` | Synthetic category for template, scaffold, reviewed, or held status. | No artifact existence implied. |
| `claim_gate_state` | Synthetic category for whether a stronger claim is blocked, pending review, or approved by humans. | No approval implied by default. |
| `release_surface_state` | Synthetic category for whether external release-surface activity is absent or separately reviewed. | No external metadata or hosted artifact represented. |
| `review_required_reason` | Synthetic note explaining why human review is required. | No private finding, incident, trace, or result included. |

These field names may be used by template docs in `data-model-infrastructure` and `engineering-deliverables-template` when they remain value-free.
