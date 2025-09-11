Profile: ImImagingStudy
Parent: ImagingStudy
Title: "ImagingStudy: Manifest Imaging Study"
Description: """ 
This profile represents an imaging study instance.
"""
* insert SetFmmAndStatusRule( 1, draft )
* obeys im-imagingstudy-01

* identifier
  * insert SliceElement( #value, system )
* identifier contains studyInstanceUid 1..1
* identifier[studyInstanceUid] only ImStudyInstanceUidIdentifier

* subject 1..1
* subject only Reference( ImPatient or Device )

// reference to the order that has the Accession Number and including the Accession Number as identifier
* basedOn
  * insert SliceElement( #type, $this )
* basedOn contains imorderaccession 0..1
* insert BasedOnImOrderReference( imorderaccession )

* endpoint 0..*  
  * insert SliceElement( #profile, $this )
* endpoint contains viewer 0..* and iid 0..* and xcwado 0..* and wadors 0..*
* endpoint[viewer] only Reference( ImImageViewerEndpoint )
* endpoint[iid] only Reference( ImIheIidViewerEndpoint )
* endpoint[wadors] only Reference( ImWadoRsEndpoint )
* endpoint[xcwado] only Reference( ImXcWadoEndpoint )

* series
  * performer.function from ImImagingStudyPerformerTypeVS (extensible)
  * performer
    * insert SliceElement( #type, actor )
  * performer contains performer 0..1 and device 0..1 and custodian 0..1
  * performer[performer]
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF
    * actor only Reference( PractitionerRole or Practitioner)
  * performer[custodian]
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST
    * actor only Reference( Organization )
  * performer[device]
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV
    * actor only Reference( ImImagingDevice ) 

  * endpoint 0..*  
    * insert SliceElement( #profile, $this )
  * endpoint contains wadors 0..* and xcwado 0..*
  * endpoint[wadors] only Reference( ImWadoRsEndpoint )
  * endpoint[xcwado] only Reference( ImXcWadoEndpoint )

  * instance
    * extension contains 
      ImImagingStudyInstanceDescription named instance-description 0..1


Extension: ImImagingStudyInstanceDescription
Id: instance-description
Title: "Extension: Instance Description"
Description: "A description of the instance in an ImagingStudy."
Context: ImagingStudy.series.instance
* value[x] only string

Invariant: im-imagingstudy-01
Description: "A DICOM instance UID must start with 'urn:oid:'"
Severity: #warning
Expression: "identifier.where(system='urn:dicom:uid').value.startsWith('urn:oid:')"

