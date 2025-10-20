Profile: ImImagingSelection
{{R5}}Parent: ImagingSelection
{{R4}}Parent: http://hl7.org/fhir/4.0/StructureDefinition/R5-ImagingSelection-for-R4
Title: "Imaging Selection"
Description: "Imaging Selection"
* insert SetFmmAndStatusRule( 1, draft )
* subject only Reference( ImPatient )

{{R4}}* extension[ImagingSelection]
{{R4}}  * extension[derivedFrom] 1..* // contains derived-study 1..1
// {{R4}}    * insert SliceElement( #profile, [[$this.where(url='derived').valueReference.resolve()]] )
{{R4}}  * extension[derivedFrom] contains derived-study 1..1
{{R4}}  * extension[derivedFrom][derived-study].valueReference only Reference( ImImagingStudy )
{{R4}}* extension[ImagingSelection].extension contains ImagingSelectionCodeExtension named code 1..1
{{R4}}* extension[ImagingSelection].extension[code].value[x] only CodeableConcept
// {{R5}}* derivedFrom 1..*
// {{R4}}  * insert SliceElement( #profile, $this )
// {{R4}}* derivedFrom contains study 1..1
// {{R4}}* derivedFrom[study] only Reference( ImImagingStudy )

{{R5}}* derivedFrom 1..*
{{R5}}  * insert SliceElement( #profile, $this )
{{R5}}* derivedFrom contains study 1..1
{{R5}}* derivedFrom[study] only Reference( ImImagingStudy )


Profile: ImSrInstanceImagingSelection
Parent: ImImagingSelection
Title: "Imaging Selection: DICOM SR instance reference"
Description: "Imaging Selection referring to a DICOM SR instance"
* insert SetFmmAndStatusRule( 1, draft )
* identifier 1..*
  * insert SliceElement( #value, type )
* identifier contains sopInstanceUid 1..1
* identifier[sopInstanceUid] only ImSopInstanceUidIdentifier

{{R4}}* extension[ImagingSelection].extension[studyUid].value[x] 1..1
{{R4}}* extension[ImagingSelection].extension[seriesUid].value[x] 1..1
{{R4}}* extension[ImagingSelection].extension[instance] 1..1
{{R4}}* extension[ImagingSelection].extension[instance].extension[uid].value[x] 1..1
{{R4}}* extension[ImagingSelection].extension[instance].extension[subset].value[x] 0..0
{{R4}}* extension[ImagingSelection].extension[instance].extension[imageRegion2D] 0..0
{{R4}}* extension[ImagingSelection].extension[instance].extension[imageRegion3D] 0..0

{{R5}}* studyUid 1..1
{{R5}}* seriesUid 1..1
{{R5}}* instance 1..1
{{R5}}  * uid 1..1
{{R5}}  * subset 0..0
{{R5}}  * imageRegion2D 0..0
{{R5}}  * imageRegion3D 0..0

{{R4}}Extension: ImagingSelectionCodeExtension
{{R4}}* value[x] only CodeableConcept
