#### EHDSImagingStudy

The following table shows the mapping from EHDSImagingStudy logical model elements to FHIR profiles.


|	XtEHR	|	FHIR R4	|	KOS	|
|	-----------	|	-----------	|	-----------	|
|	EHDSImagingStudy	|		|		|
|	EHDSImagingStudy-header	|		|		|
|	EHDSImagingStudy-header.subject	|	ImagingStudy.subject	|	PatientModule	|
|	EHDSImagingStudy- header.identifier	|	ImagingStudy.identifier[studyInstanceUid]	|	General Study-StudyInstanceUID	|
|	EHDSImagingStudy- header.author[x]	|		|		|
|	EHDSImagingStudy- header.author[EHDSOrganization]	|	MhDDocumentReference.author[organization]	|	General Equipment-Institution Name	|
|	EHDSImagingStudy- header.author[EHDSDevice]	|	MhDDocumentReference.author[madoDevice]	|	General Equipment-Manufacturer	|
|	EHDSImagingStudy- header.date	|		|	Key Object Document-Content Date	|
|	EHDSImagingStudy- header.status	|	ImagingStudy.status	|		|
|	EHDSImagingStudy- header.language	|	ImagingStudy.language	|		|
|	EHDSImagingStudy- modality	|	ImagingStudy.modality	|	General Study-Modality	|
|	EHDSImagingStudy- bodySite	|	ImagingStudy.extension[anatomical]	|	SR-TID1600:EV (123014, DCM, "Target Region")	|
|	EHDSImagingStudy- encounter	|	ImagingStudy.encounter	|		|
|	EHDSImagingStudy- started	|	ImagingStudy.started	|	General Study-StudyDate	|
|	EHDSImagingStudy- basedOn	|	ImagingStudy.basedOn	|		|
|	EHDSImagingStudy- numberOfSeries	|	ImagingStudy.numberOfSeries	|		|
|	EHDSImagingStudy- numberOfInstances	|	ImagingStudy.numberOfInstances	|		|
|	EHDSImagingStudy- description	|	ImagingStudy.description	|		|
|	EHDSImagingStudy- studyCustodian	|	MhDDocumentReference.custodian	|		|
|	EHDSImagingStudy- studyEndpoint	|	ImagingStudy.endpoint	|		|
|	EHDSImagingStudy- series	|	ImagingStudy.series	|	SR-TID1600:EV (ddd010, DCM, “Number of Study Related Series” 	|
|	EHDSImagingStudy- series.seriesUid	|	ImagingStudy.series.uid	|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Series Instance UID	|
|	EHDSImagingStudy- series.number	|	ImagingStudy.series.number	|	Key Object Document Series-Series Number	|
|	EHDSImagingStudy- series.seriesModality	|	ImagingStudy.series.modality	|	Key Object Document Series-Modality	|
|	EHDSImagingStudy- series.description	|	ImagingStudy.series.description	|	Key Object Document Series-Series Description	|
|	EHDSImagingStudy- series.numberOfInstances	|	ImagingStudy.series.numberOfInstances	|	SR-TID1602:EV (ddd007, DCM, “Number of Series Related Instances”) 	|
|	EHDSImagingStudy- series.seriesEndpoint	|	ImagingStudy.series.endpoint	|		|
|	EHDSImagingStudy- series.bodySite	|	ImagingStudy.series.bodySite	|	SR-TID1602:EV (123014, DCM, "Target Region")	|
|	EHDSImagingStudy- series.specimen	|	ImagingStudy.series.specimen	|		|
|	EHDSImagingStudy- series.started	|	ImagingStudy.series.started	|	Key Object Document Series-Series Date	|
|	EHDSImagingStudy- series.instancesInTheSeries	|	ImagingStudy.series.instance	|		|
|	EHDSImagingStudy- series.instancesInTheSeries.instanceTitle	|	ImagingStudy.series.instance.title	|		|
|	EHDSImagingStudy- series.instancesInTheSeries.instanceUid	|	ImagingStudy.series.instance.uid	|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence-Referenced SOP Instance UID	|
|	EHDSImagingStudy- series.instancesInTheSeries.sopClass	|	ImagingStudy.series.instance.sopClass	|	Key Object Document-Current Requested Procedure Evidence Sequence-Referenced Series Sequence-Referenced SOP Sequence-Referenced SOP Class UID	|
|	EHDSImagingStudy- series.instancesInTheSeries.instanceNumber	|	ImagingStudy.series.instance.number	|	SR-TID1601:EV (ddd008, DCM, “Instance Number”)	|
|	EHDSImagingStudy- series.instancesInTheSeries.numberOfFrames	|	ImagingStudy.series.instance.extension[numberOfFrames]	|	SR-TID1601:EV (121140, DCM, “Number of Frames”)	|
|	EHDSImagingStudy- series.instancesInTheSeries.keyImage	|	Basic-KeyObj.	|		|
|	EHDSImagingStudy- series.instancesInTheSeries.keyImage.flag	|	Basic-KeyObj.extension[code].coding	|		|
|	EHDSImagingStudy- series.instancesInTheSeries.keyImage.reason	|	Basic-KeyObj.extension[code].text	|		|
|	EHDSImagingStudy- series.instancesInTheSeries.keyImage.seriesUID	|	Basic-KeyObj.extension[seriesUid]	|		|
|	EHDSImagingStudy- series.instancesInTheSeries.keyImage.instanceUID	|	Basic-KeyObj.extension[studyUid]	|		|
