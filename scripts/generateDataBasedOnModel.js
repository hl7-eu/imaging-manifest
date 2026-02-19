const fs = require('fs');
const path = require('path');

const obligationsDir     = '../ig-src/input/fsh/obligations';
const mappingTablesDir   = '../ig-src/input/pagecontent/';
const xtehrDir           = '../ig-src/input/resources';
const conceptMapIntroDir = '../ig-src/input/intro-notes';


// Indices for relevant columns
const indices = {
    srcResource: 1,
    srcField: 2,
    srcDescription: 4,
    srcType: 5,
    srcReq:7,
    tgtResourceR5: 8,
    tgtElementR5: 9,
    tgtEquivalenceR5: 10,
    tgtRationaleR5: 11,
    tgtRefTypeR5: 12,
    includeAsWellR5: 13,
    tgtModelingR5: 14,
    actors: 16,
    section: 17,
    tgtResourceR4: 18,
    tgtElementR4: 19,
    tgtEquivalenceR4: 20,
    tgtRationaleR4: 21,
    tgtRefTypeR4: 22,
    includeAsWellR4: 23,
    tgtModelingR4: 24,
    actorCreator: 28,
    actorDisplayer: 29,
    actorProcessor: 30
};

const XtEHRBaseUrl = "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/";

// Configuration: Define which models are considered "core" for this IG
const CORE_MODELS = [
    'EHDSImagingReport',
    'EHDSImagingStudy'
    // Add other core models here as needed
];

function extractAndCopyResources(parsedData, srcResources ) {
    // Extract unique source resources


    // Copy XtEHR resources
    const srcModel = new Set(
    parsedData
        .filter(row => row[indices.srcResource]?.startsWith('EHDS'))
        .filter(row => row[indices.tgtResourceR5]?.length > 0)
        .map(row => row[indices.srcResource])
    );
    srcModel.forEach(srcResource => {
    console.log(`XtEHR-models/StructureDefinition-${srcResource}.json -> ${xtehrDir}/StructureDefinition-${srcResource}.json`);
    fs.copyFile(
        `XtEHR-models/StructureDefinition-${srcResource}.json`,
        `${xtehrDir}/StructureDefinition-${srcResource}.json`,
        (err) => {}
    );
    });
}
// function generateCodeSystem(parsedData, srcResources) {
//     srcResources.forEach(srcResource => {

//         const codesystemfile = `${conceptMapDir}/XtEhrCodeSystem.fsh`;
//         console.log(codesystemfile);
//         const writable = fs.createWriteStream(codesystemfile);
//         writable.write(`////////////////////////////////////////////////////\n`);
//         writable.write(`// Generated file. Do not edit.\n`);
//         writable.write(`////////////////////////////////////////////////////\n`);
//         writable.write(`\n`);
//         writable.write(`Instance: XtEhrCodeSystem\n`);
//         writable.write(`InstanceOf: CodeSystem\n`);
//         writable.write(`Title: "XtEhrCodeSystem"\n`);
//         writable.write(`Description: """CodeSystem with all XtEHR fields"""\n`);
//         writable.write(`* ^experimental = true\n`);
//         writable.write(`* ^status = #draft\n`);
//         writable.write(`* ^caseSensitive = true\n`);
//         writable.write(`* ^hierarchyMeaning = #is-a\n`);

//         parsedData.forEach(row => {
//             const codes = new Set();
//             if ( row[indices.srcResource] && row[indices.srcResource].startsWith('EHDS') && row[indices.srcField].length > 0 ) {
//                 const code = `${row[indices.srcResource]}.${row[indices.srcField].trim()}`;
//                 const display = row[indices.srcDescription].trim();
//                 const description = `${display}`;
//                 codes.add( `* #${code} "${display}"  "${description}"\n`);
//             }
//             codes.forEach(code => {
//                 writable.write(code);
//             });
//         });

//         writable.write(`\n`);
//         writable.write(`////////////////////////////////////////////////////\n`);
//         writable.end();
//     });
//     srcResources.forEach(srcResource => {
//             const conceptMapPath = `${conceptMapDir}/ValueSet_${srcResource}.fsh`;
//             console.log(conceptMapPath);
//             const writable = fs.createWriteStream(conceptMapPath);

