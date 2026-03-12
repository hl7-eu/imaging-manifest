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

**IMPORTANT**:This profile is in the process of being published by IHE-RAD. When IHE-RAD has published the MADO profile, the parts in this specification covered by the IHE-RAD-MADO profile will be removed and replaced to a reference to the IHE-RAD-MADO profile.

This is the 0.2.0-build version of the specification.

The source of this IG is stored on github [https://github.com/hl7-eu/imaging-manifest](https://github.com/hl7-eu/imaging-manifest).

The content of this implementation guide is discussed HL7 EU calls ([HL7-eu imaging on Confluence](https://confluence.hl7.org/spaces/HEU/pages/321160129/Imaging+meetings)).

This version is based on FHIR R4. A FHIR R5 version will be derived from this ballot version and is expected to be published in the near future.  

Experimental implementation feedback may result in backward incompatible changes to the profile.

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
{% include stunote.html text="TBD: to be added."%}


### FHIR specific Dependencies

{% include dependency-table-en.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis-en.xhtml %}

### Global Profiles

{% include globals-table-en.xhtml %}

### IP statements

{% include ip-statements-en.xhtml %}

### Authors and Contributors

Please refer to the [Authors and Contributors](contributors.html) page.
