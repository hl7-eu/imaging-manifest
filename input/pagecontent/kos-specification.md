**Xt-EHR -- EHDS Imaging Study Manifest -- DICOM KOS Manifest
Implementation Guide**

Date: 21-01-2025

Draft Version: 7e

Scope: EHDS (Xt-EHR)

### Introduction

This document provides a comprehensive implementation guide for the
Xt-EHR EHDS Imaging Study Manifest defined as a DICOM Key Object
Selection Document (KOS) object with a Manifest Title Code.

The content requirements for the Imaging Study Manifest are defined in
[eHN Guidelines Medical Imaging Studies and Reports
(MIS)](https://health.ec.europa.eu/publications/ehn-guidelines-medical-imaging-studies-and-reports_en).
A fit/gap analysis between the eHN manifest requirements and the DICOM
Key Object Selection Document (KOS) IOD is presented. The way in which
the standard DICOM Key Object Selection Document (KOS) IOD is extended
to fill the identified gaps is also shown, leading to the full manifest
specification in terms of the mandatory modules and, in turn, the
attributes required to meet the eHN guideline requirements.

### References

{:.grid}
| **Name**   | **Reference** | **Version** |
| ---------- | ------------- | ----------  |
| DICOM      | [Digital Imaging and Communication in Medicine](https://www.dicomstandard.org/current) |  Latest |
| eHN MIS    | [eHN Guidelines on Medical Imaging Studies and Reports Release 1.1   (MIS)](https://health.ec.europa.eu/publications/ehn-guidelines-medical-imaging-studies-and-reports_en) | Release 1.1 |
| IHE-RAD    | [IHE Radiology Technical Framework](https://www.ihe.net/resources/technical_frameworks/#radiology) | Latest |
| MCWG       | [IHE Multi-Country Working Group on Imaging Information Sharing](https://www.ihe-europe.net/multi-country-working-group-Imaging-Information-Sharing) | Latest |

Table 1 eHN - 4.2. Imaging study manifest data set 

#### MCWG - Multi-Country Working Group

The MCWG has defined specific recommendations on the extension of the
DICOM KOS Manifest for use in both cross-border and national document
sharing infrastructures - [Extensions to Imaging Study
Manifest](https://www.ihe-europe.net/sites/default/files/2024-05/3-MCWG-Recommendations-KOS%20Manifest-FinalPublished-V9.pdf).
These align with the eHN Guideline gaps.

These extensions are referenced throughout this DICOM KOS manifest
specification.

### Requirements

#### EU - eHN Guidelines on Medical Imaging Studies and Reports

The content requirements for the Imaging Study Manifest are defined in
[eHN Guidelines Medical Imaging Studies and Reports
(MIS)](https://health.ec.europa.eu/publications/ehn-guidelines-medical-imaging-studies-and-reports_en)
-- Section 4.2. "Imaging study manifest data set" which states:

> The data set defines the contents of the key information about the imaging study as conveyed by the imaging study manifest data set. The imaging study manifest contains key information about the imaging study that is referenced, including the “pointers” that allow access to the series of images. 
> It is important to note that the metadata used in expressing the filters associated with the querying for a list of imaging studies and/or imaging reports are defined in Section 2 Article 10: Selection List and filtering Parameters. These parameters are expressed as coded values from standardized value sets to ensure a robust search for a list of relevant imaging studies. Such metadata filtering parameters are associated with imaging studies, but may not be present in the content of the imaging study manifest.


##### eHN Guideline -- Imaging Study Manifest Data Set

A fit/gap analysis of the eHN content requirements and the DICOM KOS
([DICOM](https://www.dicomstandard.org/current) -- DICOM Part 3:
Information Object Definitions -- A.35.4 Key Object Selection Document
IOD) specification shows that some of the required eHN content is not
supported by standard DICOM KOS IOD.

The Value Type specifying the DICOM KOS attribute optionality (presence)
is defined in the relevant module in the Key Object Selection Document
IOD Modules section below.

Table 1 eHN - 4.2. Imaging study manifest data set, shows the eHN
content requirements with the **DICOM KOS Support** column identifying
the specific DICOM attribute(s) used to meet the content requirement
color coded as follows:

<table border=1>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>DICOM Kos Support</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Direct support by standard DICOM KOS IOD</td>
</tr>
<tr class="even">
<td>Extension to DICOM KOS IOD. These extensions are based on the MCWG
<a
href="https://www.ihe-europe.net/sites/default/files/2024-05/3-MCWG-Recommendations-KOS%20Manifest-FinalPublished-V9.pdf">Extensions
to Imaging Study Manifest</a> recommendations.</td>
</tr>
<tr class="odd">
<td>MCWG extension not defined as eHN content requirement.</td>
</tr>
<tr class="even">
<td>No support in DICOM KOS Manifest for eHN content requirement.</td>
</tr>
</tbody>
</table>

The Value Type specifying the DICOM KOS attribute optionality (presence)
is defined in the relevant module in the Key Object Selection Document
IOD Modules section below.

<table border=1>
<colgroup>
<col style="width: 11%" />
<col style="width: 14%" />
<col style="width: 31%" />
<col style="width: 26%" />
<col style="width: 15%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="5">Excerpt from <strong>eHN – 4.2. Imaging study manifest
data set</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td colspan="2"><strong>Field</strong></td>
<td><strong>Field Description</strong></td>
<td colspan="2"><strong>DICOM KOS Support</strong></td>
</tr>
<tr class="even">
<td colspan="5">B.1 Imaging study Manifest Dataset</td>
</tr>
<tr class="odd">
<td>B.1.1</td>
<td>Study instance UID</td>
<td><p>Globally unique identifier of the study. If one or more series
elements are present in the Imaging Study, then they should, share the
same DICOM Study UID identifier.</p>
<p>This element is relevant for the interactive retrieve of all images
of an available studies.</p></td>
<td>Study Instance UID</td>
<td>(0020,000D)</td>
</tr>
<tr class="even">
<td>B.1.2</td>
<td>Description</td>
<td><p>The Imaging Manager description of the study.
Institution-generated description of the Study performed.</p>
<p>This element is relevant for the interactive selection of the
available studies, preferably in English.</p></td>
<td>Study Description</td>
<td>(0008,1030) </td>
</tr>
<tr class="odd">
<td rowspan="2">B.1.3</td>
<td rowspan="2">Study custodian</td>
<td rowspan="2">Organization name, address, and contact
information.</td>
<td><p>Institution Name</p>
<p>MCWG extension contains both the <strong>Institution (Organization)
name and its unique national identifier</strong>. Such an identifier is
a reliable and a stable way to identify the source institution.</p></td>
<td>(0008,0080)</td>
</tr>
<tr class="even">
<td><p><strong>Organization address</strong> and <strong>contact
information</strong> is not supported.</p>
<p><u>Rationale:</u> Current contact information is unlikely to be up to
date if defined at the time of the publication of an imaging study
manifest.</p></td>
<td></td>
</tr>
<tr class="odd">
<td colspan="5">B.1.4 List of Referenced Series</td>
</tr>
<tr class="even">
<td>B.1.4.1</td>
<td>Series Description</td>
<td>For each imaging Study Series includes descriptive information about
the series (e.g. phase). This element is relevant for the interactive
selection of series within an available studies.</td>
<td><p>Series Description</p>
<p>MCWG extension.</p></td>
<td>(0008,103E)  </td>
</tr>
<tr class="odd">
<td>B.1.4.2</td>
<td>Series Unique Identifier</td>
<td><p>A globally Unique ID for the series. All images belonging to such
a series will bear this element.</p>
<p>This element is relevant for the interactive selection of a specific
series within an available study.</p></td>
<td>Series Instance UID​</td>
<td>(0020,000E) </td>
</tr>
<tr class="even">
<td>B.1.4.3</td>
<td>Modality</td>
<td>The acquisition modality (acquire on a patient) or technical
modality (computer generated instance such as a presentation state)
associated with the images of the series.</td>
<td><p>Modality</p>
<p>MCWG extension.</p></td>
<td>(0008,0060) </td>
</tr>
<tr class="odd">
<td>B.1.4.4</td>
<td>Radiation dose information</td>
<td>Kerma area product (KAP), Total KAP, Kerma at the end of tube
(dental X-ray), Thickness of breast for the calculation of Average
absorbed breast dose. Further work is needed to refine this definition
of dose data in the imaging study manifest. The presence of the dose
management reports within the imaging study as standardized by DICOM may
be an alternative to consider in later revision of this guideline.</td>
<td><p>Not supported.</p>
<p><u>Rationale:</u> As suggested in the eHN Guideline, further work has
demonstrated that this information <strong>should not be included in the
Manifest.</strong></p>
<p>The use of a dose management report within the imaging study, as
standardized by DICOM, is a better approach and is already widely
deployed.</p></td>
<td></td>
</tr>
<tr class="even">
<td rowspan="4">B.1.4.5</td>
<td rowspan="4">Other series information</td>
<td>Imaging Series information such as:</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>Series number</td>
<td>Series Number​</td>
<td>(0020,0011)​ </td>
</tr>
<tr class="even">
<td></td>
<td><p>Series Date</p>
<p>MCWG extension.</p></td>
<td>(0008,0021) </td>
</tr>
<tr class="odd">
<td></td>
<td><p>Series Time</p>
<p>MCWG extension.</p></td>
<td>(0008,0031) </td>
</tr>
<tr class="even">
<td rowspan="2">B.1.4.6</td>
<td rowspan="2">Series endpoint</td>
<td rowspan="2">An endpoint describes the technical details of a
location that can be connected to for the delivery/retrieval of imaging
information. Sufficient information is required to ensure that a
connection can be made securely, and appropriate data transmitted as
defined by the endpoint owner. These may be locally hosted services,
regional services, or national services.</td>
<td>Retrieve Location UID</td>
<td>(0040,E011)​ </td>
</tr>
<tr class="odd">
<td>Retrieve URL​</td>
<td>(0008,1190)​ </td>
</tr>
<tr class="even">
<td colspan="5">B.1.4.7 List of Referenced Instances in the referenced
series</td>
</tr>
<tr class="odd">
<td>B.1.4.7.1</td>
<td>Instance Globally Unique Identifier</td>
<td>Unique Identifier for the image instance</td>
<td>Referenced SOP Instance UID</td>
<td>​(0008,1155)​ </td>
</tr>
<tr class="even">
<td>B.1.4.7.2</td>
<td>Instance Class Globally Unique Identifier</td>
<td>Unique identifier for the class of image instance</td>
<td>Referenced SOP Class UID</td>
<td>​(0008,1150)​ </td>
</tr>
<tr class="odd">
<td>B.1.4.7.3</td>
<td>Instance Number</td>
<td>Integer assigned to an image by the acquisition modality.</td>
<td><p>Instance Number</p>
<p>MCWG extension.</p></td>
<td>(0020,0013) </td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td><p>Number Of Frames</p>
<p>MCWG extension.</p></td>
<td>(0028,0008)</td>
</tr>
</tbody>
</table>

### Imaging Study Manifest -- DICOM KOS Manifest Specification

The following section defines the specification of the imaging study
manifest in terms of a DICOM Key Object Selection Document (KOS) IOD
with a Manifest Title Code.

#### Key Object Selection Document IOD Modules

The following table specifies the mandatory modules of the KOS IOD.

<table border=1>
<caption><p><span id="_Toc183160511" class="anchor"></span>Table 4 DICOM
PS3.3 Table C.7-3 General Study Module</p></caption>
<colgroup>
<col style="width: 23%" />
<col style="width: 32%" />
<col style="width: 27%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table A.35.4-1 Key
Object Selection Document IOD Modules</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>IE</strong></td>
<td><strong>Module</strong></td>
<td><strong>Reference PS3.3</strong></td>
<td><strong>Usage</strong></td>
</tr>
<tr class="even">
<td>Patient</td>
<td>Patient Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.html#sect_C.7.1.1">C.7.1.1</a></td>
<td>M</td>
</tr>
<tr class="odd">
<td>Study</td>
<td>General Study Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.2.html#sect_C.7.2.1">C.7.2.1</a></td>
<td>M</td>
</tr>
<tr class="even">
<td>Series</td>
<td>Key Object Document Series Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.17.6.html#sect_C.17.6.1">C.17.6.1</a></td>
<td>M</td>
</tr>
<tr class="odd">
<td>Equipment</td>
<td>General Equipment Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.5.html#sect_C.7.5.1">C.7.5.1</a></td>
<td>M</td>
</tr>
<tr class="even">
<td rowspan="3">SR Document</td>
<td>Key Object Document Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.17.6.2.html">C.17.6.2</a></td>
<td>M</td>
</tr>
<tr class="odd">
<td>SR Document Content Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.17.3.html">C.17.3</a></td>
<td>M</td>
</tr>
<tr class="even">
<td>SOP Common Module</td>
<td><a
href="http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.12.html#sect_C.12.1">C.12.1</a></td>
<td>M</td>
</tr>
</tbody>
</table>

The following sections specify each of the KOS IOD modules in detail.
The Attributes belonging to each module are defined by Name, Tag, Value
Type and Attribute Description.

The DICOM Value Type (see DICOM PS 3.5 -- section 7.4 Data Element Type)
describes the standard attribute presence in the module and is copied
from the Key Object Selection Document IOD specification (see DICOM PS
3.3 -- section A.35.4 Key Object Selection Document IOD).

Some attributes have been added to the Standard KOS SOP Class defining a
Standard Extended KOS SOP Class. These additional attributes are
formally defined with a presence of Type 3 (optional), but in order to
enhance manifest interoperability to meet the eHN Guideline
requirements, an "[EHDS]{.mark}" Value Type has been added to indicate
the "required" presence. This approach is similar to the IHE-RAD R & R+
extensions for the IHE XDS-I.b profile requirements.

The following color coding is used in the module tables to highlight the
attributes added to the standard KOS IOD.

<table border="1">
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Value Types</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Standard DICOM KOS IOD attribute Value Type.</td>
</tr>
<tr class="even">
<td>Extension to DICOM KOS IOD. These extensions are based on the MCWG
<a
href="https://www.ihe-europe.net/sites/default/files/2024-05/3-MCWG-Recommendations-KOS%20Manifest-FinalPublished-V9.pdf">Extensions
to Imaging Study Manifest</a> recommendations.</td>
</tr>
</tbody>
</table>

#### Patient Module

Table C.7-1 specifies the Attributes of the Patient Module, which
identify and describe the Patient who is the subject of the Study.
<table border="1">
<caption><p><span id="_Toc183160513" class="anchor"></span>Table 6 DICOM
PS3.3 Table C.7-8 General Equipment Module</p></caption>
<colgroup>
<col style="width: 29%" />
<col style="width: 13%" />
<col style="width: 12%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.7-1 Patient
Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>Patient's Name​</td>
<td>(0010,0010) </td>
<td>2</td>
<td>Patient's full name.</td>
</tr>
<tr class="odd">
<td>Patient ID​</td>
<td>(0010,0020)​ </td>
<td><p><mark>2</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Primary identifier for the patient.</p>
<p>Value: National Patient Id.</p></td>
</tr>
<tr class="even">
<td>Issuer of Patient ID</td>
<td>(0010,0021) </td>
<td>3</td>
<td><p>Identifier of the Assigning Authority (system, organization,
agency,​ or department) that issued the Patient ID.</p>
<p>If present should contain a label that corresponds to the authority
identified by the Universal Entity ID (0010,0032) in the Issuer of
Patient ID Qualifiers Sequence (0010,0024).</p></td>
</tr>
<tr class="odd">
<td>Issuer of Patient ID Qualifiers Sequence</td>
<td>(0010,0024)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Attributes specifying or qualifying the identity of the Issuer of
the​ Patient ID (0010,0021), or scoping the Patient ID (0010,0020).​</p>
<p>Only a single Item shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt; Universal Entity ID</td>
<td>(0010,0032)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Globally unique identifier (OID) for the Patient ID Assigning
Authority.​</p>
<p>The authority identified by this attribute shall be the same as that​
labelled by the Issuer of Patient ID (0010,0021).</p></td>
</tr>
<tr class="odd">
<td>&gt; Universal Entity ID Type</td>
<td>(0010,0033)</td>
<td>1C</td>
<td><p>Standard defining the format of the Universal Entity ID. Required
if Universal​ Entity ID (0040,0032) is present.</p>
<p>Fixed value: “ISO”</p></td>
</tr>
<tr class="even">
<td>&gt; Type of Patient ID</td>
<td>(0010,0022)</td>
<td>3</td>
<td><p>The type of identifier in the Patient ID (0010,0020).</p>
<p>Fixed value (if present): “TEXT”</p></td>
</tr>
<tr class="odd">
<td>Patient's Birth Date​</td>
<td>(0010,0030)​ </td>
<td>2</td>
<td>Birth date of the patient.</td>
</tr>
<tr class="even">
<td>Patient's Sex​</td>
<td>(0010,0040)​ </td>
<td>2</td>
<td><p>Sex of the named patient.</p>
<p>Enumerated Values:</p>
<ul>
<li><p>“M” - male</p></li>
<li><p>“F” - female</p></li>
<li><p>“O” - other</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Patient Comments</td>
<td>(0010,4000)</td>
<td>3</td>
<td>Used for national extensions (e.g. birth place) associated to
patient demographics information used to validate the consistency
between the patient ID and its demographic traits beyond sex, birth
date, and names.</td>
</tr>
<tr class="even">
<td>Other Patient IDs Sequence</td>
<td>(0010,1002) </td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>A Sequence of identification numbers or codes used to identify
the​ Patient, which may or may not be human readable, and may or may​ not
have been obtained from an implanted or attached device such​ as an RFID
or barcode.​</p>
<p>One or more Items shall be included in this Sequence.</p>
<p>Values: National, Regional and Local Patient Ids.</p>
<p>Note: This attribute should provide a list of the national, regional
and local patient identifiers. The local patient identifiers are those
known in the imaging source at the time of the manifest
creation.</p></td>
</tr>
<tr class="odd">
<td>&gt; Patient ID</td>
<td>(0010,0020)</td>
<td>1</td>
<td>An identifier for the Patient.</td>
</tr>
<tr class="even">
<td>&gt; Issuer of Patient ID</td>
<td>(0010,0021)</td>
<td>3</td>
<td><p>Identifier of the Assigning Authority (system, organization,
agency,​ or department) that issued the Patient ID (0010,0020).</p>
<p>If present should contain a label that corresponds to the authority
identified by the Universal Entity ID (0010,0032) in the Issuer of
Patient ID Qualifiers Sequence (0010,0024).</p></td>
</tr>
<tr class="odd">
<td>&gt; Issuer of Patient ID Qualifiers Sequence</td>
<td>(0010,0024)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Attributes specifying or qualifying the identity of the Issuer of
the​ Patient ID (0010,0021), or scoping the Patient ID (0010,0020).</p>
<p>Only a single Item shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt; Universal Entity ID</td>
<td>(0010,0032)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Globally unique identifier (OID) for the Patient ID Assigning
Authority.​</p>
<p>The authority identified by this attribute shall be the same as that​
labelled by the Issuer of Patient ID (0010,0021).</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt; Universal Entity ID Type</td>
<td>(0010,0033)</td>
<td>1C</td>
<td><p>Standard defining the format of the Universal Entity ID. Required
if Universal​ Entity ID (0040,0032) is present.</p>
<p>Fixed value: “ISO”</p></td>
</tr>
<tr class="even">
<td>&gt;&gt; Type of Patient ID</td>
<td>(0010,0022)</td>
<td>1</td>
<td><p>The type of identifier in the Patient ID (0010,0020) in this
Item.</p>
<p>Fixed value: “TEXT”</p>
<p>Note: This attribute is mandatory (type 1) in this item.</p></td>
</tr>
</tbody>
</table>


#### General Study Module

Table C.7-3 specifies the Attributes, which identify and describe the
Study performed upon the Patient.

<table border="1">
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 8%" />
<col style="width: 55%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.7-3 General
Study Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>Study Instance UID​</td>
<td>(0020,000D) </td>
<td>1</td>
<td><p>Unique identifier for the Study.</p>
<p>Copy of the referenced study’s Study Instance UID (0020,000D).</p>
<p>Note: There is a 1 to 1 relationship between this KOS manifest and
the study that this KOS manifest references.</p></td>
</tr>
<tr class="odd">
<td>Study Date​</td>
<td>(0008,0020) </td>
<td><p><mark>2</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Date the Study started.</p>
<p>Note: The study date needs to be defined and, although Type 2 in the
referenced imaging study, is by experience always
quasi-present.</p></td>
</tr>
<tr class="even">
<td>Study Time​</td>
<td>(0008,0030)​ </td>
<td>2</td>
<td>Time the Study started.</td>
</tr>
<tr class="odd">
<td>Referring Physician's Name​</td>
<td>(0008,0090)​ </td>
<td>2</td>
<td>Name of the Patient's referring physician.</td>
</tr>
<tr class="even">
<td>Study ID</td>
<td>(0020,0010)</td>
<td>2</td>
<td>User or equipment generated Study identifier.</td>
</tr>
<tr class="odd">
<td>Accession Number</td>
<td>(0008,0050) </td>
<td>2</td>
<td><p>A departmental IS generated number that identifies the order for
the Study.</p>
<p>The Accession Number (0008,0050) is associated with a departmental IS
(RIS) request. There is no departmental IS (RIS) request for a KOS
manifest and so this attribute must be present with no value
defined.</p>
<p>Note: As there is a need to associate several RIS requests to a
single study, the RIS request accession number(s) are placed in the
Referenced Request Sequence (0040,A370).</p></td>
</tr>
<tr class="even">
<td>Study Description</td>
<td>(0008,1030) </td>
<td>3</td>
<td>Institution-generated description or classification of the​ Study
performed.</td>
</tr>
</tbody>
</table>
Table 7 DICOM PS3.3 Table C.17.6-2 Key Object Document Module

#### Key Object Document Series Module

Table C.17.6-1 defines the Attributes of the Key Object Document Series.

<table border="1">
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 8%" />
<col style="width: 55%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.17.6-1 Key
Object Document Series Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>Modality</td>
<td>​(0008,0060) </td>
<td>1</td>
<td>Fixed value: “KO”</td>
</tr>
<tr class="odd">
<td>Series Instance UID​</td>
<td>(0020,000E) </td>
<td>1</td>
<td><p>Unique Identifier for the Series.</p>
<p>DICOM Series Instance UID assigned by KOS Manifest creator for the
series where the KOS Manifest is placed. </p></td>
</tr>
<tr class="even">
<td>Series Number​</td>
<td>(0020,0011)​ </td>
<td>1</td>
<td><p>A number that is not already used by another series in the study
that identifies the Series.</p>
<p>Recommendation to assign a value of 59 if unused.</p></td>
</tr>
<tr class="odd">
<td>Series Date</td>
<td>(0008,0021)</td>
<td>3</td>
<td><p>Date the Series started.</p>
<p>If the KOS Manifest is the first one assigned to a new series, the
date value should be the same as the date of the KOS Manifest
creation.</p></td>
</tr>
<tr class="even">
<td>Series Time</td>
<td>(0008,0031)</td>
<td>3</td>
<td><p>Time the Series started.</p>
<p>If the KOS Manifest is the first one assigned to a new series, the
time value should be the same as the time of the KOS Manifest
creation.</p></td>
</tr>
<tr class="odd">
<td>Referenced Performed Procedure Step Sequence</td>
<td>(0008, 1111)</td>
<td>2</td>
<td><p>Uniquely identifies the Performed Procedure Step SOP Instance for
which the Series is created.</p>
<p>No items shall be included in this Sequence.</p></td>
</tr>
</tbody>
</table> 
Table 8 DICOM PS3.3 Table C.17-4 SR Document Content Module

#### General Equipment Module

Table C.7-8 specifies the Attributes of the General Equipment Module,
which identify and describe the piece of equipment that produced​
Composite Instances.

<table border="1">
<caption><p><span id="_Toc183160516" class="anchor"></span>Table 9 DICOM
PS3.3 Table C.12-1 SOP Common Module</p></caption>
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 8%" />
<col style="width: 55%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.7-8 General
Equipment Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>Manufacturer​</td>
<td>(0008,0070) </td>
<td><p><mark>2</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td>Manufacturer of the equipment that produced the KOS manifest. This
attribute is required to facilitate the discovery of errors’ sources in
the creation of KOS Manifests.</td>
</tr>
<tr class="odd">
<td>Institution Name</td>
<td>(0008,0080)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Defines the institution that created the KOS manifest. This
information is important to trace back any content error in a KOS
Manifest.</p>
<p>Fixed value configured onsite at install time of the software that
created the KOS Manifests.</p>
<p>Note: It is recommended by IHE MCWG to format this attribute
according to the HL7 V2.5 XON data type so that it contains, in addition
to the institution name, its globally unique identifier. This format is
identical to the format of the authorInstitution Attribute of the MHD,
XDS and XCA metadata.</p></td>
</tr>
</tbody>
</table>

Table 9 DICOM PS3.3 Table C.12-1 SOP Common Module

#### Key Object Document Module

Table C.17.6-2 specifies the Attributes of a Key Object Selection
Document. These Attributes identify and provide context for the Key​
Object Selection Document.
<table border="1">
<caption><p>Table 10 Document Sharing Metadata and DICOM KOS Manifest
attribute alignment</p></caption>
<colgroup>
<col style="width: 22%" />
<col style="width: 14%" />
<col style="width: 10%" />
<col style="width: 52%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.17.6-2 Key
Object Document Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>Instance Number​</td>
<td>(0020,0013)</td>
<td>1</td>
<td>A number that identifies the Document.</td>
</tr>
<tr class="odd">
<td>Content Date​</td>
<td>(0008,0023)​</td>
<td>1</td>
<td>The date the document content creation started.</td>
</tr>
<tr class="even">
<td>Content Time​</td>
<td>(0008,0033)​</td>
<td>1</td>
<td>The time the document content creation started.</td>
</tr>
<tr class="odd">
<td>Referenced Request​ Sequence</td>
<td>(0040,A370)</td>
<td>1C</td>
<td><p>Identifies Requested Procedures that are being fulfilled
(completely​ or partially). </p>
<p>This sequence will contain the same number of items as the number of
<strong>unique combinations of accession numbers and order placer
numbers associated with this Study</strong>. </p>
<p>Each element shall have an Accession Number and an Order Placer
Number corresponding to and associated with this Study.</p></td>
</tr>
<tr class="even">
<td>&gt; Study Instance UID</td>
<td>(0020,000D)</td>
<td>1</td>
<td><p>Unique Identifier for the Study.</p>
<p>Copy of the referenced study’s Study Instance UID (0020,000D).</p>
<p>Note: There is a 1 to 1 relationship between this KOS manifest and
the study that this KOS manifest references.</p></td>
</tr>
<tr class="odd">
<td>&gt; Referenced Study Sequence</td>
<td>(0008,1110)</td>
<td>2</td>
<td><p>Uniquely identifies the Study SOP Instance.</p>
<p>No items shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt; Accession Number</td>
<td>(0008,0050)</td>
<td><p><mark>2</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td>A departmental IS generated number that identifies the imaging order
for the Study. Shall contain a value associated with the Placer Order
Number (0040,2016) in the sequence item.</td>
</tr>
<tr class="odd">
<td>&gt; Issuer of Accession Number Sequence</td>
<td>(0008,0051)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Identifier of the Assigning Authority that issued the​ Accession
Number (0008,0050).​ A value shall be present.</p>
<p>Only a single Item shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt; Universal Entity ID</td>
<td>(0010,0032)</td>
<td><p><mark>1C</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td>Globally unique identifier (OID) for the Accession Number
(0008,0050) Assigning Authority.</td>
</tr>
<tr class="odd">
<td>&gt;&gt; Universal Entity ID Type</td>
<td>(0010,0033)</td>
<td>1C</td>
<td><p>Standard defining the format of the Universal Entity ID. Required
if Universal​ Entity ID (0040,0032) is present.</p>
<p>Fixed value: “ISO”</p></td>
</tr>
<tr class="even">
<td>&gt; Filler Order Number / Imaging Service Request</td>
<td>(0040,2017)</td>
<td>2</td>
<td><p>The order number assigned to the Imaging Service Request by the
party performing the order.</p>
<p>This attribute may be empty. If a value is present it may be
ignored.</p></td>
</tr>
<tr class="odd">
<td>Requested Procedure ID</td>
<td>(0040,1001)</td>
<td>2</td>
<td>This attribute may be empty. If a value is present it may be
ignored.</td>
</tr>
<tr class="even">
<td>Requested Procedure Description</td>
<td>(0032,1060)</td>
<td>2</td>
<td>This attribute may be empty. If a value is present it may be
ignored.</td>
</tr>
<tr class="odd">
<td>Requested Procedure Code Sequence</td>
<td>(0032,1064)</td>
<td>2</td>
<td><p>A Sequence that conveys the requested procedure.</p>
<p>Zero or more Items shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt; Placer Order Number / Imaging Service Request</td>
<td>(0040,2016)</td>
<td>2</td>
<td><p>The order number assigned to the Imaging Service Request by the
party placing the order.</p>
<p>Shall contain a value associated with the Accession Number
(0008,0050) in the sequence item.</p></td>
</tr>
<tr class="odd">
<td>&gt; Order Placer Identifier Sequence</td>
<td>(0040,0026) </td>
<td><p><mark>3</mark></p>
<p><mark>1C (EHDS)</mark></p></td>
<td><p>Identifier of the Assigning Authority that issued the​ Placer
Order Number​ (0040,2016).​</p>
<p>Shall be present if Placer Order Number / Imaging Service Request
(0040,2016) is not empty.</p>
<p>Only a single Item shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt; Universal Entity ID</td>
<td>(0010,0032)</td>
<td><p><mark>1C</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td>Globally unique identifier (OID) for the Placer Order Number​
(0040,2016) Assigning Authority.</td>
</tr>
<tr class="odd">
<td>&gt;&gt; Universal Entity ID Type</td>
<td>(0010,0033)</td>
<td>1C</td>
<td><p>Standard defining the format of the Universal Entity ID. Required
if Universal​ Entity ID (0040,0032) is present.</p>
<p>Fixed value: “ISO”</p></td>
</tr>
<tr class="even">
<td>Current Requested Procedure​ Evidence Sequence</td>
<td>(0040,A375) </td>
<td>1</td>
<td>List of all Composite SOP Instances references in Content Sequence
(0040,A730), including all presentation states, real world value maps
and other accompanying composite instances that are referenced from the
content items.</td>
</tr>
<tr class="odd">
<td>&gt; Study Instance UID​</td>
<td>(0020,000D) </td>
<td><p>1</p>
<p>IHE-RAD R</p></td>
<td><p>Unique identifier for the Study.</p>
<p>Copy of the referenced study’s Study Instance UID (0020,000D).</p>
<p>Note: There is a 1 to 1 relationship between this KOS manifest and
the study that this KOS manifest references.</p></td>
</tr>
<tr class="even">
<td>&gt; Referenced Series Sequence​</td>
<td>(0008,1115)​ </td>
<td><p>1</p>
<p>IHE-RAD R</p></td>
<td>Sequence of Items where each item includes the Attributes of a
Series containing referenced Composite Object(s)</td>
</tr>
<tr class="odd">
<td colspan="4">For each series in referenced PACS study {</td>
</tr>
<tr class="even">
<td>&gt;&gt; Series Date</td>
<td>(0008,0021) </td>
<td><p><mark>3</mark></p>
<p><mark>2 (EHDS)</mark></p></td>
<td><p>Date the Series started.</p>
<p>Fallback to fill this value from an instance date of the first
referenced image in the corresponding series within the imaging
study.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt; Series Time</td>
<td>(0008,0031)</td>
<td><p><mark>3</mark></p>
<p><mark>2 (EHDS)</mark></p></td>
<td>Time the Series started.</td>
</tr>
<tr class="even">
<td>&gt;&gt; Modality</td>
<td>(0008,0060) </td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td>Type of device, process or method that created the​ Instances in this
Series.</td>
</tr>
<tr class="odd">
<td>&gt;&gt; Series Description</td>
<td>(0008,103E)  </td>
<td><p><mark>3</mark></p>
<p><mark>2 (EHDS)</mark></p></td>
<td>Description of the Series.</td>
</tr>
<tr class="even">
<td>&gt;&gt; Series Instance UID​</td>
<td>(0020,000E) </td>
<td><p>1</p>
<p>IHE-RAD R</p></td>
<td>Unique Identifier of a Series that is part of this Study and
contains the referenced Composite Object(s)</td>
</tr>
<tr class="odd">
<td>&gt;&gt; Retrieve AE Title​</td>
<td>(0008,0054)​ </td>
<td><p>3</p>
<p>IHE-RAD R+</p></td>
<td><p>Title of the DICOM Application Entity where the Composite
Object(s) may be retrieved on the network.</p>
<p>This attribute may be present but shall be ignored.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt; Retrieve Location UID​</td>
<td>(0040,E011)​ </td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Unique identifier of the system where the Composite Object(s) may
be retrieved on the network.</p>
<p>MCWG: Unique identifier of the location where the instances are
stored on the network. This is an OID that may be used as a reference to
obtain the actual retrieval service end-point. The retrieval URL should
then be composed by the consumer using the service end-point and
study/series/instance UIDs from this manifest.</p>
<p>Usage of this attribute in a cross-border (country A/B) context
requires further study.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt; Retrieve URL​</td>
<td>(0008,1190)​ </td>
<td><p><mark>3</mark></p>
<p><mark>IHE-RAD R+</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>URL specifying the location of the referenced Instance(s).</p>
<p>MCWG: The Retrieve URL is the Base URI + Study Instance UID​
(0020,000D) + Series Instance UID (0020,000E), so that, if left
unchanged, can be used to retrieve the instances of the series where the
Retrieve URL is placed in the tree of references. It could be changed to
perform a retrieve at an instance or entire study level.</p>
<p>The Base URI is the intra-border (country A) value for retrieval at a
national/regional level. The way in which this Base URI is
modified/prefixed for cross-border (country B) usage is for further
study.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt; Referenced SOP Sequence​</td>
<td>(0008,1199)​ </td>
<td><p>1</p>
<p>IHE-RAD R</p></td>
<td>References to Composite Object SOP Class/SOP Instance pairs that are
part of the Study defined by Study Instance UID and the Series defined
by Series Instance UID (0020,000E). One or more Items shall be included
in this Sequence.</td>
</tr>
<tr class="odd">
<td colspan="4">For each instance in referenced PACS series {</td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt; Referenced SOP Class UID</td>
<td>​(0008,1150)​ </td>
<td><p>1</p>
<p>IHE-RAD R</p></td>
<td>Uniquely identifies the referenced SOP Class.</td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt; Referenced SOP Instance UID​</td>
<td>(0008,1155) </td>
<td><p>1</p>
<p>IHE-RAD R</p></td>
<td>Uniquely identifies the referenced SOP Instance.</td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt; Instance Number</td>
<td>(0020,0013) </td>
<td><p><mark>3</mark></p>
<p><mark>2 (EHDS)</mark></p></td>
<td>A number that identifies this SOP Instance.</td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt; Number Of Frames</td>
<td>(0028,0008) </td>
<td><p><mark>3</mark></p>
<p><mark>1C (EHDS)</mark></p></td>
<td><p>Number of frames in a Multi-frame Image.</p>
<p>Required if the instance contains multi-frame pixel data.</p></td>
</tr>
<tr class="even">
<td colspan="4"><p>Significant Images – see “Sharing imaging studies
with images marked as significant” (MCWG extension).</p>
<p>Expresses the fact that the Reference SOP Instance is flagged by a
KOS/KIN and links to the Referenced SOP Instance associated with the
KOS/KIN instance that marks the SOP instance as being
significant.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt; Related Series Sequence</td>
<td>(0008,1250)</td>
<td><p><mark>3</mark></p>
<p><mark>1C (EHDS)</mark></p></td>
<td><p>Sequence of Items identifying Series that contain a KOS/KIN
marking the SOP Instance in this Item (of the enclosing Referenced SOP
Sequence (0008,1199)) as being significant.</p>
<p>Required if the SOP Instance in this Item (of the enclosing
Referenced SOP Sequence (0008,1199) is marked as significant in a
KOS/KIN.<br />
One or more Items shall be present in this Sequence.</p>
<p>Note: If multiple KOS/KIN tag a specific SOP Instance in a given
study, those KOS/KIN may be assigned to the same series or to different
series.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt;&gt; Series Instance UID</td>
<td>(0020,000E)</td>
<td>1</td>
<td><p>Series Instance UID of the series to which a KOS/KIN instance
belongs.</p>
<p>This attribute facilitates traversing the KOS Manifest through the
series in which is located a KOS/KIN in the corresponding Reference SOP
Sequence (0008,1199).  This helps when accessing the content of the
KOS/KIN comment, if any.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt;&gt; Referenced SOP Sequence</td>
<td>(0008,1199)</td>
<td>1</td>
<td><p>The set of KOS/KIN SOP Instances in this Item of Related Series
Sequence (0008,1250).</p>
<p>One or more Items shall be included in this Sequence.</p>
<p>Note: If multiple KOS/KIN tag a specific SOP Instance in a given
study, those KOS/KIN may be assigned to the same series or to different
series.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt;&gt;&gt; Referenced SOP Class UID</td>
<td>(0008,1150)</td>
<td>1</td>
<td><p>SOP Class UID of the referenced KOS/KIN instance.</p>
<p>Fixed value: KOS SOP Class UID.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt;&gt;&gt; Referenced SOP Instance UID</td>
<td>(0008,1155)</td>
<td>1</td>
<td>SOP Instance UID of the referenced KOS/KIN instance.</td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt;&gt;&gt; Purpose of Reference Code Sequence</td>
<td>(0040,A170)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td></td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt;&gt;&gt;&gt; Code Value</td>
<td>(0008,0100)</td>
<td>1</td>
<td><p>Shall use the Code Value “113000” if this Item (of the enclosing
Referenced SOP Sequence (0008,1199)) is flagged as a significant
image.</p>
<p>May use any other code value from BCID 7010.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt;&gt;&gt;&gt; Coding Scheme Designator</td>
<td>(0008,0102)</td>
<td>1</td>
<td><p>Identifier of the coding scheme in which the Code Value
(0008,0100).</p>
<p>DICOM coding scheme. Shall use a fixed value: Coding Scheme
Designator “DCM”.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt;&gt;&gt;&gt; Code Meaning</td>
<td>(0008,0104)</td>
<td>1</td>
<td><p>Convey the code meaning as specified by BCID 7010.</p>
<p>E.g., “Of  Interest” for the code value “113000”.</p></td>
</tr>
<tr class="even">
<td colspan="4"><p>Significant Images – see “Sharing imaging studies
with images marked as significant” (MCWG extension).</p>
<p>Add a copy of the comment (“Key Object Description”) in every
reference to a KOS/KIN SOP instance that is used to flag one or more SOP
instances.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt;&gt; Content Sequence</td>
<td>(0040,A730)</td>
<td><p><mark>3</mark></p>
<p><mark>2C (EHDS)</mark></p></td>
<td><p>Sequence of Text Values providing the Key Object Description of a
KOS/KIN.<br />
Required if this Item (of the enclosing Referenced SOP Sequence
(0008,1199)) references a KOS/KIN instance with a title code “Of
Interest”.</p>
<p>May be present if this Item (of the enclosing Referenced SOP Sequence
(0008,1199)) references a KOS/KIN instance with a title code other than
“Of Interest”.      </p>
<p>Zero or one Item shall be included in this Sequence.</p></td>
</tr>
<tr class="even">
<td>&gt;&gt;&gt;&gt; Text Value</td>
<td>(0040,A160)</td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Contains the Concept Name (113012, DCM, "Key Object Description")
Text Value copied from the KOS/KIN instance referenced.</p>
<p>Non-formatted textual data, allowing for implementation specific
display. This value may contain spaces as well as CR LF separators for
one or more lines.</p></td>
</tr>
<tr class="odd">
<td colspan="4">}</td>
</tr>
<tr class="even">
<td colspan="4">}</td>
</tr>
</tbody>
</table>

> Note: DICOM offers a certain flexibility to assign KOS Objects
(including KOS/KIN) to a specific series: all instances of a series
shall be created on the same equipment.  So for example a PACS may
create all KOS/KIN for a given study assigned to the same series or to
different series.  Therefore, for the case where multiple KOS/KIN flag
the same SOP Instance, the KOS/KIN may be assigned to different series
or more than one KOS/KIN may be assigned to the same series.

#### SR Document Content Module

Table C.17-4 specifies the Attributes contained in the SR Document
Content Module. The Attributes in this Module convey the content​ of an
SR Document.

<table border="1">
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 8%" />
<col style="width: 55%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.17-4 SR
Document Content Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>Value Type​</td>
<td>(0040,A040) </td>
<td>1</td>
<td>Fixed value: “CONTAINER” </td>
</tr>
<tr class="odd">
<td>Concept Name Code​ Sequence</td>
<td>(0040,A043)​ </td>
<td><p><mark>1C</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Code describing the concept represented by this Content Item.
Also conveys the value of Document Title and section headings in
documents.</p>
<p>Required to indicate that this KOS instance is an imaging study
manifest.</p>
<p>Only a single Item shall be included in this Sequence.</p>
<p>Use TID 2010 “Key Object Selection” to populate the remaining
attribute values. Coded Document Title: (113030, DCM, Manifest)</p></td>
</tr>
<tr class="even">
<td>&gt; Code Value</td>
<td>(0008,0100)</td>
<td>1</td>
<td>Fixed value: “113030”</td>
</tr>
<tr class="odd">
<td>&gt; Coding Scheme Designator</td>
<td>(0008,0102)</td>
<td>1</td>
<td>Fixed value: “DCM”</td>
</tr>
<tr class="even">
<td>&gt; Code Meaning</td>
<td>(0008,0104)</td>
<td>1</td>
<td>Fixed value: “Manifest”</td>
</tr>
<tr class="odd">
<td>Continuity of Content</td>
<td>(0040,A050)</td>
<td>1</td>
<td>Fixed value: “SEPARATE”</td>
</tr>
<tr class="even">
<td>Content Template Sequence</td>
<td>(0040,A504)</td>
<td>1</td>
<td><p>Template that describes the content of this Content Item and its
subsidiary Content Items.</p>
<p>Only a single Item shall be included in this Sequence.</p></td>
</tr>
<tr class="odd">
<td>&gt; Mapping Resource</td>
<td>(0008,0105)</td>
<td>1</td>
<td>Fixed value: “DCMR"</td>
</tr>
<tr class="even">
<td>&gt; Template Identifier</td>
<td>(0040,DB00)</td>
<td>1</td>
<td>Fixed value: “2010”</td>
</tr>
<tr class="odd">
<td>Content Sequence</td>
<td>(0040,A730)</td>
<td><p><mark>1C</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>A potentially recursively nested Sequence of Items that conveys
content​ that is the Target of Relationships with the enclosing Source
Content Item.</p>
<p>One or more Items shall be included in this Sequence – each item is a
reference to one of the instances in referenced study.</p></td>
</tr>
<tr class="even">
<td colspan="4">For each series in referenced study {</td>
</tr>
<tr class="odd">
<td colspan="4">For each instance in referenced series {</td>
</tr>
<tr class="even">
<td>&gt; Relationship Type</td>
<td>(0040,A010)</td>
<td>1</td>
<td>Fixed value: “CONTAINS”</td>
</tr>
<tr class="odd">
<td>&gt; Value Type</td>
<td>(0040,A040)</td>
<td>1</td>
<td><p>Fixed value (one of): “IMAGE”, “WAVEFORM” or “COMPOSITE”.</p>
<p>Note: The Value Type depends on the SOP Class UID of the referenced
object.</p></td>
</tr>
<tr class="even">
<td>&gt; Referenced SOP Sequence</td>
<td>(0008,1199)</td>
<td><p><mark>1C</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>References to Composite Object SOP Class Instance pairs.</p>
<p>Only a single Item shall be included in this Sequence.</p></td>
</tr>
<tr class="odd">
<td>&gt;&gt; Referenced SOP Class UID</td>
<td>(0008,1150)</td>
<td>1</td>
<td>Uniquely identifies the referenced SOP Class.</td>
</tr>
<tr class="even">
<td>&gt;&gt; Referenced SOP Instance UID</td>
<td>(0008,1155)</td>
<td>1</td>
<td>Uniquely identifies the referenced SOP Instance.</td>
</tr>
<tr class="odd">
<td colspan="4">}</td>
</tr>
<tr class="even">
<td colspan="4">}</td>
</tr>
</tbody>
</table>

#### SOP Common Module

Table C.12-1 specifies the Attributes of the SOP Common Module, which
are required for proper functioning and identification of the​ associated
SOP Instances. They do not specify any semantics about the Real-World
Object represented by the IOD.

<table border="1">
<colgroup>
<col style="width: 22%" />
<col style="width: 13%" />
<col style="width: 8%" />
<col style="width: 55%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4">Excerpt from <strong>DICOM PS3.3 Table C.12-1 SOP Common
Module</strong> © NEMA</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Attribute Name</strong></td>
<td><strong>Tag</strong></td>
<td><strong>Value Type</strong></td>
<td><strong>Attribute Description</strong></td>
</tr>
<tr class="even">
<td>SOP Class UID​</td>
<td>(0008,0016)​  </td>
<td>1</td>
<td>Uniquely identifies the SOP Class.</td>
</tr>
<tr class="odd">
<td>SOP Instance UID​</td>
<td>(0008,0018) </td>
<td>1</td>
<td>Uniquely identifies the SOP Instance.</td>
</tr>
<tr class="even">
<td>Specific Character Set</td>
<td>(0008,0005)</td>
<td><p><mark>1C</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td><p>Character Set that expands or replaces the Basic Graphic Set.</p>
<p>Required if an expanded or replacement character set is used.</p>
<p>Preferred repertoires for use in Western and Eastern Europe:</p>
<ul>
<li><p>“ISO-IR 100” - Latin alphabet​ No. 1</p></li>
<li><p>“ISO-IR 101” - Latin alphabet​ No. 2</p></li>
<li><p>“ISO-IR 144” - Cyrillic</p></li>
<li><p>“ISO-IR 126” – Greek</p></li>
<li><p>“ISO_IR 192” - Unicode in UTF-8</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Instance Creation date</td>
<td>(0008,0012)</td>
<td>3</td>
<td>Same as Study Date (0008,0020)</td>
</tr>
<tr class="even">
<td>Instance Creation Time</td>
<td>(0008,0013)</td>
<td>3</td>
<td>Same as Study Time (0008,0030)</td>
</tr>
<tr class="odd">
<td>Timezone Offset From UTC</td>
<td>(0008,0201) </td>
<td><p><mark>3</mark></p>
<p><mark>1 (EHDS)</mark></p></td>
<td>Contains the offset from UTC to the time zone for all DA and TM
Attributes​ present in this SOP Instance, and for all DT Attributes
present in this SOP​ Instance that do not contain an explicitly encoded
time zone offset.​</td>
</tr>
</tbody>
</table>

### Sharing imaging studies with images marked as significant

The MCWG has produced some additional recommendations, extending the
DICOM KOS Manifest, to address images marked as significant in a shared
imaging study - see [MCWG Sharing Imaging Studies with Images Flagged as
Significant](https://www.ihe-europe.net/sites/default/files/MCWG-Sharing-Imaging-Studies-with-Images-Flagged-as-Significant-V1.4.pdf)

The MCWG recommendations describe two additions to the manifest contents
to support significant images as follows:

1.  Expresses the fact that the Reference SOP Instance is flagged by a
    KOS/KIN and links to the Referenced SOP Instance associated with the
    KOS/KIN instance that marks the SOP instance as being significant.
2.  Add a copy of the comment ("Key Object Description") in every
    reference to a KOS/KIN SOP instance that is used to flag one or more
    SOP instances.

Figure 1 KOS Manifest including extensions to reference KOS/KIN
instances

<img src="image005.png" style="width:100%" />

Figure 1 KOS Manifest including extensions to reference KOS/KIN
instances" depicts these additions as the yellow stars for (1) and the
yellow box for (2).

In terms of the DICOM Key Object Selection Document (KOS) IOD, these
additions are made to the Key Object Document Module as a set of
attributes using the color coding shown below.

<table border="1">
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Key Object Document Module – Significant Images
extension</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Expresses the fact that the Reference SOP Instance is flagged by a
KOS/KIN and links to the Referenced SOP Instance associated with the
KOS/KIN instance that marks the SOP instance as being significant.</td>
</tr>
<tr class="even">
<td>Add a copy of the comment (“Key Object Description”) in every
reference to a KOS/KIN SOP instance that is used to flag one or more SOP
instances.</td>
</tr>
</tbody>
</table>

### Alignment with Document Sharing Metadata

**Further work to be done here.**

A separate document will provide the imaging study and report document
sharing metadata specifications.

Sources of content for the document sharing metadata and the DICOM KOS
Manifest attribute values are:

-   radiology order
-   imaging service request
-   imaging report
-   imaging study

Some of the metadata values align with the DICOM KOS Manifest attribute
values as shown in the table below:
<table border="1">
<colgroup>
<col style="width: 17%" />
<col style="width: 24%" />
<col style="width: 18%" />
<col style="width: 39%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="4"><strong>Document Sharing Metadata and DICOM KOS Manifest
attribute alignment</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Metadata Element</strong> </td>
<td><strong>DICOM Attribute</strong></td>
<td><p><strong>Metadata Format</strong></p>
<p><strong>(FHIR)</strong></p></td>
<td><strong>Value / Comment</strong></td>
</tr>
<tr class="even">
<td rowspan="2"><strong>patientId</strong></td>
<td>Patient ID​ (0010,0020)​</td>
<td rowspan="2">Identifier</td>
<td rowspan="2"><p>identifier.system = Issuer of Patient ID Qualifiers
Sequence. Universal Entity ID (0010,0024). (0010,0032)</p>
<p>identifier.value = Patient ID (0010,0020)</p>
<p>identifier.assigner = “ISO”</p></td>
</tr>
<tr class="odd">
<td>Issuer of Patient ID Qualifiers Sequence. Universal Entity ID
(0010,0024). (0010,0032) </td>
</tr>
<tr class="even">
<td rowspan="3"><strong>eventCodeList </strong></td>
<td>Modality (0008,0060)  </td>
<td>CodeableConcept</td>
<td><p>Code &amp; DisplayName values taken from:</p>
<p>DICOM Modality (1.2.840.10008.6.1.19): Context Group CID 29
CodingScheme: “DCM” (CodingSchemeDesignator)</p></td>
</tr>
<tr class="odd">
<td>Anatomic Region/Body Part</td>
<td>CodeableConcept</td>
<td><p>Code &amp; DisplayName values taken from:</p>
<p>DICOM Anatomic Region/Body Part (4 1.2.840.10008.6.1.2)​ - Context
Group CID 4 CodingScheme: “SCT” (CodingSchemeDesignator)</p>
<p>Note: See <a
href="https://www.ihe-europe.net/sites/default/files/2024-05/2-MCWG-Recommendations-Imaging%20Sharing%20Metadata-Linkages-FinalPublished-V7.pdf">MCWG
Recommendations Imaging Sharing Metadata Linkages</a> – course grained
Anatomical Region.</p></td>
</tr>
<tr class="even">
<td><p>Imaging Procedure Code – DisplayName</p>
<p>(from the Procedure Code Sequence (0008,1032))</p></td>
<td>CodeableConcept</td>
<td><p>Code &amp; DisplayName values taken from:</p>
<p>DICOM Imaging Procedure Code - DisplayName (from the Procedure Code
Sequence (0008,1032))</p></td>
</tr>
<tr class="odd">
<td rowspan="5"><strong>referenceIdList</strong></td>
<td>Accession Number (0008,0050) </td>
<td rowspan="2">Identifier</td>
<td rowspan="2"><p>identifier.system = Issuer of Accession Number
Sequence.Universal Entity ID (0008,0051).(0040,0032)</p>
<p>identifier.value = Accession Number (0008,0050)</p>
<p>identifier.assigner = “urn:ihe:iti:xds:2013:accession”</p></td>
</tr>
<tr class="even">
<td>Issuer of Accession Number Sequence. Universal Entity ID
(0008,0051).(0040,0032)</td>
</tr>
<tr class="odd">
<td>Placer Order Number / Imaging Service Request (0040,2016) </td>
<td rowspan="2">Identifier</td>
<td rowspan="2"><p>identifier.system = Order Placer Identifier
Sequence.Universal Entity ID</p>
<p>(0040,0026).(0040,0032)</p>
<p>identifier.value = Placer Order Number / Imaging Service Request
(0040,2016)</p>
<p>identifier.assigner = “urn:ihe:iti:xds:2013:order”</p></td>
</tr>
<tr class="even">
<td>Order Placer Identifier Sequence. Universal Entity ID
(0040,0026).(0040,0032)</td>
</tr>
<tr class="odd">
<td>Study Instance UID​ (0020,000D) </td>
<td>Identifier</td>
<td><p>identifier.system = “DCM”</p>
<p>identifier.value = Study Instance UID​ (0020,000D)</p>
<p>identifier.assigner =
“urn:ihe:iti:xds:2016:studyInstanceUID”</p></td>
</tr>
<tr class="even">
<td><strong>authorInstitution</strong></td>
<td>Institution Name (0008,0080)</td>
<td>Reference</td>
<td>Practitioner or Organization FHIR Resource</td>
</tr>
</tbody>
</table>

### KOS Manifest Lifecycle Management

**Further work to be done here.**

Section on the manifest lifecycle management:

-   creation by "Manifest Creator" actor - when creating a DICOM KOS
    object for a study, it\'s crucial to ensure it pertains solely to
    that study, maintaining a one-to-one relationship. Therefore, the
    KOS must form its own series and can never be part of an image data
    series.
-   updates/deletion (reference to IHE IOCM?)
-   consumption -- as:
    -   DICOM part-10 format
    -   application/dicom+xml
    -   application/dicom+fhir -- might give some roadmap to future use
        in FHIR based world?
