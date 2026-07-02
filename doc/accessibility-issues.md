# Accessibility Issues — Reading the FHIR Specification

This page summarises comments captured in the meeting notes that relate to the
readability and accessibility of the HL7 Europe Imaging Manifest (MADO) FHIR
specification. The goal is to make the published IG easier to read and to
clearly distinguish MADO-specific content from the underlying base specification.

Action point owner: **BvdH — check accessibility issues** (from 2026-07-02 notes).

## Issues

1. **Obligation rendering pollutes the base-vs-MADO diff.**
   The differences between the base specification and MADO are hard to read
   because the obligation rendering is interleaved with the profile content.
   Readers cannot easily see what MADO actually changes relative to the base
   spec. Suggested remedies:
   - Make the distinction clearer (visual separation / styling).
   - Add explanatory notes where obligations appear.
   - Split off the obligations into a separate section or page.
   - Add a dedicated change table summarising the deltas.

## Related improvements that support accessibility

These items are not filed strictly as accessibility issues but directly help
readers navigate the spec and understand what MADO adds or changes.

- **Add a delta section to §6.1 FHIR Manifest** describing what MADO changes
  relative to the EU Core profiles:
  1. Obligations.
  2. The anatomical region extension must be present, and its value set binding
     is tightened from *preferred* to *required*.
  3. Mappings on the EU Core profiles and the related cardinality changes
     (to be checked and listed).

- **Rename `XT-EHR mapping` to `EHDS logical model mapping`** so the mapping
  page label matches the terminology readers expect.

- **Send a link/print of the KOS obligation page to the whole group for review**
  so the obligation presentation can be validated by readers.

## Source

Extracted from the meeting notes in this folder:
- [2026-07-02-meeting-notes.md](2026-07-02-meeting-notes.md)
  -  obligation rendering pollutes the base-vs-MADO diff, making it hard to see what MADO actually changes — with the suggested fixes (clearer separation, notes, splitting off obligations, adding a change table).
