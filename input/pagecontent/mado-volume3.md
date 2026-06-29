{% include variable-definitions.md %}

This page reflects Volume 3 of the MADO specification. This page specifies the delta of this specification related to {{iheMado}} Volume 3.

### Imaging Manifest definition

As is stated in {{iheMado}}, the EU MADO specification supports imaging manifest representation in two complementary formats:

- **FHIR Representation**: Uses FHIR Bundle and related resources (ImagingStudy, Patient, Endpoint) to represent imaging manifest metadata. This format is suitable for modern interoperable systems that support FHIR standards and is aligned with EU Health Data API requirements and Xt-EHR logical models.

- **DICOM KOS Representation**: Uses DICOM Key Object Selection (KOS) to represent imaging manifest information in native DICOM format. This format is particularly suitable for legacy DICOM systems and specialized imaging workflows where DICOM-native representation is required.

#### FHIR Imaging Manifest

All EU FHIR Manifest SHALL follow the base definition of the FHIR Imaging Manifest is defined in [IHE MADO: FHIR Imaging Manifest](https://build.fhir.org/ig/IHE/RAD.MADO/fhir-imaging-manifest.html). In order to comply with the EU speficic requirements, all EU FHIR Imaging ManifestsThe additional EU specific requirements are documented in In addition, the FHIR Imaging Manifest SHALL be based on [[[EuMadoBundle]]] a profile of [[[https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle]]]. 

This base profile refers to other EU specific derivatives of the base FHIR profiles defined in IHE-MADO.

In these profiles, the requirements on the different system actors [[[EuMadoImagingManifestConsumer]]] and [[[EuMadoImagingManifestProducer]]] are expressed as Obligations.

### DICOM KOS Manifest

The base definition of the DICOM KOS Manifest is defined in [IHE MADO: DICOM KOS Manifest](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=41). In addition the following EU specific requirement apply:

* In TID 1602, the `TargetRegion` SHALL use a code from [[[ValueSetAnatomicalRegion]]]

> TBD: What do the XtEHR requirements mean for the DICOM manifest?
> Add table with obligation linked to DICOM

### Manifest Envelopes for IHE-MHD

The base envelop definition is defined in [IHE MADO: Manifest Envelopes for IHE-MHD](https://build.fhir.org/ig/IHE/RAD.MADO/manifest-envelope.html) which are further refined in: [[[EuMadoFhirDocumentReference]]] and [[[EuMadoDicomKosDocumentReference]]]

### Mappings between MADO FHIR and MADO DICOM KOS

The mappings between the MADO FHIR and MADO DICOM KOS format are define in {{iheMado}} in [Mappings between MADO FHIR and MADO DICOM KOS](https://build.fhir.org/ig/IHE/RAD.MADO/mapping.html).
