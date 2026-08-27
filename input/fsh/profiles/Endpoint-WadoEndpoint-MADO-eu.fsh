Profile: EuMadoWadoEndpoint
Parent: MadoWadoEndpoint
Title: "EU MADO WADO Endpoint"
Description: """
This profile refines the [MadoWadoEndpoint](https://profiles.ihe.net/RAD/MADO/StructureDefinition-MadoWadoEndpoint.html) with EU specific elements for the MADO EU FHIR Imaging Study Manifest.
It represents the WADO endpoint in compliance with the MADO specifications.
"""
* insert SetFmmAndStatusRule( 1, draft )

* extension[retrieve-location-uid]
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
* address
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
