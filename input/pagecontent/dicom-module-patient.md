#### Patient Module

DICOM Patient attributes (PS3.3 C.7.1.1) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.1.1.html" target="_blank">PS3.3 C.7.1.1</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="Patient Module">
    <caption>Patient Module</caption>
    <colgroup><col style="width:26%"><col style="width:9%"><col style="width:8%"><col style="width:9%"><col style="width:24%"><col style="width:24%"></colgroup>
    <thead>
      <tr><th style="text-align:center">Attribute Name</th><th style="text-align:center">Tag</th><th style="text-align:center">DICOM Type</th><th style="text-align:center">IHE Usage</th><th style="text-align:center">Consumer Obligation</th><th style="text-align:center">Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Patient's Name</td><td style="text-align:center">(0010,0010)</td><td style="text-align:center">2</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Patient ID</td><td style="text-align:center">(0010,0020)</td><td style="text-align:center">2</td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Type of Patient ID</td><td style="text-align:center">(0010,0022)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Patient's Birth Date</td><td style="text-align:center">(0010,0030)</td><td style="text-align:center">2</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">SHOULD:able-to-populate</td></tr>
  <tr><td>Patient's Birth Date in Alternative Calendar</td><td style="text-align:center">(0010,0033)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient's Death Date in Alternative Calendar</td><td style="text-align:center">(0010,0034)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient's Alternative Calendar</td><td style="text-align:center">(0010,0035)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient's Sex</td><td style="text-align:center">(0010,0040)</td><td style="text-align:center">2</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">SHOULD:able-to-populate</td></tr>
  <tr><td>Referenced Patient Photo Sequence</td><td style="text-align:center">(0010,1100)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Quality Control Subject</td><td style="text-align:center">(0010,0200)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Referenced Patient Sequence</td><td style="text-align:center">(0008,1120)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient's Birth Time</td><td style="text-align:center">(0010,0032)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Other Patient IDs Sequence</td><td style="text-align:center">(0010,1002)</td><td style="text-align:center">3</td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Patient ID</td><td style="text-align:center">(0010,0020)</td><td style="text-align:center">1</td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>&gt;Type of Patient ID</td><td style="text-align:center">(0010,0022)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">SHALL:able-to-populate</td></tr>
  <tr><td>Other Patient Names</td><td style="text-align:center">(0010,1001)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Ethnic Group Code Sequence</td><td style="text-align:center">(0010,2161)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Ethnic Groups</td><td style="text-align:center">(0010,2162)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient Comments</td><td style="text-align:center">(0010,4000)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient Species Description</td><td style="text-align:center">(0010,2201)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient Species Code Sequence</td><td style="text-align:center">(0010,2202)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient Breed Description</td><td style="text-align:center">(0010,2292)</td><td style="text-align:center">2C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient Breed Code Sequence</td><td style="text-align:center">(0010,2293)</td><td style="text-align:center">2C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Breed Registration Sequence</td><td style="text-align:center">(0010,2294)</td><td style="text-align:center">2C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Breed Registration Number</td><td style="text-align:center">(0010,2295)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Breed Registry Code Sequence</td><td style="text-align:center">(0010,2296)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td style="text-align:center">DCID 7481 “Breed Registry”.</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Strain Description</td><td style="text-align:center">(0010,0212)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Strain Nomenclature</td><td style="text-align:center">(0010,0213)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Strain Code Sequence</td><td style="text-align:center">(0010,0219)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Strain Additional Information</td><td style="text-align:center">(0010,0218)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Strain Stock Sequence</td><td style="text-align:center">(0010,0216)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Strain Stock Number</td><td style="text-align:center">(0010,0214)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Strain Source</td><td style="text-align:center">(0010,0217)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Strain Source Registry Code Sequence</td><td style="text-align:center">(0010,0215)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td style="text-align:center">DCID 7490 “Research Animal Source Registry”.</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Genetic Modifications Sequence</td><td style="text-align:center">(0010,0221)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Genetic Modifications Description</td><td style="text-align:center">(0010,0222)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Genetic Modifications Nomenclature</td><td style="text-align:center">(0010,0223)</td><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;Genetic Modifications Code Sequence</td><td style="text-align:center">(0010,0229)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td style="text-align:center">No Baseline CID is defined.</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Responsible Person</td><td style="text-align:center">(0010,2297)</td><td style="text-align:center">2C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Responsible Person Role</td><td style="text-align:center">(0010,2298)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Responsible Organization</td><td style="text-align:center">(0010,2299)</td><td style="text-align:center">2C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Patient Identity Removed</td><td style="text-align:center">(0012,0062)</td><td style="text-align:center">3</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>De-identification Method</td><td style="text-align:center">(0012,0063)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>De-identification Method Code Sequence</td><td style="text-align:center">(0012,0064)</td><td style="text-align:center">1C</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Issuer of Patient ID</td><td style="text-align:center">(0010,0021)</td><td style="text-align:center"></td><td style="text-align:center">O+</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Issuer of Patient ID Qualifiers Sequence</td><td style="text-align:center">(0010,0024)</td><td style="text-align:center"></td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Universal Entity ID</td><td style="text-align:center">(004 0,0032)</td><td style="text-align:center"></td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td>Universal Entity ID Type</td><td style="text-align:center">(004 0,0033)</td><td style="text-align:center"></td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
    </tbody>
  </table>
</div>
