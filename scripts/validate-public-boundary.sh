#!/usr/bin/env bash
set -u

missing=0

required_files=(
  "AGENTS.md"
  "README.md"
  "STATUS.md"
  "PUBLIC_BOUNDARY.md"
  "CLAIMS.md"
  "VALIDATION.md"
  "ARTIFACT_REGISTER.md"
  "REVIEW_LOG.md"
  "requirements.txt"
  "studies/README.md"
  "studies/synthetic-thermal-airflow-power-study.md"
  "studies/study-template.md"
  "assumptions/README.md"
  "assumptions/assumptions-table-template.md"
  "model-boundaries/README.md"
  "model-boundaries/model-limit-checklist.md"
  "model-boundaries/unsupported-result-claim-exclusion.md"
  "notebooks/README.md"
  "notebooks/notebook-public-safety-policy.md"
  "scripts/validate-public-boundary.sh"
  "scripts/run-synthetic-study-template.py"
  "inputs/README.md"
  "inputs/synthetic/thermal_airflow_power_inputs.csv"
  "inputs/synthetic/control_state_inputs.json"
  "outputs/README.md"
  "outputs/output-publication-policy.md"
  "reports/README.md"
  "reports/markdown-validation-report-template.md"
  "diagrams/README.md"
  "diagrams/simulation-validation-flow.mmd"
  "validation-boundaries/README.md"
  "validation-boundaries/public-safe-output-review.md"
  "validation-boundaries/simulation-claim-review-checklist.md"
  "templates/simulation-study-template.md"
  "templates/validation-report-template.md"
)

for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    printf "PASS %s\n" "$file"
  else
    printf "FAIL %s\n" "$file"
    missing=$((missing + 1))
  fi
done

required_terms=(
  "planned"
  "scaffolded"
  "published"
  "released"
  "private/not-public"
  "private traces"
  "customer data"
  "unreleased benchmark"
  "private measurements"
  "production thermal"
  "private workloads"
  "unsupported result"
  "validation"
  "review"
)

for term in "${required_terms[@]}"; do
  if rg -q "$term" .; then
    printf "PASS term: %s\n" "$term"
  else
    printf "FAIL term: %s\n" "$term"
    missing=$((missing + 1))
  fi
done

blocked_files="$(find . -path ./.git -prune -o \( -iname '*.parquet' -o -iname '*.feather' -o -iname '*.sqlite' -o -iname '*.db' -o -iname '*.pkl' -o -iname '*.joblib' \) -print)"
if [ -z "$blocked_files" ]; then
  printf "PASS blocked private-data artifact scan\n"
else
  printf "FAIL blocked private-data artifact scan\n%s\n" "$blocked_files"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "Result: PASS - simulation public boundary scaffold is complete.\n"
else
  printf "Result: FAIL - %s required checks failed.\n" "$missing"
fi

exit "$missing"

