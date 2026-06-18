Profile: EuMadoImagingStudy
Parent: MadoImagingStudy
Title: "MADO EU Imaging Study"
Description: 
"""
Profile on [[[MadoImagingStudy]]] that specifies the EU specific elements for the MADO EU FHIR Imaging Study Manifest. It includes the necessary elements to represent the imaging study in compliance with the MADO specifications.
"""
* insert SetFmmAndStatusRule( 1, draft )

* extension[anatomical-region] 1..*
  * valueCodeableConcept from ValueSetAnatomicalRegion (required) 
* basedOn[order] only Reference( EuMadoRequestedProcedure )
* subject only Reference( EuMadoPatient ) 