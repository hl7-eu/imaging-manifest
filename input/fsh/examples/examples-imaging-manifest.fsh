// ============================================================================
// EU MADO FHIR Imaging Study Manifest - worked example
//
// A single document Bundle (EuMadoBundle) plus all the inline resources it
// references. Between them these instances exercise every slice defined by the
// EU MADO profiles:
//   EuMadoBundle          - all 8 entry slices
//   EuMadoImagingStudy    - anatomical-region, study-instance-uid, order,
//                           webviewer endpoint, series wado endpoint,
//                           instance number-of-frames + ko-document-title
//   EuMadoComposition     - source-organization, source-device, imaging-study
//   EuMadoRequestedProc.  - accession-number, placer, filler
//   EuMadoWadoEndpoint    - retrieve-location-uid, text-wado payload
//   EuMadoWebViewerEndp.  - type-none payload, html mime type
// ============================================================================

// --- Aliases not already declared in alias-systems.fsh --------------------
Alias: $dicomUIDs = http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs
Alias: $endpoint-connection-type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $endpoint-payload-type = http://terminology.hl7.org/CodeSystem/endpoint-payload-type
Alias: $mado-connection-type = https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoEndpointConnectionTypes
Alias: $mado-device-type = https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoDeviceType
Alias: $doc-priority = http://hl7.eu/fhir/eu-health-data-api/CodeSystem/eehrxf-document-priority-category-cs

// ============================================================================
// Bundle - the manifest document
// ============================================================================
Instance: bundle-mado-example
InstanceOf: EuMadoBundle
Usage: #example
Title: "MADO EU Imaging Manifest - Head CT (Study A)"
Description: "A complete EU MADO FHIR imaging study manifest document Bundle for a Head CT study, wiring together the Composition, ImagingStudy, Patient, RequestedProcedure, creator Device and Organization, and the WADO and web-viewer Endpoints."
* identifier.system = "http://example.org/fhir/document-ids"
* identifier.value = "mado-doc-0001"
* type = #document
* timestamp = "2026-08-21T14:15:32.801+02:00"
* entry[composition].fullUrl = "http://hl7.eu/fhir/imaging-manifest/Composition/composition-mado-example"
* entry[composition].resource = composition-mado-example
* entry[imaging-study].fullUrl = "http://hl7.eu/fhir/imaging-manifest/ImagingStudy/study-mado-example"
* entry[imaging-study].resource = study-mado-example
* entry[patient].fullUrl = "http://hl7.eu/fhir/imaging-manifest/Patient/pat-mado-example"
* entry[patient].resource = pat-mado-example
* entry[requested-procedure].fullUrl = "http://hl7.eu/fhir/imaging-manifest/ServiceRequest/reqproc-mado-example"
* entry[requested-procedure].resource = reqproc-mado-example
* entry[creator].fullUrl = "http://hl7.eu/fhir/imaging-manifest/Device/device-mado-creator"
* entry[creator].resource = device-mado-creator
* entry[creator-organization].fullUrl = "http://hl7.eu/fhir/imaging-manifest/Organization/org-mado-creator"
* entry[creator-organization].resource = org-mado-creator
* entry[wado-endpoint].fullUrl = "http://hl7.eu/fhir/imaging-manifest/Endpoint/endpoint-wado"
* entry[wado-endpoint].resource = endpoint-wado
* entry[web-endpoint].fullUrl = "http://hl7.eu/fhir/imaging-manifest/Endpoint/endpoint-webviewer"
* entry[web-endpoint].resource = endpoint-webviewer

