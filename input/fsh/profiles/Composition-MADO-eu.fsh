Profile: EuMadoComposition
Parent: MadoComposition
Title: "EU MADO Composition"
Description: """
Profile on [[[MadoComposition]]] that specifies the EU specific elements.
"""
* insert SetFmmAndStatusRule( 1, draft )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical =
     Canonical(http://hl7.eu/fhir/base/StructureDefinition/composition-eu-core)


* text MS
  * insert setProducerObligation( #SHALL:populate, "From IHE-MADO" )
* identifier MS
  * insert setProducerObligation( #SHALL:populate, "From IHE-MADO" )

* type = $loinc#18748-4 
* type MS
  * insert setProducerObligation( #SHALL:able-to-populate, "From IHE-MADO" )

* category MS
  * insert setProducerObligation( #SHOULD:able-to-populate, "From IHE-MADO" )

* title MS
  * insert setProducerObligation( #SHALL:populate, "From IHE-MADO" )

// Indicate EU core as additional profile that is complied with
* subject only Reference( EuMadoPatient )
* subject MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.subject" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.subject" )

* author[source-organization] only Reference( EuMadoCreatorOrganization )
* author[source-organization] MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.author[EHDSOrganization]" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.author[EHDSOrganization]" )

* author[source-device] only Reference( EuMadoCreator )
* author[source-device] MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.author[EHDSDevice]" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.author[EHDSDevice]" )

* custodian MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.custodian" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.custodian" )

* date MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.date" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.date" )

* status MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.status" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.status" )

* language MS
  * insert setConsumerObligation( #SHOULD:process, "EHDSImagingStudy.language" )
  * insert setProducerObligation( #SHALL:able-to-populate, "EHDSImagingStudy.language" )

* event[imaging-study]
  * detail only Reference( EuMadoImagingStudy )
  * insert setProducerObligation( #SHALL:populate, "From IHE-MADO" )

* section MS
  * insert setProducerObligation( #MAY:able-to-populate, "From IHE-MADO" )

* section.text
  * insert setProducerObligation( #SHALL:populate, "From IHE-MADO" )