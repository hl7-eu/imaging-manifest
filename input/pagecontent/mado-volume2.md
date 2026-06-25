# MADO Volume 2

{% include variable-definitions.md %}

This page reflects Volume 2 (Transactions) of the IHE MADO specification and documents the EU-implementation delta for this guide.

Base references:

- IHE MADO Volume 2 (HTML): [MADO Volume 2](https://build.fhir.org/ig/IHE/RAD.MADO/volume-2.html)
- IHE MADO PDF (transactions starting page 32): [IHE RAD Supplement MADO PDF, page 32+](https://build.fhir.org/ig/IHE/RAD.MADO/IHE_RAD_Suppl_MADO.pdf#page=32)

## Delta relative to IHE MADO Volume 2

No normative EU-specific transaction message change has been introduced relative to IHE MADO Volume 2.

The current EU specification keeps the same Volume 2 transaction baseline and emphasizes the following implementation points:

- Reuse of WADO-RS Retrieve transaction behavior as profiled in base MADO Volume 2.
- Conformance focus on retrieval flows required for manifest-based access in EU deployments.
- Alignment with cross-community/cross-border retrieval handling when MADO is grouped with XC-WADO patterns.

## Topics addressed in IHE MADO Volume 2 (PDF page 32+)

1. Update to RAD-107 WADO-RS Retrieve transaction section.
Summary: Volume 2 updates transaction section 4.107 and clarifies profile-specific requirements while reusing the existing WADO-RS Retrieve message framework.

2. WADO-RS message support requirements and interaction model.
Summary: Four request/response pairs are defined in scope: Get Instances, Get Metadata, Get Bulkdata, and Get Rendered Instances.

3. Profile-specific support obligations for those message pairs.
Summary: Base text differentiates Requester/Responder obligations and states profile-specific support constraints, including explicit MADO-profile behavior.

4. MADO profile-specific retrieval requirements.
Summary: For MADO, responder support is centered on Get Instances for study, series, and instance resources, with optional support for frame pixel data resource.

5. Rendered Instances option behavior.
Summary: When Rendered Instances option is claimed, both Requester and Responder have explicit support requirements for rendered instance retrieval, with optional rendered series/frame support.

6. XC-WADO profile relationship.
Summary: Cross-community usage is addressed through XC-WADO, including baseline Get Instances support and optional Get Rendered Instances support.

7. Appendix XA: retrieval-address management beyond a single community.
Summary: Appendix XA explains how retrieve addressing is handled intra-community and cross-community, including Retrieve Location UID and Retrieve URL use.

8. Gateway URL transformation patterns in cross-community flow.
Summary: The appendix provides transaction examples showing how initiating/responding imaging gateways transform and route WADO-RS retrieve URLs between communities.

## EU implementation emphasis

For this EU guide, Volume 2 alignment is maintained as-is with IHE MADO, while implementation guidance prioritizes interoperability in regional, national, and cross-border exchange infrastructures that use the same WADO-RS transaction baseline.
