Profile: ImXcWadoEndpoint
Parent: Endpoint
Title: "Endpoint: IHE-XC-WADO"
Description: """
This profile defines the XC-WADO endpoint for accessing imaging study content.
"""
* insert SetFmmAndStatusRule( 1, "draft" )

* insert setEndpointConnectionType( xcwado,  [[http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-xc-wado "IHE XC-WADO"]] )

// payload type
//R4* payloadType
//R4  * insert SliceElement( #value, type )
//R4* payloadType contains wadors 1..1 
//R4* payloadType[wadors] = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
//R4* payloadMimeType 
//R4  * insert SliceElement( #value, $this )
//R4* payloadMimeType  contains 

* payload 
  * insert SliceElement( #value, type )
* payload contains wadors 1..1 
* payload[wadors]
  * type 1..1 
  * type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#dicom-wado-rs "DICOM WADO-RS"
  * mimeType 
    * insert SliceElement( #value, $this )
  * mimeType contains 
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

  * mimeType[dicom]           = #application/dicom
//R4* payloadMimeType[dicom]      = #application/dicom
    
  * mimeType[dicom-octet]   = #application/octet-stream
//R4* payloadMimeType[dicom-octet]   = #application/octet-stream

  * mimeType[dicom-xml]       = #application/dicom+xml
//R4* payloadMimeType[dicom-xml]       = #application/dicom+xml

  * mimeType[dicom-json]      = #application/json
//R4* payloadMimeType[dicom-json]      = #application/json

  * mimeType[image-jpg]       = #image/jpg
//R4* payloadMimeType[image-jpg]       = #image/jpg

  * mimeType[image-gif]       = #image/gif
//R4* payloadMimeType[image-gif]       = #image/gif

  * mimeType[image-jp2]       = #image/jp2
//R4* payloadMimeType[image-jp2]       = #image/jp2

  * mimeType[image-jph]       = #image/jph
//R4* payloadMimeType[image-jph]       = #image/jph

  * mimeType[image-jxl]       = #image/jxl
//R4* payloadMimeType[image-jxl]       = #image/jxl

  * mimeType[video-mpeg]      = #video/mpeg
//R4* payloadMimeType[video-mpeg]      = #video/mpeg

  * mimeType[video-mp4]       = #video/mp4
//R4* payloadMimeType[video-mp4]       = #video/mp4

  * mimeType[video-H265]      = #video/H265
//R4* payloadMimeType[video-H265]      = #video/H265

  * mimeType[text-html]       = #text/html
//R4* payloadMimeType[text-html]       = #text/html

  * mimeType[text-plain]      = #text/plain
//R4* payloadMimeType[text-plain]      = #text/plain

  * mimeType[text-xml]        = #text/xml
//R4* payloadMimeType[text-xml]        = #text/xml

  * mimeType[text-rtf]        = #text/rtf
//R4* payloadMimeType[text-rtf]        = #text/rtf

  * mimeType[application-pdf] = #application/pdf
//R4* payloadMimeType[application-pdf] = #application/pdf
