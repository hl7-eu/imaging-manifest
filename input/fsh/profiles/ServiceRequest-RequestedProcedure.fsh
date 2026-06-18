Profile: EuMadoRequestedProcedure
Parent: MadoRequestedProcedure
Title: "EU MADO Requested Procedure"
Description: """
Profile on [[[MadoRequestedProcedure]]] that specifies the EU specific elements.
"""
* insert SetFmmAndStatusRule( 1, draft )

// Indicate EU core as additional profile that is complied with
* subject only Reference( EuMadoPatient )
