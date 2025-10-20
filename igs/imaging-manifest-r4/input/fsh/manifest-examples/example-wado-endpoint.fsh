Instance: Example-WadoEndpoint
InstanceOf: ImWadoRsEndpoint
* status = #active
* name = "Example WADO-RS Endpoint"
// * connectionType
// //R5* connectionType[wadors]
//    = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"

//R5* payload[wadors]
//R5  * type 
* payloadType[wadors] 
   = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"

* payloadMimeType[dicom]
//R5  * mimeType[dicom]           
   = #application/dicom

* payloadMimeType[dicom-octet]
//R5  * mimeType[dicom-octet] 
    = #application/octet-stream

* payloadMimeType[dicom-xml]
//R5  * mimeType[dicom-xml] 
   = #application/dicom+xml

* payloadMimeType[dicom-json]
//R5  * mimeType[dicom-json] 
   = #application/json

* payloadMimeType[image-jpg]
//R5  * mimeType[image-jpg] 
   = #image/jpg

* payloadMimeType[image-gif]
//R5  * mimeType[image-gif] 
   = #image/gif

* payloadMimeType[image-jp2]
//R5  * mimeType[image-jp2] 
   = #image/jp2

* payloadMimeType[image-jph]
//R5  * mimeType[image-jph] 
   = #image/jph

* payloadMimeType[image-jxl]
//R5  * mimeType[image-jxl] = #image/jxl

* payloadMimeType[video-mpeg]
//R5  * mimeType[video-mpeg] = #video/mpeg

* payloadMimeType[video-mp4]
//R5  * mimeType[video-mp4] 
    = #video/mp4

* payloadMimeType[video-H265]
//R5  * mimeType[video-H265] 
    = #video/H265

* payloadMimeType[text-html]
//R5  * mimeType[text-html] = #text/html

* payloadMimeType[text-plain]
//R5  * mimeType[text-plain] 
    = #text/plain

* payloadMimeType[text-xml]
//R5  * mimeType[text-xml] 
    = #text/xml

* payloadMimeType[text-rtf]
//R5  * mimeType[text-rtf] 
    = #text/rtf

* payloadMimeType[application-pdf]
//R5  * mimeType[application-pdf] 
      = #application/pdf

* address = "http://example.org/wado-rs/endpoint"
