Profile: EuMadoFhirDocumentReference
Parent: MadoFhirDocumentReference
Title: "EU MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest"
Description: """
EU MADO profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest.
"""
* insert SetFmmAndStatusRule( 1, draft )

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
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* extension[modality]
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* subject only Reference( EuMadoPatient )
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* date
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* author[source-organization] only Reference( EuMadoCreatorOrganization )
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* author[source-device] only Reference( EuMadoCreator )
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

* relatesTo[kos-reference].target only Reference( EuMadoDicomKosDocumentReference )
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* securityLabel
  * insert setProducerObligation( #MAY:able-to-populate, "Required by MADO" )

// EU-MADO obligations on inherited Must Support fields without an existing producer obligation
* identifier[entryUUID]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* author
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )

* relatesTo[kos-reference]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )

* content.attachment.language
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.attachment.creation
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.format
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.period
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.facilityType
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.practiceSetting
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.sourcePatientInfo
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )


Profile: EuMadoDicomKosDocumentReference
Parent:  MadoDicomKosDocumentReference
Title: "EU MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests"
Description: """
MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format.

"""
* insert SetFmmAndStatusRule( 1, draft )
* extension[bodysite]
  * valueCodeableConcept from ValueSetAnatomicalRegion (required)
  * ^short = "The anatomical region of the patient that is the focus of the imaging manifest, concept field is required."
  * ^definition = "This field may be used to provide additional information about the anatomical region of interest for the imaging manifest."
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
* subject only Reference( EuMadoPatient )
* type = $loinc#18748-4
* extension[modality]
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

// EU-MADO obligations on inherited Must Support fields without an existing producer obligation
* identifier
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* identifier[entryUUID]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* type
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* category
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* subject
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* date
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* author
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* author[source-organization]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* author[source-device]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* relatesTo
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* relatesTo[fhir-reference]
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* securityLabel
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.attachment.language
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.attachment.creation
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* content.format
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.period
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.facilityType
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.practiceSetting
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )
* context.sourcePatientInfo
  * insert setProducerObligation( #SHOULD:able-to-populate, "EU-MADO requirement" )

