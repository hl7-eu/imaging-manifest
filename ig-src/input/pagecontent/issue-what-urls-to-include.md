#### URLs to be included in the manifest

The manifest is to be used to locate and access imaging studies in a multitude of deployment scenario's. Three different access mechanisms have been identified as required to access the data:

* WADO - use DICOM-web WADO-RS to access the data. This specification requires a subset of the WADO-RS profile described in .//rad-1xy.html.
* XC-WADO - cross community access to content requires URL's to be formatted according to the IHE-XCWADO profile.
* IHE-IID - provide the URL of a IHE-IID compatible viewer that is capable of accessing and rendering the imaging data.

> Note: there are ongoing discussion whether a XCWADO equivalent of XCWADO is required for cross-border scenario's.

Application need to be able to identify what access approach is represented by the URL. IHE-IID URL's are used totally differently than the WADO-RS based approaches.

XC-WADO requires configuration data to determine the correct URL to construct from the provided URL. WADO-RS URL's can be used directly. This requires applications to know what the URL represent in order to follow the correct steps to access the content.

What URL's are required depends on the deployment scenario and goes beyond the scope of this specification.

Proposal:

* Both manifest representations specify in what way each of the URL's are included.
* In FHIR this will be separate EndPoint resources.
* In KOS this needs to be decided.

One to include the URL's in KOS that are identified are:

* Use `RetrieveURL` in the Study and Series Module for XC-WADO.
* Include a `WADORSRetrievalSequence` (tag `0040,E025`) to hold the WADO-URL. In the KOS manifest this sequence is allowed in the [Study](http:./kos-manifest-specification.html#general-study-module) and [Serie](http:./kos-manifest-specification.html#key-object-document-series-module) Module.
* Define a new `IIDRetrievalSequence` using private tags that holds the IHE-IID URL. Propose this tag to be added to the DICOM standard and update the specification when this is done. This sequence would be allowed on in the [Study](http:./kos-manifest-specification.html#general-study-module) and [Serie](http:./kos-manifest-specification.

As the RetrieveURL in the study and serie Module is also used for other purposes, an alternative approach would be to define a `XcWadoSequence` similar to the `IIDRetrievalSequence` proposed above. Such approach would align with the Endpoint approach taken in the FHIR representation.

