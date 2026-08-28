#### General Equipment Module

DICOM General Equipment attributes (PS3.3 C.7.5.1) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.5.html#table_C.7-8" target="_blank">PS3.3 C.7.5.1</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="General Equipment Module">
    <caption>General Equipment Module</caption>
    <colgroup><col style="width:26%"><col style="width:9%"><col style="width:8%"><col style="width:9%"><col style="width:24%"><col style="width:24%"></colgroup>
    <thead>
      <tr><th style="text-align:center">Attribute Name</th><th style="text-align:center">Tag</th><th style="text-align:center">DICOM Type</th><th style="text-align:center">IHE Usage</th><th style="text-align:center">Document Consumer Obligation</th><th style="text-align:center">Content Creator/Document Source Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Manufacturer</td><td style="text-align:center">(0008,0070)</td><td style="text-align:center">2</td><td style="text-align:center">R</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
  <tr><td>Institution Name</td><td style="text-align:center">(0008,0080)</td><td style="text-align:center">3</td><td style="text-align:center">R</td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
  <tr><td>Institution Address</td><td style="text-align:center">(0008,0081)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Station Name</td><td style="text-align:center">(0008,1010)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Institutional Department Name</td><td style="text-align:center">(0008,1040)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Institutional Department Type Code Sequence</td><td style="text-align:center">(0008,1041)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Manufacturer's Model Name</td><td style="text-align:center">(0008,1090)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Manufacturer's Device Class UID</td><td style="text-align:center">(0018,100B)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Device Serial Number</td><td style="text-align:center">(0018,1000)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Software Versions</td><td style="text-align:center">(0018,1020)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Gantry ID</td><td style="text-align:center">(0018,1008)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>UDI Sequence</td><td style="text-align:center">(0018,100A)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Device UID</td><td style="text-align:center">(0018,1002)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Spatial Resolution</td><td style="text-align:center">(0018,1050)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Date of Manufacture</td><td style="text-align:center">(0018,1204)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Date of Installation</td><td style="text-align:center">(0018,1205)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Date of Last Calibration</td><td style="text-align:center">(0018,1200)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Time of Last Calibration</td><td style="text-align:center">(0018,1201)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Pixel Padding Value</td><td style="text-align:center">(0028,0120)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
    </tbody>
  </table>
</div>
