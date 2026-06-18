Profile: EuMadoPatient
Parent: MadoPatient
Title: "EU MADO Patient"
Description: """
Profile on [[[MadoPatient]]] that specifies the EU specific elements.
"""
* insert SetFmmAndStatusRule( 1, draft )

// Indicate EU core as additional profile that is complied with
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = Canonical(http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core)