//             writable.write(`////////////////////////////////////////////////////\n`);
//             writable.write(`// Generated file. Do not edit.\n`);
//             writable.write(`////////////////////////////////////////////////////\n`);
//             writable.write(`\n`);
//             writable.write(`ValueSet: ${srcResource}Vs\n`);
//             writable.write(`Title: "VS for ${srcResource}"\n`);
//             writable.write(`Description: "VS for ${srcResource}"\n`);
//             writable.write(`\n`);
//             writable.write(`* ^experimental = true\n`);
//             writable.write(`* ^status = #draft\n`);

//             codes = new Set();
//             parsedData.forEach(row => {
//                 if ( row[indices.srcResource] === srcResource && row[indices.srcField].length > 0 ) {
//                     const code = `${row[indices.srcResource]}.${row[indices.srcField].trim()}`;
//                     const display = row[indices.srcDescription].trim();
//                     const description = `${display}`;
//                     codes.add( `* XtEhrCodeSystem#${code} \n`);
//                 }
//             });
//             codes.forEach(code => {
//                 writable.write(code);
//             });
//             writable.write(`\n`);
//             writable.write(`////////////////////////////////////////////////////\n`);
//             writable.end();
//     });

// }

function generateMappingTables(parsedData, srcResources) {
    // Store all generated files for the main index
    const generatedFiles = [];

    // First, remove any existing mapping files that we don't want to keep
    console.log("Removing old mapping files...");
    fs.readdirSync(mappingTablesDir).forEach(file => {
        if ((file.endsWith('-mapping.md') || file.endsWith('-mapping.liquid.md')) && file !== 'xtehr-mapping.md') {
            // Only keep files for core models
            const resourceName = file.replace('-mapping.liquid.md', '').replace('-mapping.md', '');
            if (!CORE_MODELS.includes(resourceName)) {
                const filePath = path.join(mappingTablesDir, file);
                fs.unlinkSync(filePath);
                console.log(`Removed ${filePath}`);
            }
        }
    });

    // We need to categorize resources into:
    // 1. Core resources (in CORE_MODELS) -> Generate .md files
    // 2. Resources with actor 'R' but not in CORE_MODELS -> List in separate section, no .md files
    // 3. Resources without actor 'R' -> List as "not included"
    const coreResources = [];
    const nonCoreWithR = [];
    const resourcesWithoutR = [];

    srcResources.forEach(srcResource => {
        const hasActorWithR = parsedData
            .filter(row => row[indices.srcResource] === srcResource)
            .filter(row => row[indices.actors] && row[indices.actors].length > 0)
            .some(row => row[indices.actors].includes('R'));

        if (CORE_MODELS.includes(srcResource)) {
            coreResources.push(srcResource);
        } else if (hasActorWithR) {
            nonCoreWithR.push(srcResource);
        } else {
            resourcesWithoutR.push(srcResource);
        }
    });

    coreResources.forEach(srcResource => {
        // Create a hash table to store mappings: srcField -> array of target mappings
        const mappingTable = new Map();

        // Get all source fields for this resource in their original order
        const srcFieldsWithOrder = [];
        const seenFields = new Set();

        parsedData.forEach((row, index) => {
            if (row[indices.srcResource] === srcResource &&
                row[indices.srcField] &&
                row[indices.srcField].length > 0) {
                const srcField = row[indices.srcField].trim();
                if (!seenFields.has(srcField)) {
                    srcFieldsWithOrder.push({ field: srcField, originalIndex: index });
                    seenFields.add(srcField);
                }
            }
        });

        // Initialize the mapping table with all source fields
        srcFieldsWithOrder.forEach(({ field }) => {
            mappingTable.set(field, []);
        });

        // Populate the mapping table with target mappings and collect source type info
        const sourceTypeMap = new Map(); // srcField -> array of srcTypes
        const modelingMap = new Map(); // srcField -> tgtModeling
        const mappingTableR4 = new Map(); // srcField -> array of R4 target mappings

        // Initialize R4 mapping table
        srcFieldsWithOrder.forEach(({ field }) => {
            mappingTableR4.set(field, []);
        });

        parsedData
            .filter(row => row[indices.srcResource] === srcResource)
            .filter(row => row[indices.srcField] && row[indices.srcField].length > 0)
            .forEach(row => {
                const srcField = row[indices.srcField].trim();
                const srcType = row[indices.srcType] ? row[indices.srcType].trim() : '';
                const tgtModeling = row[indices.tgtModelingR5] ? row[indices.tgtModelingR5].trim() : '';

                // Store the source types for hyperlink generation (can be multiple for [x] fields)
                if (srcType.length > 0) {
                    if (!sourceTypeMap.has(srcField)) {
                        sourceTypeMap.set(srcField, []);
                    }
                    const existingTypes = sourceTypeMap.get(srcField);
                    if (!existingTypes.includes(srcType)) {
                        existingTypes.push(srcType);
                    }
                }

                // Store the tgtModeling value
                if (tgtModeling.length > 0) {
                    modelingMap.set(srcField, tgtModeling);
                }

                // Process target mappings (R5)
                if (row[indices.tgtResourceR5] && row[indices.tgtResourceR5].length > 0 &&
                    row[indices.tgtElementR5] && row[indices.tgtElementR5].length > 0) {
                    const tgtResource = row[indices.tgtResourceR5].trim();
                    const tgtElement = row[indices.tgtElementR5].trim();
                    const targetMapping = `${tgtResource}.${tgtElement}`;

                    if (mappingTable.has(srcField)) {
                        // Avoid duplicates
                        const existingMappings = mappingTable.get(srcField);
                        if (!existingMappings.includes(targetMapping)) {
                            existingMappings.push(targetMapping);
                        }
                    }
                }

                // Process R4 target mappings
                if (row[indices.tgtResourceR4] && row[indices.tgtResourceR4].length > 0 &&
                    row[indices.tgtElementR4] && row[indices.tgtElementR4].length > 0) {
                    const tgtResourceR4 = row[indices.tgtResourceR4].trim();
                    const tgtElementR4 = row[indices.tgtElementR4].trim();
                    const targetMappingR4 = `${tgtResourceR4}.${tgtElementR4}`;

                    if (mappingTableR4.has(srcField)) {
                        // Avoid duplicates
                        const existingMappingsR4 = mappingTableR4.get(srcField);
                        if (!existingMappingsR4.includes(targetMappingR4)) {
                            existingMappingsR4.push(targetMappingR4);
                        }
                    }
                }
            });

        // Generate the markdown file
        const mappingTablePath = `${mappingTablesDir}/${srcResource}-mapping.liquid.md`;
        console.log(mappingTablePath);
        const writable = fs.createWriteStream(mappingTablePath);

        writable.write(`<!--\n`);
        writable.write(`  Generated file. Do not edit.\n`);
        writable.write(`-->\n\n`);
        writable.write(`#### ${srcResource}\n\n`);
        writable.write(`The following table shows the mapping from ${srcResource} logical model elements to FHIR profiles.\n\n`);
        writable.write(`The source data for the mapping to other FHIR versions of this Implementation Guide can be found in the [xtehr-model-mapping.tsv](xtehr-model-mapping.tsv) file.\n\n`);

        // R4 Table
        writable.write(`{% if isR4 %}\n\n`);
        writable.write(`| Element | Target | Comments |\n`);
        writable.write(`| ------- | ------ | -------- |\n`);

        // Use source fields in their original order from the TSV file for R4
        srcFieldsWithOrder.forEach(({ field: srcField }) => {
            const targetMappingsR4 = mappingTableR4.get(srcField);

            // Convert target mappings to combined format for R4 (resource.element)
            const targetMappingsWithLinksR4 = targetMappingsR4.map(mapping => {
                const [tgtResource, tgtElement] = mapping.split('.');
                // Only create hyperlinks for resources that start with "Im"
                if (tgtResource.startsWith('Im')) {
                    return `[${tgtResource}](StructureDefinition-${tgtResource}.html).${tgtElement}`;
                } else {
                    return mapping; // Return original mapping (resource.element)
                }
            });
            // Join with semicolon and line break, remove spaces after semicolon
            const targetMappingsStrR4 = targetMappingsWithLinksR4.length > 0 ? targetMappingsWithLinksR4.join(';<br/>') : '';

            // Get the modeling value for this field
            const modelingValue = modelingMap.get(srcField) || '';

            // Create hyperlink for source field if it has EHDS srcType(s)
            // Initialize the display with the source resource and field
            srcResourceDisplay = srcResource.startsWith("EHDS") ? `[${srcResource}](StructureDefinition-${srcResource}.html)` : srcResource;
            let sourceFieldDisplay = `${srcResourceDisplay}.${srcField}`;
            const srcTypes = sourceTypeMap.get(srcField);
            if (srcTypes && srcTypes.length > 0) {
                const ehdsTypes = srcTypes.filter(type => type.startsWith('EHDS'));
                if (ehdsTypes.length > 0) {
                    if (ehdsTypes.length === 1) {
                        // Check if the ehdsType is not a core resource
                        if (!coreResources.includes(ehdsTypes[0])) {
                            // Single excluded type - link directly to resource page
                            sourceFieldDisplay = `${srcResourceDisplay}.[${srcField}](StructureDefinition-${ehdsTypes[0]}.html)`;
                        } else {
                            // Single type - simple link format
                            sourceFieldDisplay = `${srcResourceDisplay}.[${srcField}](#${ehdsTypes[0].toLowerCase()})`;
                        }
                    }
                    // Removed the else clause that added parentheses with multiple type links
                }
            }

            writable.write(`| ${sourceFieldDisplay} | ${targetMappingsStrR4} | ${modelingValue} |\n`);
        });

        writable.write(`{:.table-bordered .table-striped .thead-light}\n\n`);
        writable.write(`{% endif %}\n\n`);

        // R5 Table
        writable.write(`{% if isR5 %}\n\n`);
        writable.write(`| Element | Target | Comments |\n`);
        writable.write(`| ------- | ------ | -------- |\n`);

        // Use source fields in their original order from the TSV file for R5
        srcFieldsWithOrder.forEach(({ field: srcField }) => {
            const targetMappings = mappingTable.get(srcField);

            // Convert target mappings to combined format for R5 (resource.element)
            const targetMappingsWithLinks = targetMappings.map(mapping => {
                const [tgtResource, tgtElement] = mapping.split('.');
                // Only create hyperlinks for resources that start with "Im"
                if (tgtResource.startsWith('Im')) {
                    return `[${tgtResource}](StructureDefinition-${tgtResource}.html).${tgtElement}`;
                } else {
                    return mapping; // Return original mapping (resource.element)
                }
            });
            // Join with semicolon and line break, remove spaces after semicolon
            const targetMappingsStrR5 = targetMappingsWithLinks.length > 0 ? targetMappingsWithLinks.join(';<br/>') : '';

            // Get the modeling value for this field
            const modelingValue = modelingMap.get(srcField) || '';

            // Create hyperlink for source field if it has EHDS srcType(s)
            // Initialize the display with the source resource and field
            srcResourceDisplay = srcResource.startsWith("EHDS") ? `[${srcResource}](StructureDefinition-${srcResource}.html)` : srcResource;
            let sourceFieldDisplay = `${srcResourceDisplay}.${srcField}`;
            const srcTypes = sourceTypeMap.get(srcField);
            if (srcTypes && srcTypes.length > 0) {
                const ehdsTypes = srcTypes.filter(type => type.startsWith('EHDS'));
                if (ehdsTypes.length > 0) {
                    if (ehdsTypes.length === 1) {
                        // Check if the ehdsType is not a core resource
                        if (!coreResources.includes(ehdsTypes[0])) {
                            // Single excluded type - link directly to resource page
                            sourceFieldDisplay = `${srcResourceDisplay}.[${srcField}](StructureDefinition-${ehdsTypes[0]}.html)`;
                        } else {
                            // Single type - simple link format
                            sourceFieldDisplay = `${srcResourceDisplay}.[${srcField}](#${ehdsTypes[0].toLowerCase()})`;
                        }
                    }
                    // Removed the else clause that added parentheses with multiple type links
                }
            }

            writable.write(`| ${sourceFieldDisplay} | ${targetMappingsStrR5} | ${modelingValue} |\n`);
        });

        writable.write(`{:.table-bordered .table-striped .thead-light}\n\n`);
        writable.write(`{% endif %}\n\n`);

        writable.end();

        // Store for index generation
        generatedFiles.push({
            filename: `${srcResource}-mapping.md`,
            resource: srcResource
        });
    });

    // Generate the main index file
    generateMappingIndex(generatedFiles, nonCoreWithR, resourcesWithoutR);
}

