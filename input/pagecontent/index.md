{% include fsh-link-references.md %}
{% include variable-definitions.md %}

<div markdown="1" class="stu-note">
**IMPORTANT**: MADO is NOT yet recommended for production use.

This is the 0.2.0-build version of the specification. 

Profiles released for Trial Implementation by HL7/IHE Europe typically ARE expected to be stable enough for production use; however, this release of IRA is intended for experimental implementation and feedback.

The source of this IG is stored on github [https://github.com/hl7-eu/imaging-manifest](https://github.com/hl7-eu/imaging-manifest).

The content of this implementation guide is discussed HL7 EU calls ([HL7-eu imaging on Confluence](https://confluence.hl7.org/spaces/HEU/pages/321160129/Imaging+meetings)).
   
This version is based on FHIR R5. A FHIR R4 version will be derived from this ballot version and is expected to be published in the near future.  

Experimental implementation feedback may result in backward incompatible changes to the profile.

Links to FHIRcast throughout this profile will be updated to the final version when the official version is published.

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>
### Scope

This implementation guide specifies imaging study manifest data in the **European** context, as defined in {{ehnImaging}} and refined by {{XtEhrImaging}}, as a DICOM and FHIR model. It defines:
* The structure and contents of a FHIR imaging study manifests.
* Different options for publishing and searching for such manifests.
* Discovery of available mechanisms to access the imaging data.

The specification is to be used in a variety of deployment models, which includes the EHDS use cases: exchange data within healthcare organizations, across nations/regions and cross border information exchange. In all of these use cases it is important that it is compatible with the existing ecosystem.

### Purpose

The goal of this Implementation Guide is to define an European standard for the Imaging Study Manifest to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (EEHRxF).

The development of this implementation guide is promoted by HL7 Europe, but realized in collaboration with several other European and national organizations and projects. The aspiration of this guide is to be used as basis for European National Guides, the European EHRxF ,and - consequently - by MyHealth@EU for the EU cross-border services.

### Structure

In term of structure of the profile here the skeleton:

1. The volume 1 is the profile overview in term of Actor/Transactions, the overall use case and associated scenarios. Volume 1 alsos state the required and optional transactions, as well as the required/optional grouping. 
2. Volume 2 Chapter on the WADO-RS Retrieve Transaction.
3. A volume 3 Chapter on the Manifest content that includes a section A on the DICOM KOS based Manifest, and one section B on the FHIR based Manifest. The section C (for information) would include the mapping of A to B and B from A

### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP statements

{% include ip-statements.xhtml %}

### Authors and Contributors

Please refer to the [Authors and Contributors](contributors.html) page.
