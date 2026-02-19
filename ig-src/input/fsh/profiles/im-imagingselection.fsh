Profile: ImImagingSelection
Parent: ImagingSelection
Title: "Imaging Selection"
Description: "Imaging Selection"
* insert SetFmmAndStatusRule( 1, draft )
* subject only Reference( ImPatient )

* derivedFrom 1..*
  * insert SliceElement( #profile, $this )
* derivedFrom contains study 1..1
* derivedFrom[study] only Reference( ImImagingStudy )


Profile: ImSrInstanceImagingSelection
Parent: ImImagingSelection
Title: "Imaging Selection: DICOM SR instance reference"
Description: "Imaging Selection referring to a DICOM SR instance"
* insert SetFmmAndStatusRule( 1, draft )
* identifier 1..*
  * insert SliceElement( #value, type )
* identifier contains sopInstanceUid 1..1
* identifier[sopInstanceUid] only ImSopInstanceUidIdentifier

* studyUid 1..1
* seriesUid 1..1
* instance 1..1
  * uid 1..1
  * subset 0..0
  * imageRegion2D 0..0
  * imageRegion3D 0..0