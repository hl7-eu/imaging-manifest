

Profile: EerxfMadoImagingStudyObligations
Parent: EerxfMadoImagingStudy
Title: "EERxF MADO Imaging Study"
Description: """
Profile for ImagingStudy resources used in the MADO context. This profile is used for the ImagingStudy resources that represent the imaging studies in the MADO context. It includes additional
constraints and extensions specific to the MADO context, such as the type of imaging study, the clinical specialty, and the anatomical region of interest.
"""
* insert SetFmmAndStatusRule( 1, draft )
* subject 1..1
* subject only Reference( $EuPatient )


// Obligations
* series.modality
  * insert XtEhrObligation( 
      [["EHDSImagingReport.header.eventType; EHDSImagingReport.body.examinationReport.modality; EHDSImagingStudy.modality; EHDSImagingStudy.series.seriesModality"]], 
      #SHOULD:able-to-populate
    )
* modality
  * insert XtEhrObligation( 
      [["EHDSImagingReport.header.eventType; EHDSImagingReport.body.examinationReport.modality; EHDSImagingStudy.modality; EHDSImagingStudy.series.seriesModality"]], #SHOULD:able-to-populate
    )
* series.specimen
  * insert XtEhrObligation( 
      [["EHDSImagingReport.body.specimen; EHDSImagingStudy.series.specimen"]], #SHOULD:able-to-populate
    )
* series.bodySite
  * insert XtEhrObligation( 
      [["EHDSImagingReport.body.examinationReport.bodySite; EHDSImagingStudy.bodySite; EHDSImagingStudy.series.bodySite"]], #SHALL:able-to-populate
    )
* subject
  * insert XtEhrObligation( 
      [["EHDSImagingStudy.header.subject"]], #SHALL:able-to-populate
    )
* identifier[study-instance-uid]
  * insert XtEhrObligation( 
      [["EHDSImagingStudy.header.identifier"]], #SHALL:able-to-populate
    )
* series.performer[performer]
  * insert XtEhrObligation( [["EHDSImagingStudy.header.author[x]"]], #SHALL:able-to-populate  )
* series.performer[organization]
  * insert XtEhrObligation( [["EHDSImagingStudy.header.author[x]"]], #SHALL:able-to-populate  )
* series.performer[device]
  * insert XtEhrObligation( [["EHDSImagingStudy.header.author[x]"]], #SHALL:able-to-populate  )
* started
  * insert XtEhrObligation( [["EHDSImagingStudy.header.date; EHDSImagingStudy.started"]], #SHALL:able-to-populate  )
* status
  * insert XtEhrObligation( [["EHDSImagingStudy.header.status"]], #MAY:able-to-populate  )
* language
  * insert XtEhrObligation( [["EHDSImagingStudy.header.language"]], #SHOULD:able-to-populate  )
* encounter
  * insert XtEhrObligation( [["EHDSImagingStudy.encounter"]], #SHOULD:able-to-populate )
* basedOn
  * insert XtEhrObligation( [["EHDSImagingStudy.basedOn"]], #SHOULD:able-to-populate )
* numberOfSeries
  * insert XtEhrObligation( [["EHDSImagingStudy.numberOfSeries"]], #SHALL:able-to-populate )
* numberOfInstances
  * insert XtEhrObligation( [["EHDSImagingStudy.numberOfInstances"]], #SHALL:able-to-populate )
* description
  * insert XtEhrObligation( [["EHDSImagingStudy.description"]], #SHALL:able-to-populate )
* series.performer[custodian]
  * insert XtEhrObligation( [["EHDSImagingStudy.studyCustodian"]], #SHALL:able-to-populate )
* endpoint
  * insert XtEhrObligation( [["EHDSImagingStudy.studyEndpoint"]], #SHALL:able-to-populate )
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.studyEndpoint"
* series
  * insert XtEhrObligation( [["EHDSImagingStudy.series"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series"
* series.uid
  * insert XtEhrObligation( [["EHDSImagingStudy.seriesUid"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.seriesUid"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.seriesUid"
* series.number
  * insert XtEhrObligation( [["EHDSImagingStudy.series.number"]], #SHOULD:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.number"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.number"
* series.description
  * insert XtEhrObligation( [["EHDSImagingStudy.series.description"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.description"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.description"
* series.numberOfInstances
  * insert XtEhrObligation( [["EHDSImagingStudy.series.numberOfInstances"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.numberOfInstances"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.numberOfInstances"
* series.endpoint
  * insert XtEhrObligation( [["EHDSImagingStudy.series.seriesEndpoint"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.seriesEndpoint"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.seriesEndpoint"
* series.started
  * insert XtEhrObligation( [["EHDSImagingStudy.series.started"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.started"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.started"
* series.instance
  * insert XtEhrObligation( [["EHDSImagingStudy.series.instancesInTheSeries"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.instancesInTheSeries"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.instancesInTheSeries"
* series.instance.extension[instance-description]
  * insert XtEhrObligation( [["EHDSImagingStudy.series.instancesInTheSeries.instanceTitle"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.instancesInTheSeries.instanceTitle"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.instancesInTheSeries.instanceTitle"
* series.instance.uid
  * insert XtEhrObligation( [["EHDSImagingStudy.series.instancesInTheSeries.instanceUid"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.instancesInTheSeries.instanceUid"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.instancesInTheSeries.instanceUid"
* series.instance.sopClass
  * insert XtEhrObligation( [["EHDSImagingStudy.series.instancesInTheSeries.sopClass"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.instancesInTheSeries.sopClass"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.instancesInTheSeries.sopClass"
* series.instance.number
  * insert XtEhrObligation( [["EHDSImagingStudy.series.instancesInTheSeries.instanceNumber"]], #SHALL:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.instancesInTheSeries.instanceNumber"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.instancesInTheSeries.instanceNumber"
* series.instance.extension[number-of-frames]
  * insert XtEhrObligation( [["EHDSImagingStudy.series.instancesInTheSeries.numberOfFrames"]], #SHOULD:able-to-populate )
//   * ^requirements = "EHDSImagingStudy.series.instancesInTheSeries.numberOfFrames"
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(EuImagingManifestProducer)
//   * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "EHDSImagingStudy.series.instancesInTheSeries.numberOfFrames"