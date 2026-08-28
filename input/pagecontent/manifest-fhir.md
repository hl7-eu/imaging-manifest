{% include variable-definitions.md %}

All EU FHIR Manifests SHALL follow the base definition of the FHIR Imaging Manifest defined in [IHE MADO: FHIR Imaging Manifest]({{iheMadoBaseUrl}}fhir-imaging-manifest.html). To comply with the EU specific requirements, the FHIR Imaging Manifest SHALL be based on [[[EuMadoBundle]]], a profile of [MadoFhirBundle](https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle).

This base profile refers to other EU specific derivatives of the base FHIR profiles defined in IHE-MADO.

In these profiles, the requirements on the different system actors [[[EuMadoDocumentConsumer]]] and [[[EuMadoContentCreator]]] are expressed as Obligations.

### Differences from IHE-MADO

Most of the IHE-MADO resource profile has a corresponding EU profile (`EuMado…`) that constrains it. The main differences from IHE-MADO are:

1. **Obligations.** Each EU profile adds producer/consumer `Obligations` for the [[[EuMadoContentCreator]]] and [[[EuMadoDocumentConsumer]]] actors, mapped to the EHDS logical model elements where applicable.

2. **Anatomical region constrains**: The `extension[anatomical-region]` is required (constrained to `1..*`). The binding to `ValueSetAnatomicalRegion` is changed from `preferred` to `required`. The same updates are applied to the `bodysite` concept in [[[EuMadoFhirDocumentReference]]].

3. **Mapping on EU Core profiles and related changes in cardinalities.**
   - **EU Core compliance:** [[[EuMadoComposition]]] declares compliance with `composition-eu-core`; [[[EuMadoPatient]]] declares compliance with `patient-eu-core` and adds the `eu-pat-1` invariant (name SHALL have `given`, `family`, `text`, or a `data-absent-reason`).
   - **Reference targets narrowed to EU profiles**
   - **Cardinality changes:**
     - [[[EuMadoImagingStudy]]] `extension[anatomical-region]` 0..* → 1..*, and `series` 0..* → 1..*.
     - [[[EuMadoPatient]]] `name` 0..* → 1..*.
   - **Fixed values:** the `type` element is fixed to `$loinc#18748-4` on both [[[EuMadoComposition]]] (`Composition.type`) and [[[EuMadoFhirDocumentReference]]] (`DocumentReference.type`).


### Profiles

The list with manifest profiles is:

{% sql {
  "query" : "SELECT name AS Name, title AS Title, Type, Description, Web FROM Resources WHERE Type='StructureDefinition' AND ( Name NOT LIKE '%DocumentReference' ) ORDER BY name ASC",
  "class" : "lines",
  "columns" : [
    { "name" : "Title"      , "type" : "link"     , "source" : "Title", "target" : "Web"},
    { "name" : "Description", "type" : "markdown" , "source" : "Description"}
  ]
} %}
