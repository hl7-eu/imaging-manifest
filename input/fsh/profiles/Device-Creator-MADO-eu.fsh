Profile: EuMadoCreator
Parent: MadoCreator
Title: "EU MADO Creator"
Description: """
This profile refines the [MadoCreator](https://profiles.ihe.net/RAD/MADO/StructureDefinition-MadoCreator.html) with EU specific elements for the MADO EU FHIR Imaging Study Manifest.
It represents the creator device in compliance with the MADO specifications.
"""
* insert SetFmmAndStatusRule( 1, draft )

* manufacturer
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
* type
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
* owner
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
