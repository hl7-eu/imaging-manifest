The base definition of the DICOM KOS Manifest is defined in [IHE MADO: DICOM KOS Manifest](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=41). In addition the following EU specific requirement apply:

* In TID 1600, the `TargetRegion` SHALL use a code from [ValueSetAnatomicalRegion]

### DICOM Modules

{% include kos/dicom-module-general-study-lean.md %}

{% include kos/dicom-module-patient-lean.md %}

{% include kos/dicom-module-general-equipment-lean.md %}

{% include kos/dicom-module-sop-common-lean.md %}

{% include kos/dicom-module-key-object-document-series-lean.md %}

{% include kos/dicom-module-key-object-document-lean.md %}

### DICOM Templates

{% include kos/dicom-template-2010-lean.md %}

{% include kos/dicom-template-1600-lean.md %}

{% include kos/dicom-template-1601-lean.md %}

{% include kos/dicom-template-1602-s-lean.md %}

{% include kos/dicom-kos-template-1602-i-lean.md %}

{% include kos/dicom-template-1609-lean.md %}
