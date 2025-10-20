Instance: Example-WadoEndpoint
InstanceOf: ImWadoRsEndpoint
* status = #active
* name = "Example WADO-RS Endpoint"
// //R4* connectionType
// * connectionType[wadors]
//    = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"

* payload[wadors]
  * type 
//R4* payloadType[wadors] 
   = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"

//R4* payloadMimeType[dicom]
  * mimeType[dicom]           
   = #application/dicom

//R4* payloadMimeType[dicom-octet]
  * mimeType[dicom-octet] 
    = #application/octet-stream

//R4* payloadMimeType[dicom-xml]
  * mimeType[dicom-xml] 
   = #application/dicom+xml

//R4* payloadMimeType[dicom-json]
  * mimeType[dicom-json] 
   = #application/json

//R4* payloadMimeType[image-jpg]
  * mimeType[image-jpg] 
   = #image/jpg

//R4* payloadMimeType[image-gif]
  * mimeType[image-gif] 
   = #image/gif

//R4* payloadMimeType[image-jp2]
  * mimeType[image-jp2] 
   = #image/jp2

//R4* payloadMimeType[image-jph]
  * mimeType[image-jph] 
   = #image/jph

//R4* payloadMimeType[image-jxl]
  * mimeType[image-jxl] = #image/jxl

//R4* payloadMimeType[video-mpeg]
  * mimeType[video-mpeg] = #video/mpeg

//R4* payloadMimeType[video-mp4]
  * mimeType[video-mp4] 
    = #video/mp4

//R4* payloadMimeType[video-H265]
  * mimeType[video-H265] 
    = #video/H265

//R4* payloadMimeType[text-html]
  * mimeType[text-html] = #text/html

//R4* payloadMimeType[text-plain]
  * mimeType[text-plain] 
    = #text/plain

//R4* payloadMimeType[text-xml]
  * mimeType[text-xml] 
    = #text/xml

//R4* payloadMimeType[text-rtf]
  * mimeType[text-rtf] 
    = #text/rtf

//R4* payloadMimeType[application-pdf]
  * mimeType[application-pdf] 
      = #application/pdf

* address = "http://example.org/wado-rs/endpoint"
