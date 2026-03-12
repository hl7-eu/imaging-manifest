|	KOS path	|	FHIR	|	XtEHR	|
|	--------	|	--------	|	--------	|
|	PatientModule	|		|	EHDSImagingStudy.header.subject	|
|	PatientModule-PatientName	|	Patient.name	|	EHDSPatient.name	|
|	PatientModule-Patient ID​	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Issuer of Patient ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Issuer of Patient ID Qualifiers Sequence	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Issuer of Patient ID Qualifiers Sequence-Universal Entity ID-Universal Entity ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Issuer of Patient ID Qualifiers Sequence-Universal Entity ID Type-Universal Entity ID Type	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Issuer of Patient ID Qualifiers Sequence-Type of Patient ID-Type of Patient ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Patient's Birth Date​	|	Patient.birthDate	|	EHDSPatient.dateOfBirth	|
|	PatientModule-Patient's Sex​	|	Patient.gender	|	EHDSPatient.administrativeGender	|
|	PatientModule-Patient Comments	|		|	-	|
|	PatientModule-Other Patient IDs Sequence	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Other Patient IDs Sequence-Patient ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Other Patient IDs Sequence-Issuer of Patient ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Other Patient IDs Sequence-Issuer of Patient ID Qualifiers Sequence	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Other Patient IDs Sequence-Issuer of Patient ID Qualifiers Sequence-Universal Entity ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Other Patient IDs Sequence-Issuer of Patient ID Qualifiers Sequence-Universal Entity ID Type	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-Other Patient IDs Sequence-Issuer of Patient ID Qualifiers Sequence-Type of Patient ID	|	Patient.identifier	|	EHDSPatient.identifier	|
|	PatientModule-PatientSpeciesDescription	|	Patient.extension[patient-animal]extension[species]	|	-	|
|	PatientModule-Patient Species Code Sequence	|	Patient.extension[patient-animal]extension[species]	|	-	|
|	PatientModule-Patient Breed description	|	Patient.extension[patient-animal].extension[breed]	|	-	|
|	PatientModule-Patient Breed Code Sequence	|	Patient.extension[patient-animal].extension[breed]	|	-	|
|		|		|	-	|
|	General Study-StudyInstanceUID	|	ImagingStudy.identifier[studyInstanceUid]	|	EHDSImagingStudy.header.identifier	|
|	General Study-StudyID	|	ImagingStudy.identifier[studyUid]	|	-	|
|	General Study-Modality	|	ImagingStudy.modality	|	EHDSImagingStudy.modality	|
|	General Study-StudyDate	|	ImagingStudy.started	|	EHDSImagingStudy.started	|
|	General Study-StudyTime	|	ImagingStudy.started	|	EHDSImagingStudy.started	|
|	General Study-AccessionNumber	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	General Study-IssuerOfAccessionNumberSequence	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	General Study-IssuerOfAccessionNumberSequence-UniversalEntityIdType	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	General Study-IssuerOfAccessionNumberSequence-UniversalEntityId	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	General Study-Study Description-Study Description	|	ImagingStudy.description	|	EHDSServiceRequest.header.identifier	|
|	General Study-RefferringPhusician's Name	|	ServiceRequest-Order.reasonReference	|	-	|
|	General Study-Reason For Performed Procedure Code Sequence	|		|	-	|
|		|		|		|
|	General Equipment-Manufacturer	|	MhDDocumentReference.author[madoDevice]	|	EHDSImagingStudy.header.author[EHDSDevice]	|
|	General Equipment-Institution Name	|	MhDDocumentReference.author[organization]	|	EHDSImagingStudy.header.author[EHDSOrganization]	|
|	General Equipment-Institution Code Sequence	|	MhDDocumentReference.author[organization]	|	EHDSImagingStudy.header.author[EHDSOrganization]	|
|		|		|		|
|	Key Object Document-Referenced Request Sequence-Study Instance UID	|	ImagingStudy.identifier[studyInstanceUid]	|	EHDSImagingStudy4.EHDSImagingStudy	|
|	Key Object Document-Referenced Request Sequence-AccessionNumber	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	Key Object Document-Referenced Request Sequence-IssuerOfAccessionNumberSequence-Universal Entity ID	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	Key Object Document-Referenced Request Sequence-IssuerOfAccessionNumberSequence-Universal Entity ID Type	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	Key Object Document-Referenced Request Sequence-Placer Order Number	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	Key Object Document-Referenced Request Sequence-Order Placer Identifier Sequence-Universal Entity ID	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	Key Object Document-Referenced Request Sequence-Order Placer Identifier Sequence-Universal Entity ID Type	|	ServiceRequest-Order.identifier	|	EHDSServiceRequest.header.identifier	|
|	Key Object Document-Content Date	|	MhDDocumentReference.date	|	EHDSImagingStudy.header.date	|
|	Key Object Document-Content Time	|	MhDDocumentReference.date	|	EHDSImagingStudy.header.date	|
|	Key Object Document-Instance Number	|		|	EHDSImagingStudy.header.date	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Retrieve Location UID	|	Endpoint-XcWADO.extension[locationUid]	|	-	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Retrieve URL	|	Endpoint-XcWADO.address	|	EHDSEndpoint.address	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Study Instance UID	|	ImagingStudy.identifier[studyInstanceUid]	|	EHDSImagingStudy.header.identifier	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Retrieve AE Title	|		|	-	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Retrieve URL	|	Endpoint-XcWADO.address	|	EHDSEndpoint.address	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence	|		|	-	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence-Referenced SOP Class UID	|	ImagingStudy.series.instance.sopClass	|	-	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence-Referenced SOP Instance UID	|	ImagingStudy.series.instance.uid	|	-	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence	|		|	-	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Series Instance UID	|	ImagingStudy.series.uid	|	EHDSImagingStudy.series.seriesUid	|
|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Retrieve Location UID	|	Endpoint-XcWADO.extension[locationUid]	|	-	|
|		|		|	-	|
|	SOP Common-SOP Class UID	|		|	-	|
|	SOP Common-SOP Instance UID	|		|	-	|
|		|		|		|
|	Key Object Document Series-Series Date	|	ImagingStudy.series.started	|	EHDSImagingStudy.series.started	|
|	Key Object Document Series-Series Time	|	ImagingStudy.series.started	|	EHDSImagingStudy.series.started	|
|	Key Object Document Series-Modality	|	ImagingStudy.series.modality	|	EHDSImagingStudy.series.seriesModality	|
|	Key Object Document Series-Series Description	|	ImagingStudy.series.description	|	EHDSImagingStudy.series.description	|
|	Key Object Document Series-Series Description Code Sequence	|	ImagingStudy.series.description	|	-	|
|	Key Object Document Series-Protocol Name	|		|	-	|
|	Key Object Document Series-Series Number	|	ImagingStudy.series.number	|	EHDSImagingStudy.series.number	|
|	Key Object Document Series-Series Instance UID	|	ImagingStudy.series.uid	|	EHDSImagingStudy.series.seriesUid	|
|		|		|	-	|
|	SR Document Content-Content Template Sequence-Template Identifier	|		|	-	|
|	SR Document Content-Content Template Sequence-Template Identifier	|		|	-	|
|		|		|	-	|
|	Specimen module-Container Identifier	|		|	EHDSDevice-Container.instanceIdentifier	|
|	Specimen module-Issuer of container identifier	|		|	EHDSDevice-Container.instanceIdentifier	|
|	Specimen module-alternate container identifier	|		|	-	|
|	Specimen module-Container type code sequence	|		|	EHDSDevice-Container.type	|
|	Specimen module-Container description	|		|	-	|
|	Specimen module-Container component sequence	|		|	-	|
|	Specimen module-Specimen description sequence	|		|	-	|
|	Specimen module-Specimen description sequence-Primary Anatomical structure sequence	|	Specimen.collection.bodySite	|	-	|
|	Specimen module-Specimen description sequence-Specimen identifier	|	Specimen.identifier	|	EHDSSpecimen.identifier	|
|	Specimen module-Specimen description sequence-Specimen UID	|	Specimen.identifier	|	EHDSSpecimen.identifier	|
|	Specimen module-Specimen description sequence-Issuer of the specimen identifier sequence	|	Specimen.identifier	|	EHDSSpecimen.identifier	|
|	Specimen module-Specimen description sequence-Specimen Type Code Sequence	|	Specimen.type	|	EHDSSpecimen.type	|
|	Specimen module-Specimen description sequence-Speciment short description	|	Specimen.note	|	EHDSSpecimen.note	|
|	Specimen module-Specimen description sequence-Speciment detailed description	|	Specimen.note	|	EHDSSpecimen.note	|
|	Specimen module-Specimen description sequence-Specimen Preparation Sequence	|	Specimen.collection.method	|	EHDSSpecimen.collection.method	|
|	Specimen module-Specimen description sequence-Specimen Localization Content Item Sequence	|		|	-	|
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
