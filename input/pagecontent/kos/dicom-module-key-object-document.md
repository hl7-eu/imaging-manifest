#### Key Object Document Module

DICOM Key Object Document attributes (PS3.3 C.17.6.2) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.17.6.2.html#table_C.17.6-2" target="_blank">PS3.3 C.17.6.2</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="Key Object Document Module">
    <caption>Key Object Document Module</caption>
    <colgroup><col style="width:24%"><col style="width:9%"><col style="width:8%"><col style="width:9%"><col style="width:9%"><col style="width:20.5%"><col style="width:20.5%"></colgroup>
    <thead>
      <tr><th style="text-align:center">Attribute Name</th><th style="text-align:center">Tag</th><th style="text-align:center">DICOM Type</th><th style="text-align:center">IHE Usage</th><th style="text-align:center">Field State</th><th style="text-align:center">Consumer Obligation</th><th style="text-align:center">Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Instance Number</td><td style="text-align:center">(0020,0013)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center">lean</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Content Date</td><td style="text-align:center">(0008,0023)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center">lean</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Content Time</td><td style="text-align:center">(0008,0033)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center">lean</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Referenced Request Sequence</td><td style="text-align:center">(0040,A370)</td><td style="text-align:center">1C</td><td style="text-align:center">R+</td><td style="text-align:center">lean</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
  <tr><td>Current Requested Procedure Evidence Sequence</td><td style="text-align:center">(0040,A375)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center">lean</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Identical Documents Sequence</td><td style="text-align:center">(0040,A525)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center">full</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
    </tbody>
  </table>
</div>
