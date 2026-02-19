Profile: ImImageViewerEndpoint
Parent: Endpoint
Title: "EndPoint: Image Viewer"
Description: """
An Endpoint holding the URL of an image viewer that can be used to see the DICOM Study it is present on. 

It is RECOMMENDED that the URL to the viewer is formatted according to [IHE-IID](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_IID.pdf), but other formats are possible as well.
"""
* insert SetFmmAndStatusRule( 1, "draft" )

* connectionType 
  * insert SliceElement( #value, coding )
* connectionType contains iid 1..1
* connectionType[iid] = Hl7EuImagingEndpointTerminologyCodeSystem#dicom-image-viewer // DICOM image viewer

* address 1..1
  * ^short = "URL of the Image Viewer for this study"

