Profile: EerxfMadoFhirBundle
Parent: MadoFhirBundle
Title: "EERxF MADO Bundle"
Description: """
Profile for FHIR Bundles used in the MADO context. This profile is used for the FHIR Bundles that 
represent imaging manifests using the DICOM KOS format in the MADO context. It includes additional
constraints and extensions specific to imaging manifests, such as the type of
report, the clinical specialty, and the anatomical region of interest.
"""
* insert SetFmmAndStatusRule( 1, draft )

* entry[imaging-study].resource only EerxfMadoImagingStudy
* entry[patient].resource only $EuPatient
