{% include variable-definitions.md %}

This page summarizes the functional requirements addressed by this implementation guide.
The guide constrains and extends {{iheMado}} with EU-specific requirements and content so
that the manifest can be used consistently in the European interoperability context.

### EU-specific requirements

This implementation guide is intended to:

* Align with the [EU Health Data API](https://build.fhir.org/ig/euridice-org/eu-health-data-api/en/);
* Support the Xt-EHR requirements for ImagingStudy and related EHDS imaging concepts;
* Provide a mapping between the Xt-EHR logical model and the FHIR artifacts in this guide;
* Stay compatible with EU-core profiles where EU-core requirements apply;
* Mandate the presence of the anatomical-region extension on [[[EuMadoImagingStudy]]] and make the anatomical region value set a `required` binding.

### Delta relative to IHE MADO

Compared with {{iheMado}}, this implementation guide introduces the following EU-specific delta:

* It adds traceability from the FHIR artifacts to Xt-EHR logical model elements (see [Xt-EHR Medical Images](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/en/overview-medicalimages.html)) and related actor obligations.
* It refines {{iheMado}} resources to EU-specific profiles, including compatibility with EU-core where applicable.
* It publishes explicit Xt-EHR mapping content for the EHDS logical model to FHIR and DICOM representations used in this guide.
* It strengthens anatomical region requirements by making the extension mandatory on the EU ImagingStudy profile and binding it to a required value set.

### Requirements realized in this guide

The current implementation realizes these requirements in the following way:

* The guide declares alignment with the European health-data interoperability context and references the EU Health Data API as the external framework this specification should fit into.
* The [XtEHR Mapping](xtehr-mapping.html) page documents how Xt-EHR logical model elements are mapped to the FHIR profiles and DICOM data carried by this guide.
* The [[[EuMadoImagingStudy]]] profile adds EHDS/Xt-EHR traceability and obligations on key elements such as subject, modality, body site, series metadata, and endpoints.
* The [[[EuMadoPatient]]] profile declares compliance with the EU-core patient profile, providing EU-core compatibility for patient data carried in the manifest.
* The [[[EuMadoImagingStudy]]] profile requires `extension[anatomical-region] 1..*` and binds its value to [ValueSetAnatomicalRegion] with required strength.

### Summary

In short, this implementation guide is not a generic restatement of {{iheMado}}. It is the
EU-specific realization of MADO for the imaging-manifest use case, with added alignment to
the EU Health Data API, support for Xt-EHR ImagingStudy requirements, explicit Xt-EHR-to-FHIR
mapping, EU-core compatibility, and stricter anatomical-region semantics.
