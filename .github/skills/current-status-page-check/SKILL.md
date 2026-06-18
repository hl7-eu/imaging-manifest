---
name: current-status-page-check
description: Validate the current-status page guidance and content against the required public-facing status criteria.
---

# Current Status Page Check

Use this skill when reviewing or validating `hl7eu-imaging-fork/ig-src/input/pagecontent/current-status.md`.

## Preconditions

- Confirm the IG has been built after the latest `ig-src` changes.
- Confirm the generated `igs/imaging-r4/` and `igs/imaging-r5/` trees are up to date with `ig-src`.
- Use the current version declared in `hl7eu-imaging-fork/ig-src/sushi-config.liquid.yaml` as the source of truth for the page version check.

## Check Criteria

- The page states its purpose as a public status page.
- The page clearly identifies the audience as IG readers and Euridice website visitors.
- The page mentions both current build URLs, one for R4 and one for R5.
- The version or release status described on the page matches the version declared in `hl7eu-imaging-fork/ig-src/sushi-config.liquid.yaml`.
- The rendered history page produced by the current build for each IG variant reflects the same release/version state as the page.
- The page mentions the current ballot-reconciliation progress for the May 2026 ballot.
- The page mentions the published 0.1.0 ballot release and the v1.0.0-alpha projectathon snapshot.
- The page explains that the specification will be updated after the European Commission publishes the revised EHDS implementing-act requirements.
- The page remains concise and factual, with no internal implementation detail.

## Pass/Fail Guidance

- Pass if all criteria are present, the version/history checks agree with the built IG output, and the wording is suitable for a public-facing landing page.
- Fail if any required status item, audience statement, or future-update note is missing.
- Fail if the build has not been refreshed after the latest `ig-src` change, or if the page version/history text is out of sync with the generated IG artifacts.