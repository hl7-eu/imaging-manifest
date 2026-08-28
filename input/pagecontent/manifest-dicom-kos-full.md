The base definition of the DICOM KOS Manifest is defined in [IHE MADO: DICOM KOS Manifest](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=41). In addition the following EU specific requirement apply:

* In TID 1600, the `TargetRegion` SHALL use a code from [ValueSetAnatomicalRegion]

### DICOM Modules

{% include kos/dicom-module-general-study-full.md %}

{% include kos/dicom-module-patient-full.md %}

{% include kos/dicom-module-general-equipment-full.md %}

{% include kos/dicom-module-sop-common-full.md %}

{% include kos/dicom-module-key-object-document-series-full.md %}

{% include kos/dicom-module-key-object-document-full.md %}

### DICOM Templates

{% include kos/dicom-template-2010-full.md %}

{% include kos/dicom-template-1602-s-full.md %}

{% include kos/dicom-kos-template-1602-i-full.md %}

{% include kos/dicom-template-1609-full.md %}
