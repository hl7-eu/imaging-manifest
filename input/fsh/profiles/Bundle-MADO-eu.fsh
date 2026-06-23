Profile: EuMadoBundle
Parent: MadoFhirBundle
Title: "MADO EU FHIR Imaging Study Manifest Bundle"
Description: "This profile refines the [[[MadoFhirBundle]]] with EU specific elements for the MADO EU FHIR Imaging Study Manifest. It includes the necessary resources and rules to represent the imaging study manifest in compliance with the MADO specifications."  
* insert SetFmmAndStatusRule( 1, draft )
* identifier
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* timestamp
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* entry[composition]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
  * resource only EuMadoComposition
* entry[imaging-study]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
  * resource only EuMadoImagingStudy
* entry[patient]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
  * resource only EuMadoPatient
* entry[requested-procedure]
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO." )
  * resource only EuMadoRequestedProcedure
* entry[creator]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* entry[creator-organization]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* entry[wado-endpoint]
  * insert setProducerObligation( #SHALL:populate-if-known, "Required by MADO" )
* entry[web-endpoint]
  * insert setProducerObligation( #SHALL:populate-if-known, "Required by MADO" )
  * resource only EuMadoWebViewerEndpoint
