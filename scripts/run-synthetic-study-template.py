"""Run a tiny public-safe synthetic study template.

This script uses only generated constants and writes no files by default.
It is a scaffold for later synthetic report generation.
"""

from __future__ import annotations


def estimate_margin(capacity_units: float, demand_units: float) -> float:
    """Return a synthetic normalized capacity margin."""
    if capacity_units <= 0:
        raise ValueError("capacity_units must be positive")
    return (capacity_units - demand_units) / capacity_units


if __name__ == "__main__":
    margin = estimate_margin(capacity_units=100.0, demand_units=72.0)
    print(f"synthetic_margin={margin:.2f}")