function generateMappingIndex(generatedFiles, nonCoreWithR, resourcesWithoutR) {
    const indexPath = '../ig-src/input/pagecontent/xtehr-mapping.md';
    console.log(`Generating mapping index: ${indexPath}`);
    const writable = fs.createWriteStream(indexPath);

    writable.write(`<!--\n`);
    writable.write(`  Generated file. Do not edit.\n`);
    writable.write(`-->\n\n`);
    writable.write('{% include variable-definitions.md %}\n\n');
    writable.write('The following tables describe the way the [Xt-EHR logical model](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-XtEHR.html) has been mapped onto the FHIR profiles defined in this specification.\n\n');

    // Sort files alphabetically for consistent output
    const sortedFiles = generatedFiles.sort((a, b) => a.resource.localeCompare(b.resource));

    // Core models section - include the .md files
    if (sortedFiles.length > 0) {
        writable.write('### Core models of the Imaging Report IG\n\n');
        sortedFiles.forEach(file => {
            writable.write(`{% include ${file.filename} %}\n\n`);
        });
    }

    // Section for resources with 'R' but not in CORE_MODELS
    if (nonCoreWithR && nonCoreWithR.length > 0) {
        const sortedNonCoreWithR = [...nonCoreWithR].sort();
        const nonCoreWithRNames = sortedNonCoreWithR.join(', ');
        writable.write(`### Other logical models that are used by this IG\n\n`);
        writable.write(`The following logical models describe data that is used in the context of this IG, but the mapping will be defined by another higher level IG, because they are common to many domains:\n\n`);
        nonCoreWithRNamesWithHyperlinks = sortedNonCoreWithR.map(model => {
            return model.startsWith("EHDS") ? `[${model}](StructureDefinition-${model}.html)` : model;
        });
        writable.write(`* ${nonCoreWithRNamesWithHyperlinks.join(', ')}\n\n`);
    }

    // Section for resources without 'R'
    if (resourcesWithoutR && resourcesWithoutR.length > 0) {
        const sortedWithoutR = [...resourcesWithoutR].sort();
        withoutRNamesWithHyperlinks = sortedWithoutR.map( model => {
            return model.startsWith("EHDS") ? `[${model}](StructureDefinition-${model}.html)` : model;
        });

        const withoutRNames = withoutRNamesWithHyperlinks.join(', ');
        writable.write(`### Models not included in this IG\n\n`);
        writable.write(`The following logical models describe data that is not used in the context of this Imaging Report IG:\n\n`);
        writable.write(`* ${withoutRNames}\n\n`);
    }

    writable.end();
}

