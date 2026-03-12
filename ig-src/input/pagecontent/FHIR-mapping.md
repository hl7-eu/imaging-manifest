
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|	ImagingStudy.identifier[studyInstanceUid]	|	General Study-StudyInstanceUID	|	SR-TID1600:EV (ddd011, DCM, “Study Instance UID”)	|	EHDSImagingStudy.header.identifier	|
|	ImagingStudy.identifier[studyUid]	|	General Study-StudyID	|		|	-	|
|	ImagingStudy.status	|		|		|	EHDSImagingStudy.header.status	|
|	ImagingStudy.language	|		|		|	EHDSImagingStudy.header.language	|
|	ImagingStudy.modality	|	General Study-Modality	|	SR-TID1600:EV (121139, DCM, "Modality")	|	EHDSImagingStudy.modality	|
|	ImagingStudy.extension[anatomical]	|		|	SR-TID1600:EV (123014, DCM, "Target Region")	|	EHDSImagingStudy.bodySite	|
|	ImagingStudy.extension[anatomical].text	|		|	SR-TID1600:EV (123014, DCM, "Target Region")	|	EHDSImagingStudy.bodySite	|
|	ImagingStudy.subject	|		|		|	EHDSImagingStudy.header.subject	|
|	ImagingStudy.encounter	|		|		|	EHDSImagingStudy.encounter	|
|	ImagingStudy.started	|	General Study-StudyDate	|		|	EHDSImagingStudy.started	|
|	ImagingStudy.basedOn	|		|		|	EHDSImagingStudy.basedOn	|
|	ImagingStudy.referrer	|		|		|	-	|
|	ImagingStudy.interpreter	|		|		|	-	|
|	ImagingStudy.endpoint	|		|		|	EHDSImagingStudy.studyEndpoint	|
|	ImagingStudy.numberOfSeries	|		|		|	EHDSImagingStudy.numberOfSeries	|
|	ImagingStudy.numberOfInstances	|		|		|	EHDSImagingStudy.numberOfInstances	|
|	ImagingStudy.procedureReference	|		|		|	-	|
|	ImagingStudy.procedureCode	|		|		|	-	|
|	ImagingStudy.location	|		|		|	-	|
|	ImagingStudy.reasonCode	|		|		|	-	|
|	ImagingStudy.reasonReference	|		|		|	-	|
|	ImagingStudy.note	|		|		|	-	|
|	ImagingStudy.description	|	General Study-Study Description-Study Description	|		|	EHDSImagingStudy.description	|
|	ImagingStudy.series	|		|	SR-TID1600:EV (ddd010, DCM, “Number of Study Related Series” 	|	EHDSImagingStudy.series	|
|	ImagingStudy.series.uid	|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Series Instance UID	|	SR-TID1602:EV (ddd006, DCM, “Series Instance UID”)	|	EHDSImagingStudy.series.seriesUid	|
|	ImagingStudy.series.number	|	Key Object Document Series-Series Number	|	SR-TID1602:EV (ddd005, DCM, “Series Number”)	|	EHDSImagingStudy.series.number	|
|	ImagingStudy.series.modality	|	Key Object Document Series-Modality	|	SR-TID1602:1EV (121139, DCM, "Modality")	|	EHDSImagingStudy.series.seriesModality	|
|	ImagingStudy.series.description	|	Key Object Document Series-Series Description	|	SR-TID1602:EV (ddd002, DCM, “Series Description”)	|	EHDSImagingStudy.series.description	|
|	ImagingStudy.series.numberOfInstances	|		|	SR-TID1602:EV (ddd007, DCM, “Number of Series Related Instances”) 	|	EHDSImagingStudy.series.numberOfInstances	|
|	ImagingStudy.series.endpoint	|		|		|	EHDSImagingStudy.series.seriesEndpoint	|
|	ImagingStudy.series.bodySite	|		|	SR-TID1602:EV (123014, DCM, "Target Region")	|	EHDSImagingStudy.series.bodySite	|
|	ImagingStudy.series.bodySite.text	|		|	SR-TID1602:EV (123014, DCM, "Target Region")	|	EHDSImagingStudy.series.bodySite	|
|	ImagingStudy.series.laterality	|		|		|	-	|
|	ImagingStudy.series.specimen	|		|		|	EHDSImagingStudy.series.specimen	|
|	ImagingStudy.series.started	|	Key Object Document Series-Series Date	|	SR-TID1602:EV (ddd003, DCM, "Series Date")	|	EHDSImagingStudy.series.started	|
|	ImagingStudy.series.performer	|		|		|	-	|
|	ImagingStudy.series.instance	|		|		|	EHDSImagingStudy.series.instancesInTheSeries	|
|	ImagingStudy.series.instance.uid	|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence-Referenced SOP Instance UID	|		|	EHDSImagingStudy.series.instancesInTheSeries.instanceUid	|
|	ImagingStudy.series.instance.sopClass	|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence-Referenced SOP Class UID	|		|	EHDSImagingStudy.series.instancesInTheSeries.sopClass	|
|	ImagingStudy.series.instance.number	|		|	SR-TID1601:EV (ddd008, DCM, “Instance Number”)	|	EHDSImagingStudy.series.instancesInTheSeries.instanceNumber	|
|	ImagingStudy.series.instance.title	|		|		|	EHDSImagingStudy.series.instancesInTheSeries.instanceTitle	|
|	ImagingStudy.series.instance.extension[numberOfFrames]	|		|	SR-TID1601:EV (121140, DCM, “Number of Frames”)	|	EHDSImagingStudy.series.instancesInTheSeries.numberOfFrames	|
|	ImagingStudy.series.instance.extension[representative]	|		|	SR-TID2010:8	|	-	|
                
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|	MhDDocumentReference.identifier	|		|		|	EHDSImagingStudy.header.identifier	|
|	MhDDocumentReference.status	|		|		|	-	|
|	MhDDocumentReference.docStatus	|		|		|	-	|
|	MhDDocumentReference.type	|		|		|	-	|
|	MhDDocumentReference.category	|		|		|	-	|
|	MhDDocumentReference.subject	|		|		|	-	|
|	MhDDocumentReference.date	|	Key Object Document-Content Date	|		|	-	|
|	MhDDocumentReference.author[madoDevice]	|	General Equipment-Manufacturer	|		|	EHDSImagingStudy.header.author[EHDSDevice]	|
|	MhDDocumentReference.author[organization]	|	General Equipment-Institution Name	|		|	EHDSImagingStudy.header.author[EHDSOrganization]	|
|		|		|		|	-	|
|	MhDDocumentReference.authenticator	|		|		|	-	|
|	MhDDocumentReference.custodian	|		|		|	EHDSImagingStudy.studyCustodian	|
|	MhDDocumentReference.relatesTo	|		|		|	-	|
|	MhDDocumentReference.description	|		|		|	-	|
|	MhDDocumentReference.secutityLabel	|		|		|	-	|
|	MhDDocumentReference.extension[anatomical]	|		|		|	-	|
|	MhDDocumentReference.extension[modality]	|		|		|	EHDSImagingStudy.modality	|
|	MhDDocumentReference.content	|		|		|	-	|
|	MhDDocumentReference.context	|		|		|	-	|
                
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|	Patient.identifier	|	PatientModule-Patient ID​	|		|	EHDSPatient.identifier	|
|	Patient.name	|	PatientModule-PatientName	|		|	EHDSPatient.name	|
|	Patient.birthDate	|	PatientModule-Patient's Birth Date​	|		|	EHDSPatient.dateOfBirth	|
|	Patient.deceased[boolean]	|		|		|	EHDSPatient.deceased[boolean]	|
|	Patient.deceased[DateTime]	|		|		|	EHDSPatient.deceased[DateTime]	|
|	Patient.gender	|	PatientModule-Patient's Sex​	|		|	EHDSPatient.administrativeGender	|
|	Patient.address	|		|		|	EHDSPatient.address	|
|	Patient.telecom	|		|		|	EHDSPatient.telecom	|
|	Patient.extension[patient-animal]	|		|		|	-	|
|	Patient.extension[patient-animal]extension[species]	|	PatientModule-PatientSpeciesDescription	|		|	-	|
|	Patient.extension[patient-animal].extension[breed]	|	PatientModule-Patient Breed description	|		|	-	|
                
                
                
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|	Specimen.identifier	|	Specimen module-Specimen description sequence-Specimen identifier	|		|	EHDSSpecimen.identifier	|
|	Specimen.status	|		|		|	EHDSSpecimen.status	|
|	Specimen.type	|	Specimen module-Specimen description sequence-Specimen Type Code Sequence	|		|	EHDSSpecimen.type	|
|	Specimen.specimenSource[x]	|		|		|	EHDSSpecimen.specimenSource[x]	|
|	Specimen.specimenSource[x]	|		|		|	EHDSSpecimen.specimenSource[x]	|
|	Specimen.specimenSource[x]	|		|		|	EHDSSpecimen.specimenSource[x]	|
|	Specimen.parentSpecimen	|		|		|	EHDSSpecimen.parentSpecimen	|
|	Specimen.request	|		|		|	EHDSSpecimen.request	|
|	Specimen.combined	|		|		|	EHDSSpecimen.combined	|
|	Specimen.collection	|		|		|	EHDSSpecimen.collection	|
|	Specimen.collection.performer[x]	|		|		|	EHDSSpecimen.collection.performer[x]	|
|	Specimen.collection.performer[x]	|		|		|	EHDSSpecimen.collection.performer[x]	|
|	Specimen.collection.performer[x]	|		|		|	EHDSSpecimen.collection.performer[x]	|
|	Specimen.collection.performer[x]	|		|		|	EHDSSpecimen.collection.performer[x]	|
|	Specimen.collection.collected[x]	|		|		|	EHDSSpecimen.collection.collected[x]	|
|	Specimen.collection.collected[x]	|		|		|	EHDSSpecimen.collection.collected[x]	|
|	Specimen.collection.quantity	|		|		|	EHDSSpecimen.collection.quantity	|
|	Specimen.collection.method	|	Specimen module-Specimen description sequence-Specimen Preparation Sequence	|		|	EHDSSpecimen.collection.method	|
|	Specimen.collection.device	|		|		|	EHDSSpecimen.collection.device	|
|	Specimen.collection.bodySite	|	Specimen module-Specimen description sequence-Primary Anatomical structure sequence	|		|	EHDSSpecimen.collection.bodySite	|
|	Specimen.receivedDate	|		|		|	EHDSSpecimen.receivedDate	|
|	Specimen.container	|		|		|	EHDSSpecimen.container	|
|	Specimen.container.specimenQuantity	|		|		|	EHDSSpecimen.container.specimenQuantity	|
|	Specimen.container.containerDevice	|		|		|	EHDSSpecimen.container.containerDevice	|
|	Specimen.condition	|		|		|	EHDSSpecimen.condition	|
|	Specimen.note	|	Specimen module-Specimen description sequence-Speciment short description	|		|	EHDSSpecimen.note	|
                
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|	ServiceRequest-Order.subject	|		|		|	EHDSServiceRequest.header.subject	|
|	ServiceRequest-Order.identifier	|	General Study-AccessionNumber	|		|	EHDSServiceRequest.header.identifier	|
|	ServiceRequest-Order.requester	|		|		|	EHDSServiceRequest.header.author[EHDSHealthProcessional]	|
|	ServiceRequest-Order.requester	|		|		|	EHDSServiceRequest.header.author[EHDSOrganization]	|
|	ServiceRequest-Order.requester	|		|		|	EHDSServiceRequest.header.author[EHDSDevice]	|
|	ServiceRequest-Order.authoredOn	|		|		|	EHDSServiceRequest.header.date	|
|	ServiceRequest-Order.status	|		|		|	EHDSServiceRequest.header.status	|
|	ServiceRequest-Order.language	|		|		|	EHDSServiceRequest.header.language	|
|	ServiceRequest-Order.description	|		|		|	EHDSServiceRequest.description	|
|	ServiceRequest-Order.code	|		|		|	EHDSServiceRequest.code	|
|	ServiceRequest-Order.quantity	|		|		|	EHDSServiceRequest.quantity	|
|	ServiceRequest-Order.bodySite	|		|		|	EHDSServiceRequest.bodySite	|
|	ServiceRequest-Order.reasonReference	|	General Study-RefferringPhusician's Name	|		|	EHDSServiceRequest.reason[x]	|
|	ServiceRequest-Order.reasonReference	|		|		|	EHDSServiceRequest.reason[x]	|
|	ServiceRequest-Order.reasonReference	|		|		|	EHDSServiceRequest.reason[x]	|
|	ServiceRequest-Order.reasonReference	|		|		|	EHDSServiceRequest.reason[x]	|
|	ServiceRequest-Order.priority	|		|		|	EHDSServiceRequest.priority	|
|	ServiceRequest-Order.supportingInformation[x]	|		|		|	EHDSServiceRequest.supportingInformation[x]	|
|	ServiceRequest-Order.supportingInformation[x]	|		|		|	EHDSServiceRequest.supportingInformation[x]	|
|	ServiceRequest-Order.supportingInformation[x]	|		|		|	EHDSServiceRequest.supportingInformation[x]	|
|	ServiceRequest-Order.supportingInformation[x]	|		|		|	EHDSServiceRequest.supportingInformation[x]	|
|	ServiceRequest-Order.specimen	|		|		|	EHDSServiceRequest.specimen	|
|	ServiceRequest-Order.encounter	|		|		|	EHDSServiceRequest.encounter	|
|	ServiceRequest-Order.occurrence[x]	|		|		|	EHDSServiceRequest.occurrence[x]	|
|	ServiceRequest-Order.occurrence[x]	|		|		|	EHDSServiceRequest.occurrence[x]	|
|	ServiceRequest-Order.patientInstructions	|		|		|	EHDSServiceRequest.patientInstructions	|
                
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|	Endpoint-XcWADO.identifier	|		|		|	EHDSEndpoint.identifier	|
|	Endpoint-XcWADO.status	|		|		|	EHDSEndpoint.status	|
|	Endpoint-XcWADO.connectionType	|		|		|	EHDSEndpoint.connectionType	|
|	Endpoint-XcWADO.name	|		|		|	EHDSEndpoint.name	|
|	Endpoint-XcWADO.managingOrganisation	|		|		|	EHDSEndpoint.managingOrganisation	|
|	Endpoint-XcWADO.payload	|		|		|	EHDSEndpoint.payload	|
|	Endpoint-XcWADO.payload.type	|		|		|	EHDSEndpoint.payload.type	|
|	Endpoint-XcWADO.payload.mimeType	|		|		|	EHDSEndpoint.payload.mimeType	|
|	Endpoint-XcWADO.payload.profileCanonical	|		|		|	EHDSEndpoint.payload.profileCanonical	|
|	Endpoint-XcWADO.payload.profileUri	|		|		|	EHDSEndpoint.payload.profileUri	|
|	Endpoint-XcWADO.extension[locationUid]	|	Key Object Document-Current Requested Procedure Evidence Sequence-Retrieve Location UID	|		|	-	|
|	Endpoint-XcWADO.address	|	Key Object Document-Current Requested Procedure Evidence Sequence-Retrieve URL	|		|	EHDSEndpoint.address	|
|	Endpoint-XcWADO.header	|		|		|	EHDSEndpoint.header	|
                
|	FHIR	|	KOS	|	KOS-SR	|	XtEHR	|
|	--------	|	--------	|	--------	|	--------	|
|		|		|		|	EHDSImagingStudy.series.instancesInTheSeries.keyImage	|
|	Basic-KeyObj.identifier	|		|		|	-	|
|	Basic-KeyObj.extensio[status]	|		|		|	-	|
|	Basic-KeyObj.subject	|		|		|	-	|
|	Basic-KeyObj.extension[issued]	|		|		|	-	|
|	Basic-KeyObj.extension[performer]	|		|		|	-	|
|	Basic-KeyObj.extension[basedOn]	|		|		|	-	|
|	Basic-KeyObj.extension[category]	|		|		|	-	|
|	Basic-KeyObj.extension[code].text	|	--------	|	 ---------	|	EHDSImagingStudy.series.instancesInTheSeries.keyImage.reason	|
|	Basic-KeyObj.extension[code].coding	|		|		|	EHDSImagingStudy.series.instancesInTheSeries.keyImage.flag	|
|	Basic-KeyObj.extension[studyUid]	|		|		|	EHDSImagingStudy.series.instancesInTheSeries.keyImage.instanceUID	|
|	Basic-KeyObj.extension[derivedFrom]	|		|		|	-	|
|	Basic-KeyObj.extension[endpoint]	|		|		|	-	|
|	Basic-KeyObj.extension[seriesUid]	|		|		|	EHDSImagingStudy.series.instancesInTheSeries.keyImage.seriesUID	|
|	Basic-KeyObj.extension[seriesNumber]	|		|		|	-	|
|	Basic-KeyObj.extension[frameOfReferenceUid]	|		|		|	-	|
|	Basic-KeyObj.extension[bodySite]	|		|		|	-	|
|	Basic-KeyObj.extension[focus]	|		|		|	-	|
|	Basic-KeyObj.extension[instance]	|		|		|	-	|
|	Basic-KeyObj.extension[instance].extension[instance.uid]	|		|		|	-	|
|	Basic-KeyObj.extension[instance].extension[instance.uid].extension[instance.number]	|		|		|	-	|
|	Basic-KeyObj.extension[instance].extension[instance.uid].extension[instance.number].extension[instance.sopClass]	|		|		|	-	|
|	Basic-KeyObj.extension[instance].extension[instance.uid].extension[instance.number].extension[instance.sopClass].extension[instance.subset]	|		|		|	-	|
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
