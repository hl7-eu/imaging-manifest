Add Section 3.Y 

### 3.1xy.1 Scope

This transaction is used to *<…describe what is accomplished by using the transaction. Remember that by keeping transactions general/abstract, they can be re-used in a variety of profiles>*

### 3.1xy.2 Actor Roles

**Table 3.1xy.2-1: Actor Roles**

{:.grid}
| **Role:** | Requester: Submit retrieve DICOM instance requests |
| **Actor(s):** | The following actor plays the role of Requester: Imaging Document Consumer |
| **Role:** | Responder: Returns the requested DICOM instance |
| **Actor(s):** | The following actor plays the role of Responder: Imaging Document Source |

Transaction text specifies behavior for each role. The behavior of specific actors may also be specified when it goes beyond that of the general role.

### 3.1xy.3 Referenced Standards

* RFC1738 Uniform Resource Locators (URL), http://www.ietf.org/rfc/rfc1738.txt 
* RFC2616 HyperText Transfer Protocol HTTP/1.1, http://www.ietf.org/rfc/rfc2616.txt 
* RFC7540 Hypertext Transfer Protocol Version 2 (HTTP/2), https://tools.ietf.org/html/rfc7540
* RFC4627 The application/json Media Type for JavaScript Object Notation (JSON), http://www.ietf.org/rfc/rfc4627.txt 
* Extensible Markup Language (XML) 1.0 (Second Edition). W3C Recommendation 6 October 2000, http://www.w3.org/TR/REC-xml
* DICOM [PS3.18 Section 10.4](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4): Web Services – Retrieve Transaction of the DICOM Studies Service 
* DICOM [PS3.18 Annex F](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#chapter_F): DICOM JSON Model
* DICOM [PS3.19 Annex A.1](http://dicom.nema.org/medical/dicom/current/output/html/part19.html#sect_A.1): Native DICOM Model
* DICOM [PS3.19 Annex B](https://dicom.nema.org/medical/dicom/current/output/html/part19.html#chapter_B): Interfaces Definition (WSDL and Schema)

### 3.1xy.4 Messages

<figure>
  {% include volume-2-radxx-interaction-diagram.svg %}
  <figcaption><b>Figure 3.1xy.4-1: Interaction Diagram</b></figcaption>
  <p></p>
</figure>

This transaction defines request/response message pairs:

* Get Instances (Section x.x.4.1 and x.x.4.2), 
* Get Rendered Instances (Section x.x.4.3 and x.x.4.4).

A Requester and a Responder shall support Get Instances request/response message pair as defined in DICOM. They may optionally implement Get Rendered Instances request/response message pair as defined in DICOM.

#### 3.1xy.4.1 Get Instances Request Message

The Requester retrieves one or more DICOM instances from the Responder.

##### 3.1xy.4.1.1 Trigger Events

The Requester wishes to retrieve DICOM instances.

##### 3.1xy.4.1.2 Message Semantics

The Get Instances Request message is a Retrieve transaction of the DICOM Studies Service. See DICOM [PS3.18 Section 10.4](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
The Requester is the User Agent, and the Responder is the Origin Server.

The message shall correspond to one of the Instance Resources in Table 3.1xy.4.1.2-1.

**Table 3.1xy.4.1.2-1: Retrieve Transaction Instance Resources**

{:.grid}
| **Resource** | **Reference** |
| ============ | ============= |
| Study        | [DICOM PS3.18 Section 10.4.1.1.1](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.1.1.1) |
| Series       | [DICOM PS3.18 Section 10.4.1.1.1](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.1.1.1) |
| Instance     | [DICOM PS3.18 Section 10.4.1.1.1](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.1.1.1) |

Although DICOM also includes the Frame Pixel Data resource, it is not required for this transaction.
Imaging Document Consumers acting as Requester should consider replacing a study level requests by issuing multiple series level requests in order to improve overall performance

The HTTP Request URI for the DICOMweb Retrieve Transaction of the Studies Service is formed from the <protocol> component, <endpoint> component, <resource> component.

* The value of the <protocol> component shall be set to https://.
* The <endpoint> component of DICOMweb Study Service Retrieve transaction URI is formed from hostname, port, and endpoint path of the RESTful service of the responder, as follows: <hostname[:port]>/<endpoint path>/.
* The <resource> component is formed from appropriate resource UIDs depending on the resource being retrieved as well as the type of the resource. The value of the <resource> component shall be formatted as specified in the definition of the WADO-RS Get Instances [RAD-1xy] transaction. See RAD-TF2: 4.1xy.4.3

##### 3.1xy.4.1.2.1 Example of a Get Instances Request message
The following is an example of an HTTP Request URI for retrieving a composite DICOM Instance. This example uses an Accept header to request the DICOM Instance returned in the Native DICOM binary format. 

```text
https://www.imaging-document-source.org/ studies/2.999.1.59.40211.12345678.678910/series/2.999.1.59.40211.789001276.14556172.67789/instances/2.999.1.59.40211.2678810.87991027.899772.2
Accept: multipart/related; type=application/dicom
```

##### 3.1xy.4.1.3 Expected Actions

The Responder shall parse the request and redirect it to a destination from which the appropriate representation of the Resource in the Selected Media Type (see DICOM PS3.18 Section 10.4.2) shall be retrieved, and return a response as described in Section 4.160.4.2.

#### 3.1xy.4.2 Get Instances Response Message

The Responder reports the outcome of the Get Instances Request Message.

##### 3.1xy.4.2.1 Trigger Events

The Responder completes the processing of the Get Instances Request Message and receives complete or partial response from the destination it forwarded the request to.

##### 3.1xy.4.2.2 Message Semantics

The message is a Response to a Retrieve Transaction as specified in DICOM PS3.18 Section 10.4.3. 
The Requester is the User Agent, and the Responder is the Origin Server.
The Responder shall provide a response as described in Table 3.1xy.4.2.2-1.

**Table 3.1.xy.4.2.2-1: Response Message Semantics**

{:.grid}
| **Resource** | **Reference** |
| ============ | ============= |
| Study        | DICOM PS3.18 Section 10.4.3.3.1 |
| Series       | DICOM PS3.18 Section 10.4.3.3.1 |
| Instance     | DICOM PS3.18 Section 10.4.3.3.1 |

The Responder shall provide a response message header containing the appropriate status code indicating success, warning, or failure as described in DICOM PS3.18 Section 10.4.3.1.

##### 3.1xy.4.2.3 Expected Actions

The Requester shall accept the response.

The Requester shall follow redirects (responses with values of 301, 302, 303 or 307. See https://tools.ietf.org/html/rfc7231#section-6.4 for details) unless a loop or security policy violation is detected.

##### 3.1xy.4.3 Get Rendered Instances Request Message

The Requester retrieves one or more representations of a DICOM Resource, rendered as appropriate images or other representations, from the Responder.

###### 3.1xy.4.3.1 Trigger Events

The Requester wishes to retrieve rendered instances.

##### 3.1xy.4.3.2 Message Semantics

The Get Rendered Instances Request message is a Retrieve transaction of the DICOM Studies Service. See DICOM PS3.18 Section 10.4.
The Requester is the User Agent, and the Responder is the Origin Server.
The message shall correspond to one of the Instance Resources in Table 3.1.xy.4.3.2-1. 

**Table 3.1xy.4.3.2-1: Retrieve Transaction Instance Resources**

{:.grid}
| **Resource**      | **Reference** |
| ================= | ============= |
| Rendered Instance | DICOM PS3.18 Section 10.4.1.1.3 |

Although DICOM also includes the Rendered Study, Rendered Series, and Rendered Frame Pixel Data resource, it is not required for this transaction.
The HTTP Request URI for the DICOMweb Retrieve Transaction of the Studies Service is formed from the <protocol> component, <endpoint> component, <resource> component.

* The value of the <protocol> component shall be set to https://.
* The <endpoint> component of DICOMweb Study Service Retrieve transaction URI is formed from hostname, port, and endpoint path of the RESTful service of the responder, as follows: <hostname[:port]>/<endpoint path>/.
* The <resource> component is formed from appropriate resource UIDs depending on the resource being retrieved as well as the type of the resource. The value of the <resource> component shall be formatted as specified in the definition of the WADO-RS Get Instances [RAD-1xy] transaction. See RAD-TF2: 4.1xy.4.3

##### 3.1xy.4.3.2.1 Example of a Get Instances Request message

The following is an example of an HTTP Request URI for retrieving a rendered composite DICOM Instance. This example uses an Accept header to request the DICOM Instance returned in the JPEG format.

```text
https://www.imaging-document-source.org/ studies/2.999.1.59.40211.12345678.678910/series/2.999.1.59.40211.789001276.14556172.67789/instances/2.999.1.59.40211.2678810.87991027.899772.2/rendered
Accept: multipart/related; type=image/jpeg
```

##### 3.1xy.4.3.3 Expected Actions

The Responder shall parse the request and redirect it to a destination from which the appropriate representation of the Resource in the Selected Media Type (see DICOM PS3.18 Section 10.4.2) shall be retrieved, and return a response as described in Section 4.160.4.2.
The Responder is not expected to prepare the rendered instances but rather to request that to be prepared by the destination.

#####3.1xy.4.4 Get Rendered Instances Response Message

The Responder reports the outcome of the Get Rendered Instances Request Message.

##### 3.1xy.4.4.1 Trigger Events

The Responder completes the processing of the Get Instances Request Message and receives a complete or partial response from the destination it forwarded the request to.

##### 3.1xy.4.4.2 Message Semantics

The message is a Response to a Retrieve Transaction as specified in DICOM PS3.18 Section 10.4.3. 
The Requester is the User Agent, and the Responder is the Origin Server.
The Responder shall provide a response as described in Table 3.1xy.4.2.2-1.

**Table 3.1xy.4.4.2-1: Response Message Semantics**

{:.grid}
| **Resource** | **Reference** |
| ============ | ============= |

| Rendered Instance | DICOM PS3.18 Section 10.4.3.3.3 |

The Responder shall provide a response message header containing the appropriate status code indicating success, warning, or failure as described in DICOM PS3.18 Section 10.4.3.1.

##### 3.1xy.4.4.3 Expected Actions

The Requester shall accept the response.
The Requester shall follow redirects (responses with values of 301, 302, 303 or 307. See https://tools.ietf.org/html/rfc7231#section-6.4 for details) unless a loop or security policy violation is detected.

### 3.1xy.5 Protocol Requirements

<In this section, the selected protocol bindings of the transactions are explained in detail (like SOAP or HTTP bindings).For an example, see the QRPH DEX Profile or ITI TF-2b:3.34.5, 3.35.5. Indicate NA if not used.>

### 3.1xy.6 Security Considerations

Additional security considerations that may apply are discussed in RAD TF-1: X.5 – MADO Security Considerations. – check reference

#### 3.1xy.6.1 Security Audit Considerations

The Radiology Audit Trail Option in the ITI Audit Trail and Node Authentication (ATNA) Profile (ITI TF-1: 9) defines audit requirements for IHE Radiology transactions. See RAD TF-3:5.1.

#### 3.1xy.6.(z) <Actor> Specific Security Considerations
