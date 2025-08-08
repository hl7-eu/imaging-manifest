// // equivalent to MHD Minimal DocumentReference
// Profile:        MinimalDocumentReference
// Parent:         DocumentReference
// Id:             IHE.MHD.Minimal.DocumentReference
// Title:          "MHD DocumentReference Minimal"
// Description:    "A profile on the DocumentReference resource for MHD with minimal metadata constraints. 
// - MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
// - the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
// - the use defined here is FHIR DocumentReference implementation of the 
// - ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
// - with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)"
// * modifierExtension 0..0
// * masterIdentifier only UniqueIdIdentifier
// * masterIdentifier 1..1
// * identifier 0..* MS
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "use"
// * identifier ^slicing.rules = #open
// * identifier contains entryUUID 0..*
// * identifier[entryUUID] only EntryUUIDIdentifier

// * status 1..1
// * status from DocumentReferenceStats (required)
// * docStatus 0..0
// * type 0..1 MS
// * category 0..1 MS
// * subject 0..1 MS
// * subject only Reference(Patient)
// * date 0..1 MS
// * author 0..* MS
// * authenticator 0..1
// //* custodian 0..0
// * description 0..1
// * securityLabel 0..* MS
// * content 1..1
// * content ^definition = "The document and format referenced."
// * content.attachment.contentType 1..1
// * content.attachment.language 0..1 MS
// * content.attachment.data 0..0
// * content.attachment.url 1..1
// * content.attachment.size 0..1
// * content.attachment.hash 0..1
// * content.attachment.title 0..1
// * content.attachment.creation 0..1 MS
// * content.format 0..1 MS
// * content.format from http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode (preferred)
// //* context.encounter 0..0
// * context.event 0..*
// * context.period 0..1 MS
// * context.facilityType 0..1 MS
// * context.practiceSetting 0..1 MS
// * context.sourcePatientInfo 0..1 MS
// * context.related 0..*
// * relatesTo 0..* MS


// // equivalent to MHD DocumentReference Comprehensive UnContained Option
// Profile:        UnContainedComprehensiveDocumentReference
// Parent:         IHE.MHD.Minimal.DocumentReference
// Id:             IHE.MHD.UnContained.Comprehensive.DocumentReference
// Title:          "MHD DocumentReference Comprehensive UnContained References Option"
// Description:    "A profile on the DocumentReference resource for MHD with Comprehensive Metadata Option but without a requirement for contained author, authenticator, or sourcePatientInfo. 
// - MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
// - the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
// - the use defined here is FHIR DocumentReference implementation of the 
// - ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
// - with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)"
// * type 1..1
// * category 1..1
// * subject 1..1
// * securityLabel 1..*
// * content.attachment.language 1..1
// * content.attachment.creation 1..1
// * content.format 1..1
// * context 1..1
// * context.facilityType 1..1
// * context.practiceSetting 1..1
// * context.sourcePatientInfo 1..1 

// // equivalent to MHD Comprehensive DocumentReference - contained
// Profile:        ComprehensiveDocumentReference
// Parent:         IHE.MHD.UnContained.Comprehensive.DocumentReference
// Id:             IHE.MHD.Comprehensive.DocumentReference
// Title:          "MHD DocumentReference Comprehensive"
// Description:    "A profile on the DocumentReference resource for MHD Comprehensive Option with Contained (not UnContained), compatible with XDS-on-FHIR and XCA use.
// - MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
// - the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
// - the use defined here is FHIR DocumentReference implementation of the 
// - ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
// - with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)"
// * author ^type.aggregation = #contained
// * authenticator ^type.aggregation = #contained
// * context.sourcePatientInfo ^type.aggregation = #contained