Profile: EuMadoBundle
Parent: MadoFhirBundle
Title: "MADO EU FHIR Imaging Study Manifest Bundle"
Description: "This profile refines the [MadoFhirBundle](https://profiles.ihe.net/RAD/MADO/StructureDefinition-MadoFhirBundle.html) with EU specific elements for the MADO EU FHIR Imaging Study Manifest. It includes the necessary resources and rules to represent the imaging study manifest in compliance with the MADO specifications."
* insert SetFmmAndStatusRule( 1, draft )
* type = #document
* identifier 1..1
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* timestamp 1..1
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* total 0..0
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
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
* entry[creator-device]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* entry[creator-organization]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )
* entry[wado-endpoint]
  * insert setProducerObligation( #SHALL:populate-if-known, "Required by MADO" )
* entry[web-endpoint]
  * insert setProducerObligation( #SHALL:populate-if-known, "Required by MADO" )
  * resource only EuMadoWebViewerEndpoint
