Profile: EerxfMadoImagingStudy
Parent: MadoImagingStudy
Title: "EERxF MADO Imaging Study"
Description: """
Profile for ImagingStudy resources used in the MADO context. This profile is used for the ImagingStudy resources that represent the imaging studies in the MADO context. It includes additional
constraints and extensions specific to the MADO context, such as the type of imaging study, the clinical specialty, and the anatomical region of interest.
"""
* insert SetFmmAndStatusRule( 1, draft )
* subject 1..1
* subject only Reference( $EuPatient )

* series
  * performer.function from ImagingStudyEuImagingPerformerTypeVS (extensible)
  * performer
    * insert SliceElement( #value, function )
  * performer contains performer 0..1 and device 0..1 and custodian 0..1 and organization 0..1
  * performer[performer]
    * ^short = "The practitioner/device/organization that preformed the imaging."
    * ^definition = "The performer of the series. Device or Organization SHALL only be used when a practitioner is not involved in the imaging acquisition or the practitioner is not known."
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF
    * actor only Reference( $EuPractitionerRole or $EuDevice or $EuOrganization )
  * performer[custodian]
    * ^short = "The custodian of the report."
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST
    * actor only Reference( $EuOrganization )
  * performer[device]
    * ^short = "The device that did the imaging."
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV
    * actor only Reference( DeviceEuImaging )
  * performer[organization]
    * ^short = "The organization representing the location where the imaging was performed."
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#LOC
    * actor only Reference( $EuOrganization ) 
  * instance
    * extension contains 
      ImagingStudyEuImagingInstanceDescription named instance-description 0..1 