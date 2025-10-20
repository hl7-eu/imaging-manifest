{% include variable-definitions.md %}

Part of the information related to accessing the content is part of the envelop in which the manifest is distributed. In the case of using {{IHE-MHD}}, the envelop used in a DocumentReference.

The Profile for document reference to publish EHDS imaging manifests is documented in the {% include profile-link.html name="ImManifestDocumentReference" %}.

The figure below shows the {% include profile-link.html name="ImManifestDocumentReference" %} most relevant restrictions and its relationship with the manifests.

{% include img.html img="manifest-envelop.drawio.png" caption="Figure: IHE-MHD envelop" %}

The main choices illustrated in the figure are:

* The {% include profile-link.html name="ImManifestDocumentReference" %} requires to refer to either a FHIR manifest or KOS manifest or both.
* A FHIR manifest is represented as a FHIR json encoded FHIR {{Bundle}} following the profile {% include profile-link.html name="ImImagingStudyManifest" %}. This Bundle contains the {{ImagingStudy}} resource as well other resources such as the {{Patient}} and various {{Endpoint}}s.
* A KOS manifest is represented as a DICOM encoded DICOM instance following the MADO KOS profile.

The FHIR-manifest can be losslessly translated into the KOS-manifest and vice-versa allowing applications to change the representation when needed.

Imaging specific search parameters include:

{:.grid}
| **Name** | **Type** | **Description** | **Expression** |
| =====| ===== | ===========| ========== |
| [date-image-acquired](./SearchParameter-DateImagesAcquiredSearchParameter.html) | [date](https://hl7.org/fhir/R5/search.html#date) | Allows searches on the time the image was acquired. |  |
| [date-manifest-created](./SearchParameter-DateManifestCreatedSearchParameter.html) | [date](https://hl7.org/fhir/R5/search.html#date) | Allows searches on the time the manifest was created. ||
| [bodysite](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-bodysite) | [token](https://hl7.org/fhir/R5/search.html#token) | The body site studied | DocumentReference.bodySite.concept |
| [modality](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-modality) | [token](https://hl7.org/fhir/R5/search.html#token) | The modality used | DocumentReference.modality |

General {{iheMhd}} defined search parameters are:

{:.grid}
| **Name** | **Type** | **Description** | **Expression** |
| =====| ===== | ===========| ========== |
| [author](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-author) | [reference](https://hl7.org/fhir/R5/search.html#reference) | Who and/or what authored the document | DocumentReference.author |
| author.given & author.family | [string](https://hl7.org/fhir/R5/search.html#string) | This parameters, of type string, specify the name parts of the author person, which is associated with the DocumentReference Resource, or in Document Sharing nomenclature, the author of the Document Entry. See ITI TF-2x: Appendix Z.2 for use of the string data type. This use of author.given and author.family follows the FHIR Chaining Parameters search methodology. ||
| [category](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-category) | [token](https://hl7.org/fhir/R5/search.html#token) | This parameter, of type token, specifies the general classification of the DocumentReference Resource, or in Document Sharing nomenclature, the classCode of the Document Entry. See ITI TF-2x: Appendix Z.2 for additional constraints on the use of the token search parameter type. | DocumentReference.category |
| [creation](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-creation) | [date](https://hl7.org/fhir/R5/search.html#date) | Date attachment was first created | DocumentReference.content.attachment.creation | 
| [date](https://hl7.org/fhir/R5/documentreference-search.html#clinical-date) | [date](https://hl7.org/fhir/R5/search.html#date) | When this document reference was created | DocumentReference.date |
| [event-code](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-event-code) | [token](https://hl7.org/fhir/R5/search.html#token) | This parameter, of type token, specifies the main clinical acts documented by the DocumentReference Resource, or in Document Sharing nomenclature, the eventCodeList of the Document Entry. See ITI TF-2x: Appendix Z.2 for additional constraints on the use of the token search parameter type. | DocumentReference.event.concept |
| [format-code](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-format-code) | [token](https://hl7.org/fhir/R5/search.html#token) | Format code content rules for the (DocumentReference.content.profile.value.ofType(Coding)) |
| [facility](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-facility) | [token](https://hl7.org/fhir/R5/search.html#token) | Kind of facility where patient was; or in Document Sharing nomenclature, the healthcareFacilityTypeCode of the Document Entry. See ITI TF-2x: Appendix Z.2 for additional constraints on the use of the token search parameter type. | DocumentReference.facilityType |
| [identifier](https://hl7.org/fhir/R5/documentreference-search.html#clinical-identifier) | [token](https://hl7.org/fhir/R5/search.html#token) | Identifier of the attachment binary DocumentReference.identifier |
| [patient](https://hl7.org/fhir/R5/documentreference-search.html#clinical-patient) | [reference](https://hl7.org/fhir/R5/search.html#reference) | Who/what is the subject of the DocumentReference | DocumentReference.subject.where(resolve() is Patient) |
| patient.identifier | token | This parameter, of type token, specifies an identifier associated with the patient to which the DocumentReference Resource is assigned. See ITI TF-2x: Appendix Z.2 for additional constraints on the use of the token search parameter type. This use of patient.identifier follows the FHIR Chaining Parameters search methodology. | |
| [period](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-period) | [date](https://hl7.org/fhir/R5/search.html#date) | the time of service that is being documented by the DocumentReference. The period search parameter specifies an interval which the time of service overlaps. | DocumentReference.period |
| [relatesto](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-relatesto) | [reference](https://hl7.org/fhir/R5/search.html#reference) | represents other identifiers associated with the DocumentReference Resource, or in Document Sharing nomenclature, the referenceIdList of the Document Entry. | DocumentReference.relatesTo.target |
| [security-label](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-security-label) | [token](https://hl7.org/fhir/R5/search.html#token) | Document security-tags | DocumentReference.securityLabel |
| [setting](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-setting) | [token](https://hl7.org/fhir/R5/search.html#token) | the specific practice setting of the DocumentReference Resource, or in Document Sharing nomenclature, the practiceSettingCode of the Document Entry. | DocumentReference.practiceSetting |
| [status](https://hl7.org/fhir/R5/documentreference-search.html#DocumentReference-status) | [token](https://hl7.org/fhir/R5/search.html#token) | The status of the DocumentReference Resource | DocumentReference.status |
| [type](https://hl7.org/fhir/R5/documentreference-search.html#clinical-type) | [token](https://hl7.org/fhir/R5/search.html#token) | Kind of document (LOINC if possible) | DocumentReference.type |