// Generate intro files mermaid
// Commented out as it is not used in the current context of generating .md files instead of ConceptMap files.
// function generateIntroFiles(parsedData, srcResources) {
//     srcResources.forEach(srcResource => {
//         const tgtResources = new Set();
//         const srcFields = new Set();

//         parsedData.forEach(row => {
//             if (row[indices.srcResource] === srcResource) {
//                 if (row[indices.tgtResource] && row[indices.tgtResource].length > 0){
//                     tgtResources
//                         .add(
//                             row[indices.tgtResource]
//                         );
//                 }
//                 if (row[indices.srcField]){
//                     srcFields.add(row[indices.srcField]);
//                 }
//             }
//         });
//         if (tgtResources.size > 0) {
//             const conceptMapIntroPath = `${conceptMapIntroDir}/ConceptMap-${srcResource}Map-intro.md`;
//             console.log(conceptMapIntroPath);
//             const writable = fs.createWriteStream(conceptMapIntroPath);
//             writable.write(`{% include variable-definitions.md %}\n\n`);
//             writable.write(`The figure below presents the {{XtEhrImaging}} DataSet representation and the FHIR profiles it maps to. For each FHIR profile the impacted fields are listed.\n`);
//             writable.write(`\n`);
//             // mermaid
//             writable.write('```mermaid\n');
//             writable.write('classDiagram\n');
//             writable.write('direction LR\n');
//             // XtEHR model
//             writable.write(`class ${srcResource} {\n`);
//             writable.write(`  <<XtEHR dataset>>\n`);
//             srcFields.forEach(field => writable.write(`  ${field}\n`));
//             writable.write(`}\n`);
//             writable.write(`link ${srcResource} "https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-${srcResource}.html"\n`);