// ============================================================================
// Composition - the document header
// ============================================================================
Instance: composition-mado-example
InstanceOf: EuMadoComposition
Usage: #example
Title: "MADO EU Composition - Head CT"
Description: "Composition header for the Head CT imaging manifest."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Head CT on CT of Head</h1><table><tbody><tr><td><b>Study Instance UID</b></td><td>1.3.6.1.4.1.99999.1.2.1.101</td></tr><tr><td><b>Subject</b></td><td>John DOE</td></tr><tr><td><b>Author</b></td><td>IHEeu imaging converter</td></tr><tr><td><b>Author</b></td><td>Example Hospital</td></tr><tr><td><b>Created</b></td><td>2026-08-21</td></tr><tr><td><b>Type</b></td><td>Diagnostic imaging Study</td></tr><tr><td><b>Category</b></td><td>Medical-Imaging</td></tr><tr><td><b>Study Start</b></td><td>2022-08-22T08:31:17+02:00</td></tr><tr><td><b>Modalities</b></td><td>CT</td></tr><tr><td><b>Anatomical region</b></td><td>Structure of head and/or neck</td></tr><tr><td><b>Accession number</b></td><td>http://example.org/fhir/ris-ids | 2088415396072531</td></tr><tr><td><b>Procedure</b></td><td>Head CT</td></tr><tr><td><b>Number of series</b></td><td>1</td></tr><tr><td><b>Number of instances</b></td><td>2</td></tr></tbody></table></div>"
* identifier.system = "http://example.org/fhir/document-ids"
* identifier.value = "mado-doc-0001"
* status = #final
* type = $loinc#18748-4 "Diagnostic imaging Study"
* category = $doc-priority#Medical-Imaging "Medical-Imaging"
* subject = Reference(pat-mado-example) "John DOE"
* date = "2026-08-21T14:15:32+02:00"
* author[source-device] = Reference(device-mado-creator) "IHEeu imaging converter"
* author[source-organization] = Reference(org-mado-creator) "Example Hospital"
* custodian = Reference(org-mado-creator) "Example Hospital"
* title = "Head CT imaging manifest"
* event[imaging-study].detail = Reference(study-mado-example) "Study A"
* section.title = "Series 1"
* section.text.status = #additional
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr><td><b>Series Id</b></td><td>1.3.6.1.4.1.99999.1.2.2.101.201</td></tr><tr><td><b>Modality</b></td><td>CT</td></tr><tr><td><b>Bodysite</b></td><td>Head</td></tr><tr><td><b>Started</b></td><td>2022-08-22T16:47:58+02:00</td></tr><tr><td><b>Description</b></td><td>Series A1</td></tr><tr><td><b>Number of Instances</b></td><td>2</td></tr><tr><td><b>Endpoint</b></td><td>WADO endpoint: https://example.org/wado-rs</td></tr></tbody></table><p>Instances:</p><ul><li>CT slice 1 &#8212; CT Image Storage &#8212; SOP Instance UID 1.3.6.1.4.1.99999.1.2.3.101.201.31 (instance 1)</li><li>Key Object Selection (Manifest, key image) &#8212; Key Object Selection Document &#8212; SOP Instance UID 1.3.6.1.4.1.99999.1.2.3.101.201.99 (instance 99)</li></ul></div>"

// ============================================================================
// ImagingStudy
// ============================================================================
Instance: study-mado-example
InstanceOf: EuMadoImagingStudy
Usage: #example
Title: "MADO EU Imaging Study - Head CT (Study A)"
Description: "Head CT imaging study with one CT series of two instances."
* extension[anatomical-region].valueCodeableConcept = $sct#774007 "Structure of head and/or neck"
* identifier[study-instance-uid].type = $dcm#110180 "Study Instance UID"
* identifier[study-instance-uid].system = "urn:dicom:uid"
* identifier[study-instance-uid].value = "urn:oid:1.3.6.1.4.1.99999.1.2.1.101"
* status = #available
* modality = $dcm#CT
* subject = Reference(pat-mado-example) "John DOE"
* started = "2022-08-22T08:31:17+02:00"
* basedOn[order] = Reference(reqproc-mado-example) "Requested Procedure: Head CT"
// MADO types basedOn[order] with MadoReferencedAccessionNumberIdentifier, which requires Reference.identifier (the accession number)
* basedOn[order].identifier.type.coding[dcm] = $dcm#121022 "Accession Number"
* basedOn[order].identifier.type.coding[v2-0203-coding] = $v2-0203#ACSN "Accession ID"
* basedOn[order].identifier.system = "http://example.org/fhir/ris-ids"
* basedOn[order].identifier.value = "2088415396072531"
* numberOfSeries = 1
* numberOfInstances = 2
* procedureCode.text = "Head CT"
* description = "Study A"
* endpoint[webviewer] = Reference(endpoint-webviewer) "Web viewer endpoint"
* series.uid = "1.3.6.1.4.1.99999.1.2.2.101.201"
* series.number = 1
* series.modality = $dcm#CT
* series.description = "Series A1"
* series.numberOfInstances = 2
* series.endpoint[wado] = Reference(endpoint-wado) "WADO endpoint"
* series.bodySite = $sct#69536005 "Head"
* series.started = "2022-08-22T16:47:58+02:00"
* series.instance[0].uid = "1.3.6.1.4.1.99999.1.2.3.101.201.31"
* series.instance[0].sopClass = $dicomUIDs#"urn:oid:1.2.840.10008.5.1.4.1.1.2" "CT Image Storage"
* series.instance[0].number = 1
* series.instance[0].title = "CT slice 1"
* series.instance[0].extension[number-of-frames].valueInteger = 1
* series.instance[1].uid = "1.3.6.1.4.1.99999.1.2.3.101.201.99"
* series.instance[1].sopClass = $dicomUIDs#"urn:oid:1.2.840.10008.5.1.4.1.1.88.59" "Key Object Selection Document"
* series.instance[1].number = 99
* series.instance[1].title = "Key Object Selection"
* series.instance[1].extension[ko-document-title].valueCodeableConcept = $dcm#113030 "Manifest"

