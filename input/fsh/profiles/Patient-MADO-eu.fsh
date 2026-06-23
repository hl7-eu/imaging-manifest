Profile: EuMadoPatient
Parent: MadoPatient
Title: "EU MADO Patient"
Description: """
Profile on [[[MadoPatient]]] that specifies the EU specific elements.
"""
* insert SetFmmAndStatusRule( 1, draft )

// Indicate EU core as additional profile that is complied with
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = Canonical(http://hl7.eu/fhir/base/StructureDefinition/patient-eu-core)

* identifier
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSPatient.identifier" )
* name 1..* 
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSPatient.name" )
  * use
    * insert setProducerObligation( #SHALL:able-to-populate, "EHDSPatient.name.use" )
  * text
    * insert setProducerObligation( #SHOULD:able-to-populate, "EHDSPatient.name.text" )
  * family
    * insert setProducerObligation( #SHALL:able-to-populate, "EHDSPatient.name.family" )
  * given
    * insert setProducerObligation( #SHALL:able-to-populate, "EHDSPatient.name.given" )
* birthDate
  * insert setProducerObligation( #SHOULD:able-to-populate, "EHDSPatient.birthDate" )
* gender
  * insert setProducerObligation( #SHOULD:able-to-populate, "EHDSPatient.administrativeGender" )

// SOURCE-START: https://github.com/hl7-eu/base/blob/master/input/fsh/profiles/core/patient-eu-core.fsh
* name obeys eu-pat-1  
// SOURCE-END



// SOURCE-START: https://github.com/hl7-eu/base/blob/master/input/fsh/profiles/core/patient-eu-core.fsh
// * obeys eu-pat-1
// ==============================================================
// Invariants
// ips-pat-1 doesn't allow for data-absent-reason on name, 
// but we need it to be allowed for EU core compliance
// ==============================================================
Invariant: eu-pat-1
Description: "given, family, text or a data-absent-reason extension SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
// SOURCE-END