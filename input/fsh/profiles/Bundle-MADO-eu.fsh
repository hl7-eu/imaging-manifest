Profile: EuMadoBundle
Parent: MadoFhirBundle
Title: "MADO EU FHIR Imaging Study Manifest Bundle"
Description: "This profile refines the [[[MadoFhirBundle]]] with EU specific elements for the MADO EU FHIR Imaging Study Manifest. It includes the necessary resources and rules to represent the imaging study manifest in compliance with the MADO specifications."  
* insert SetFmmAndStatusRule( 1, draft )

* entry[composition]
  * resource only EuMadoComposition
* entry[imaging-study]
  * resource only EuMadoImagingStudy
* entry[patient]
  * resource only EuMadoPatient
* entry[requested-procedure]
  * resource only EuMadoRequestedProcedure