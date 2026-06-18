Profile: EuMadoComposition
Parent: MadoComposition
Title: "EU MADO Composition"
Description: """
Profile on [[[MadoComposition]]] that specifies the EU specific elements.
"""
* insert SetFmmAndStatusRule( 1, draft )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical =
     Canonical(http://hl7.eu/fhir/base/StructureDefinition/composition-eu-core)

// Indicate EU core as additional profile that is complied with
* subject only Reference( EuMadoPatient )
* event[imaging-study]
  * detail only Reference( EuMadoImagingStudy )
* type = $loinc#18748-4 
