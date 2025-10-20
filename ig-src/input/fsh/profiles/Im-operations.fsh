Instance: ImagingStudy-fhir-manifest
InstanceOf: OperationDefinition
Usage: #definition
* name = "OperationDefinition: create a FHIR manifest"
* title = "OperationDefinition: create a FHIR manifest"
* status = #active
* kind = #operation
* experimental = false 
* date = 2025-01-01
* purpose = "Utility operation to generate a FHIR manifest from an ImagingStudy resource."
* description = """
This operation generates a FHIR manifest from an ImagingStudy resource by extracting relevant metadata and packaging it according to the FHIR imaging manifest specification.
"""
* code = #generate-fhir-manifest
* system = false
* type = false
* instance = true
* parameter
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * type = #Bundle
  * documentation = "The generated FHIR manifest as a Bundle resource."
  * targetProfile = Canonical(ImImagingStudyManifest)
