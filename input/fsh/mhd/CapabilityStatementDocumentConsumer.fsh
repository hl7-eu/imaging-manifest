// // CapabilityStatement for EEHRxF Document Consumer Actor
// // Composite actor grouping MHD Document Consumer + PDQm Consumer + IUA Authorization Client

// Instance: IHE.RAD.MADO.DocumentConsumer
// InstanceOf: CapabilityStatement
// Title: "MADO Document Consumer (client)"
// Usage: #definition
// Description: """
// IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Consumer (client). It extends MHD  [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html). 

// """
// * name = "IHE_RAD_MADO_DocumentConsumer"
// * status = #active
// * experimental = false
// * date = "2026-02-27"
// * publisher = "IHE international"
// * kind = #requirements
// * fhirVersion = #4.0.1
// * format[+] = #json
// * format[+] = #xml
// * imports[+] = "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentConsumer"

// * rest[+]
//   * mode = #client
//   * resource[+]
//     * type = #DocumentReference
//     * searchParam[+]
//       * name = "bodysite"
//       * definition = Canonical( SearchParameterDocumentReferenceBodySite )
//       * type = #token
//       * extension[+]
//         * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//         * valueCode = #SHOULD
//       * documentation = "Anatomical region of the related imaging study"
//     * searchParam[+]
//       * name = "modality"
//       * definition = Canonical( SearchParameterDocumentReferenceModality )
//       * type = #token
//       * extension[+]
//         * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//         * valueCode = #SHOULD
//       * documentation = "Modality of the related imaging study" 
//     * searchParam[+]
//       * name = "study-instance-uid"
//       * definition = Canonical( SearchParameterDocumentReferenceStudyInstanceUid )
//       * type = #token
//       * extension[+]
//         * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//         * valueCode = #SHOULD
//       * documentation = "Study Instance UID of the related imaging study"   
//     * searchParam[+]
//       * name = "accession-number"
//       * definition = Canonical( SearchParameterDocumentReferenceAccessionNumber )
//       * type = #token
//       * extension[+]
//         * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//         * valueCode = #SHOULD
//       * documentation = "Accession Number of the related imaging study"   