#### TID 1602 Image Library Entry Descriptors

DICOM SR template TID 1602 (Image Library Entry Descriptors) nodes with DICOM/IHE requirement types and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_A.html#table_TID_1602" target="_blank">PS3.16 TID 1602</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf#page=51" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="TID 1602 Image Library Entry Descriptors">
    <caption>TID 1602 Image Library Entry Descriptors</caption>
    <thead>
      <tr><th>Row No</th><th>NL</th><th>REL with Parent</th><th>VT</th><th>Concept Name</th><th>VM</th><th>Req Type (DICOM)</th><th>Req Type (IHE)</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>1</td><td></td><td>HAS ACQ CONTEXT</td><td>CODE</td><td>EV (121139, DCM, "Modality")</td><td>1</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>2</td><td></td><td>HAS ACQ CONTEXT</td><td>CODE</td><td>EV (123014, DCM, "Target Region")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>2b</td><td></td><td>HAS ACQ CONTEXT</td><td>TEXT</td><td>EV (123014, DCM, "Target Region")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>3</td><td></td><td>HAS ACQ CONTEXT</td><td>CODE</td><td>EV (111027, DCM, "Image Laterality")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>4</td><td></td><td>HAS ACQ CONTEXT</td><td>DATE</td><td>EV (111060, DCM, "Study Date")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5</td><td></td><td>HAS ACQ CONTEXT</td><td>TIME</td><td>EV (111061, DCM, "Study Time")</td><td>1</td><td>U</td><td>RC+</td><td></td><td></td></tr>
  <tr><td>5a</td><td></td><td>HAS ACQ CONTEXT</td><td>UIDREF</td><td>EV (112002, DCM, "Series Instance UID")</td><td>1</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5b</td><td></td><td>HAS ACQ CONTEXT</td><td>TEXT</td><td>EV (113607, DCM, "Series Number")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5c</td><td></td><td>HAS ACQ CONTEXT</td><td>TEXT</td><td>EV (131563, DCM, "Series Description")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5d</td><td></td><td>HAS ACQ CONTEXT</td><td>CODE</td><td>EV (131563, DCM, "Series Description")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5e</td><td></td><td>HAS ACQ CONTEXT</td><td>DATE</td><td>EV (131561, DCM, "Series Date")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5f</td><td></td><td>HAS ACQ CONTEXT</td><td>TIME</td><td>EV (131562, DCM, "Series Time")</td><td>1</td><td>U</td><td>RC+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>5g</td><td></td><td>HAS ACQ CONTEXT</td><td>NUM</td><td>EV (131564, DCM, "Number of Series Related Instances")</td><td>1</td><td>U</td><td>R+</td><td>SHOULD:process</td><td>SHALL:able-to-populate</td></tr>
  <tr><td>6</td><td></td><td>HAS ACQ CONTEXT</td><td>DATE</td><td>EV (111018, DCM, "Content Date")</td><td>1</td><td>U</td><td>R+</td><td></td><td></td></tr>
  <tr><td>7</td><td></td><td>HAS ACQ CONTEXT</td><td>TIME</td><td>EV (111019, DCM, "Content Time")</td><td>1</td><td>U</td><td>RC+</td><td></td><td></td></tr>
  <tr><td>8</td><td></td><td>HAS ACQ CONTEXT</td><td>DATE</td><td>EV (126201, DCM, "Acquisition Date")</td><td>1</td><td>U</td><td>RC+</td><td></td><td></td></tr>
  <tr><td>9</td><td></td><td>HAS ACQ CONTEXT</td><td>TIME</td><td>EV (126202, DCM, "Acquisition Time")</td><td>1</td><td>U</td><td>R+</td><td></td><td></td></tr>
  <tr><td>10</td><td></td><td>HAS ACQ CONTEXT</td><td>UIDREF</td><td>EV (112227, DCM, "Frame of Reference UID")</td><td>1</td><td>U</td><td>RC+</td><td></td><td></td></tr>
  <tr><td>11</td><td></td><td>HAS ACQ CONTEXT</td><td>NUM</td><td>EV (110910, DCM, "Pixel Data Rows")</td><td>1</td><td>U</td><td>RC+</td><td></td><td></td></tr>
  <tr><td>12</td><td></td><td>HAS ACQ CONTEXT</td><td>NUM</td><td>EV (110911, DCM, "Pixel Data Columns")</td><td>1</td><td>U</td><td></td><td></td><td></td></tr>
  <tr><td>12a</td><td></td><td>HAS ACQ CONTEXT</td><td>TEXT</td><td>EV (113609, DCM, "Instance Number")</td><td>1</td><td>U</td><td>RC+</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>12b</td><td></td><td>HAS ACQ CONTEXT</td><td>NUM</td><td>EV (121140, DCM, "Number of Frames")</td><td>1</td><td>U</td><td>RC+</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>13</td><td></td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1603 “Image Library Entry Descriptors for Projection Radiography”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>14</td><td></td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1604 “Image Library Entry Descriptors for Cross-Sectional Modalities”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>15</td><td></td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1605 “Image Library Entry Descriptors for CT”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>16</td><td></td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1606 “Image Library Entry Descriptors for MR”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>17</td><td></td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1607 “Image Library Entry Descriptors for PET”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
  <tr><td>18</td><td></td><td>HAS ACQ CONTEXT</td><td>INCLUDE</td><td>DTID 1609 “Image Library Entry Descriptors for Key Object Selection”</td><td>1</td><td>MC</td><td></td><td></td><td></td></tr>
    </tbody>
  </table>
</div>
