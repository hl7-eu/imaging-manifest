Instance: EuMadoImagingManifestProducer
InstanceOf: ActorDefinition
Title: "ActorDefinition: Imaging Manifest Producer"
Description: "The actor responsible for producing the Imaging Manifest resources."
Usage: #definition
* name = "EuImagingManifestProducer"
* title = "Imaging Report provider"
* status = #draft
* description = "Provides the Imaging Report."
* documentation = """
This actor typically represents a system that provides access to radiology reports. Typically this would be systems like a Electronic Health Record (EHR), Radiology Information System (RIS) or a Picture Archiving and Communication System (PACS) that manages and provides access to imaging reports.

This actor is the MADO specific version of the [EHDS Producer](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/en/ActorDefinition-actor-producer.html).
"""
* type = #system