// ============================================================================
// Patient
// ============================================================================
Instance: pat-mado-example
InstanceOf: EuMadoPatient
Usage: #example
Title: "MADO EU Patient - John DOE"
Description: "Subject of the Head CT imaging manifest."
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record number"
* identifier.system = "http://example.org/fhir/mrn-ids"
* identifier.value = "UV59569735"
* name.use = #official
* name.text = "John DOE"
* name.family = "DOE"
* name.given = "John"
* gender = #male
* birthDate = "1977-05-30"

// ============================================================================
// RequestedProcedure (ServiceRequest) - exercises all three identifier slices
// ============================================================================
Instance: reqproc-mado-example
InstanceOf: EuMadoRequestedProcedure
Usage: #example
Title: "MADO EU Requested Procedure - Head CT"
Description: "Requested procedure carrying accession-number, placer and filler identifiers."
* status = #completed
* intent = #order
* subject = Reference(pat-mado-example) "John DOE"
* identifier[accession-number].type.coding[dcm] = $dcm#121022 "Accession Number"
* identifier[accession-number].type.coding[v2-0203-coding] = $v2-0203#ACSN "Accession ID"
* identifier[accession-number].system = "http://example.org/fhir/ris-ids"
* identifier[accession-number].value = "2088415396072531"
* identifier[placer].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placer].system = "http://example.org/fhir/placer-ids"
* identifier[placer].value = "PLACER-0001"
* identifier[filler].type = $v2-0203#FILL "Filler Identifier"
* identifier[filler].system = "http://example.org/fhir/filler-ids"
* identifier[filler].value = "FILLER-0001"
* code.text = "Head CT"

// ============================================================================
// Creator Device
// ============================================================================
Instance: device-mado-creator
InstanceOf: EuMadoCreator
Usage: #example
Title: "MADO EU Creator Device"
Description: "Device that created the imaging manifest."
* type.coding = $mado-device-type#mado-creator "MADO Creator"
* manufacturer = "IHE Europe"
* owner = Reference(org-mado-creator) "Example Hospital"

// ============================================================================
// Creator Organization
// ============================================================================
Instance: org-mado-creator
InstanceOf: EuMadoCreatorOrganization
Usage: #example
Title: "MADO EU Creator Organization"
Description: "Organization that created / holds the imaging manifest."
* identifier.system = "http://example.org/fhir/organization-ids"
* identifier.value = "EXAMPLE-HOSP"
* name = "Example Hospital"

// ============================================================================
// WADO Endpoint - retrieve-location-uid + text-wado payload
// ============================================================================
Instance: endpoint-wado
InstanceOf: EuMadoWadoEndpoint
Usage: #example
Title: "MADO EU WADO Endpoint"
Description: "DICOM WADO-RS retrieval endpoint for the study's instances."
* extension[retrieve-location-uid].valueString = "1.3.6.1.4.1.99999.1.2.4.101"
* status = #active
* connectionType = $endpoint-connection-type#dicom-wado-rs
* payloadType[text-wado].coding[none] = $endpoint-payload-type#none
* payloadType[text-wado].text = "DICOM WADO-RS"
* address = "https://example.org/wado-rs"

// ============================================================================
// Web Viewer Endpoint - type-none payload + html mime type
// ============================================================================
Instance: endpoint-webviewer
InstanceOf: EuMadoWebViewerEndpoint
Usage: #example
Title: "MADO EU Web Viewer Endpoint"
Description: "Interactive web viewer entry point for the study."
* status = #active
* connectionType = $mado-connection-type#web-viewer
* payloadType[type-none].coding[none] = $endpoint-payload-type#none
* payloadMimeType[html] = #text/html
* address = "https://example.org/viewer?study=1.3.6.1.4.1.99999.1.2.1.101"
