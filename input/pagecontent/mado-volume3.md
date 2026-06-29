{% include variable-definitions.md %}

This page reflects Volume 3 of the MADO specification. This page specifies the delta of this specification related to {{iheMado}} Volume 3.

### Imaging Manifest definition

As is stated in {{iheMado}}, the EU MADO specification supports imaging manifest representation in two complementary formats:

- **FHIR Representation**: Uses FHIR Bundle and related resources (ImagingStudy, Patient, Endpoint) to represent imaging manifest metadata. This format is suitable for modern interoperable systems that support FHIR standards and is aligned with EU Health Data API requirements and Xt-EHR logical models.

- **DICOM KOS Representation**: Uses DICOM Key Object Selection (KOS) to represent imaging manifest information in native DICOM format. This format is particularly suitable for legacy DICOM systems and specialized imaging workflows where DICOM-native representation is required.

#### FHIR Imaging Manifest

EU FHIR Manifests profile the IHE-MADO FHIR Imaging Manifest with EU specific obligations on the consumer and producer actors. See [FHIR Imaging Manifest](manifest-fhir.html) for details.

### DICOM KOS Manifest

The DICOM KOS Manifest reuses the IHE-MADO KOS definition with EU specific module and template constraints. See [DICOM KOS Manifest](manifest-dicom-kos.html) for details.

### Manifest Envelopes for IHE-MHD

When distributed via {{IHE-MHD}}, manifests are referenced from a DocumentReference envelope. See [Manifest Envelopes for IHE-MHD](manifest-envelop.html) for details.

### Mappings between MADO FHIR and MADO DICOM KOS

The MADO FHIR and DICOM KOS formats can be losslessly mapped to each other. See [Mappings between MADO FHIR and MADO DICOM KOS](eu-mapping.html) for details.