//             const linkedClasses = new Set();
//             const linkRows = new Set();
//             tgtResources.forEach(tgtResource => {
//                 const tgtFields = new Set(
//                     parsedData
//                         .filter(row => row[indices.srcResource] === srcResource && row[indices.tgtResource] === tgtResource)
//                         .map(row => row[indices.tgtElement].trim())
//                         .filter( field => field.length > 0 )
//                 );
//                 let tgtResourceClassName = tgtResource.substring(tgtResource.lastIndexOf('/') + 1);

//                 writable.write(`class ${tgtResourceClassName}`);
//                 if (tgtFields.size > 0) {
//                     writable.write(`{\n`);
//                     writable.write(`  <<FHIR>>\n`);
//                     tgtFields.forEach(field => {
//                         let targetField = field.replace(new RegExp('\:','g'),'\\:')

//                         writable.write(`  ${targetField}\n`)
//                     } )
//                     writable.write(`}\n`);
//                 }
//                 writable.write(`\n`);
//                 // writable.write(`link ${tgtResourceClassName} "./StructureDefinition-${tgtResourceClassName.html}"\n`);
//                 linkRows.add(`${srcResource} --> ${tgtResourceClassName}\n`);

//                 parsedData.forEach(row => {
//                     if (row[indices.srcResource] === srcResource && row[indices.tgtResource] === tgtResource && row[indices.tgtRefType]) {
//                     const refResources = row[indices.tgtRefType].split(',');
//                     const referenceName = row[indices.tgtElement];
//                     refResources
//                         .filter(refResource => refResource !== '-' )
//                         .forEach(refResource => {
//                             const refResourceClassName = refResource.substring(refResource.lastIndexOf('/') + 1);
//                             linkedClasses.add(refResourceClassName);
//                             linkRows.add(`${tgtResourceClassName} --> ${refResourceClassName} : ${referenceName}\n`);
//                     });
//                     }
//                 });
//             });
//             linkedClasses.forEach(linkedClass => {
//                 writable.write(`class ${linkedClass} {\n`);
//                 writable.write(`  <<FHIR>>\n`);
//                 writable.write(`}\n`);
//             });
//             linkRows.forEach(link => writable.write(link));
//             writable.write("```\n");
//             writable.write(`\n`);
//             writable.end();
//         }
//     });
// }

