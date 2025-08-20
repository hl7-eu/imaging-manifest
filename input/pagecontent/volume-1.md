The Manifest-based Access to DICOM Objects (MADO) Integration Profile specifies actors and transactions to retrieve patient-relevant DICOM Instances from medical imaging studies being held within a community. Each community may have multiple sources of medical images data that publish it for sharing within the community.

The XDS.b or MHD profiles define specific means of retrieving the Imaging Study Manifests that reference DICOM Instances stored in the community and that were “published” by their holders into the community-level document registry for sharing within the community. 

The MADO profile utilizes RESTful DICOMWeb Studies Service Retrieve transaction (a.k.a WADO-RS, DICOM [PS3.18 Section 10.4](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4)).
The reader of MADO is expected to understand the use of Imaging Study Manifests.

### 59.1 MADO Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the Technical Frameworks General Introduction Appendix A. IHE Transactions can be found in the Technical Frameworks General Introduction Appendix B. Both appendices are located at https://profiles.ihe.net/GeneralIntro/index.html.

Figure 1:59.1-1 shows the actors directly involved in the MADO Profile and the relevant transactions/content between them.

The Imaging Document Consumer obtains the Imaging Manifests from the local community through grouping with different actors in the ITI profiles that can provide access to the XDS / MHD infrastructure, such as the XDS.b Document Consumer or MHD Document Consumer. The XDS.b Document Consumer and MHD Document Consumer are NOT included in this profile.

{% include img.html img="fhir-manifest-overview.drawio.png" caption="Figure 1:59.1-1: MADO Actor Diagram" %}

Table 1:59.1-1 lists the transactions/content for each actor directly involved in the Manifest-based Access to DICOM Objects (MADO)  Profile. To claim compliance with this profile, an actor shall support all required transactions/content (labeled “R”) and may support the optional transactions (labeled “O”).

**Table 1:59.1-1: MADO Profile - Actors and Transactions**

{:.grid}
| **Actors**                | **Transactions** | **Content Modules**  | **Requestor or Responder** | **Optionality**  | **Reference**     |
| ========================= | ================ | ==================== | ========================== | ================ | ================= |
| Content Creator           |              | Imaging Study Manifest |                        | R See Note 1	| RAD TF-3: 6.3.1.D |
| Content Consumer          |              | Imaging Study Manifest |                        | R See Note 1	| RAD TF-3: 6.3.1.D |
| Imaging Document Consumer | WADO-RS Get Instances [RAD-1xy] |     | Requestor              | R	        | RAD TF-2: 3.1xy   |
| Imaging Document Source   | WADO-RS Get Instances [RAD-1xy] |     | Responder	             | R	        | RAD TF-2: 3.1xy   |

*Note 1: The Imaging Study Manifest content is defined in two complementary encodings – DICOM KOS IOD and FHIR Imaging Study Manifest Bundle.*

#### 1:59.1.1 Actor Descriptions and Actor Profile Requirements

Some requirements are documented in MADO TF-2 Transactions. This section documents any additional requirements on profile’s actors.
No additional requirements needed.

Some requirements are documented in MADO TF-3 Content Modules. This section documents any additional requirements on profile’s actors.
No additional requirements needed.

##### 1:59.1.1.1 Content Creator

The Content Creator produces Imaging Study Manifests documents that are shared through a document sharing infrastructure, not specified by this profile.

##### 1:59.1.1.2 Content Consumer

The Content Consumer consumes information provided by Imaging Study Manifests documents that are shared through a document sharing infrastructure, not specified by this profile.

##### 1:59.1.1.3 Imaging Document Consumer

The Imaging Document Consumer requests and receives DICOM instances from an Imaging Document Source.

The Imaging Document Consumer obtains the Imaging Study Manifest(s) identifying DICOM Studies of interest from the grouped Document Consumer that uses appropriate transactions (e.g. from other IHE Profiles such as MHD, MHDS or XDS.b) to search and retrieve such Imaging Study Manifest(s) within the community.

Using the information from an Imaging Study Manifest the Imaging Document Consumer determines which DICOM Instance(s) it will retrieve.

