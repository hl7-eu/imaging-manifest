#### General Study Module

DICOM General Study attributes (PS3.3 C.7.2.1) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.2.1.html" target="_blank">PS3.3 C.7.2.1</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="General Study Module">
    <caption>General Study Module</caption>
    <thead>
      <tr><th>Attribute Name</th><th>Tag</th><th>DICOM Type</th><th>IHE Usage</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Study Instance UID</td><td>(0020,000D)</td><td>1</td><td></td><td></td><td>SHALL:populate</td></tr>
  <tr><td>Study Date</td><td>(0008,0020)</td><td>2</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Study Time</td><td>(0008,0030)</td><td>2</td><td>R+</td><td></td><td></td></tr>
  <tr><td>Referring Physician's Name</td><td>(0008,0090)</td><td>2</td><td></td><td></td><td></td></tr>
  <tr><td>Referring Physician Identification Sequence</td><td>(0008,0096)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Consulting Physician's Name</td><td>(0008,009C)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Consulting Physician Identification Sequence</td><td>(0008,009D)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Study ID</td><td>(0020,0010)</td><td>2</td><td></td><td></td><td></td></tr>
  <tr><td>Accession Number</td><td>(0008,0050)</td><td>2</td><td>O+</td><td></td><td>SHALL:populate</td></tr>
  <tr><td>Issuer of Accession Number Sequence</td><td>(0008,0051)</td><td>3</td><td>RC+</td><td></td><td>SHALL:populate</td></tr>
  <tr><td>Study Description</td><td>(0008,1030)</td><td>3</td><td></td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Physician(s) of Record</td><td>(0008,1048)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Physician(s) of Record Identification Sequence</td><td>(0008,1049)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Name of Physician(s) Reading Study</td><td>(0008,1060)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Physician(s) Reading Study Identification Sequence</td><td>(0008,1062)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Requesting Service</td><td>(0032,1033)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Requesting Service Code Sequence</td><td>(0032,1034)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Referenced Study Sequence</td><td>(0008,1110)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Procedure Code Sequence</td><td>(0008,1032)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Reason For Performed Procedure Code Sequence</td><td>(0040,1012)</td><td>3</td><td></td><td></td><td></td></tr>
    </tbody>
  </table>
</div>
