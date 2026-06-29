
{% include variable-definitions.md %}

This page reflects Volume 1 of the MADO specification [MADO Volume 1](https://build.fhir.org/ig/IHE/RAD.MADO/volume-1.html). All content in MADO Volume 1 applies to this spec as well. This pages presents the EU specific extensions to {{iheMado}} Volume 1.

### EU-specific use case - retrieve manifest based on EU Imaging Report (informative)

This use case illustrates the operational relationship between the {{hl7EuImRep}} and this Imaging Manifest specification: the workflow starts from an imaging report and continues to retrieval of the related imaging study data.

**Actors:**

* Document Consumer (typically clinician, but can also be patient-facing systems).
* IHE-MHD Document Provider.
* Imaging Source.

**Preconditions:**

* An imaging report is available in document sharing infrastructure.
* The report can be linked to the corresponding manifest (for example via StudyInstanceUID and/or accession-number).

**Main flow:**

The figure below illustrates this use case in a sequence diagram using IHE-MHD.

<figure>
 {% include mado-volume1-eu2-report-driven-retrieval.svg %}
 <figcaption>EU-2 sequence: report-driven retrieval of manifest and images</figcaption>
</figure>
<br clear="all"/>

The steps are:

1. The Consumer searches for imaging reports for a patient and retrieves a selected report.
2. The Consumer reviews the report and determines that image access is needed.
3. The Consumer searches for the associated manifest using identifiers from the report/study context.
4. The Consumer retrieves the selected manifest document.
5. The Consumer selects relevant series/instances from the manifest.
6. The Consumer retrieves the corresponding DICOM data through WADO-RS and renders or processes the images.

**example query pattern:**

* Search report(s): `GET DocumentReference?category=http://loinc.org|85430-7&subject=Patient/{id}`
* Search related manifest: `GET DocumentReference?category=http://loinc.org|18748-4&subject=Patient/{id}&identifier={StudyInstanceUID}`
* Retrieve selected payload: `GET {DocumentReference.content.attachment.url}`
* Retrieve DICOM objects: `GET {wado-rs url from manifest}`