*Note: The Imaging Study Manifests do not identify individual frames within multi-frame objects, and as such, there is no possibility to retrieve individual frames using the MADO profile.*
The Imaging Document Consumer issues a WADO-RS Get Instances [RAD-1xy] transaction in the Requestor role to the Imaging Document Source to retrieve the DICOM instances from Imaging Document Sources within the community.

The Imaging Document Consumer forms the Study Service Retrieve Request URL by using the following metadata elements from the retrieved Imaging Study Manifests: 
* Study Instance UID
* Series Instance UID, as needed
* SOP Instance UID, as needed

The Imaging Document Consumer will typically retrieve all DICOM instances listed in the Imaging Study Manifest that belongs to the same series from a specific Imaging Document Source within the community, by retrieving a Series Instances resource. Alternatively, it may choose to retrieve each Instance resource individually.

The Imaging Document Consumer shall be aware that the list of instances of one series or study referenced in an Imaging Study Manifest may not be the same as all the instances of that series or study available at an Imaging Document Source and published by it for sharing within the community. In this case, the number of instances retrieved by using the request for Series Instances or Study Instances resource may be larger or smaller than the number of instances expected by the Imaging Document Consumer.

##### 1:59.1.1.4 Imaging Document Source

The Imaging Document Source receives a WADO-RS Get Instances [RAD-1xy] transaction request from an Imaging Document Consumer to retrieve the requested instances and returns them to the requestor. If the <resource> component of the inbound request indicates the request for retrieval of a complete study or series, Imaging Document Source may select to only return those DICOM Instances that have been published by it in an Imaging Study Manifest.

### 1:59.2 MADO Actor Options
Options that may be selected for each actor in this profile, if any, are listed in the Table 1:59.2-1. Dependencies between options, when applicable, are specified in notes.

**Table 1:59.2-1: MADO – Actors and Options**

{:.grid}
| **Actor**                 | **Option Name**                                 | **Reference** |
| ========================= | =============================================== | ========= |
| Content Creator           | DICOM KOS-based Imaging Study Manifest (Note 1) | See X.2.1 |
| Content Creator           | FHIR-Based Imaging Study Manifest (Note 1)      | See X.2.1 |
| Content Consumer          | DICOM KOS-based Imaging Study Manifest (Note 2) | See X.2.2 |
| Content Consumer          | FHIR-Based Imaging Study Manifest (Note 2)      | See X.2.2 |
| Imaging Document Consumer | Rendered Instances (Note 3)                     | See X.2.3 |
| Imaging Document Source   | Rendered Instances (Note 3)                     | See X.2.3 |

*Note 1: at least one of these two options shall be supported.*
*Note 2: at least one of these two options shall be supported.*
*Note 3: at least one of these two options shall be supported.*

### 1:59.3 MADO Required Grouping

An actor from this profile (Column 1) shall implement all of the required transactions and/or content modules in this profile in addition to all of the requirements for the grouped actor (Column 2) (Column 3 in alternative 2). 
If this is a content profile, and actors from this profile are grouped with actors from a workflow or transport profile, the Reference column references any specifications for mapping data from the content module into data elements from the workflow or transport transactions.
In some cases, required groupings are defined as at least one of an enumerated set of possible actors; this is designated by merging column one into a single cell spanning multiple potential grouped actors. Notes are used to highlight this situation.
Section X.5 describes some optional groupings that may be of interest for security considerations and Section X.6 describes some optional groupings in other related profiles.

{:.grid}
| **MADO Actor**            | **Actor(s) to be grouped with**              | **Reference**  | **Content Bindings Reference** |
| ========================= | ============================================ | ============== | ============================== |
| Content Consumer          | Imaging Document Consumer	                   | RAD TF-1:59    | |
| Imaging Document Consumer | Content Consumer                             | RAD TF-1:59    |             |
|                           | ITI CT / Time Client                         | ITI TF-1: 7.1  | |
|                           | ITI ATNA / Secure Node or Secure Application | ITI TF-1: 9.1  | |
| Imaging Document Source   | ITI CT / Time Client                         | ITI TF-1: 7.1  | | 
|                           | ITI ATNA / Secure Node or Secure Application | ITI TF-1: 9.1  | |

### 1:59.4 MADO Overview

#### 1:59.4.1 Concepts

##### 1:59.4.1.1 Intra-community sharing infrastructure

