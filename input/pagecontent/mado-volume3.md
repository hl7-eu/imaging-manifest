{% include variable-definitions.md %}

This page reflects Volume 3 of the MADO specification.


All the requirement of the base {{iheMado}} spec apply with the additional requirements indicated in the sections below.

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
