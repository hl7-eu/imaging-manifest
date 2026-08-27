Comments on the current spec version:

6.1.1

> Anatomical region extension. In MADO EU Imaging Study the extension[anatomical-region] is constrained to 1..* (it must be present) and its binding to ValueSetAnatomicalRegion is changed from preferred to required. The same required binding is applied to the bodysite concept in EU MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest.

Change to

> **Anatomical region constrains**: The extension[anatomical-region] is required (constrained to 1..*). The binding to ValueSetAnatomicalRegion is changed from `preferred` to `required`. The same updates are applied to the bodysite concept in EU MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest.



--------------------
(check for correct processing of profile hyperlinks [[[profile]]])> 

----------------------

4.1
>Document Consumer (typically clinician, but can also be patient-facing systems).
>IHE-MHD Document Provider.
>Imaging Source.

**change to**

Manifest:
>Content Creator/Document Source (Imaging Manifest)  - creates document
>Document Access Provider (Imaging Manifest) - provides document
>Document Consumer (Imaging Manifest)
(XC-)WADO-RS
>Imaging Document Source
>Imaging Document Consumer

update text to refer to the EU API IG
Update the plantum to reflect new names

update 
> GET DocumentReference?category=http://loinc.org|85430-7&subject=Patient/{id}
to
> GET DocumentReference?category=http://loinc.org|85430-7&subject:identifier={identifier}

add an example EU-1 to search for manifest related to a patient based on an identifier and anatomical region
make use cases subsections 

---------------------
update refernces to the released version of MADO and make sure all reference point to same version.


----
vaious technical changes from Andries

-------

Change
> This page reflects Volume 2 (Transactions) of the IHE MADO specification and documents the EU-implementation delta for this guide. Implementers of this IG SHALL be compliant with IHE-MADO. As such all requirements specified in IHE-MADO Volume 2 apply to this specification as well.

to

> This page reflects Volume 2 (Transactions) of the IHE MADO specification and documents the EU-implementation delta for this guide. No normative EU-specific change has been introduced relative to IHE MADO Volume 2. Implementers of this IG SHALL be compliant with IHE-MADO. As such all requirements specified in IHE-MADO Volume 2 apply to this specification as well.

(streamline page)


-----------------------

remove lines from dicom-kos
    remove all lines that do not hold an obligation or an IHE-Usage
Add obligation on all non-empty IHE-usage entries

--------------------------
DICOM-KOS
    DICOM-Type using a date - replace with DICOM type

ReferenceRequestSequence -> SHALL-populate

-----------------------------

The MadoBundle should have all restrictions applied on Bundle (e.g. search 0..0)
Bundle entry:creator -->  entry:creator-device