MADO enables retrieval of imaging studies shared within an enterprise and across enterprises using RESTful services. The Imaging Document Consumer is typically an application that is grouped with an actor providing access to the Imaging Study Manifest that contains a list of DICOM Instances published by an Imaging Document Source in the community. The mechanism of obtaining the Imaging Study Manifest is not constrained, and several models  may be used in conjunction with the MADO Profile, , including but not limited to XDS.b, MHD, MHDS.

As an example, the Imaging Document Consumer can discover and retrieve Imaging Study Manifests across community lines by grouping with one of the following actors:

* **XDS.b Document Consumer**: The MADO Content Consumer/Imaging Document Consumer is grouped with the XDS.b Document Consumer that is the initiator of the document discovery and retrieval and communicates with the XDS Document Registry/Repositories using the Registry Stored Query [ITI-18] and Retrieve Document Set [ITI-43] transactions. The XDS.b Document Consumer then transfers that information to the Imaging Document Consumer.
* **MHD Consumer**: The MADO Content Consumer/Imaging Document Consumer is grouped with the MHD Document Consumer that is the initiator of the document discovery and retrieval and communicates with the MHD Document Responder. The MHD Document Consumer uses the Find Document References [ITI-67] and Retrieve Document [ITI-68] transactions to find and return the retrieved Imaging Manifests. The MHD Consumer then provides this information to the Imaging Document Consumer.

The Imaging Study Manifests retrieved by an actor with which the Imaging Document Consumer is grouped are documents formatted either as a DICOM KOS based or a FHIR Imaging Manifest based document.

Once the Imaging Document Consumer has access to an Imaging Study Manifest, it forms the request to retrieve selected DICOM instances from the target Imaging Document Source.

As a result, the Imaging Document Consumer can retrieve imaging studies from an Imaging Document Source using a consistent mechanism, regardless of whether the imaging study is published to an XDS.b or MHD environment.

Similarly, the Imaging Document Source returns instances from imaging studies in response to retrieve requests. The source of the imaging studies is not constrained, and several models are possible. The Imaging Document Source can retrieve imaging studies from sources such as:

* Image Manager/Image Archive: The Imaging Document Source can have direct access to the Image Manager/Image Archive, or it can communicate with one or more Image Managers/Image Archives via standard mechanism such as the Retrieve Images [RAD-16] transaction.
* XDS-I.b Imaging Document Source: The Imaging Document Source can have direct access to the XDS-I.b Imaging Document Source, or it can communicate with one or more XDS-I.b Imaging Document Sources via retrieval mechanisms defined in XDS-I.b.

#### 1:59.4.1.2 Imaging Reports
  
MADO focuses on retrieving DICOM Instances using RESTful services. Other imaging study-related documents, such as radiology reports in CDA or FHIR based formats are outside the scope of the MADO Profile and may be retrieved using the ITI MHD Actors or the XDS.b Actors.

#### 1:59.4.1.3 DICOMweb Study Service Retrieve transaction URI

The DICOMweb Study Service Retrieve transaction URI used in the [RAD-1xy] transaction between Imaging Document Consumer and Imaging Document Source is formed as described in this section.
The HTTP Request URI for the DICOMweb Retrieve Transaction of the Studies Service is formed from the <protocol> component, <endpoint> component and <resource> 
component.

The value of the <protocol> component shall be set to https://.

The <endpoint> component of DICOMweb Study Service Retrieve transaction URI is formed from hostname, port, and endpoint path of the RESTful service of the responder, as follows: 

```text
<hostname[:port]>/<endpoint path>/
```

The <resource> component is formed from appropriate resource UIDs depending on the resource being retrieved as well as the type of the resource.

### 1:59.4.2 Use Cases

#### 1:59.4.2.1 Use Case #1: DICOM Instance Retrieval

##### 1:59.4.2.1.1 Instance Retrieval Use Case Description

The Manifest-Based Access to DICOM Objects corresponds to a subset of a broader use case scenario from the user perspective:

* A system acting as an imaging document consumer has access to imaging study manifests (the way manifests are accessed and exchanged is out of scope of the use case).
* A user on this system uses the content of any such imaging study manifest to choose an entire imaging study or a subset (series, set of instances, key images).
* The imaging document consumer requests the retrieval of these selected DICOM instances from  the remote imaging sources using the location information provided in the imaging study manifest.
* This request retrieval is received by an imaging source and the corresponding DICOM instances are accessed from its internal storage and returned to the requesting imaging document consumer.
* The imaging document consumer receives the DICOM Instances, in the format requested, and processes them.

