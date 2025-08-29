Profile: ImManifestIheMhdDocumentReference
Parent: DocumentReference
// R4 Parent MHD reference
Title: "Manifest DocumentReference for MHD deployments"
Description: """
A DocumentReference profile for the Manifest DocumentReference used in MHD deployments. """
* insert SetFmmAndStatusRule( 1, draft )

* modifierExtension 0..0

* identifier
  * insert SliceElement( #value, system )
* identifier contains entry-uuid 1..1
* identifier[entry-uuid] only IheMhdEntryUUIDIdentifier

* type 1..1 
* type = $loinc#19005-8 // Radiology Imaging study [Impression] (narrative)

* category 1..* 
  * insert SliceElement( #value, $this )
* category contains imaging 1..1 
* category[imaging] = $loinc#18748-4 // Diagnostic imaging study

* type from ImImagingManifestTypesEuVS (preferred) 
  * ^short = "Type of Imaging Manifest"
  * ^definition = "Specifies that it refers to a Imaging Manifest"
  * ^comment = "Corresponds to the type of the Imaging Manifest resource."

* subject 1..1 

* custodian 0..1 
  * identifier 1..1
    * type = MissingDicomTerminology#0040E031  // HomeCommunityId 


* author 
* relatesTo 0..* 
* securityLabel 0..* 
* custodian only Reference(OrganizationEu)
  * ^short = "Organization that manages the Imaging Manifest"
* content 1..*
  * insert SliceElementWithDescription( #value, value, [[Manifest can be KOS or FHIR.]] )
* content contains kos 0..1 and fhir 0..1
* content[kos]
  * attachment 1..1
    * language 
    * creation 
  * profile 1..*
    * insert SliceElement( #value, value )
  * profile contains kos-manifest 1..1 
  * profile[kos-manifest]
    * valueCoding = $dcm#113030 // Manifest
* content[fhir]
  * attachment 1..1
    * language 
    * creation 
  * profile 1..*
    * insert SliceElement( #value, value )
  * profile contains fhir-manifest 1..1 
  * profile[fhir-manifest].valueCanonical = Canonical( ImImagingStudyManifest )

* bodySite 0..*
* modality 1..* 

* obeys im-docref-1

Profile: IheMhdEntryUUIDIdentifier
Parent: Identifier
Title: "Placeholder for IHE MHD Entry UUID Identifier in FHIR R5."
Description: """entryUUID Identifier holding a UUID, based on [IHE-MHD R4](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html).
"""
* insert SetFmmAndStatusRule( 1, draft )
* use = #official
* type 0..1
* system 1..1
* system = "urn:ietf:rfc:3986"

Invariant:   im-docref-1
Description: "At least a KOS or FHIR manifest needs to be present."
Severity:    #error
Expression:  "content.value.subsumes( $dcm#113030) or content.value.endsWith('ImManifestIheMhdDocumentReference')"

