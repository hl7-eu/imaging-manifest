Part of the information related to accessing the content is part of the envelop in which the manifest is distributed. In the case of using {{IHE-MHD}}, the envelop used in a DocumentReference.

The Profile for document reference to publish EHDS imaging manifests is documented in the {% include profile-link.html name="ImManifestIheMhdDocumentReference" %}.

The figure below shows the {% include profile-link.html name="ImManifestIheMhdDocumentReference" %} most relevant restrictions and its relationship with the manifests.

{% include img.html img="manifest-envelop.drawio.png" caption="Figure: IHE-MHD envelop" %}

The main choices illustrated in the figure are:

* The document reference requires to refer to either a FHIR manifest or KOS manifest.
* FHIR manifest are represented as a FHIR json encoded [FHIR manifest](http:./fhir-imaging-manifest.html) that follows the profile {% include profile-link.html name="ImImagingStudyManifest" %}.
* KOS manifest are represented as a DICOM encoded DICOM instance following the [KOS profile](http:./kos-manifest-specification.html).

The FHIR-manifest can be losslessly translated into the KOS-manifest and vice-versa allowing applications to change the representation when needed.