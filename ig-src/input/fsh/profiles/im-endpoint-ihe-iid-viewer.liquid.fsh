Profile: ImIheIidViewerEndpoint
Parent: Endpoint
Title: "EndPoint: IDD Image Viewer"
Description: """
This profile defines a placeholder for an Endpoint for a viewer that can be used to access the study, serie it is present on.
The application is based on [IHE-IID](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_IID.pdf).
"""
* insert SetFmmAndStatusRule( 1, "draft" )

* insert setEndpointConnectionType( iid, [[Hl7EuImagingEndpointTerminologyCodeSystem#ihe-iid "IHE IID endpoint"]] )

// payload type
{{R4}}* payloadType
{{R4}}  * insert SliceElement( #value, coding )
{{R4}}* payloadType contains iid 1..1 
{{R4}}* payloadType[iid].text = "IHE IID"
{{R4}}* payloadMimeType
{{R4}}  * insert SliceElement( #value, $this )
{{R4}}* payloadMimeType  contains 
{{R4}}      text-html 1..1
{{R4}}* payloadMimeType[text-html] = #text/html

{{R5}}* payload 
{{R5}}  * insert SliceElement( #value, type )
{{R5}}* payload contains wadors 1..1 
{{R5}}* payload[wadors]
{{R5}}  * type 1..1 
{{R5}}  * type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
{{R5}}  * mimeType 
{{R5}}    * insert SliceElement( #value, $this )
{{R5}}  * mimeType contains 
{{R5}}      text-html 1..1
{{R5}}  * mimeType[text-html] = #text/html

* address 1..1

