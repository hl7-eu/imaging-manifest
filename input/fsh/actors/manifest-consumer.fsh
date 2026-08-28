Instance: EuMadoDocumentConsumer
InstanceOf: ActorDefinition
Title: "ActorDefinition: Document Consumer (Imaging Manifest)"
Description: "The actor responsible for consuming the Imaging Manifest resources."
Usage: #definition
* name = "EuMadoDocumentConsumer"
* title = "Document Consumer (Imaging Manifest)"
* status = #draft
* description = "Consumes the Imaging Manifest document."
* documentation = """
This actor represents a system that consumes an imaging manifest. Given that this encompasses a wide variety of systems, including displaying pre-rendered manifests in a UI, processing for clinical decision support, systems generating metrics, etc., no "`SHALL`" obligations are defined for this actor as of now. Obligations may be added in the future when specific use cases or subgroups are defined.

This actor is the MADO specific version of the [EHDS Consumer](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/en/ActorDefinition-actor-consumer.html).
"""
* type = #system