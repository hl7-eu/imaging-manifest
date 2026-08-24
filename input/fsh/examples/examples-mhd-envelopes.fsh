// ============================================================================
// IHE-MHD envelope examples
//
// The two MADO MHD DocumentReference profiles that wrap the manifest for
// exchange via IHE-MHD, plus the DICOM KOS Binary referenced by the KOS
// envelope. Together they exercise every slice of:
//   EuMadoFhirDocumentReference       - modality, bodysite, source-organization,
//                                       source-device, content profile,
//                                       kos-reference relatesTo,
//                                       context.related study/accession
//   EuMadoDicomKosDocumentReference   - modality, bodysite, source-organization,
//                                       source-device, fhir-reference relatesTo,
//                                       context.related study/accession
//
// They reference the standalone Patient / Device / Organization and the Bundle
// declared in examples-imaging-manifest.fsh.
// ============================================================================

Alias: $formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode
Alias: $dcmuid = http://dicom.nema.org/resources/ontology/DCMUID

// ============================================================================
// MHD DocumentReference pointing at the FHIR manifest Bundle
// ============================================================================
Instance: docref-fhir-example
InstanceOf: EuMadoFhirDocumentReference
Usage: #example
Title: "MADO EU MHD DocumentReference - FHIR manifest"
Description: "IHE-MHD DocumentReference wrapping the FHIR imaging manifest Bundle for Study A."
* extension[modality].valueCodeableConcept = $dcm#CT
* masterIdentifier.use = #usual
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:11111111-1111-1111-1111-111111110001"
* identifier.use = #usual
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:11111111-1111-1111-1111-111111110001"
* status = #current
* type = $loinc#18748-4 "Diagnostic imaging Study"
* category = $doc-priority#Medical-Imaging "Medical-Imaging"
* subject = Reference(pat-mado-example) "John DOE"
* date = "2026-08-21T14:15:32+02:00"
* author[source-device] = Reference(device-mado-creator) "IHEeu imaging converter"
* author[source-organization] = Reference(org-mado-creator) "Example Hospital"
* description = "Imaging Manifest for Imaging Study: Head CT (urn:oid:1.2.250.1.59.40211.22756022.2.1.101)"
* relatesTo[kos-reference].code = #transforms
* relatesTo[kos-reference].target = Reference(docref-kos-example) "DICOM KOS manifest"
* content.extension[profile].extension[value].valueCanonical = "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle"
* content.attachment.contentType = #application/fhir+json
* content.attachment.language = #en
* content.attachment.url = "Bundle/bundle-mado-example"
* content.attachment.title = "FHIR Imaging Manifest for Imaging Study"
* content.attachment.creation = "2026-08-21T14:15:32+02:00"
* content.format = $formatcode#"urn:ihe:rad:MADO:fhir-manifest:2026"
* context.period.start = "2022-08-22T08:31:17+02:00"
* context.facilityType = $sct#22232009 "Hospital"
* context.practiceSetting = $sct#394914008 "Radiology"
* context.related[study-instance-uid].type = "ImagingStudy"
* context.related[study-instance-uid].identifier.type = $dcm#110180 "Study Instance UID"
* context.related[study-instance-uid].identifier.system = "urn:dicom:uid"
* context.related[study-instance-uid].identifier.value = "urn:oid:1.2.250.1.59.40211.22756022.2.1.101"
* context.related[accession-number].type = "ServiceRequest"
* context.related[accession-number].identifier.type.coding[dcm] = $dcm#121022 "Accession Number"
* context.related[accession-number].identifier.type.coding[v2-0203-coding] = $v2-0203#ACSN "Accession ID"
* context.related[accession-number].identifier.system = "http://example.org/fhir/ris-ids"
* context.related[accession-number].identifier.value = "1731954284869428"

// ============================================================================
// MHD DocumentReference pointing at the DICOM KOS Binary
// ============================================================================
Instance: docref-kos-example
InstanceOf: EuMadoDicomKosDocumentReference
Usage: #example
Title: "MADO EU MHD DocumentReference - DICOM KOS manifest"
Description: "IHE-MHD DocumentReference wrapping the DICOM KOS imaging manifest for Study A."
* extension[modality].valueCodeableConcept = $dcm#CT
* masterIdentifier.use = #usual
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:uuid:11111111-1111-1111-1111-111111110002"
* identifier.use = #usual
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:11111111-1111-1111-1111-111111110002"
* status = #current
* type = $loinc#18748-4 "Diagnostic imaging Study"
* category = $doc-priority#Medical-Imaging "Medical-Imaging"
* subject = Reference(pat-mado-example) "John DOE"
* date = "2026-08-21T14:15:32+02:00"
* author[source-device] = Reference(device-mado-creator) "IHEeu imaging converter"
* author[source-organization] = Reference(org-mado-creator) "Example Hospital"
* description = "DICOM KOS Imaging Manifest for Imaging Study: Head CT (urn:oid:1.2.250.1.59.40211.22756022.2.1.101)"
* relatesTo[fhir-reference].code = #transforms
* relatesTo[fhir-reference].target = Reference(docref-fhir-example) "FHIR manifest"
* content.attachment.contentType = #application/dicom
* content.attachment.language = #en
* content.attachment.url = "Binary/kos-binary-example"
* content.attachment.title = "KOS Imaging Manifest for Imaging Study"
* content.attachment.creation = "2026-08-21T14:15:32+02:00"
* content.format = $dcmuid#"1.2.840.10008.5.1.4.1.1.88.59" "Key Object Selection Document"
* context.period.start = "2022-08-22T08:31:17+02:00"
* context.facilityType = $sct#22232009 "Hospital"
* context.practiceSetting = $sct#394914008 "Radiology"
* context.related[study-instance-uid].type = "ImagingStudy"
* context.related[study-instance-uid].identifier.type = $dcm#110180 "Study Instance UID"
* context.related[study-instance-uid].identifier.system = "urn:dicom:uid"
* context.related[study-instance-uid].identifier.value = "urn:oid:1.2.250.1.59.40211.22756022.2.1.101"
* context.related[accession-number].type = "ServiceRequest"
* context.related[accession-number].identifier.type.coding[dcm] = $dcm#121022 "Accession Number"
* context.related[accession-number].identifier.type.coding[v2-0203-coding] = $v2-0203#ACSN "Accession ID"
* context.related[accession-number].identifier.system = "http://example.org/fhir/ris-ids"
* context.related[accession-number].identifier.value = "1731954284869428"

// ============================================================================
// DICOM KOS Binary referenced by the KOS DocumentReference
// ============================================================================
Instance: kos-binary-example
InstanceOf: Binary
Usage: #example
Title: "MADO EU DICOM KOS Binary"
Description: "Placeholder DICOM Key Object Selection document for the KOS manifest envelope."
* contentType = #application/dicom
* data = "RElDTS1LT1MtcGxhY2Vob2xkZXI="
