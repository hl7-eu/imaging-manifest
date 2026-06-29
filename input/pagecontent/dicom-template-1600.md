#### TID 1600 Image Library

DICOM SR template TID 1600 (Image Library) nodes with DICOM/IHE requirement types and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_A.html#table_TID_1600" target="_blank">PS3.16 TID 1600</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=50" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="TID 1600 Image Library">
    <caption>TID 1600 Image Library</caption>
    <thead>
      <tr><th>Row No</th><th>NL</th><th>REL with Parent</th><th>VT</th><th>Concept Name</th><th>VM</th><th>Req Type (DICOM)</th><th>Req Type (IHE)</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>1</td><td></td><td></td><td>CONTAINER</td><td>EV (111028, DCM, "Image Library")</td><td>1</td><td>M</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate ; SHALL:populate</td></tr>
  <tr><td>1b</td><td>&gt;</td><td>HAS ACQ CONTEXT</td><td>CODE</td><td>EV (121139, DCM, "Modality")</td><td>1-n</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>1c</td><td>&gt;</td><td>HAS ACQ CONTEXT</td><td>UIDREF</td><td>EV (110181, DCM, "SOP Class UID")</td><td>1-n</td><td>U</td><td></td><td></td><td></td></tr>
  <tr><td>1d</td><td>&gt;</td><td>HAS ACQ CONTEXT</td><td>CODE</td><td>EV (123014, DCM, "Target Region")</td><td>1-n</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>1e</td><td>&gt;</td><td>HAS ACQ CONTEXT</td><td>TEXT</td><td>EV (123014, DCM, "Target Region")</td><td>1-n</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>1f</td><td>&gt;</td><td>HAS ACQ CONTEXT</td><td>NUM</td><td>EV (131565, DCM, "Number of Study Related Series")</td><td>1</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>2</td><td>&gt;</td><td>CONTAINS</td><td>CONTAINER</td><td>EV (126200, DCM, "Image Library Group")</td><td>1-n</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate ; SHALL:populate</td></tr>
  <tr><td>3</td><td>&gt;&gt;</td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1602 “Image Library Entry Descriptors”</td><td>1</td><td>U</td><td>R+</td><td></td><td></td></tr>
  <tr><td>4</td><td>&gt;&gt;</td><td>CONTAINS</td><td>INCLUDE</td><td>DTID 1601 “Image Library Entry”</td><td>1-n</td><td>U</td><td></td><td></td><td></td></tr>
    </tbody>
  </table>
</div>
