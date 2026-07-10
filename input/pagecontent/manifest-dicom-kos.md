The base definition of the DICOM KOS Manifest is defined in [IHE MADO: DICOM KOS Manifest](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=41). In addition the following EU specific requirement apply:

* In TID 1600, the `TargetRegion` SHALL use a code from [[[ValueSetAnatomicalRegion]]]

### DICOM Modules

{% include dicom-module-general-study.md %}

{% include dicom-module-patient.md %}

{% include dicom-module-general-equipment.md %}

{% include dicom-module-sop-common.md %}

{% include dicom-module-key-object-document-series.md %}

{% include dicom-module-key-object-document.md %}

### DICOM Templates

{% include dicom-template-2010.md %}

{% include dicom-template-1600.md %}

{% include dicom-template-1601.md %}

{% include dicom-template-1602-s.md %}

{% include dicom-template-1602-i.md %}

{% include dicom-template-1609.md %}
