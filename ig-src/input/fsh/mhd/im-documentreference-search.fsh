// Search Parameters on Request (GET DocumentReference?Param=val)
// Imaging specific on top of https://profiles.ihe.net/ITI/MHD/ITI-67.html

// PracticeSetting (~high level specialty) - Charles’ document here. (same directory as this doc)
// normal HL7 search parameter "setting" https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-setting


// Date Images Acquired = ImagingStudy.started
Instance: DateImagesAcquiredSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* name = "SearchParameter: DateImagesAcquired"
* title = "SearchParameter: DateImagesAcquired"
* status = #active
* experimental = false 
* description = """  
Searches for manifest representing imaging studies that were acquired on a specific date.
"""
* code = #date-image-acquired
* base[+] = #DocumentReference
* type = #date
* multipleAnd = true
* multipleOr = true

// Date Manifest/Report Created = DocumentReference.Date (Bundle.Date/Composition.Date)
Instance: DateManifestCreatedSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* name = "SearchParameter: DateManifestCreated"
* title = "SearchParameter: DateManifestCreated"
* status = #active
* experimental = false 
* description = """  
Searches for manifest created on a specific date.
"""
* code = #date-manifest-created
* base[+] = #DocumentReference
* type = #date
// * multipleAnd = true
// * multipleOr = true

// BodySite / Anatomical Region = DocumentReference.BodySite (ImagingStudy.series.bodySite)
// standard search parameter: bodysite https://hl7.org/fhir/R5/documentreference-search.html#10.2.19

// Modality = DocumentReference.Modality (CID 29, DICOM)
// standard search parameter modality https://hl7.org/fhir/R5/documentreference-search.html#10.2.38

// category - // ClassCode = IHE List. REPORT/IMAGE,... short list, defines format.
// standard search parameter category https://hl7.org/fhir/R5/documentreference-search.html#10.2.21

// Period: DocumentReference.Period

// Roughly encounter date.
// Note: Not required in MHD. 
// (Other MHD generic stuff (patient ID, etc))
// standard search param period https://hl7.org/fhir/R5/documentreference-search.html#10.2.40

///////////////////////////// R5 version of standard IHE-MHD https://profiles.ihe.net/ITI/MHD/SearchParameter-DocumentReference-Creation.json.html
// creation
Instance: DocumentReference-Creation
InstanceOf: SearchParameter
Usage: #definition
* name = "SearchParameter: DocumentReference-Creation"
* title = "SearchParameter: DocumentReference-Creation"
* status = #active
* experimental = false 
* description = "This SearchParameter enables finding DocumentReference by the creation dateTime."
* code = #creation
* base[+] = #DocumentReference
* type = #date
// * multipleAnd = true
// * multipleOr = true