function generateObligationFiles(parsedData) {
  // Generate Obligations
  const r4reportObligationResources = new Set();
  const r5reportObligationResources = new Set();

  // create set of R4 and R5 resources with obligations
  parsedData
    .filter((row, index) => index > 0)
    .filter(row => row[indices.actorCreator]) // only rows with actors
    .filter(row => row[indices.actorCreator].length > 0)
    .forEach(row => {
        if( row[indices.tgtResourceR4] && row[indices.tgtResourceR4].length > 0 ) {
            r4reportObligationResources.add( row[indices.tgtResourceR4], row[indices.tgtResourceR4] );
        }
        if( row[indices.tgtResourceR5] && row[indices.tgtResourceR5].length > 0 ) {
            r5reportObligationResources.add( row[indices.tgtResourceR5], row[indices.tgtResourceR5] );
        }
    });

  function writeObligationFiles( parsedData, obligationResources, fhirVersion, tgtResource, tgtElement, actorName, obligationIndex ) {
    obligationResources.forEach( (resourceName, index) => {
        const map = new Map();
        for( const row of parsedData ) {
            if ( row[tgtResource] === resourceName && row[tgtElement] && row[tgtElement].length > 0 
                && row[obligationIndex] && row[obligationIndex].length > 0
                && row[indices.srcResource].length > 0
            ) {
                const key = row[tgtElement];
                if (!map.has(key)) {
                    map.set(key, row);
                } else {
                    const current = map.get(key);
                    if ( !current[obligationIndex] || current[obligationIndex].length === 0) {
                        map.set(key, row);
                    }
                }
        
            }
        }

        if ( map.size >0 ){
            const obligationResourceName = `${fhirVersion}_obligations_${actorName}_${resourceName}`;
            const obligationPath = `${obligationsDir}/${obligationResourceName}.liquid.fsh`;
            console.log(obligationPath);
            const writable = fs.createWriteStream(obligationPath);

            writable.write(`////////////////////////////////////////////////////\n`);
            writable.write(`// Generated file. Do not edit.\n`);
            writable.write(`////////////////////////////////////////////////////\n`);
            writable.write(`{% if is${fhirVersion} %}\n`);
            writable.write(`Profile: ${obligationResourceName}\n`);
            writable.write(`Parent: ${resourceName.startsWith("Eu")?"$"+resourceName:resourceName}\n`);
            writable.write(`Id: ${obligationResourceName.replaceAll('_','-')}\n`);
            writable.write(`Title: "Obligations for ${actorName} for ${resourceName}"\n`);
            writable.write(`Description: "Obligations for ${actorName} for ${resourceName}"\n`);
            const allObligations = Array.from(map.values());
            allObligations.map(obligation => {
                const rows = parsedData
                    .filter(row => row[tgtResource] === resourceName )
                    .filter(row => row[tgtElement] === obligation )
                ;
                let documentationSet = new Set( rows
                    .map(row => `${row[indices.srcResource]}.${row[indices.srcField]}`)
                    .filter(row => row.length > 0) )
                let documentation = Array.from(documentationSet)
                    .join(', ')
                ;
                documentation = documentation.length > 0 ? documentation : '-';
                writable.write(`* ${obligation[tgtElement]}\n`);
                if (obligation[obligationIndex] && obligation[obligationIndex].length>0 ) {
                    obligationArray = obligation[obligationIndex].split(',').map(item => item.trim());
                    obligationArray.forEach( obligationValue => {

                        writable.write(`  * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #${obligationValue}\n`);
                        writable.write(`  * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(${actorName})\n`);
                        writable.write(`  * ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[documentation].valueMarkdown = "${documentation}"\n`);
                    });
                }

            });
            writable.write(`{% endif %} `);
            writable.end();
        }
    });
  }  
  writeObligationFiles( parsedData, r4reportObligationResources, "R4", indices.tgtResourceR4, indices.tgtElementR4, "EuImagingCreator", indices.actorCreator );
  writeObligationFiles( parsedData, r4reportObligationResources, "R4", indices.tgtResourceR4, indices.tgtElementR4, "EuImagingDisplayer", indices.actorDisplayer );
  writeObligationFiles( parsedData, r4reportObligationResources, "R4", indices.tgtResourceR4, indices.tgtElementR4, "EuImagingProcessor", indices.actorProcessor );

  writeObligationFiles( parsedData, r5reportObligationResources, "R5", indices.tgtResourceR4, indices.tgtElementR4, "EuImagingCreator", indices.actorCreator );
  writeObligationFiles( parsedData, r5reportObligationResources, "R5", indices.tgtResourceR4, indices.tgtElementR4, "EuImagingDisplayer", indices.actorDisplayer );
  writeObligationFiles( parsedData, r5reportObligationResources, "R5", indices.tgtResourceR4, indices.tgtElementR4, "EuImagingProcessor", indices.actorProcessor );

}

