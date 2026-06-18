{% include fsh-link-references.md %}
{% include variable-definitions.md %}

  <!-- Horizontal banner -->
<div style="border: 2px solid #003366; border-radius: 8px; padding: 1em; margin: 1.5em 0; background-color: #f9f9ff; display: flex; flex-direction: column; align-items: flex-start;">
  
  <!-- Logo -->
  <div style="margin-bottom: 1em;">
    <img src="xtehr-logo.png" alt="XTEHR Logo" style="max-width: 100%; height: 40px;" />
  </div>

  <!-- Acknowledgment text -->
  <div style="text-align: left; width: 100%;">
    <strong>Acknowledgment</strong><br/>
    The development of this Implementation Guide version has been supported by the 
    <strong>Xt-EHR Joint Action</strong>.  
    Xt-EHR provided expertise, alignment with European health policy priorities, 
    and validation of specifications to enable consistency with EHDS requirements.
  </div>
</div>

<div markdown="1" class="stu-note">
**IMPORTANT**: MADO is NOT yet recommended for production use.

Profiles released for Trial Implementation by HL7/IHE Europe typically ARE expected to be stable enough for production use; however, this release of this specification is intended for experimental implementation and feedback.

The source of this IG is stored on github [https://github.com/hl7-eu/imaging-manifest](https://github.com/hl7-eu/imaging-manifest).

The content of this implementation guide is discussed HL7 EU calls ([HL7-eu imaging on Confluence](https://confluence.hl7.org/spaces/HEU/pages/321160129/Imaging+meetings)).

This version is based on FHIR R4. A FHIR R5 version will be derived from this ballot version and is expected to be published in the near future.  

Experimental implementation feedback may result in backward incompatible changes to the profile.

{: .grid}

</div>

### Scope

This implementation guide defines the European specific {{iheMado}} specification following the definition in {{ehnImaging}} and refined by {{XtEhrImaging}}, as a DICOM and FHIR model. It defines:
* The structure and contents of FHIR imaging study manifests.
* Mapping between this IG and the Xt-EHR logical models for imaging reports, as functional requirements.
* Example implementations of the defined models for Imaging Study Manifests.
* The relation of this specification with the existing ecosystem, including {{iheMado}}, {{iheRad}}, and {{euHealthDataApi}} specifications.

The specification is to be used in a variety of deployment models, which includes the EHDS use cases: exchange data within healthcare organizations, across nations/regions and cross border information exchange. In all of these use cases it is important that it is compatible with the existing ecosystem.

### Summary of differences

* Update the MADO profiles to use the required EU profiles
* Mapping on the XtEHR model for ImagingStudy
* Requiring anatomical regions with values from the anatomical region valueset.

### Relationship and scope boundaries

This guide is part of the broader European EHDS-aligned interoperability landscape and focuses on the imaging report model and related access patterns. It is designed to be complementary to other EHDS family guides and to remain interoperable with established IHE workflows.

In particular, this guide aligns with {{iheImagingReport}}. The separation between report and manifest is intentional:
* The report communicates the clinician-authored interpretation and supporting clinical content.
* The manifest communicates imaging-study inventory and retrieval context for DICOM access.

This split preserves clinical traceability while avoiding coupling report content to potentially changing image-location endpoints. Historically, report workflows (RIS/EHR-centric) and image-storage workflows (PACS-centric) evolved in different technical stacks, and this guide keeps that separation explicit while keeping both artifacts linkable.

For operational workflows, both directions are expected:
* starting from a report, discover the related manifest;
* starting from a manifest, discover the related report(s).

In both directions, [[[ImagingStudy]]] identifiers such as `StudyInstanceUID` and order-level identifiers such as `AccessionNumber` are key matching anchors.

### Purpose

The goal of this Implementation Guide is to define an European standard for the Imaging Study Manifest to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (EEHRxF).

The development of this implementation guide is promoted by HL7 and IHE Europe under the flag of Euridice, but realized in collaboration with several other European and national organizations and projects. The aspiration of this guide is to be used as basis for European National Guides, the European EHRxF ,and - consequently - by MyHealth@EU for the EU cross-border services.

### Structure

In term of structure of the profile here the skeleton:

1. The volume 1 is the profile overview in term of Actor/Transactions, the overall use case and associated scenarios. Volume 1 alsos state the required and optional transactions, as well as the required/optional grouping.
2. Volume 2 Chapter on the WADO-RS Retrieve Transaction.
3. A volume 3 Chapter on the Manifest content that includes a section A on the DICOM KOS based Manifest, and one section B on the FHIR based Manifest. The section C (for information) would include the mapping of A to B and B from A

### FHIR specific Dependencies

{% include dependency-table-en.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis-en.xhtml %}

### Global Profiles

{% include globals-table-en.xhtml %}

### IP statements

{% include ip-statements-en.xhtml %}

### Authors and Contributors

This guide is the result of a multi stakeholders effort involving different experts from several European countries, industry, projects (e.g. XpanDH, XtEHR) and initiatives (e.g. MyHealth@EU).

The main contributors to this specification are:

|Role                | Name               | 
|--------------------|--------------------|
| Project facilitator| Charles Parisot    |
| Project facilitator| Bas van den Heuvel |
| Project facilitator (retired) | Rick Busbridge     |
| Contributor        | Josh Priebe        |
