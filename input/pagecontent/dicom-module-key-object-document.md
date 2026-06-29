#### Key Object Document Module

DICOM Key Object Document attributes (PS3.3 C.17.6.2) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.17.6.2.html" target="_blank">PS3.3 C.17.6.2</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="Key Object Document Module">
    <caption>Key Object Document Module</caption>
    <thead>
      <tr><th>Attribute Name</th><th>Tag</th><th>DICOM Type</th><th>IHE Usage</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Instance Number</td><td>(0020,0013)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Content Date</td><td>(0008,0023)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Content Time</td><td>(0008,0033)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Referenced Request Sequence</td><td>(0040,A370)</td><td>1C</td><td>R+</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Current Requested Procedure Evidence Sequence</td><td>(0040,A375)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Identical Documents Sequence</td><td>(0040,A525)</td><td>1C</td><td></td><td></td><td></td></tr>
    </tbody>
  </table>
</div>
