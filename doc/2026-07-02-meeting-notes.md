## series.instancesInTheSeries.sopClass

SOPClass reference from Andries/Charles: 
> SR Document Content -> Content Sequence (0040,A730)->Referenced SOP Sequence(0008,1199)->Referenced SOP Class UID(0008,1150)

Original:
> Key Object Document -> Current Requested Procedure Evidence Sequence (0040,A375) -> Referenced Series Sequence (0008,1115) -> Referenced SOP Sequence(0008,1199) -> Referenced SOP Class UID(0008,1150)        ,
> SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE or COMPOSITE) -> Referenced SOP Sequence (0008,1199) -> Referenced SOP Class UID (0008,1150)

New:
> Key Object Document -> Current Requested Procedure Evidence Sequence (0040,A375) -> Referenced Series Sequence # SOPInst#anceUID(0008,1115) -> Referenced SOP Sequence(0008
Orginal:
>SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE or COMPOSITE) -> Referenced SOP Sequence (0008,1199) -> Referenced SOP Instance UID (0008,1155)

New 
>Key Object Document -> Current Requested Procedure Evidence Sequence (0040,A375) -> Referenced Series Sequence (0008,1115) -> Referenced SOP Sequence(0008,1199) -> Referenced SOP Class UID(0008,1155),1199) -> Referenced SOP Class UID(0008,1150)

## series.instancesInTheSeries.instanceUid
Orginal:
>SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE or COMPOSITE) -> Referenced SOP Sequence (0008,1199) -> Referenced SOP Instance UID (0008,1155)

New 
>Key Object Document -> Current Requested Procedure Evidence Sequence (0040,A375) -> Referenced Series Sequence (0008,1115) -> Referenced SOP Sequence(0008,1199) -> Referenced SOP Instance UID (0008,1155)

=====================================

Rename `XT-EHR mapping` to `EHDS logical model mapping`

=====================================

## 6.1 FHIR Manifest

Add a delta section:
1. obligations
2. the anatomical region extension needs to be present and the value set is changed from preferred to required.
3. Mapping on EU Core profiles and related changes in cardinalities (check and list them here)

AP Charles: update/check the DICOM part.

=================

Update RAD.MADO with Manifest identifier	MadoFhirBundle.identifier	SOP Instance UID (0008,0018), keep mapping, deeplink in the MADO spec.

==========================

AP BvdH: Send link/print of the KOS obligation page to the whole group for review.

-======

AP: BvdH check accessibility issues.

Accessibility issues:
1. Differences between the base spec and MADO is poluted by the obligation rendering - can we make this clearer, add notes, split off obligations/ add change table ... 