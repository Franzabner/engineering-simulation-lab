# Validation

Status: scaffolded

## Required Commands

```bash
test -f README.md
test -f PUBLIC_BOUNDARY.md
test -f scripts/validate-public-boundary.sh
bash scripts/validate-public-boundary.sh
rg -n "planned|scaffolded|published|released|private/not-public|private traces|customer data|unreleased benchmark|private measurements|production thermal|private workloads|unsupported result|validation|review" .
git diff --check
git status --short
```

## Manual Review

| Review | Required result |
| --- | --- |
| Boundary review | No private traces, customer data, production simulation data, private workloads, private measurements, or unreleased benchmark results. |
| Model review | Each study states assumptions, model limits, validation path, what it proves, and what it does not prove. |
| Report review | No deployment, certification, benchmark, product-readiness, release, or proof-completion claim. |

