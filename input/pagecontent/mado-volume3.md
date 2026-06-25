# MADO Volume 3

{% include variable-definitions.md %}

This page reflects Volume 3 of the MADO specification.

All the requirements of the base {{iheMado}} spec apply with the additional requirements indicated in the sections below.

## FHIR and DICOM Representations

The MADO specification supports imaging manifest representation in two complementary formats:

- **FHIR Representation**: Uses FHIR Bundle and related resources (ImagingStudy, Patient, Endpoint) to represent imaging manifest metadata. This format is suitable for modern interoperable systems that support FHIR standards and is aligned with EU Health Data API requirements and Xt-EHR logical models.

- **DICOM KOS Representation**: Uses DICOM Key Object Selection (KOS) to represent imaging manifest information in native DICOM format. This format is particularly suitable for legacy DICOM systems and specialized imaging workflows where DICOM-native representation is required.

Both representations are semantically equivalent and can be mapped to each other. The choice between FHIR and DICOM representation depends on the deployment context:

- Use FHIR representation when participating in modern health information exchange ecosystems supporting HL7 FHIR standards, cross-community exchange, and EU interoperability frameworks.
- Use DICOM KOS representation when working with legacy imaging systems, pure DICOM workflows, or when DICOM-native compatibility is a requirement.
- Use both representations when supporting multiple consumer types or when interoperability across FHIR and DICOM domains is needed.

The sections below provide detailed profiles and requirements for each representation format, followed by mapping guidance for semantic equivalence.

### FHIR Imaging Manifest

The base definition of the FHIR Imaging Manifest is defined in [IHE MADO: FHIR Imaging Manifest](https://build.fhir.org/ig/IHE/RAD.MADO/fhir-imaging-manifest.html). In addition, the FHIR Imaging Manifest SHALL be based on [[[EuMadoBundle]]] a profile of [[[https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle]]]. 

### DICOM KOS Manifest

The base definition of the DICOM KOS Manifest is defined in [IHE MADO: DICOM KOS Manifest](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=41). In addition the following EU specific requirement apply:

* In TID 1602, the `TargetRegion` SHALL use a code from [[[ValueSetAnatomicalRegion]]]

> TBD: What do the XtEHR requirements mean for the DICOM manifest?

### Manifest Envelopes for IHE-MHD

The base envelop definition is defined in [IHE MADO: Manifest Envelopes for IHE-MHD](https://build.fhir.org/ig/IHE/RAD.MADO/manifest-envelope.html) which are further refined in: [[[EuMadoFhirDocumentReference]]] and [[[EuMadoDicomKosDocumentReference]]]

### Mappings between MADO FHIR and MADO DICOM KOS

The mappings between the MADO FHIR and MADO DICOM KOS format are define in {{iheMado}} in [Mappings between MADO FHIR and MADO DICOM KOS](https://build.fhir.org/ig/IHE/RAD.MADO/mapping.html).
