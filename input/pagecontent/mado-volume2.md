{% include variable-definitions.md %}

This page reflects Volume 2 (Transactions) of the IHE MADO specification and documents the EU-implementation delta for this guide. Implementers of this IG SHALL be compliant with {{iheMado}}. As such all requirements specified in IHE-MADO Volume 2 apply to this specification as well.

Base references:

- IHE MADO Volume 2 (HTML): [MADO Volume 2](https://build.fhir.org/ig/IHE/RAD.MADO/volume-2.html)
- IHE MADO PDF (transactions starting page 32): [IHE RAD Supplement MADO PDF, page 32+](https://build.fhir.org/ig/IHE/RAD.MADO/IHE_RAD_Suppl_MADO.pdf#page=32)

## Delta relative to IHE MADO Volume 2

No normative EU-specific change has been introduced relative to IHE MADO Volume 2.

The current EU specification keeps the same Volume 2 transaction baseline and emphasizes the following implementation points:

- Reuse of WADO-RS Retrieve transaction behavior as profiled in base MADO Volume 2.
- Conformance focus on retrieval flows required for manifest-based access in EU deployments.
- Alignment with cross-community/cross-border retrieval handling when MADO is grouped with XC-WADO patterns.
