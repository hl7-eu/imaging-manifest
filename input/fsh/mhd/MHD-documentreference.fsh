Profile: EuMadoFhirDocumentReference
Parent: MadoFhirDocumentReference
Title: "EU MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest"
Description: """
EU MADO profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest.
"""
* insert SetFmmAndStatusRule( 1, draft )
* extension[bodysite].extension[concept]
  * valueCodeableConcept from ValueSetAnatomicalRegion (required)
  * ^short = "The anatomical region of the patient that is the focus of the imaging manifest, concept field is required."
  * ^definition = "This field may be used to provide additional information about the anatomical region of interest for the imaging manifest."
* subject only Reference( EuMadoPatient )
* type = $loinc#18748-4

Profile: EuMadoDicomKosDocumentReference
Parent:  MadoDicomKosDocumentReference
Title: "EU MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests"
Description: """
MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format.

"""
* insert SetFmmAndStatusRule( 1, draft )
* extension[bodysite].extension[concept]
  * valueCodeableConcept from ValueSetAnatomicalRegion (required)
  * ^short = "The anatomical region of the patient that is the focus of the imaging manifest, concept field is required."
  * ^definition = "This field may be used to provide additional information about the anatomical region of interest for the imaging manifest."
* subject only Reference( EuMadoPatient )
* type = $loinc#18748-4
