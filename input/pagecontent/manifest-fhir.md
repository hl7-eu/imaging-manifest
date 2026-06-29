{% include variable-definitions.md %}

All EU FHIR Manifests SHALL follow the base definition of the FHIR Imaging Manifest defined in [IHE MADO: FHIR Imaging Manifest](https://build.fhir.org/ig/IHE/RAD.MADO/fhir-imaging-manifest.html). To comply with the EU specific requirements, the FHIR Imaging Manifest SHALL be based on [[[EuMadoBundle]]], a profile of [MadoFhirBundle](https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle).

This base profile refers to other EU specific derivatives of the base FHIR profiles defined in IHE-MADO.

In these profiles, the requirements on the different system actors [[[EuMadoImagingManifestConsumer]]] and [[[EuMadoImagingManifestProducer]]] are expressed as Obligations.
