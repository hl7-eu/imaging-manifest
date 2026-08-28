Instance: EuMadoContentCreator
InstanceOf: ActorDefinition
Title: "ActorDefinition: Content Creator/Document Source (Imaging Manifest)"
Description: "The actor responsible for creating Imaging Manifest documents."
Usage: #definition
* name = "EuMadoContentCreator"
* title = "Content Creator/Document Source (Imaging Manifest)"
* status = #draft
* description = "Creates the Imaging Manifest document."
* documentation = """
This actor represents a system that creates an Imaging Manifest document. It may be implemented by an Electronic Health Record (EHR), Radiology Information System (RIS), Picture Archiving and Communication System (PACS), or another system that assembles the manifest.

This actor is the MADO-specific version of the EHDS Producer.
"""
* type = #system