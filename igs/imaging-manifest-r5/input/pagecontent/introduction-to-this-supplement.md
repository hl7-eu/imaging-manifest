### Introduction to this Supplement

Whenever possible, IHE profiles are based on established and stable underlying standards. However, if an IHE domain determines that an emerging standard has high likelihood of industry adoption, and the standard offers significant benefits for the use cases it is attempting to address, the domain may develop IHE profiles based on such a standard. During Trial Implementation, the IHE domain will update and republish the IHE profile as the underlying standard evolves.
Product implementations and site deployments may need to be updated in order for them to remain interoperable and conformant with an updated IHE profile.
This MADO Profile (or This Technical Framework Supplement) incorporates content from Release 4 of the HL7® FHIR® specification. HL7 describes FHIR Change Management and Versioning at https://www.hl7.org/fhir/versions.html.
HL7 provides a rating of the maturity of FHIR content based on the FHIR Maturity Model (FMM): level 0 (draft) through N (Normative). See http://hl7.org/fhir/versions.html#maturity. 

This new work item proposal aims to define a new IHE profile to address the access to DICOM Instances based on an imaging study manifest.

The need for this profile was identified as part of the sharing of imaging studies and related reports as required under the EHDS Regulation (see discussion below).
Such an access was initially introduced by a part of the XDS-I.b profile almost 20 years ago.  The XDS-I profile has introduced the concept of a manifest, a document that summarizes the content of an imaging study, its structure with the identification and the location where various instances that belong to the study may be retrieved.  The XDS-I.b profile leverages the XDS profile to support the discovery of such manifest documents through a document registry query and its retrieval from a document repository. 

With the introduction of a FHIR based document sharing with the MHDS Profile, there is a demand to combine MHDS along with a profile that covers the access to DICOM Instances leveraging the information contained in shared imaging study manifests.

The need for such a new profile that addresses the access to DICOM Instances based on an imaging study manifest could be combined either with XDS, MHD or MHDS, or some proprietary document sharing scheme.  Such flexibility ensures a common and more effective way to access the DICOM Objects through a solid profiling of WADO-RS and the use of a more robust Imaging Study Manifest supporting two complementary encodings based on the DICOM KOS IOD  or FHIR Imaging Study resource, as well as profiling in a more precise way existing attributes and new attributes, such as those necessary to improve the access to key images.
