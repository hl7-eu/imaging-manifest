{% include variable-definitions.md %}

This page reflects Volume 1 of the MADO specification [MADO Volume 1](https://build.fhir.org/ig/IHE/RAD.MADO/volume-1.html). It extends Volume of {{iheMado}} with EU specific elements.

The EU specific requirements include:

* Include traceability to the XtEHR model and assign obligations related to the Xt-EHR related actors.
* Update the MADO artifacts to refer to EU core resources.
* Change the status of the anatomical region fields from optional to required.

## EU-specific use cases (Volume 1 style)

### Use case EU-1: Intra-country and cross-border exchange of imaging study information

#### EU-1 scope and intent

This use case describes how imaging study metadata and access information are exchanged in the EU context, both:

* within one country (intra-country exchange), and
* across countries (cross-border exchange).

The goal is to allow a Consumer to discover and retrieve the imaging manifest and then access the required DICOM objects using standardized discovery and retrieval paths.

#### EU-1 actors

* Imaging Manifest Producer (publishes the manifest and related metadata).
* Imaging Manifest Consumer (queries, retrieves, and processes manifest content).
* Document Access Provider / repository infrastructure (document discovery and retrieval).
* Imaging Source (WADO-RS endpoint serving DICOM instances/series).

#### EU-1 preconditions

* The imaging study and related metadata have been produced and published.
* The manifest is available through document sharing infrastructure aligned with the EU Health Data API ecosystem.
* The Consumer has legal/organizational authorization to access patient data in the intra-country or cross-border context.

#### EU-1 main flow

1. The Consumer searches for available imaging documentation for a patient.
2. The Consumer retrieves manifest summary metadata and selects the relevant study.
3. The Consumer retrieves the full manifest.
4. The Consumer identifies required series/instances and retrieval endpoints.
5. The Consumer retrieves imaging data from the referenced WADO-RS endpoint.
6. The Consumer displays or further processes the retrieved imaging data.

<figure>
 {% include mado-volume1-eu1-cross-border-exchange.svg %}
 <figcaption>EU-1 sequence: intra-country and cross-border imaging manifest exchange</figcaption>
</figure>
<br clear="all"/>

#### EU-1 postconditions

* The Consumer has obtained the needed imaging objects and can continue clinical review, comparison, or downstream processing.
* The same flow supports both intra-country and cross-border exchange, differing only in trust/policy and access-governance context.

### Use case EU-2: Report-driven retrieval of imaging data (relationship with Imaging Report specification)

#### EU-2 scope and intent

This use case illustrates the operational relationship between the Imaging Report specification and this Imaging Manifest specification: the workflow starts from an imaging report and continues to retrieval of the related imaging study data.

#### EU-2 actors

* Report Consumer (typically clinician, but can also be patient-facing systems).
* Document Access Provider.
* Imaging Manifest Producer.
* Imaging Source.

#### EU-2 preconditions

* An imaging report is available in document sharing infrastructure.
* The report can be linked to the corresponding manifest (for example via StudyInstanceUID and/or accession-number).

#### EU-2 main flow

1. The Consumer searches for imaging reports for a patient and retrieves a selected report.
2. The Consumer reviews the report and determines that image access is needed.
3. The Consumer searches for the associated manifest using identifiers from the report/study context.
4. The Consumer retrieves the selected manifest document.
5. The Consumer selects relevant series/instances from the manifest.
6. The Consumer retrieves the corresponding DICOM data through WADO-RS and renders or processes the images.

<figure>
 {% include mado-volume1-eu2-report-driven-retrieval.svg %}
 <figcaption>EU-2 sequence: report-driven retrieval of manifest and images</figcaption>
</figure>
<br clear="all"/>


#### EU-2 example query pattern

* Search report(s): `GET DocumentReference?category=http://loinc.org|85430-7&subject=Patient/{id}`
* Search related manifest: `GET DocumentReference?category=http://loinc.org|18748-4&subject=Patient/{id}&identifier={StudyInstanceUID}`
* Retrieve selected payload: `GET {DocumentReference.content.attachment.url}`
* Retrieve DICOM objects: `GET {wado-rs url from manifest}`

#### EU-2 postconditions

* The report-to-manifest linkage is used to retrieve study images in a deterministic way.
* The workflow aligns with the Imaging Report use-case model while keeping image retrieval delegated to the Imaging Manifest/MADO path.
