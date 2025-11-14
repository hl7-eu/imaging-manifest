Profile: ImKeyImageImagingSelection
Parent: ImImagingSelection
Title: "ImagingSelection: Key image"
Description: "Key images represented as an ImagingSelection, it refers to minimal 1 instance."
* insert SetFmmAndStatusRule( 1, draft )

* extension contains 
    $artifact-title-url            named title 0..1 and
    $artifact-description-url      named description 0..1 and 
    $artifact-related-artifact-url named kin-instance 0..1
* extension[title] 
  * ^short = "Key image title"
  * ^definition = "The title of the key image object"
* extension[description] 
  * ^short = "Key Image description"
  * ^definition = "The description of the key image"
* extension[kin-instance] 
  * ^short = "KIN"
  * ^definition = "Optional reference to the instance storing the KIN"
  * valueRelatedArtifact 1..1
    * type = #derived-from
    * document 0..0
//R4    * resource 1..1
//R4    * resource only Canonical(http://hl7.org/fhir/4.0/StructureDefinition/R5-ImagingSelection-for-R4)
    * resource 0..0
    * resourceReference 1..1
    * resourceReference only Reference(ImagingSelection)

// code
// //R4* extension[ImagingSelection].extension[code].valueCodeableConcept from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_7010.html (extensible)
//R4* extension[code].valueCodeableConcept from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_7010.html (extensible)
* code from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_7010.html (extensible)

// category
//R4* extension[ImagingSelection].extension[category] 1..* 
//R4* extension[ImagingSelection].extension[category] contains key-image 1..1 
//R4* extension[ImagingSelection].extension[category][key-image].valueCodeableConcept = $loinc#55113-5 // "Key Images

* category 
  * insert SliceElement( #value, $this )
* category contains key-image 1..1 
* category[key-image] = $loinc#55113-5 // "Key Images

// performer
//R4* extension[ImagingSelection].extension[performer] contains performer 0..1 and device 0..1
//R4* extension[ImagingSelection].extension[performer][performer].valueReference only Reference( PractitionerRole or Practitioner )
//R4* extension[ImagingSelection].extension[performer][device].valueReference only Reference( ImImagingDevice )

* performer
  * insert SliceElement( #type, actor )
* performer contains performer 0..1 and device 0..1
* performer[performer]
  * actor only Reference( PractitionerRole or Practitioner )
* performer[device]
  * actor only Reference( ImImagingDevice )
// * study 1..1

// Series UID and Instance UID
//R4* extension[ImagingSelection].extension[seriesUid] 1..1
//R4* extension[ImagingSelection].extension[seriesUid].value[x] 1..1
* seriesUid 1..1

//R4* extension[ImagingSelection].extension[instance] 1..*
//R4* extension[ImagingSelection].extension[instance].extension[uid].value[x] 1..1
* instance 1..*
  * uid 1..1



// Profile: KinRelatedArtifact
// Parent:  RelatedArtifact
// Title:   "Related artifact pointing at source KIN object"
// Description: ""
// // * type = #derived-from
