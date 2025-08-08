
Profile: ImManifestIheMhdDocumentReference
// Parent: ImIheMhdDocumentReference
Parent: DocumentReference
Title: "Imaging Manifest DocumentReference for MHD deployments"
Description: """
A DocumentReference profile for the Manifest DocumentReference used in MHD deployments. 
"""
* insert SetFmmAndStatusRule( 1, draft )
* modifierExtension 0..0
* type 1..1 
* type = $loinc#19005-8
* category 1..* 
  * insert SliceElement( #value, $this )
* category contains imaging 1..1 
* category[imaging] = $loinc#18748-4 "Diagnostic imaging study"
* type from ImImagingManifestTypesEuVS (preferred) 
  * ^short = "Type of Imaging Manifest"
  * ^definition = "Specifies that it refers to a Imaging Manifest"
  * ^comment = "Corresponds to the type of the Imaging Manifest resource."
* subject 1..1 
* custodian 0..1 
* author 
* relatesTo 0..* 
* securityLabel 0..* 
* custodian only Reference(OrganizationEu)
  * ^short = "Organization that manages the Imaging Report"
* content 1..1
  * attachment 1..1
    * language 
    * creation 
  * profile 1..*
    * insert SliceElement( #value, value )
  * profile contains hl7eu-imaging-manifest 1..1 
  * profile[hl7eu-imaging-manifest].valueCanonical = Canonical( ImImagingStudyManifest )
* bodySite 0..*
  * insert SliceElement( #value, concept )
* bodySite contains anatomical-region 0..*
* bodySite[anatomical-region] from AnatomicalRegionVS (required)
  * concept 1..1
  * reference 0..0
* modality 1..* 

ValueSet: AnatomicalRegionVS
Id:	      imm-anatomical-region
Title:	  "Anatomical Region Value Set"
Description:   """Atomic Region / Body Part affected."""
* ^experimental = false
* $sct#63337009 // (http://snomed.info/id/63337009) Structuur van onderste gedeelte van romp
* $sct#38266002 // (http://snomed.info/id/38266002) Gehele lichaam in totaliteit
* $sct#53120007 // (http://snomed.info/id/53120007) Structuur van bovenste extremiteit
* $sct#61685007 // (http://snomed.info/id/61685007) Structuur van onderste extremiteit
* $sct#67734004 // (http://snomed.info/id/67734004) Structuur van bovenste deel van romp
* $sct#774007   // (http://snomed.info/id/774007) Structuur van hoofd-halsregio
* $sct#113257007 // (http://snomed.info/id/113257007) Structuur van tractus circulatorius
* $sct#80891009 // (http://snomed.info/id/80891009) Structuur van hart
* $sct#76752008 // (http://snomed.info/id/76752008) Structuur van mamma
* $sct#737561001 // (http://snomed.info/id/737561001)    Structuur van wervelkolom en/of ruggenmerg


// Profile: ImIheMhdDocumentReference
// Parent: DocumentReference
// Title: "R5 DocumentReference for MHD deployments"
// Description: """A placeholder for a DocumentReference profile for the IHE-MHD in R5. """
// * insert SetFmmAndStatusRule( 1, draft )
// * modifierExtension 0..0
// * identifier
//   * insert SliceElement( #value, system )
// * identifier contains entry-uuid 1..1
// * identifier[entry-uuid] only IheMhdEntryUUIDIdentifier
// * status 1..1 
// * content 1..1
//   * attachment 1..1
//     * contentType 1..1



// Profile: IheMhdEntryUUIDIdentifier
// Parent: Identifier
// Title: "Placeholder for IHE MHD Entry UUID Identifier in FHIR R5."
// Description: """entryUUID Identifier holding a UUID, based on [IHE-MHD R4](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html).
// """
// * insert SetFmmAndStatusRule( 1, draft )
// * use = #official
// * type 0..1
// * system 1..1
// * system = "urn:ietf:rfc:3986"
