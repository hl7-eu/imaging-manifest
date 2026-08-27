{% include variable-definitions.md %}

Part of the information related to accessing the content is part of the envelop in which the manifest is distributed. In the case of using {{IHE-MHD}}, the envelop used in a DocumentReference.

All EU imaging manifest envelopes SHALL follow the base definition of the IHE-MHD envelope defined in [IHE MADO: Manifest Envelope]({{iheMadoBaseUrl}}manifest-envelope.html). To comply with the EU specific requirements, the envelope SHALL be based on [[[EuMadoFhirDocumentReference]]] (for the FHIR manifest) and [[[EuMadoDicomKosDocumentReference]]] (for the DICOM KOS manifest), EU profiles of the corresponding IHE-MADO DocumentReference profiles.

In these profiles, the requirements on the different system actors [[[EuMadoDocumentConsumer]]] and [[[EuMadoContentCreator]]] are expressed as Obligations.

### Differences from IHE-MADO

Both EU envelope profiles constrain their IHE-MADO DocumentReference parents. The main differences from IHE-MADO are:

1. **Obligations.** Both [[[EuMadoFhirDocumentReference]]] and [[[EuMadoDicomKosDocumentReference]]] add producer/consumer `Obligations` for the [[[EuMadoContentCreator]]] and [[[EuMadoDocumentConsumer]]] actors on the DocumentReference elements (`identifier`, `type`, `category`, `subject`, `author`, `relatesTo`, `content`, `context`, …).

2. **Anatomical region extension.** On both profiles the `bodysite` extension `concept` is bound to `ValueSetAnatomicalRegion` with **required** strength (changed from *preferred*), and the `concept` field is required.

3. **Reference targets narrowed to EU profiles and fixed values.**
   - The `type` element is fixed to `$loinc#18748-4` (`DocumentReference.type`) on both profiles.
   - [[[EuMadoFhirDocumentReference]]] narrows `subject` → [[[EuMadoPatient]]], `author[source-organization]` → [[[EuMadoCreatorOrganization]]], `author[source-device]` → [[[EuMadoCreator]]], and `relatesTo[kos-reference].target` → [[[EuMadoDicomKosDocumentReference]]].
   - [[[EuMadoDicomKosDocumentReference]]] narrows `subject` → [[[EuMadoPatient]]].

