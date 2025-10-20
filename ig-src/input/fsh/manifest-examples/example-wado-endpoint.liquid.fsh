Instance: Example-WadoEndpoint
InstanceOf: ImWadoRsEndpoint
* status = #active
* name = "Example WADO-RS Endpoint"
// {{R4}}* connectionType
// {{R5}}* connectionType[wadors]
// {{R }}   = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"

{{R5}}* payload[wadors]
{{R5}}  * type 
{{R4}}* payloadType[wadors] 
{{R }}   = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"

{{R4}}* payloadMimeType[dicom]
{{R5}}  * mimeType[dicom]           
{{R }}   = #application/dicom

{{R4}}* payloadMimeType[dicom-octet]
{{R5}}  * mimeType[dicom-octet] 
{{R }}    = #application/octet-stream

{{R4}}* payloadMimeType[dicom-xml]
{{R5}}  * mimeType[dicom-xml] 
{{R }}   = #application/dicom+xml

{{R4}}* payloadMimeType[dicom-json]
{{R5}}  * mimeType[dicom-json] 
{{R }}   = #application/json

{{R4}}* payloadMimeType[image-jpg]
{{R5}}  * mimeType[image-jpg] 
{{R }}   = #image/jpg

{{R4}}* payloadMimeType[image-gif]
{{R5}}  * mimeType[image-gif] 
{{R }}   = #image/gif

{{R4}}* payloadMimeType[image-jp2]
{{R5}}  * mimeType[image-jp2] 
{{R }}   = #image/jp2

{{R4}}* payloadMimeType[image-jph]
{{R5}}  * mimeType[image-jph] 
{{R }}   = #image/jph

{{R4}}* payloadMimeType[image-jxl]
{{R5}}  * mimeType[image-jxl] = #image/jxl

{{R4}}* payloadMimeType[video-mpeg]
{{R5}}  * mimeType[video-mpeg] = #video/mpeg

{{R4}}* payloadMimeType[video-mp4]
{{R5}}  * mimeType[video-mp4] 
{{R }}    = #video/mp4

{{R4}}* payloadMimeType[video-H265]
{{R5}}  * mimeType[video-H265] 
{{R }}    = #video/H265

{{R4}}* payloadMimeType[text-html]
{{R5}}  * mimeType[text-html] = #text/html

{{R4}}* payloadMimeType[text-plain]
{{R5}}  * mimeType[text-plain] 
{{R }}    = #text/plain

{{R4}}* payloadMimeType[text-xml]
{{R5}}  * mimeType[text-xml] 
{{R }}    = #text/xml

{{R4}}* payloadMimeType[text-rtf]
{{R5}}  * mimeType[text-rtf] 
{{R }}    = #text/rtf

{{R4}}* payloadMimeType[application-pdf]
{{R5}}  * mimeType[application-pdf] 
{{R }}      = #application/pdf

* address = "http://example.org/wado-rs/endpoint"
