#### EHDSPatient

The following table shows the mapping from EHDSPatient logical model elements to FHIR profiles.

<div class="table-wrap">
  <strong>Mapping Context</strong>
  <ul>
    <li>
      <strong>Source logical model:</strong>
      <a href="https://www.xt-ehr.eu/fhir/models/0.3.0/StructureDefinition-EHDSPatient.html" target="_blank">EHDSPatient</a>
    </li>
  </ul>
</div>

<div class="table-wrap">
  <table summary="EHDSPatient → FHIR Profiles (R4)">
    <caption>EHDSPatient → FHIR Profiles (R4)</caption>
    <thead>
      <tr>
        <th colspan="1" class="src-head">EHDSPatient (Logical Model)</th>
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
    <td>identifier</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>identifier</td>
    <td>Patient ID (0010,0020) &amp; Type of Patient ID (0010,0022) &amp; Issuer of Patient ID Qualifiers Sequence (0010,0026)</td>
    <td></td>
  </tr>
  <tr>
    <td>name</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>name</td>
    <td>Patient Name (0010,0010)</td>
    <td></td>
  </tr>
  <tr>
    <td>dateOfBirth</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>birthDate</td>
    <td>Patient Birth Date (0010,0030)</td>
    <td></td>
  </tr>
  <tr>
    <td>deceased[x]</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>deceased[x]</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>administrativeGender</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>gender</td>
    <td>Patient Sex (0010,0040)</td>
    <td></td>
  </tr>
  <tr>
    <td>address</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>address</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>telecom</td>
    <td><a href="./StructureDefinition-EuMadoPatient.html">EuMadoPatient</a></td>
    <td>telecom</td>
    <td></td>
    <td></td>
  </tr>
    </tbody>
  </table>
</div>
<!--
Generated file. Do not edit.
-->