function generateSectionTablesMarkdown(parsedData) {
    // Create a map to organize data by sections
    const sectionMap = new Map();

    // Filter data to only include rows with section information
    const rowsWithSections = parsedData
        .filter(row => row[indices.section]?.trim().length > 0)
        .filter(row => row[indices.section]?.trim() !== "Section") // Exclude the header row
        .filter(row => row[indices.tgtResourceR5]?.trim().length > 0)
        .filter(row => row[indices.tgtElementR5]?.trim().length > 0);
        // .filter(row => row[indices.tgtRefType]?.trim().length > 0);

    console.log(`Found ${rowsWithSections.length} rows with section information`);

    // Process each row, now handling multiple sections per row
    rowsWithSections.forEach(row => {
        // Split the section value by comma and process each section
        const sectionValues = row[indices.section].split(',').map(s => s.trim());
        const tgtResource = row[indices.tgtResourceR5].trim();
        const tgtElement = row[indices.tgtElementR5].trim();
        const srcResource = row[indices.srcResource] ? row[indices.srcResource].trim() : "";
        const srcField = row[indices.srcField] ? row[indices.srcField].trim() : "";
        const tgtRefType = row[indices.tgtRefTypeR5] ? row[indices.tgtRefTypeR5].trim() : "";
        const tgtModeling = row[indices.tgtModelingR5] ? row[indices.tgtModelingR5].trim() : "";

        console.log(`Processing resource: ${tgtResource}, element: ${tgtElement} for sections: ${sectionValues.join(', ')}`);

        // Add this row to each section it belongs to
        sectionValues
            .forEach(section => {
            if (section && section.length > 0) {
                if (!sectionMap.has(section)) {
                    sectionMap.set(section, []);
                }

                // Check if this resource/element pair already exists in this section
                const entries = sectionMap.get(section);
                // const exists = entries.some(entry =>
                    // entry.resource === tgtResource && entry.element === tgtElement
                // );

                // if (!exists) {
                    entries.push({
                        resource: tgtResource,
                        element: tgtElement,
                        srcResource: srcResource,
                        srcField: srcField,
                        tgtRefType: tgtRefType,
                        tgtModeling: tgtModeling
                    });
                // }
            }
        });
    });

    console.log(`Section map has ${sectionMap.size} sections`);

    // Generate the markdown file
    const outputPath = '../ig-src/input/intro-notes/StructureDefinition-Report-ImComposition-intro.md';
    const writable = fs.createWriteStream(outputPath);

    // Write file header - preserve existing content from the original file
    writable.write('{% include variable-definitions.md %}\n');
    writable.write('For report creators, this page provides guidance on how to populate the narrative of each section, which is encoded in the `Composition.section.text` element of each section slice of this profile.\n\n');
    writable.write('The table below suggests the data points that SHOULD be included, and the source of those data. Those data points can be in a first order resource, referenced directly from the Composition (e.g. ImOrder), or they can live in a second,third order resource (e.g. Medication). For the later, a second query or a FHIR path (resolve) expression is required to fetch them.\n\n');
    writable.write('NOTE: Structural concerns and rationale on the ImComposition profile can be found in the [ImComposition](StructureDefinition-ImComposition.html), which is the parent type of this Report-ImComposition profile.\n\n');

    // Define custom section order
    const sectionOrder = [
        'Imaging Study',
        'Order',
        'History',
        'Procedure',
        'Comparison',
        'Findings',
        'Impression',
        'Recommendation'
    ];

    // Filter out sections that should be excluded (like "Section")
    const sectionsToExclude = ['Section'];

    // Get all sections and exclude those in the exclude list
    const availableSections = Array.from(sectionMap.keys())
        .filter(section => !sectionsToExclude.includes(section));

    // First add sections in the specified order (if they exist)
    const orderedSections = [];
    sectionOrder.forEach(orderedSection => {
        if (sectionMap.has(orderedSection)) {
            orderedSections.push(orderedSection);
        }
    });

    // Then add any remaining sections that weren't in the specified order
    availableSections.forEach(section => {
        if (!orderedSections.includes(section)) {
            orderedSections.push(section);
        }
    });

    console.log(`Ordered sections: ${orderedSections.join(', ')}`);

    // Generate tables for each section
    if (orderedSections.length > 0) {
        writable.write('## Elements to include in sections narratives\n\n');
        orderedSections.forEach(section => {
            writable.write(`### ${section}\n\n`);
            writable.write(`The following table lists the elements that should be included in the narrative of the ${section} section.\n\n`);
            writable.write(`{:.grid}\n`);

            const entries = sectionMap.get(section);

            // Check if this section has any non-empty comments
            const hasComments = entries.some(entry => entry.tgtModeling && entry.tgtModeling.trim().length > 0);

            if (hasComments) {
                writable.write(`| First order resource | Element | Referenced resource | Logical model resource.field | Comments |\n`);
                writable.write('| -------- | ------- | -------------- | --------------------- | -------- |\n');
                let strs = new Set( entries.map(entry => `| ${entry.resource} | ${entry.element} | ${entry.tgtRefType} | ${entry.srcResource}.${entry.srcField} | ${entry.tgtModeling} |\n`));
                strs.forEach( str => { writable.write(str);});
            } else {
                writable.write(`| First order resource | Element | Referenced resource | Logical model resource.field |\n`);
                writable.write('| -------- | ------- | -------------- | --------------------- |\n');
                let strs = new Set( entries.map(entry => `| ${entry.resource} | ${entry.element} | ${entry.tgtRefType} | ${entry.srcResource}.${entry.srcField} |\n`));
                strs.forEach( str => { writable.write(str);});
            }

            writable.write('\n');
        });
    } else {
        console.log('Warning: No sections found to create tables');
    }

    writable.end();
    console.log(`Generated section tables in ${outputPath}`);
}


