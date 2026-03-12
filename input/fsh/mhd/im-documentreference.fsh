Profile: EEHRxFMadoIHEmhdKosReference
Parent: MadoDicomKosMinimalDocumentReference
// TODO EehrxfMhdDocumentReference
Title: "EEHRxF MHD DocumentReference Profile for Imaging Reports"
Description: """
Profile for DocumentReference resources used in the EEHRxF context, based on the IHE MHD Minimal DocumentReference profile. This profile is used for the DocumentReference resources that represent imaging manifests using the DICOM KOS format in the EEHRxF context. It includes additional constraints and extensions specific to imaging manifests, such as the type of report, the clinical specialty, and the anatomical region of interest.
"""
* insert SetFmmAndStatusRule( 1, draft )

* insert MhdDocumentReference



Profile: EEHRxFMadoIHEmhdFhirReference
Parent: MadoFhirMinimalDocumentReference
// TODO  EehrxfMhdDocumentReference
Title: "EEHRxF MHD DocumentReference Profile for Imaging Reports"
Description: """
Profile for DocumentReference resources used in the EEHRxF context, based on the IHE MHD Minimal DocumentReference profile. This profile is used for the DocumentReference resources that represent imaging manifests using the FHIR format in the EEHRxF context. It includes additional constraints and extensions specific to imaging manifests, such as the type of report, the clinical specialty, the anatomical region of interest, and the profile of the imaging report.
"""
* insert SetFmmAndStatusRule( 1, draft )

* insert MhdDocumentReference


RuleSet: MhdDocumentReference
// practice setting
* context.practiceSetting ^short = "Clinical specialty (e.g., radiology, laboratory) - SHOULD be used for lab vs imaging differentiation"
//R5* practiceSetting ^short = "Clinical specialty (e.g., radiology, laboratory) - SHOULD be used for lab vs imaging differentiation"

* status 1..1

// subject
* subject 1..1
* subject only Reference( $EuPatient ) 

// date
* date 1..1

* category 1..1
  * coding
    * insert SliceElement( #value, $this )
  * coding contains priority-area 1..1
  * coding[priority-area] = http://hl7.eu/fhir/eu-health-data-api/CodeSystem/eehrxf-document-priority-category-cs#Medical-Imaging

* type 1..1
  * ^short = "Type of Imaging Diagnostic Report"
  * ^definition = "Defines the document type, it is recommended to take this from the suggested LOINC set. It should correspond with the value on DiagnosticReport.code."
  * coding
    * insert SliceElement( #value, $this )
  * coding contains imaging-manifest 1..1 
  * coding[imaging-manifest] = $loinc#18748-4
  
* custodian only Reference(OrganizationEu)
  * ^short = "Organization that manages the Imaging Report"
