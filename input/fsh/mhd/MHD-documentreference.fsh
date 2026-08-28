RuleSet: EuMadoMhdDocumentReferenceCommon
* identifier
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* type = $loinc#18748-4
* type
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* category
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* extension[bodysite] 1..*
  * valueCodeableConcept from ValueSetAnatomicalRegion (required)
    * ^short = "The anatomical region of the patient that is the focus of the imaging manifest, concept field is required."
    * ^definition = "This field may be used to provide additional information about the anatomical region of interest for the imaging manifest."
* extension[bodysite]
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* extension[modality] 1..*
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* subject only Reference( EuMadoPatient )
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* date
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* author[source-organization] only Reference( EuMadoCreatorOrganization )
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* author[source-device] only Reference( EuMadoCreator )
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* securityLabel
  * insert setProducerObligation( #MAY:able-to-populate, "Required by MADO" )

// EU-MADO obligations on inherited Must Support fields without an existing producer obligation
* identifier[entryUUID]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* author
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )

* content.attachment.language
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.attachment.creation
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.format
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context MS
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context
  * period
    * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
  * facilityType
    * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
  * practiceSetting
    * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
  * sourcePatientInfo
    * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )


Profile: EuMadoFhirDocumentReference
Parent: MadoFhirDocumentReference
Title: "EU MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest"
Description: """
EU MADO profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest.
"""
* insert SetFmmAndStatusRule( 1, draft )
* insert EuMadoMhdDocumentReferenceCommon

// EU-MADO obligations on inherited Must Support fields without an existing producer obligation
* relatesTo[kos-reference]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* relatesTo[kos-reference].target only Reference( EuMadoDicomKosDocumentReference )
* relatesTo[kos-reference].target MS
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )


Profile: EuMadoDicomKosDocumentReference
Parent:  MadoDicomKosDocumentReference
Title: "EU MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests"
Description: """
MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format.

"""
* insert SetFmmAndStatusRule( 1, draft )
* insert EuMadoMhdDocumentReferenceCommon

// EU-MADO obligations on inherited Must Support fields without an existing producer obligation
* relatesTo
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* relatesTo[fhir-reference]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )

