Profile: EuMadoImagingStudy
Parent: MadoImagingStudy
Title: "MADO EU Imaging Study"
Description: 
"""
Profile on [[[MadoImagingStudy]]] that specifies the EU specific elements for the MADO EU FHIR Imaging Study Manifest. It includes the necessary elements to represent the imaging study in compliance with the MADO specifications.
"""
* insert SetFmmAndStatusRule( 1, draft )

* basedOn[order] only Reference( EuMadoRequestedProcedure )
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHOULD:able-to-populate, "EHDSImagingStudy.basedOn" )

* identifier[study-instance-uid]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* procedureCode
  * insert setProducerObligation( #SHALL-populate, "Required by MADO" )
  
* subject only Reference( EuMadoPatient ) 
* subject MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHOULD:able-to-populate, "EHDSImagingStudy.subject" )

* modality
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.modality" )

* extension[anatomical-region] 1..* MS
  * valueCodeableConcept from ValueSetAnatomicalRegion (required) 
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.bodySite" )

* started MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.started" )

* numberOfSeries MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.numberOfSeries" )

* numberOfInstances MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.numberOfInstances" )

* description MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.description" )

* endpoint[webviewer] only Reference( EuMadoWebViewerEndpoint )
* endpoint[webviewer] MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHOULD:able-to-populate, "EHDSImagingStudy.endpoint" )

* series 1..* MS
  * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:populate, "EHDSImagingStudy.series" )

  * specimen
    * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
  
  * uid MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.uid" )

  
  * number MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.number" )
  
  * modality MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.seriesModality" )

  * description MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.description" )

  * numberOfInstances MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.numberOfInstances" )

  * endpoint[wado] MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:populate, "EHDSImagingStudy.endpoint & EHDSImagingStudy.series.seriesEndpoint" )

  * bodySite MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.bodySite" )
  
  * started MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.started" )

  * laterality MS
    * insert setConsumerAndProducerObligation( #SHOULD:process, #SHALL:able-to-populate, "EHDSImagingStudy.series.started" )

  * instance
    * uid
      * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

    * number
      * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

    * sopClass
      * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

    * title
      * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

    * extension[number-of-frames]
      * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )

    * extension[ko-document-title]
      * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
