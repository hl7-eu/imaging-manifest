Profile: ImXcWadoEndpoint
Parent: Endpoint
Title: "Endpoint: IHE-XC-WADO"
Description: """
This profile defines the XC-WADO endpoint for accessing imaging study content.
"""
* insert SetFmmAndStatusRule( 1, "draft" )

* insert setEndpointConnectionType( xcwado,  [[http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-xc-wado "IHE XC-WADO"]] )

// payload type
* payloadType
  * insert SliceElement( #value, type )
* payloadType contains wadors 1..1 
* payloadType[wadors] = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
* payloadMimeType 
  * insert SliceElement( #value, $this )
* payloadMimeType  contains 

//R5* payload 
//R5  * insert SliceElement( #value, type )
//R5* payload contains wadors 1..1 
//R5* payload[wadors]
//R5  * type 1..1 
//R5  * type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
//R5  * mimeType 
//R5    * insert SliceElement( #value, $this )
//R5  * mimeType contains 
      // source dicom
      dicom 1..1 and 
      dicom-octet 1..1 and
      dicom-xml 1..1 and 
      dicom-json 1..1 and 
      // image
      image-jpg 1..1 and
      image-gif 1..1 and
      image-jp2 1..1 and
      image-jph 1..1 and
      image-jxl 1..1 and
      // multiframe
      // image-gif 0..1 and
      // image-jxl 0..1 and
      // video
      video-mpeg 1..1 and
      video-mp4 1..1 and
      video-H265 1..1 and
      // text
      text-html 1..1 and
      text-plain 1..1 and
      text-xml 1..1 and  
      text-rtf 1..1 and
      application-pdf 1..1

//R5  * mimeType[dicom]           = #application/dicom
* payloadMimeType[dicom]      = #application/dicom
    
//R5  * mimeType[dicom-octet]   = #application/octet-stream
* payloadMimeType[dicom-octet]   = #application/octet-stream

//R5  * mimeType[dicom-xml]       = #application/dicom+xml
* payloadMimeType[dicom-xml]       = #application/dicom+xml

//R5  * mimeType[dicom-json]      = #application/json
* payloadMimeType[dicom-json]      = #application/json

//R5  * mimeType[image-jpg]       = #image/jpg
* payloadMimeType[image-jpg]       = #image/jpg

//R5  * mimeType[image-gif]       = #image/gif
* payloadMimeType[image-gif]       = #image/gif

//R5  * mimeType[image-jp2]       = #image/jp2
* payloadMimeType[image-jp2]       = #image/jp2

//R5  * mimeType[image-jph]       = #image/jph
* payloadMimeType[image-jph]       = #image/jph

//R5  * mimeType[image-jxl]       = #image/jxl
* payloadMimeType[image-jxl]       = #image/jxl

//R5  * mimeType[video-mpeg]      = #video/mpeg
* payloadMimeType[video-mpeg]      = #video/mpeg

//R5  * mimeType[video-mp4]       = #video/mp4
* payloadMimeType[video-mp4]       = #video/mp4

//R5  * mimeType[video-H265]      = #video/H265
* payloadMimeType[video-H265]      = #video/H265

//R5  * mimeType[text-html]       = #text/html
* payloadMimeType[text-html]       = #text/html

//R5  * mimeType[text-plain]      = #text/plain
* payloadMimeType[text-plain]      = #text/plain

//R5  * mimeType[text-xml]        = #text/xml
* payloadMimeType[text-xml]        = #text/xml

//R5  * mimeType[text-rtf]        = #text/rtf
* payloadMimeType[text-rtf]        = #text/rtf

//R5  * mimeType[application-pdf] = #application/pdf
* payloadMimeType[application-pdf] = #application/pdf
