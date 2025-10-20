# MADO Profile Documentation

## Overview

The Manifest-based Access to DICOM Objects (MADO) profile defines standardized mechanisms for creating, sharing, and processing imaging manifests that enable efficient retrieval of DICOM objects across healthcare systems.

## Key Features

- **Dual Format Support**: Supports both DICOM Key Object Selection (KOS) and HL7 FHIR-based manifests
- **Standardized Retrieval**: Uses WADO-RS for consistent image retrieval
- **Cross-Platform Interoperability**: Enables seamless integration across different imaging systems
- **Security Framework**: Comprehensive security and audit requirements
- **European Health Data Space (EHDS) Ready**: Designed for EHDS imaging use cases

## Document Structure

This documentation is organized into the following sections:

### [Introduction](mado-introduction.html)
- Document overview and development context
- FHIR version information
- Comment period details

### [Profile Definition](mado-profile.html)
- Actor definitions and requirements
- Transaction specifications
- Use cases and process flows
- Security considerations

### [Transactions](mado-transactions.html)
- WADO-RS Get Instances transaction
- Request/response message formats
- Protocol requirements
- Security considerations

### [Content Modules](mado-content-modules.html)
- DICOM content definitions
- FHIR resource specifications
- Namespace and vocabulary definitions
- DICOM-FHIR mapping specifications

### [Appendices](mado-appendices.html)
- Implementation examples
- Security guidelines
- Performance considerations
- Use case scenarios
- Glossary

## Profile Actors

| Actor | Description |
|-------|-------------|
| **Content Creator** | Creates and manages imaging manifests in DICOM KOS or FHIR format |
| **Content Consumer** | Processes imaging manifests and initiates retrieval operations |
| **Imaging Document Consumer** | Retrieves DICOM instances using WADO-RS based on manifest information |
| **Imaging Document Source** | Provides DICOM instances in response to WADO-RS requests |

## Key Transactions

| Transaction | Actors | Description |
|-------------|--------|-------------|
| **Convey Manifest Content** | Content Creator → Content Consumer | Transfers manifest information |
| **WADO-RS Get Instances** | Imaging Document Consumer → Imaging Document Source | Retrieves DICOM instances |

## Implementation Options

### DICOM KOS Option
- Uses DICOM Key Object Selection documents
- Native DICOM structure and semantics
- Suitable for DICOM-centric environments

### FHIR Option  
- Uses FHIR List and ImagingStudy resources
- Modern REST API approach
- Better integration with health information systems

## Getting Started

1. **Review Profile Requirements**: Understand actor roles and transaction requirements
2. **Choose Implementation Approach**: Select DICOM KOS, FHIR, or both formats
3. **Implement Security**: Configure authentication, authorization, and auditing
4. **Test Interoperability**: Validate manifest creation and image retrieval workflows

## Standards Compliance

The MADO profile is based on and requires compliance with:

- **DICOM**: PS3.3, PS3.4, PS3.6, PS3.18
- **HL7 FHIR**: STU x (specific version TBD)
- **HTTP/REST**: RFC 7230-7235
- **Security**: TLS 1.2+, standard authentication mechanisms

## Development Timeline

- **Public Comment Period**: August 2025
- **Trial Implementation**: TBD
- **Final Text**: TBD

## Contact Information

- **IHE-HL7 Europe Sub-team on imaging manifest**
- **Public Comments**: [IHE Radiology Public Comments](https://www.ihe.net/Radiology_Public_Comments)

---

*This supplement is developed by the IHE-HL7 Europe Working Group on Imaging for use in the European Health Data Space (EHDS) context for sharing imaging studies and related imaging reports.*
