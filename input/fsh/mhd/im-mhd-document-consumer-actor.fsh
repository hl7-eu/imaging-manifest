Instance: ImmMhdDocumentResponder
InstanceOf: ActorDefinition
Title: "MHD Imaging Study Manifest Responder"
Description: "The Document Responder responds with SubmissionSet, Folder, and DocumentReference metadata in response to a search request, and responds with documents in response to a retrieve request, from a Document Consumer."
Usage: #definition
* name = "IHE_EU_MHD_IMM_DocumentResponder"
* title = "Imaging Manifest Document Responser (server)"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* description = "The IHE-MHD - Imaging Manifest Document Responder (server)."
* type = #system
* capabilities[+] = Canonical(ImmMhdDocumentConsumerCapabilityStatement)
* derivedFrom[+] = Canonical(MhdDocumentResponder)

Instance: ImmMhdDocumentConsumerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "MHD Document Consumer Capability Statement"
Description: "The Document Consumer Capability Statement for the MHD Document Responder."
Usage: #definition
* url = "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.IM.MANIFEST.DocumentConsumer"
* name = "IHE_EU_MHD_IMM_DocumentConsumerCapabilityStatement"
* title = "Imaging Manifest Document Consumer Capability Statement"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* description = "The IHE-MHD - Document Consumer Capability Statement."
* kind = #Requirements
* fhirVersion = #5.0.0
* date = 2025-08-25
* format[0] = #application/fhir+xml
* format[1] = #application/fhir+json
* imports[+] = Canonical( MhdDocumentConsumerCapabilityStatement)
* rest
  * mode = #server
  * security.description =  "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
  * resource[+]
    * type = #DocumentReference
    // * profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Query.Minimal.DocumentReference"
    * interaction[+]
      * code = #read
      * code = #search-type
    * searchParam[+]
      * name = "modality"
      * definition = Canonical( ImModalitySearchParameter )
      * type = #code
      * documentation = "Modality of a series in the study."
    * searchParam[+]
      * name = "anatomical-region"
      * definition = Canonical( AnatomicalRegionSearchParameter )
      * type = #token
      * documentation = "Anatomical region of the study."
    * searchParam[+]
      * name = "study-instance-uid"
      * definition = Canonical( StudyInstanceUidSearchParameter )
      * type = #url
      * documentation = "Study Instance UID of the study."
    * searchParam[+]
      * name = "accession-number"
      * definition = Canonical( AccessionNumberSearchParameter )
      * type = #url
      * documentation = "Accession Number of the study."

Instance: ImModalitySearchParameter
InstanceOf: SearchParameter
Title: "Modality Search Parameter"
Description: "Search parameter for modality in Imaging Manifest DocumentReference."
Usage: #definition
* url = "http://hl7.eu/fhir/imaging-manifest-r5/SearchParameter/DocumentReference-modality"
* name = "DocumentReference-modality"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* date = 2025-08-25
* code = #modality
* type = #token
* base[0] = #DocumentReference
* expression = "DocumentReference.modality"
* multipleOr = true
* multipleAnd = true

Instance: AnatomicalRegionSearchParameter
InstanceOf: SearchParameter
Title: "AnatomicalRegion Search Parameter"
Description: "Search parameter for Anatomical Region in Imaging Manifest DocumentReference."
Usage: #definition
* url = "http://hl7.eu/fhir/imaging-manifest-r5/SearchParameter/DocumentReference-anatomical-region"
* name = "DocumentReference-anatomical-region"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* date = 2025-08-25
* code = #anatomical-region
* type = #token
* base[0] = #DocumentReference
* expression = "DocumentReference.bodySite"
* multipleOr = true
* multipleAnd = true

Instance: StudyInstanceUidSearchParameter
InstanceOf: SearchParameter
Title: "StudyInstanceUID Search Parameter"
Description: "Search parameter for StudyInstanceUID in Imaging Manifest DocumentReference."
Usage: #definition
* url = "http://hl7.eu/fhir/imaging-manifest-r5/SearchParameter/DocumentReference-study-instance-uid"
* name = "DocumentReference-study-instance-uid"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* date = 2025-08-25
* code = #study-instance-uid
* type = #url
* base[0] = #DocumentReference
* expression = "DocumentReference.identifier.where(system = 'urn:dicom:uid').value"
* multipleOr = true
* multipleAnd = true

Instance: AccessionNumberSearchParameter
InstanceOf: SearchParameter
Title: "AccessionNumber Search Parameter"
Description: "Search parameter for AccessionNumber in Imaging Manifest DocumentReference."
Usage: #definition
* url = "http://hl7.eu/fhir/imaging-manifest-r5/SearchParameter/DocumentReference-accession-number"
* name = "DocumentReference-accession-number"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* date = 2025-08-25
* code = #accession-number
* type = #url
* base[0] = #DocumentReference
* expression = "DocumentReference.basedOn.identifier.where(type = 'ASN').value"
* multipleOr = true
* multipleAnd = true

Instance: OrderIdentifierSearchParameter
InstanceOf: SearchParameter
Title: "OrderIdentifier Search Parameter"
Description: "Search parameter for OrderIdentifier in Imaging Manifest DocumentReference."
Usage: #definition
* url = "http://hl7.eu/fhir/imaging-manifest-r5/SearchParameter/DocumentReference-order-identifier"
* name = "DocumentReference-order-identifier"
* status = #draft
* experimental = false
* publisher = "HL7 Europe"
* date = 2025-08-25
* code = #accession-number
* type = #token
* base[0] = #DocumentReference
* expression = "DocumentReference.basedOn.identifier.where(type != 'ASN').value"
* multipleOr = true
* multipleAnd = true

