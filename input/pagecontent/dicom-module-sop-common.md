#### SOP Common Module

DICOM SOP Common attributes (PS3.3 C.12.1) with their IHE-MADO usage and EU-MADO Consumer/Producer obligations.

<ul>
  <li><strong>DICOM source:</strong> <a href="https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.12.1.html" target="_blank">PS3.3 C.12.1</a></li>
  <li><strong>IHE-MADO:</strong> <a href="https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_MADO.pdf" target="_blank">IHE RAD MADO supplement</a></li>
</ul>

<div class="table-wrap">
  <table summary="SOP Common Module">
    <caption>SOP Common Module</caption>
    <thead>
      <tr><th>Attribute Name</th><th>Tag</th><th>DICOM Type</th><th>IHE Usage</th><th>Consumer Obligation</th><th>Producer Obligation</th></tr>
    </thead>
    <tbody>
  <tr><td>SOP Class UID</td><td>(0008,0016)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>SOP Instance UID</td><td>(0008,0018)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Specific Character Set</td><td>(0008,0005)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Instance Creation Date</td><td>(0008,0012)</td><td>3</td><td></td><td></td><td>SHALL:populate</td></tr>
  <tr><td>Instance Creation Time</td><td>(0008,0013)</td><td>3</td><td></td><td></td><td>SHALL:populate</td></tr>
  <tr><td>Instance Coercion DateTime</td><td>(0008,0015)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Instance Creator UID</td><td>(0008,0014)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Related General SOP Class UID</td><td>(0008,001A)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Original Specialized SOP Class UID</td><td>(0008,001B)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Synthetic Data</td><td>(0008,001C)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Sensitive Content Code Sequence</td><td>(0008,001D)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Coding Scheme Identification Sequence</td><td>(0008,0110)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme Designator</td><td>(0008,0102)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme Registry</td><td>(0008,0112)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme UID</td><td>(0008,010C)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme External ID</td><td>(0008,0114)</td><td>2C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme Name</td><td>(0008,0115)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme Version</td><td>(0008,0103)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme Responsible Organization</td><td>(0008,0116)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Coding Scheme Resources Sequence</td><td>(0008,0109)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Coding Scheme URL Type</td><td>(0008,010A)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Coding Scheme URL</td><td>(0008,010E)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Context Group Identification Sequence</td><td>(0008,0123)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Context Identifier</td><td>(0008,010F)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Context UID</td><td>(0008,0117)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Mapping Resource</td><td>(0008,0105)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Context Group Version</td><td>(0008,0106)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Mapping Resource Identification Sequence</td><td>(0008,0124)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Mapping Resource</td><td>(0008,0105)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Mapping Resource UID</td><td>(0008,0118)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Mapping Resource Name</td><td>(0008,0122)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Timezone Offset From UTC</td><td>(0008,0201)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Contributing Equipment Sequence</td><td>(0018,A001)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Purpose of Reference Code Sequence</td><td>(0040,A170)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td>DCID 7005 “Contributing Equipment Purpose of Reference”.</td><td></td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Manufacturer</td><td>(0008,0070)</td><td>1</td><td></td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>&gt;Institution Name</td><td>(0008,0080)</td><td>3</td><td></td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>&gt;Institution Address</td><td>(0008,0081)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Station Name</td><td>(0008,1010)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Institutional Department Name</td><td>(0008,1040)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Institutional Department Type Code Sequence</td><td>(0008,1041)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 8.8-1 “Code Sequence Macro Attributes”</td><td>BCID 7030 “Institutional Department/Unit/Service”.</td><td></td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Operators' Name</td><td>(0008,1070)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Operator Identification Sequence</td><td>(0008,1072)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 10-1 “Person Identification Macro Attributes”</td><td></td><td></td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Manufacturer's Model Name</td><td>(0008,1090)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Device Serial Number</td><td>(0018,1000)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Software Versions</td><td>(0018,1020)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Date of Manufacture</td><td>(0018,1204)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Date of Installation</td><td>(0018,1205)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Device UID</td><td>(0018,1002)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;UDI Sequence</td><td>(0018,100A)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Include Table 10.29-1 “UDI Macro Attributes”</td><td></td><td></td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Spatial Resolution</td><td>(0018,1050)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Date of Last Calibration</td><td>(0018,1200)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Time of Last Calibration</td><td>(0018,1201)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Contribution DateTime</td><td>(0018,A002)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Contribution Description</td><td>(0018,A003)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Instance Number</td><td>(0020,0013)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>SOP Instance Status</td><td>(0100,0410)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>SOP Authorization DateTime</td><td>(0100,0420)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>SOP Authorization Comment</td><td>(0100,0424)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Authorization Equipment Certification Number</td><td>(0100,0426)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Encrypted Attributes Sequence</td><td>(0400,0500)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Encrypted Content Transfer Syntax UID</td><td>(0400,0510)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Encrypted Content</td><td>(0400,0520)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>HL7 Structured Document Reference Sequence</td><td>(0040,A390)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;HL7 Instance Identifier</td><td>(0040,E001)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Retrieve URI</td><td>(0040,E010)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Longitudinal Temporal Information Modified</td><td>(0028,0303)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Query/Retrieve View</td><td>(0008,0053)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Conversion Source Attributes Sequence</td><td>(0020,9172)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>Content Qualification</td><td>(0018,9004)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Private Data Element Characteristics Sequence</td><td>(0008,0300)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Private Group Reference</td><td>(0008,0301)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Private Creator Reference</td><td>(0008,0302)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Private Data Element Definition Sequence</td><td>(0008,0310)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element</td><td>(0008,0308)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Value Multiplicity</td><td>(0008,0309)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Value Representation</td><td>(0008,030A)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Number of Items</td><td>(0008,030B)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Keyword</td><td>(0008,030D)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Name</td><td>(0008,030C)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Description</td><td>(0008,030E)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Private Data Element Encoding</td><td>(0008,030F)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Retrieve URI</td><td>(0040,E010)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Block Identifying Information Status</td><td>(0008,0303)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Nonidentifying Private Elements</td><td>(0008,0304)</td><td>1C</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;Deidentification Action Sequence</td><td>(0008,0305)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Identifying Private Elements</td><td>(0008,0306)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>&gt;&gt;Deidentification Action</td><td>(0008,0307)</td><td>1</td><td></td><td></td><td></td></tr>
  <tr><td>Instance Origin Status</td><td>(0400,0600)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Barcode Value</td><td>(2200,0005)</td><td>3</td><td></td><td></td><td></td></tr>
  <tr><td>Universal Entity ID</td><td>(0010,0032)</td><td></td><td>R+</td><td></td><td></td></tr>
  <tr><td>Universal Entity ID Type</td><td>(0010,0033)</td><td></td><td>RC+</td><td></td><td></td></tr>
  <tr><td>Study Instance UID</td><td>(0020,000D)</td><td></td><td>R</td><td></td><td>SHALL:populate</td></tr>
  <tr><td>Display URI</td><td>(gggg.eeee) (See Note for temporary TI private tag)</td><td></td><td>O</td><td></td><td></td></tr>
  <tr><td>Referenced Series Sequence</td><td>(0008,1115)</td><td></td><td>R</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Retrieve Location UID</td><td>(0040,E011)</td><td></td><td>R+</td><td></td><td>SHALL:able-to-populate</td></tr>
  <tr><td>Retrieve URL</td><td>(0008,1190)</td><td></td><td>O</td><td></td><td>SHALL:able-to-populate</td></tr>
    </tbody>
  </table>
</div>
