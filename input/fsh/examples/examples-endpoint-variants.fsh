// ============================================================================
// Endpoint slice variants
//
// A WADO endpoint whose retrieval address is unknown. This exercises the
// EuMadoWadoEndpoint `address.extension[data-absent-reason]` slice, which is
// mutually exclusive with a populated `address` value and therefore cannot be
// shown in the main manifest example.
// ============================================================================

Instance: endpoint-wado-no-address
InstanceOf: EuMadoWadoEndpoint
Usage: #example
Title: "MADO EU WADO Endpoint - unknown address"
Description: "WADO endpoint demonstrating the data-absent-reason slice on Endpoint.address for the case where the retrieval URL is not (yet) known."
* extension[retrieve-location-uid].valueString = "1.2.250.1.59.40211.22756022.2.4.199"
* status = #active
* connectionType = $endpoint-connection-type#dicom-wado-rs
* payloadType[text-wado].coding[none] = $endpoint-payload-type#none
* payloadType[text-wado].text = "DICOM WADO-RS"
* address.extension[data-absent-reason].valueCode = #unknown
