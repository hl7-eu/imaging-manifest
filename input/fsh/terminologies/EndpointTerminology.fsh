CodeSystem: Hl7EuImagingEndpointTerminologyCodeSystem
Id: codesystem-endpoint-terminology
Title: "CodeSystem for terminology used in Endpoint resources in the EU Imaging IG."
Description: "This code system defines various codes used to define ValueSets for Endpoints within the HL7-EU imaging IG."
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^experimental = false
* ^hierarchyMeaning = #is-a

* #connection-type "Endpoint connection type"  "The type of connection that the endpoint supports."
  * #ihe-iid       "IHE IID endpoint"          "IHE IID endpoint connection type."
  * #ihe-xcwado    "IHE XC-WADO endpoint"      "IHE XC WADO endpoint connection type."
  
// ValueSet:   ImWadoMimeTypes
// Id:	        im-wado-mime-types
// Title:	    "DICOM WADO mime types"
// Description:   """The DICOM WADO specification supports many different mime-types listed in this ValueSet."""
// * ^experimental = false
// * http://hl7.org/fhir/ValueSet/mimetypes#application/dicom
// * http://hl7.org/fhir/ValueSet/mimetypes#application/octet-stream
// * http://hl7.org/fhir/ValueSet/mimetypes#application/dicom+xml
// * http://hl7.org/fhir/ValueSet/mimetypes#application/json
// * http://hl7.org/fhir/ValueSet/mimetypes#image/jpg
// * http://hl7.org/fhir/ValueSet/mimetypes#image/gif
// * http://hl7.org/fhir/ValueSet/mimetypes#image/jp2
// * http://hl7.org/fhir/ValueSet/mimetypes#image/jph
// * http://hl7.org/fhir/ValueSet/mimetypes#image/jxl
// * http://hl7.org/fhir/ValueSet/mimetypes#video/mpeg
// * http://hl7.org/fhir/ValueSet/mimetypes#video/mp4
// * http://hl7.org/fhir/ValueSet/mimetypes#video/H265
// * http://hl7.org/fhir/ValueSet/mimetypes#text/html
// * http://hl7.org/fhir/ValueSet/mimetypes#text/plain
// * http://hl7.org/fhir/ValueSet/mimetypes#text/xml
// * http://hl7.org/fhir/ValueSet/mimetypes#text/rtf
// * http://hl7.org/fhir/ValueSet/mimetypes#application/pdf

