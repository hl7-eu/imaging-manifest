Profile: EuMadoWebViewerEndpoint
Parent: MadoWebViewerEndpoint
Title: "EU MADO Web Viewer Endpoint"
Description: """
This profile refines the [MadoWebViewerEndpoint](https://profiles.ihe.net/RAD/MADO/StructureDefinition-MadoWebViewerEndpoint.html) with EU specific elements for the MADO EU FHIR Imaging Study Manifest.
It represents the web viewer endpoint in compliance with the MADO specifications.
"""
* insert SetFmmAndStatusRule( 1, draft )

* address MS
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )