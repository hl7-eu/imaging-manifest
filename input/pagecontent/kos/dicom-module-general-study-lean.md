#### General Study Module

DICOM General Study attributes (PS3.3 C.7.2.1) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.2.html#table_C.7-3" target="_blank">PS3.3 C.7.2.1</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="General Study Module">
    <caption>General Study Module</caption>
    <colgroup><col style="width:26%"><col style="width:9%"><col style="width:8%"><col style="width:9%"><col style="width:24%"><col style="width:24%"></colgroup>
    <thead>
      <tr><th style="text-align:center">Attribute Name</th><th style="text-align:center">Tag</th><th style="text-align:center">DICOM Type</th><th style="text-align:center">IHE Usage</th><th style="text-align:center">Consumer Obligation</th><th style="text-align:center">Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Study Instance UID</td><td style="text-align:center">(0020,000D)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Study Date</td><td style="text-align:center">(0008,0020)</td><td style="text-align:center">2</td><td style="text-align:center">R+</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
  <tr><td>Study Time</td><td style="text-align:center">(0008,0030)</td><td style="text-align:center">2</td><td style="text-align:center">R+</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
  <tr><td>Accession Number</td><td style="text-align:center">(0008,0050)</td><td style="text-align:center">2</td><td style="text-align:center">O+</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Issuer of Accession Number Sequence</td><td style="text-align:center">(0008,0051)</td><td style="text-align:center">3</td><td style="text-align:center">RC+</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58populate" target="_blank">SHALL:populate</a></td></tr>
  <tr><td>Study Description</td><td style="text-align:center">(0008,1030)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
    </tbody>
  </table>
</div>
