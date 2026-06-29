#### Patient Module

DICOM Patient attributes (PS3.3 C.7.1.1) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.1.1.html" target="_blank">PS3.3 C.7.1.1</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="Patient Module">
    <caption>Patient Module</caption>
    <thead>
      <tr><th>Attribute Name</th><th>Tag</th><th>DICOM Type</th><th>IHE Usage</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>Patient's Name</td><td>(0010,0010)</td><td>2</td><td></td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Patient ID</td><td>(0010,0020)</td><td>2</td><td>R+</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Type of Patient ID</td><td>(0010,0022)</td><td>3</td><td></td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Patient's Birth Date</td><td>(0010,0030)</td><td>2</td><td></td><td></td><td>SHOULD:able-to-populate</td></tr>
  <tr><td>Patient's Birth Date in Alternative Calendar</td><td>(0010,0033)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Patient's Death Date in Alternative Calendar</td><td>(0010,0034)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Patient's Alternative Calendar</td><td>(0010,0035)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Patient's Sex</td><td>(0010,0040)</td><td>2</td><td></td><td></td><td>SHOULD:able-to-populate</td></tr>
  <tr><td>Referenced Patient Photo Sequence</td><td>(0010,1100)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Quality Control Subject</td><td>(0010,0200)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Referenced Patient Sequence</td><td>(0008,1120)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Patient's Birth Time</td><td>(0010,0032)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Other Patient IDs Sequence</td><td>(0010,1002)</td><td>3</td><td>R+</td><td></td><td></td></tr>
  <tr><td>&gt;Patient ID</td><td>(0010,0020)</td><td>1</td><td>R+</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>&gt;Type of Patient ID</td><td>(0010,0022)</td><td>1</td><td></td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Other Patient Names</td><td>(0010,1001)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Ethnic Group Code Sequence</td><td>(0010,2161)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Ethnic Groups</td><td>(0010,2162)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Patient Comments</td><td>(0010,4000)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Patient Species Description</td><td>(0010,2201)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Patient Species Code Sequence</td><td>(0010,2202)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Patient Breed Description</td><td>(0010,2292)</td><td>2C</td><td></td><td></td><td></td></tr>
  <tr><td>Patient Breed Code Sequence</td><td>(0010,2293)</td><td>2C</td><td></td><td></td><td></td></tr>
  <tr><td>Breed Registration Sequence</td><td>(0010,2294)</td><td>2C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Breed Registration Number</td><td>(0010,2295)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Breed Registry Code Sequence</td><td>(0010,2296)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td>DCID 7481 “Breed Registry”.</td><td></td><td></td><td></td><td></td></tr>
  <tr><td>Strain Description</td><td>(0010,0212)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Strain Nomenclature</td><td>(0010,0213)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Strain Code Sequence</td><td>(0010,0219)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Strain Additional Information</td><td>(0010,0218)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Strain Stock Sequence</td><td>(0010,0216)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Strain Stock Number</td><td>(0010,0214)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Strain Source</td><td>(0010,0217)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Strain Source Registry Code Sequence</td><td>(0010,0215)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td>DCID 7490 “Research Animal Source Registry”.</td><td></td><td></td><td></td><td></td></tr>
  <tr><td>Genetic Modifications Sequence</td><td>(0010,0221)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Genetic Modifications Description</td><td>(0010,0222)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Genetic Modifications Nomenclature</td><td>(0010,0223)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Genetic Modifications Code Sequence</td><td>(0010,0229)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td>No Baseline CID is defined.</td><td></td><td></td><td></td><td></td></tr>
  <tr><td>Responsible Person</td><td>(0010,2297)</td><td>2C</td><td></td><td></td><td></td></tr>
  <tr><td>Responsible Person Role</td><td>(0010,2298)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Responsible Organization</td><td>(0010,2299)</td><td>2C</td><td></td><td></td><td></td></tr>
  <tr><td>Patient Identity Removed</td><td>(0012,0062)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>De-identification Method</td><td>(0012,0063)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>De-identification Method Code Sequence</td><td>(0012,0064)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Issuer of Patient ID</td><td>(0010,0021)</td><td></td><td>O+</td><td></td><td></td></tr>
  <tr><td>Issuer of Patient ID Qualifiers Sequence</td><td>(0010,0024)</td><td></td><td>R+</td><td></td><td></td></tr>
  <tr><td>Universal Entity ID</td><td>(004 0,0032)</td><td></td><td>R+</td><td></td><td></td></tr>
  <tr><td>Universal Entity ID Type</td><td>(004 0,0033)</td><td></td><td>R+</td><td></td><td></td></tr>
    </tbody>
  </table>
</div>
