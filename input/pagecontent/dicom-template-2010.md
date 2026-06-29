#### TID 2010 Key Object Selection

DICOM SR template TID 2010 (Key Object Selection) nodes with DICOM/IHE requirement types and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_TID_2010.html#table_TID_2010" target="_blank">PS3.16 TID 2010</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="TID 2010 Key Object Selection">
    <caption>TID 2010 Key Object Selection</caption>
    <thead>
      <tr><th>Row No</th><th>NL</th><th>REL with Parent</th><th>VT</th><th>Concept Name</th><th>VM</th><th>Req Type (DICOM)</th><th>Req Type (IHE)</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>1</td><td></td><td></td><td>CONTAINER</td><td>DCID 7010 “Key Object Selection Document Title”</td><td>1</td><td>M</td><td></td><td></td><td></td></tr>
  <tr><td>2</td><td>&gt;</td><td>HAS CONCEPT MOD</td><td>CODE</td><td>EV (113011, DCM, "Document Title Modifier")</td><td>1-n</td><td>U</td><td></td><td></td><td></td></tr>
  <tr><td>3</td><td>&gt;</td><td>HAS CONCEPT MOD</td><td>CODE</td><td>EV (113011, DCM, "Document Title Modifier")</td><td>1</td><td>UC</td><td></td><td></td><td></td></tr>
  <tr><td>4</td><td>&gt;</td><td>HAS CONCEPT MOD</td><td>CODE</td><td>EV (113011, DCM, "Document Title Modifier")</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>4b</td><td>&gt;</td><td>HAS CONCEPT MOD</td><td>CODE</td><td>EV (121023, DCM, "Procedure Code")</td><td>1-n</td><td>U</td><td></td><td></td><td>SHALL-populate</td></tr>
  <tr><td>5</td><td>&gt;</td><td>HAS CONCEPT MOD</td><td>INCLUDE</td><td>DTID 1204 “Language of Content Item and Descendants”</td><td>1</td><td>U</td><td></td><td></td><td></td></tr>
  <tr><td>6</td><td>&gt;</td><td>HAS OBS CONTEXT</td><td>INCLUDE</td><td>DTID 1002 “Observer Context”</td><td>1-n</td><td>U</td><td></td><td></td><td></td></tr>
  <tr><td>7</td><td>&gt;</td><td>CONTAINS</td><td>TEXT</td><td>EV (113012, DCM, "Key Object Description")</td><td>1</td><td>U</td><td></td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>8</td><td>&gt;</td><td>CONTAINS</td><td>IMAGE</td><td></td><td>1-n</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>9</td><td>&gt;</td><td>CONTAINS</td><td>WAVEFORM</td><td></td><td>1-n</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>10</td><td>&gt;</td><td>CONTAINS</td><td>COMPOSITE</td><td></td><td>1-n</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>11</td><td>&gt;</td><td>CONTAINS</td><td>INCLUDE</td><td>DTID 1600 “Image Library”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
    </tbody>
  </table>
</div>
