Profile: EuMadoCreatorOrganization
Parent: MadoCreatorOrganization
Title: "EU MADO Creator Organization"
Description: """
This profile refines the [MadoCreatorOrganization](https://profiles.ihe.net/RAD/MADO/StructureDefinition-MadoCreatorOrganization.html) with EU specific elements for the MADO EU FHIR Imaging Study Manifest.
It represents the creator organization in compliance with the MADO specifications.
"""
* insert SetFmmAndStatusRule( 1, draft )

* identifier
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
* name
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
