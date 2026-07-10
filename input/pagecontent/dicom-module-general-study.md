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
  <tr><td>Study Instance UID</td><td style="text-align:center">(0020,000D)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td>Study Date</td><td style="text-align:center">(0008,0020)</td><td style="text-align:center">2</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Study Time</td><td style="text-align:center">(0008,0030)</td><td style="text-align:center">2</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Referring Physician's Name</td><td style="text-align:center">(0008,0090)</td><td style="text-align:center">2</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Referring Physician Identification Sequence</td><td style="text-align:center">(0008,0096)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Consulting Physician's Name</td><td style="text-align:center">(0008,009C)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Consulting Physician Identification Sequence</td><td style="text-align:center">(0008,009D)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Study ID</td><td style="text-align:center">(0020,0010)</td><td style="text-align:center">2</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Accession Number</td><td style="text-align:center">(0008,0050)</td><td style="text-align:center">2</td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td>Issuer of Accession Number Sequence</td><td style="text-align:center">(0008,0051)</td><td style="text-align:center">3</td><td style="text-align:center">RC+</td><td style="text-align:center"></td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td>Study Description</td><td style="text-align:center">(0008,1030)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Physician(s) of Record</td><td style="text-align:center">(0008,1048)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Physician(s) of Record Identification Sequence</td><td style="text-align:center">(0008,1049)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Name of Physician(s) Reading Study</td><td style="text-align:center">(0008,1060)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Physician(s) Reading Study Identification Sequence</td><td style="text-align:center">(0008,1062)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Requesting Service</td><td style="text-align:center">(0032,1033)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Requesting Service Code Sequence</td><td style="text-align:center">(0032,1034)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Referenced Study Sequence</td><td style="text-align:center">(0008,1110)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Procedure Code Sequence</td><td style="text-align:center">(0008,1032)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Reason For Performed Procedure Code Sequence</td><td style="text-align:center">(0040,1012)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
    </tbody>
  </table>
</div>
