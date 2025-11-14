Profile: ImImagingSelection
//R5Parent: ImagingSelection
Parent: http://hl7.org/fhir/4.0/StructureDefinition/R5-ImagingSelection-for-R4
Title: "Imaging Selection"
Description: "Imaging Selection"
* insert SetFmmAndStatusRule( 1, draft )
* subject only Reference( ImPatient )

// derivedFrom
* extension[ImagingSelection]
  * extension[derivedFrom] 1..* // contains derived-study 1..1
//     * insert SliceElement( #profile, [[$this.where(url='derived').valueReference.resolve()]] )
  * extension[derivedFrom] contains derived-study 1..1
  * extension[derivedFrom][derived-study].valueReference only Reference( ImImagingStudy )

//R5* derivedFrom 1..*
//R5  * insert SliceElement( #profile, $this )
//R5* derivedFrom contains study 1..1
//R5* derivedFrom[study] only Reference( ImImagingStudy )

// code
// * extension[ImagingSelection].extension contains ImagingSelectionCodeExtension named code 1..1
// * extension[ImagingSelection].extension[code].value[x] only CodeableConcept
* extension contains ImagingSelectionCodeExtension named code 1..1
* extension[code].value[x] only CodeableConcept


Profile: ImSrInstanceImagingSelection
Parent: ImImagingSelection
Title: "Imaging Selection: DICOM SR instance reference"
Description: "Imaging Selection referring to a DICOM SR instance"
* insert SetFmmAndStatusRule( 1, draft )
* identifier 1..*
  * insert SliceElement( #value, type )
* identifier contains sopInstanceUid 1..1
* identifier[sopInstanceUid] only ImSopInstanceUidIdentifier

* extension[ImagingSelection].extension[studyUid].value[x] 1..1
* extension[ImagingSelection].extension[seriesUid].value[x] 1..1
* extension[ImagingSelection].extension[instance] 1..1
* extension[ImagingSelection].extension[instance].extension[uid].value[x] 1..1
* extension[ImagingSelection].extension[instance].extension[subset].value[x] 0..0
* extension[ImagingSelection].extension[instance].extension[imageRegion2D] 0..0
* extension[ImagingSelection].extension[instance].extension[imageRegion3D] 0..0

//R5* studyUid 1..1
//R5* seriesUid 1..1
//R5* instance 1..1
//R5  * uid 1..1
//R5  * subset 0..0
//R5  * imageRegion2D 0..0
//R5  * imageRegion3D 0..0

Extension: ImagingSelectionCodeExtension
* value[x] only CodeableConcept