function main() {
    const filePath = path.join(__dirname, 'xtehr-model-mapping.tsv');

    fs.readFile(filePath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading the file:', err);
            return;
        }

        const srcParsedData = data.split('\n').map(row => row.split('\t'));
        const parsedData = [];
        srcParsedData.forEach(
            row => {
                const newRow = [];
                row.forEach(
                    cell => {
                        newRow.push(cell.trim().replace( new RegExp('"','g'), ''));
                    }
                );
                parsedData.push(newRow);
            }
        );

        const srcResources = new Set(
            parsedData.filter(row => row[indices.srcResource]?.startsWith('EHDS')).map(row => row[1])
            );

        // XtEHR logical model resources no longer included in the IG
        // extractAndCopyResources(parsedData, srcResources);

        generateMappingTables(parsedData, srcResources);

       // generateIntroFiles(parsedData, srcResources);

        generateObligationFiles(parsedData);

        generateSectionTablesMarkdown(parsedData);

        // generateCodeSystem(parsedData, srcResources);
    });
}

// Helper function to map equivalence codes
function getEquivalence(code) {
    switch (code) {
        case "EQ": return "#equivalent";
        case "SB": return "#source-is-broader-than-target";
        case "TB": return "#source-is-narrower-than-target";
        case "RT": return "#related-to";
        default: return "#related-to";
    }
}


// Execute the main function
if (require.main === module) {
    main();
}