##### 1:59.4.2.1.2 Instance Retrieval Process Flow

<figure>
  {% include basic-process-flow-in-mado-profile.svg %}
  <figcaption><b>Figure 1:59.4.2.2-1: Basic Process Flow in MADO Profile</b></figcaption>
  <p></p>
</figure>

##### 1:59.4.1.2.1 Pre-conditions

* Imaging Study Manifest is accessible by Imaging Document Consumer.
* Relevant DICOM instances have been selected from the Imaging Study Manifest.

##### 1:59.4.1.2.2 Main Flow

Imaging Document Consumer wants to retrieve the studies referenced in the Imaging Study Manifests:
* The Imaging Document Consumer initiates a WADO-RS Get Instances [RAD-1xy] request to the Imaging Document Source to get the selected DICOM instances. 
* Remote Imaging Document Source accesses the requested DICOM instances and generates the response to the inbound WADO-RS Retrieve [RAD-1xy] request from the 

Imaging Document Consumer. The response contains either requested DICOM instances or an error code indicating that some or all requested instances are not accessible.

##### 1:59.4.1.2.3 Post-conditions

* DICOM instances are available in the Imaging Document Consumer for processing.

### 1:59.5 MADO Security Considerations

The MADO Profile has similar security considerations to other IHE profiles that are based on HTTP or REST. See ITI TF-2: Appendix Z.8 for recommendations for secure transportation, authentication, authorization, and securing patient identifiers in URLs. Implementers are encouraged to review that section for applicability to their product environment.

Implementers may also consider implementing Cross-Origin Resource Sharing (CORS) (https://www.w3.org/TR/cors/) support to allow browser-based clients to retrieve information from distributed sources (for example, queries are performed on server A, and instances are downloaded from server B).

Deployments should consider whether or not:
* The Imaging Document Consumer performs user authentication to access patient data.
* The Imaging Document Source use credentials or tokens supplied by the Imaging Document Consumer in the WADO-RS Retrieve transaction.
* The Imaging Document Consumer or the Imaging Document Source (or both) records access in an audit log.

This profile does not define how the Imaging Document Consumer supplies credentials to the Imaging Document Source to provide the user with a seamless "single sign-on" experience. The HTTP GET URL transaction allows for a range of authentication mechanisms, including use of mTLS authentication, digest authentication, client certificate-based authentication, provision of a SAML assertion in an authentication header, or other mechanisms suitable for stateless atomic transactions. 

> Does this make sense for MADO?

The user authentication and authorization methods are outside the scope of the MADO Profile. Implementers should consider implementing the IHE ITI Profile such as Internet User Authorization (IUA).

Implementations should also consider how availability and integrity will be protected, including intentional attacks such as maliciously crafted queries that interfere with service availability.

The WADO-RS transactions may include in their response a URL specifying where the corresponding instances can be retrieved. In the absence of protection, such as TLS, a malicious attacker may intercept the response and rewrite these URLs to a location of suspect origin. An Imaging Document Consumer should verify that any received URL is valid and corresponds to a known secure location.

The security considerations for a content module are dependent upon the security provisions defined by the grouped actor(s).

### 1:59.6 MADO Cross Profile Considerations

The table below describes some optional groupings in other related profiles:

{:.grid}
| **MADO Actor**   | **Actor(s) may be grouped with**         | **Reference**  | **Content Bindings Reference** |
| ================ | ======================================== | ============== | ============================== |
| Content Consumer | ITI XDS.b / Document Consumer            | ITI TF-1: 10.1 | |
|                  | OR                                       |                | |
|                  | ITI MHD / Document Consumer (see Note 1) | ITI TF-1: 33   | |
| Content Creator  | ITI XDS.b / Document Consumer            | ITI TF-1: 10.1 | |
|                  | OR                                       |                | |
|                  | ITI MHD / Document Consumer (see Note 1) | ITI TF-1: 33   | |
|                  | ITI CT / Time Client                     |	ITI TF-1: 7.1  | |
|                  | ITI ATNA / Secure Node or Secure Application | ITI TF-1: 9.1 | |




