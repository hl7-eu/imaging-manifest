---
description: "Guidance for maintaining the public current-status page for the HL7 Europe Imaging Report IG and Euridice website."
applyTo: "hl7eu-imaging-fork/ig-src/input/pagecontent/current-status.md"
---

This instruction applies when editing `current-status.md`.

- Goal: provide a short, public-facing status summary for the current HL7 Europe Imaging Report specification.
- Audience: IG readers and visitors to the Euridice website who need the current release and ballot-reconciliation status.
- Content requirements:
  - State the current build locations for both R4 and R5.
  - Summarize the current ballot-reconciliation progress for the May 2026 ballot.
  - Mention the published 0.1.0 ballot release and the v1.0.0-alpha projectathon snapshot.
  - Explain that the specification will be updated once the European Commission publishes the revised EHDS implementing-act requirements.
  - Keep the wording factual, concise, and suitable for a public landing page.
- Avoid:
  - Internal implementation detail.
  - Unconfirmed dates or release commitments.
  - Long editorial explanations that do not help a reader understand the current status.

## Page Structure Template

Use this structure when rewriting or extending the page:

```markdown
The HL7 Europe and IHE Europe imaging report group has completed processing the ballot comments from the [0.1.0 ballot](https://hl7.eu/fhir/imaging-r5/0.1.0-ballot/). [Brief note about the common source base and the R4/R5 relationship.]

To support testing at the IHE Europe XtEHR projectathon in Brussels at the end of March, a snapshot was published here: [Home - HL7 Europe Imaging Report R4 v1.0.0-alpha](https://hl7.eu/fhir/imaging/xtehr/en/).

The workgroup is currently processing the ballot comments filed in the May 2026 ballot. [Brief note on the current reconciliation status and the path to the 1.0.0 release.]

The current builds of the implementation guides are available at:

* [HL7 Europe Imaging Study Report R4](https://build.fhir.org/ig/hl7-eu/imaging-r4/en/)
* [HL7 Europe Imaging Study Report R5](https://build.fhir.org/ig/hl7-eu/imaging-r5/en/)

The main release snapshot used for testing during the IHE-Projectathon in Brussels is available at [Home - HL7 Europe Imaging Report R4 v1.0.0-alpha](https://hl7.eu/fhir/imaging/xtehr/en/). The published 0.1.0 ballot release remains available at [0.1.0 ballot](https://hl7.eu/fhir/imaging-r5/0.1.0-ballot/).

Note that the European Commission is still discussing the outcome of XtEHR and related projects. [Brief note explaining that the specification will be updated when revised EHDS implementing-act requirements are published and accepted.]
```

Recommended validation reference: `.github/skills/current-status-page-check/SKILL.md`.