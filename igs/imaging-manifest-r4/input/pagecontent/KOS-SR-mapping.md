|	KOS-SR	|	FHIR		XtEHR	|
| 	 ---------		 ---------		 ---------	
|	v	|		|		|
|	SR-TID2010:2EV (113011, DCM, "Document Title Modifier")	|		|		|
|	SR-TID2010:3EV (113011, DCM, "Document Title Modifier")	|		|		|
|	SR-TID2010:4EV (113011, DCM, "Document Title Modifier")	|		|		|
|	SR-TID2010:5DTID 1204 “Language of Content Item and Descendants”	|		|		|
|	SR-TID2010:6DTID 1002 “Observer Context”	|		|		|
|	SR-TID2010:7EV (113012, DCM, "Key Object Description")	|		|		|
|	SR-TID2010:8	|	ImagingStudy.series.instance.extension[representative]	|		|
|	SR-TID2010:9	|	ImagingStudy.series.instance.extension[representative]	|		|
|	SR-TID2010:10	|	ImagingStudy.series.instance.extension[representative]	|		|
|	SR-TID2010:11TID1600 (111028, DCM, "Image Library")	|		|		|
|	SR-:	|		|		|
|	SR-TID1600:NLVM	|		|		|
|	SR-TID1600:1EV (111028, DCM, "Image Library")	|		|		|
|	SR-TID1600:2EV (126200, DCM, "Image Library Group")	|		|		|
|	SR-TID1600:3DTID 1602 “Image Library Entry Descriptors”	|		|		|
|	SR-TID1600:4DTID 1601 “Image Library Entry”	|		|		|
|	SR-TID1600:EV (121139, DCM, "Modality")	|	ImagingStudy.modality	|	EHDSImagingStudy- modality	|
|	SR-TID1600:EV (ddd011, DCM, “Study Instance UID”)	|	ImagingStudy.identifier[studyInstanceUid]	|	EHDSImagingStudy- header.identifier	|
|	SR-TID1600:EV (123014, DCM, "Target Region")	|	ImagingStudy.extension[anatomical]	|	EHDSImagingStudy- bodySite	|
|	SR-TID1600:EV (123014, DCM, "Target Region")	|	ImagingStudy.extension[anatomical].text	|	EHDSImagingStudy- bodySite	|
|	SR-TID1600:EV (ddd010, DCM, “Number of Study Related Series” 	|	ImagingStudy.series	|	EHDSImagingStudy- series	|
|	SR-:	|		|		|
|	SR-:	|		|		|
|	SR-TID1601:NLVM	|		|		|
|	SR-TID1601:1	|		|		|
|	SR-TID1601:2DTID 1602 “Image Library Entry Descriptors”	|		|		|
|	SR-TID1601:EV (121140, DCM, “Number of Frames”)	|	ImagingStudy.series.instance.extension[numberOfFrames]	|	EHDSImagingStudy- series.instancesInTheSeries.numberOfFrames	|
|	SR-TID1601:EV (ddd008, DCM, “Instance Number”)	|	ImagingStudy.series.instance.number	|	EHDSImagingStudy- series.instancesInTheSeries.instanceNumber	|
|	SR-TID1601:DTID 16XX Image Library Entry Descriptors for Key Object Selection	|		|		|
|	SR-:	|		|		|
|	SR-:	|		|		|
|	SR-TID1602:NLVM	|		|		|
|	SR-TID1602:1EV (121139, DCM, "Modality")	|	ImagingStudy.series.modality	|	EHDSImagingStudy- series.seriesModality	|
|	SR-TID1602:2EV (123014, DCM, "Target Region")	|		|		|
|	SR-TID1602:3EV (111027, DCM, "Image Laterality")	|		|		|
|	SR-TID1602:4EV (111060, DCM, "Study Date")	|		|		|
|	SR-TID1602:5EV (111061, DCM, "Study Time")	|		|		|
|	SR-TID1602:6EV (111018, DCM, "Content Date")	|		|		|
|	SR-TID1602:7EV (111019, DCM, "Content Time")	|		|		|
|	SR-TID1602:8EV (126201, DCM, "Acquisition Date")	|		|		|
|	SR-TID1602:9EV (126202, DCM, "Acquisition Time")	|		|		|
|	SR-TID1602:10EV (112227, DCM, "Frame of Reference UID")	|		|		|
|	SR-TID1602:11EV (110910, DCM, "Pixel Data Rows")	|		|		|
|	SR-TID1602:12EV (110911, DCM, "Pixel Data Columns")	|		|		|
|	SR-TID1602:13DTID 1603 “Image Library Entry Descriptors for Projection Radiography”	|		|		|
|	SR-TID1602:14DTID 1604 “Image Library Entry Descriptors for Cross-Sectional Modalities”	|		|		|
|	SR-TID1602:15DTID 1605 “Image Library Entry Descriptors for CT”	|		|		|
|	SR-TID1602:16DTID 1606 “Image Library Entry Descriptors for MR”	|		|		|
|	SR-TID1602:17DTID 1607 “Image Library Entry Descriptors for PET”	|		|		|
|	SR-TID1602:EV (ddd003, DCM, "Series Date")	|	ImagingStudy.series.started	|	EHDSImagingStudy- series.started	|
|	SR-TID1602:EV (ddd004, DCM, "Series Time")	|	ImagingStudy.series.started	|	EHDSImagingStudy- series.started	|
|	SR-TID1602:EV (ddd002, DCM, “Series Description”)	|	ImagingStudy.series.description	|	EHDSImagingStudy- series.description	|
|	SR-TID1602:EV (ddd005, DCM, “Series Number”)	|	ImagingStudy.series.number	|	EHDSImagingStudy- series.number	|
|	SR-TID1602:EV (ddd006, DCM, “Series Instance UID”)	|	ImagingStudy.series.uid	|	EHDSImagingStudy- series.seriesUid	|
|	SR-TID1602:EV (123014, DCM, "Target Region")	|	ImagingStudy.series.bodySite	|	EHDSImagingStudy- series.bodySite	|
|	SR-TID1602:EV (123014, DCM, "Target Region")	|	ImagingStudy.series.bodySite.text	|	EHDSImagingStudy- series.bodySite	|
|	SR-TID1602:EV (ddd007, DCM, “Number of Series Related Instances”) 	|	ImagingStudy.series.numberOfInstances	|	EHDSImagingStudy- series.numberOfInstances	|
