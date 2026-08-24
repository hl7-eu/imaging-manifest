#### EHDSImagingStudy

The following table shows the mapping from EHDSImagingStudy logical model elements to FHIR profiles.

<div class="table-wrap">
  <strong>Mapping Context</strong>
  <ul>
    <li>
      <strong>Source logical model:</strong>
      <a href="https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSImagingStudy.html" target="_blank">EHDSImagingStudy</a>
    </li>
  </ul>
</div>

<div class="table-wrap">
  <table summary="EHDSImagingStudy → FHIR Profiles (R4)">
    <caption>EHDSImagingStudy → FHIR Profiles (R4)</caption>
    <thead>
      <tr>
        <th colspan="1" class="src-head">EHDSImagingStudy (Logical Model)</th>
        <th colspan="2" class="tgt-fhir-head">Target FHIR Resource</th>
        <th colspan="1" class="tgt-dicom-head">Target DICOM elements</th>
        <th colspan="1" class="tgt-rationale-head">Rationale</th>
      </tr>
      <tr>
        <th class="src-sub">Element</th>
        <th class="tgt-fhir-sub">Resource</th>
        <th class="tgt-fhir-sub">Element</th>
        <th class="tgt-dicom-sub">DICOM KOS</th>
        <th class="tgt-rationale-sub">Rationale</th>
      </tr>
    </thead>
    <tbody>
  <tr>
    <td>header</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Basic metadata for this information</td>
  </tr>
  <tr>
    <td>header.subject</td>
    <td><a href="./StructureDefinition-EuMadoComposition.html">EuMadoComposition</a></td>
    <td>subject</td>
    <td>Patient Module</td>
    <td></td>
  </tr>
  <tr>
    <td>header.subject</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>subject</td>
    <td>Patient Module</td>
    <td></td>
  </tr>
  <tr>
    <td>header.identifier</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>identifier[study-instance-uid]</td>
    <td>Study Instance UID (0020,000D)</td>
    <td></td>
  </tr>
  <tr>
    <td>header.author[x]</td>
    <td><a href="./StructureDefinition-EuMadoComposition.html">EuMadoComposition</a></td>
    <td>author[source-organization]</td>
    <td>Institution Name (0008,0080),</td>
    <td></td>
  </tr>
  <tr>
    <td>header.author[x]</td>
    <td><a href="./StructureDefinition-EuMadoComposition.html">EuMadoComposition</a></td>
    <td>author[source-device]</td>
    <td>Manufacturer (0008,0070),</td>
    <td></td>
  </tr>
  <tr>
    <td>header.date</td>
    <td><a href="./StructureDefinition-EuMadoComposition.html">EuMadoComposition</a></td>
    <td>date</td>
    <td>Instance Creation Date, Instance Creation Time</td>
    <td></td>
  </tr>
  <tr>
    <td>header.status</td>
    <td><a href="./StructureDefinition-EuMadoComposition.html">EuMadoComposition</a></td>
    <td>status</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>header.source</td>
    <td></td>
    <td></td>
    <td></td>
    <td>NA - not relevant for MADO</td>
  </tr>
  <tr>
    <td>header.language</td>
    <td><a href="./StructureDefinition-EuMadoComposition.html">EuMadoComposition</a></td>
    <td>language</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>modality</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>modality</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(121139, DCM, &quot;Modality&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>bodySite</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>extension[anatomicalRegion]</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(123014, DCM, &quot;Target Region&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>encounter</td>
    <td></td>
    <td></td>
    <td></td>
    <td>NA - not supported for MADO</td>
  </tr>
  <tr>
    <td>started</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>started</td>
    <td>Study Date (0008,0020) &amp; StudyTime (008,0030)</td>
    <td></td>
  </tr>
  <tr>
    <td>basedOn</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>basedOn[order]</td>
    <td>AccessionNumber (0008,0050) &amp; Issuer of Accession Number Sequence (0008,0051)</td>
    <td></td>
  </tr>
  <tr>
    <td>numberOfSeries</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>numberOfSeries</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV (131565, DCM, &quot;Number of Study Related Series&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>numberOfInstances</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>numberOfInstances</td>
    <td></td>
    <td>DICOM KOS – calculate from content</td>
  </tr>
  <tr>
    <td>description</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>description</td>
    <td>Study Description (0008,1030)</td>
    <td></td>
  </tr>
  <tr>
    <td>studyCustodian</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>custodian</td>
    <td></td>
    <td>DICOM KOS – Not supported</td>
  </tr>
  <tr>
    <td>studyEndpoint</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>endpoint[webviewer]</td>
    <td>DisplayURI (0040,E012)</td>
    <td></td>
  </tr>
  <tr>
    <td>series</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.seriesUid</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.uid</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV(112002, DCM, &quot;Series Instance UID&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.number</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.number</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV (113607, DCM, &quot;Series Number&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.seriesModality</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.modality</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV (121139, DCM, &quot;Modality&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.description</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.description</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV (131563, DCM, &quot;Series Description&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.numberOfInstances</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.numberOfInstances</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV (131564, DCM, &quot;Number of Series Related Instances&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.seriesEndpoint</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.endpoint[wado]</td>
    <td>CurrentRequestedProcedureEvidenceSequence (0040,8375) -&gt; ReferencedSeriesSequence (0008,1115) -&gt; RetrieveUrl (0008,1190)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.bodySite</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.bodySite</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV (123014, DCM, &quot;Target Region&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.specimen</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.specimen</td>
    <td></td>
    <td>DICOM KOS – Not supported</td>
  </tr>
  <tr>
    <td>series.started</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.started</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; EV (131561, DCM, &quot;Series Date&quot;) &amp; EV (131562, DCM, &quot;Series Time&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; Image Library Entry (IMAGE or COMPOSITE) -&gt; Referenced SOP Sequence (0008,1199) -&gt; Referenced SOP Instance UID (0008,1150)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.instanceTitle</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.title</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; Image Library Entry (COMPOSITE) EV (113012, DCM, &quot;Key Object Description&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.instanceUid</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.uid</td>
    <td>Key Object Document -&gt; Current Requested Procedure Evidence Sequence (0040,A375) -&gt; Referenced Series Sequence (0008,1115) -&gt; Referenced SOP Sequence (0008,1199) -&gt; Referenced SOP Instance UID (0008,1155)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.sopClass</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.sopClass</td>
    <td>Key Object Document -&gt; Current Requested Procedure Evidence Sequence (0040,A375) -&gt; Referenced Series Sequence (0008,1115) -&gt; Referenced SOP Sequence (0008,1199) -&gt; Referenced SOP Class UID (0008,1150)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.instanceNumber</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.number</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; Image Library Entry (IMAGE) -&gt; EV (113609, DCM, &quot;Instance Number&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.numberOfFrames</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.extension[number-of-frames]</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; Image Library Entry (IMAGE) -&gt; EV (121140, DCM, &quot;Number of Frames&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.keyImage</td>
    <td></td>
    <td></td>
    <td></td>
    <td>This is implemented by locating the KOS object instances, downloading them usign WADO and inspecting the content.</td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.keyImage.flag</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.extension[ko-document-title]</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; Image Library Entry (COMPOSITE) EV (121144, DCM, &quot;Document Title&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.keyImage.reason</td>
    <td><a href="./StructureDefinition-EuMadoImagingStudy.html">EuMadoImagingStudy</a></td>
    <td>series.instance.title</td>
    <td>SR: EV(111028,DCM,&quot;Image Library&quot;) -&gt; EV(126200,DCM,&quot;Image Library Group&quot;) -&gt; Image Library Entry (COMPOSITE) EV (113012, DCM, &quot;Key Object Description&quot;)</td>
    <td></td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.keyImage.seriesUID</td>
    <td></td>
    <td></td>
    <td></td>
    <td>See DICOM info on refered instance</td>
  </tr>
  <tr>
    <td>series.instancesInTheSeries.keyImage.instanceUID</td>
    <td></td>
    <td></td>
    <td></td>
    <td>See DICOM info on refered instance</td>
  </tr>
    </tbody>
  </table>
</div>
<!--
Generated file. Do not edit.
-->
