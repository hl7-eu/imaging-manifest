#### TID 2010 Key Object Selection

DICOM SR template TID 2010 (Key Object Selection) nodes with DICOM/IHE requirement types and EU-MADO Consumer/Producer obligations. This is used in the SR Document Module.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_TID_2010.html#table_TID_2010" target="_blank">PS3.16 TID 2010</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="TID 2010 Key Object Selection">
    <caption>TID 2010 Key Object Selection</caption>
    <colgroup><col style="width:6%"><col style="width:5%"><col style="width:13%"><col style="width:6%"><col style="width:22%"><col style="width:5%"><col style="width:8%"><col style="width:8%"><col style="width:13.5%"><col style="width:13.5%"></colgroup>
    <thead>
      <tr><th style="text-align:center">Row No</th><th style="text-align:center">NL</th><th style="text-align:center">REL with Parent</th><th style="text-align:center">VT</th><th style="text-align:center">Concept Name</th><th style="text-align:center">VM</th><th style="text-align:center">Req Type (DICOM)</th><th style="text-align:center">Req Type (IHE)</th><th style="text-align:center">Consumer Obligation</th><th style="text-align:center">Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td style="text-align:center">4b</td><td style="text-align:center">&gt;</td><td style="text-align:center">HAS CONCEPT MOD</td><td style="text-align:center">CODE</td><td>EV (121023, DCM, "Procedure Code")</td><td style="text-align:center">1-n</td><td style="text-align:center">U</td><td style="text-align:center"></td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL-populate" target="_blank">SHALL-populate</a></td></tr>
  <tr><td style="text-align:center">7</td><td style="text-align:center">&gt;</td><td style="text-align:center">CONTAINS</td><td style="text-align:center">TEXT</td><td>EV (113012, DCM, "Key Object Description")</td><td style="text-align:center">1</td><td style="text-align:center">U</td><td style="text-align:center"></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHOULD.58process" target="_blank">SHOULD:process</a></td><td style="text-align:center"><a href="http://hl7.org/fhir/extensions/5.3.0/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate" target="_blank">SHALL:able-to-populate</a></td></tr>
    </tbody>
  </table>
</div>
