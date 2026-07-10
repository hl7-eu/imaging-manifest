#### TID 1600 Image Library

DICOM SR template TID 1600 (Image Library) nodes with DICOM/IHE requirement types and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_A.html#table_TID_1600" target="_blank">PS3.16 TID 1600</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=50" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="TID 1600 Image Library">
    <caption>TID 1600 Image Library</caption>
    <colgroup><col style="width:6%"><col style="width:5%"><col style="width:13%"><col style="width:6%"><col style="width:22%"><col style="width:5%"><col style="width:8%"><col style="width:8%"><col style="width:13.5%"><col style="width:13.5%"></colgroup>
    <thead>
      <tr><th style="text-align:center">Row No</th><th style="text-align:center">NL</th><th style="text-align:center">REL with Parent</th><th style="text-align:center">VT</th><th style="text-align:center">Concept Name</th><th style="text-align:center">VM</th><th style="text-align:center">Req Type (DICOM)</th><th style="text-align:center">Req Type (IHE)</th><th style="text-align:center">Consumer Obligation</th><th style="text-align:center">Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td style="text-align:center">1</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center">CONTAINER</td><td>EV (111028, DCM, "Image Library")</td><td style="text-align:center">1</td><td style="text-align:center">M</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td style="text-align:center">1b</td><td style="text-align:center">&gt;</td><td style="text-align:center">HAS ACQ CONTEXT</td><td style="text-align:center">CODE</td><td>EV (121139, DCM, "Modality")</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td style="text-align:center">1c</td><td style="text-align:center">&gt;</td><td style="text-align:center">HAS ACQ CONTEXT</td><td style="text-align:center">UIDREF</td><td>EV (110181, DCM, "SOP Class UID")</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td style="text-align:center">1d</td><td style="text-align:center">&gt;</td><td style="text-align:center">HAS ACQ CONTEXT</td><td style="text-align:center">CODE</td><td>EV (123014, DCM, "Target Region")</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td style="text-align:center">1e</td><td style="text-align:center">&gt;</td><td style="text-align:center">HAS ACQ CONTEXT</td><td style="text-align:center">TEXT</td><td>EV (123014, DCM, "Target Region")</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
  <tr><td style="text-align:center">1f</td><td style="text-align:center">&gt;</td><td style="text-align:center">HAS ACQ CONTEXT</td><td style="text-align:center">NUM</td><td>EV (131565, DCM, "Number of Study Related Series")</td><td style="text-align:center">1</td><td style="text-align:center">U</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td style="text-align:center">2</td><td style="text-align:center">&gt;</td><td style="text-align:center">CONTAINS</td><td style="text-align:center">CONTAINER</td><td>EV (126200, DCM, "Image Library Group")</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center">R+</td><td style="text-align:center">SHOULD:process</td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td style="text-align:center">3</td><td style="text-align:center">&gt;&gt;</td><td style="text-align:center">HAS ACQ CONTEXT</td><td style="text-align:center">INCLUDE</td><td>DTID 1602 “Image Library Entry Descriptors”</td><td style="text-align:center">1</td><td style="text-align:center">U</td><td style="text-align:center">R+</td><td style="text-align:center"></td><td style="text-align:center">SHALL:populate</td></tr>
  <tr><td style="text-align:center">4</td><td style="text-align:center">&gt;&gt;</td><td style="text-align:center">CONTAINS</td><td style="text-align:center">INCLUDE</td><td>DTID 1601 “Image Library Entry”</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"></td></tr>
    </tbody>
  </table>
</div>
