# Changes in IHE RAD MADO Rev. 1.2 TI

Comparison of the updated MADO specification with the original MADO source used for the files in `ai-result/`.

## Sources

- New specification: `doc/IHE_RAD_Suppl_MADO_Rev1-2_TI_2026-08-xx_mlj.docx`. The specification content is stored in the embedded Word document inside this DOCX.
- Original extracted specification: `mado-md/volume3.md`, representing the original IHE-MADO PDF used for the extraction pipeline.
- Step 11 template content: `ai-result/step11-dicom-template-fhir-obligations.csv`.
- Generated pages: `imaging-manifest-fork/input/pagecontent/dicom-template-*.md`.

The comparison is limited to section `6.X.2`, with emphasis on the DICOM SR template content represented in Step 11.

## Summary

The updated specification makes a structural change to the DICOM SR template model. It is not only a wording or code-value update. The current Step 11 output contains obsolete template groups and rows, and the page generator would produce pages that no longer match the updated specification.

## Differences

### 1. Patient section numbering

The new specification reorganizes the Patient Module as:

- `6.X.2.5` Patient Module
- `6.X.2.5.1` Patient ID
- `6.X.2.5.2` Other Patient IDs Sequence
- `6.X.2.5.3` Issuer of Patient ID Macro

The original specification used the older nested numbering:

- `6.X.2.5.1` Patient Module
- `6.X.2.5.1.1` Patient ID
- `6.X.2.5.1.2` Other Patient IDs Sequence
- `6.X.2.5.1.3` Issuer of Patient ID Macro

Existing cross-references in the extracted source and downstream data need to be reviewed for the new numbering.

### 2. General Study content

The updated specification explicitly defines:

- `6.X.2.6.1` Accession Number
- `6.X.2.6.2` Study Date and Time

The updated General Study table specifies:

- Study Date `(0008,0020)`: `R+`
- Study Time `(0008,0030)`: `R+`
- Accession Number `(0008,0050)`: `O+`
- Issuer of Accession Number Sequence `(0008,0051)`: `RC+`
- Study Description `(0008,1030)`: `RC+`

The new text also explicitly requires Study Date and Study Time to be populated when absent from source instances because they are critical search parameters.

### 3. TID 1600 row set changed

The updated TID 1600 table contains only three content items:

- Modality: `CODE`, `1-n`, `R+`
- Target Region: `CODE`, `1-n`, `R+`
- Number of Study Related Series: `NUM`, `1`, `R+`

The current Step 11 data contains nine TID 1600 rows, including the root container, SOP Class UID, a duplicate Target Region `TEXT` row, Image Library Group, and includes for TID 1602 and TID 1601. Those additional rows are not present in the updated TID 1600 table.

### 4. TID 1600 code value changed

The updated specification uses the provisional IHE code:

- `EV (MADOTEMP009, 99IHE, "Number of Study Related Series")`

Step 11 currently uses:

- `EV (131565, DCM, "Number of Study Related Series")`

The Step 11 row contains a note acknowledging the provisional-code discrepancy. The updated specification should be authoritative for regenerated page content.

### 5. TID 1602 is one template with two contextual tables

The updated specification uses one TID 1602 in two contexts:

- Table `6.X.2.9-2`: TID 1602 Image Library Group Template
- Table `6.X.2.9-3`: TID 1602 Image Library Entry Template

Step 11 currently represents these as two separate groups:

- `1602-s`: Image Library Entry Descriptors (series), 28 rows
- `1602-i`: Image Library Entry Descriptors (instance), 28 rows

The updated specification therefore requires a different grouping and page model, rather than simply renaming the existing groups.

### 6. New TID 1602 group-level rows

The updated TID 1602 group table contains only these series-level descriptors:

- Modality
- Series Date
- Series Time
- Series Description
- Series Number
- Series Instance UID
- Target Region

The current `1602-s` Step 11 group also contains rows that are no longer in the updated group table, including Image Laterality, Study Date, Study Time, Content Date, Content Time, Acquisition Date, Acquisition Time, and Number of Series Related Instances.

The updated table also uses these provisional IHE concepts:

- Series Date: `MADOTEMP003`
- Series Time: `MADOTEMP004`
- Series Description: `MADOTEMP002`

Step 11 instead uses DICOM-coded concepts such as `111060`, `111061`, and `131563`, and contains both `CODE` and `TEXT` forms for Series Description. The updated table retains a single `TEXT` Series Description item.

### 7. New TID 1602 entry-level rows

The updated TID 1602 entry table contains only:

- Number of Frames: `NUM`, `1`, `RC+`
- Instance Number: `TEXT`, `1`, `RC+`
- Include TID 1609: `INCLUDE`, `1`, `RC+`, present when the instance is a KOS Object

The current `1602-i` Step 11 group contains many additional rows that are absent from the updated entry table, including Pixel Data Rows, Pixel Data Columns, Frame of Reference UID, acquisition metadata, and modality-specific includes TID 1603 through TID 1607.

### 8. TID 1609 include requirement changed

The updated specification defines the TID 1609 include as `RC+`, with the condition that it is present when the instance is a KOS Object.

The current Step 11 `1602-i` row represents this include as `MC`, with a condition tied to modality `KO`. The requirement type and condition need to be updated.

### 9. TID 16XX was replaced by TID 1609

The updated specification defines:

- `TID 1609 Image Library Entry Descriptors for Key Object Selection`

It contains two rows:

- Document Title: `CODE`, `1`, `R+`
- Key Object Description: `TEXT`, `1`, `RC+`, when present in the referenced KOS instance

The current Step 11 output contains both a `1609` group and an obsolete `16XX` group. The `16XX` group contains a self-referential `DTID 16XX` include and two KOS descriptor rows. The wildcard template is no longer used by the updated specification.

### 10. KOS reference prose changed

The updated section describes TID 1609 as the mechanism for determining whether flagged significant images are present and whether a KOS is relevant, using the KOS title and optional description.

The original section and Step 11 content use the wildcard name `TID 16XX` and the older wildcard-based structure. That prose, template name, and generated page title are obsolete.

## Expected template page set

After the extraction and generation pipeline is updated, the section 6.X.2 template pages should be based on:

- `dicom-template-2010.md`
- `dicom-template-1600.md`
- `dicom-template-1601.md`
- `dicom-template-1602.md`
- `dicom-template-1609.md`

The following current pages represent the old structure and should be removed or regenerated:

- `dicom-template-1602-i.md`
- `dicom-template-1602-s.md`
- `dicom-template-16XX.md`

## Conclusion

The updated MADO specification requires a new extraction pass for the section 6.X.2 DICOM SR template tables. Updating only the page generator would preserve incorrect Step 11 rows. The authoritative sequence should be:

1. Extract the updated section 6.X.2 tables from the new specification.
2. Reconcile DICOM and IHE requirement types and conditions.
3. Reapply the existing EU-MADO mappings and obligations where the updated concepts remain applicable.
4. Regenerate the Step 11 CSV and DICOM template pages.
5. Validate that obsolete `1602-i`, `1602-s`, and `16XX` content is no longer emitted.
