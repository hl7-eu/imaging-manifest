Profile: EuMadoRequestedProcedure
Parent: MadoRequestedProcedure
Title: "EU MADO Requested Procedure"
Description: """
Profile on [MadoRequestedProcedure](https://profiles.ihe.net/RAD/MADO/StructureDefinition-MadoRequestedProcedure.html) that specifies the EU specific elements.
"""
* insert SetFmmAndStatusRule( 1, draft )

// Indicate EU core as additional profile that is complied with
* subject only Reference( EuMadoPatient )

* identifier[accession-number]
  * insert setProducerObligation( #SHALL:populate, "Required by MADO" )

* identifier[placer]
  * insert setProducerObligation( #SHALL:able-to-populate, "Required by MADO" )
