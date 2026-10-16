# Access → GrowHub field mapping (from Access_Mapping_Spreadsheet.xlsx)

Source: Access_Mapping_Spreadsheet.xlsx saved 2026-10-02 14:40. Each row checked against the GrowHub schema; NOT IN SCHEMA marks fields that were renamed or moved.

## Source Lot Data › Details → source_lot

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| accessLegacyId | source_lot.accessLegacyId | NMIS_SOURCE_LOTS CN | Yes | - | - |  |  |
| lotId | source_lot.lotId | NMIS_SOURCE_LOTS ID | Yes | - | - |  |  |
| category | source_lot.category | NMIS_SOURCE_LOTS CATEGORY_CODE | Yes | - | - | see enum A |  |
| speciesUuid | source_lot.speciesUuid | NMIS_SOURCE_LOTS PLNTMSTR_SYMBOL | Yes | - | - |  |  |
| clientUuid | source_lot.clientUuid | NMIS_SOURCE_LOTS STORED_FOR_ASSOCIATE | Yes | - | - |  |  |
| dateCollected | source_lot.dateCollected | NMIS_SOURCE_LOTS DATE_COLLECTED | Yes | - | - |  |  |
| sourceCode | source_lot.sourceCode | NMIS_SOURCE_LOTS SOURCE_CODE | Yes | - | - |  |  |
| collectionMethod | source_lot.collectionMethod | NMIS_SOURCE_LOTS COLLECT_METHOD | Yes | - | - | see enum D |  |
| exactElevation | source_lot.exactElevation | NMIS_SOURCE_LOTS ORIGIN_ELEVATION | Yes | - | - |  |  |
| breedingZone | source_lot.breedingZone | NMIS_SOURCE_LOTS BREEDING_ZONE | Yes | - | - |  |  |
| factsCode | source_lot.factsCode | NMIS_SOURCE_LOTS FACTS_SOURCE_CODE | No | - | - | see enum G | ACCESS DATA DOES NOT EXIST, NO COLUMN |
| stands | source_lot.stands | NMIS_SOURCE_LOTS GENETIC_BASE_STAND | Yes | - | - |  |  |
| treesPerStand | source_lot.treesPerStand | NMIS_SOURCE_LOTS GENETIC_BASE_TREES | Yes | - | - |  |  |
| seedZone | source_lot.seedZone | NMIS_SOURCE_LOTS SEED_ZONE | Yes | - | - |  |  |
| storageFacility | source_lot.storageFacility | NMIS_SOURCE_LOTS STORED_AT_ASSOCIATE | Yes | - | - |  |  |
| collectedByUuid | source_lot.collectedByUuid | NMIS_SOURCE_LOTS COLLECTED_BY_ASSOCIATE | Yes | - | - |  |  |
| localAreaDescription | source_lot.localAreaDescription | NMIS_SOURCE_LOTS GEOGRAPHIC_LOCATION | Yes | - | - |  |  |
| elevationRange | source_lot.elevationRange | NMIS_SOURCE_LOTS PROAG_ELEVATION | Yes | - | - |  |  |
| coordinates | source_lot.coordinates | NMIS_SOURCE_LOTS COORDINATES | Yes | - | - |  |  |
| town | source_lot.town | NMIS_SOURCE_LOTS TOWNSHIP | Yes | - | - |  |  |
| range | source_lot.range | NMIS_SOURCE_LOTS RANGE | Yes | - | - |  |  |
| section | source_lot.section | NMIS_SOURCE_LOTS SECTION | Yes | - | - |  |  |
| meridian | source_lot.meridian | NMIS_SOURCE_LOTS MERIDIAN | Yes | - | - |  |  |
| notes | source_lot.notes | NMIS_SOURCE_LOTS NOTE | Yes | - | - |  |  |
| seedYear | source_lot.seedYear | NMIS_SOURCE_LOTS SEED_YEAR | Yes | - | - |  |  |
| status | source_lot.status | NMIS_SOURCE_LOTS LOT_STATUS | Yes | - | - |  |  |
| metadataCreatedby | source_lot.metadataCreatedby | NMIS_SOURCE_LOTS METADATA_CREATED_BY | Yes | - | - |  |  |
| metadataCreatedon | source_lot.metadataCreatedon | NMIS_SOURCE_LOTS METADATA_DATE_CREATED | Yes | - | - |  |  |
| orchardSubUnit | source_lot.orchardSubUnit | NMIS_SOURCE_LOTS BREEDING_SUBUNIT | Yes | - | - |  |  |
| standNumber | source_lot.standNumber | NMIS_SOURCE_LOTS STAND | Yes | - | - |  |  |
| treeNumber | source_lot.treeNumber | NMIS_SOURCE_LOTS TREE_NUMBER | Yes | - | - |  |  |
| pedigree | source_lot.pedigree | NMIS_SOURCE_LOTS PEDIGREE | Yes | - | - |  |  |
| cycle | source_lot.cycle | NMIS_SOURCE_LOTS CYCLE_TI | Yes | - | - |  |  |
| resistanceType | source_lot.resistanceType | NMIS_SOURCE_LOTS RESISTANCE_TYPE | Yes | - | - |  |  |
| legacyData | source_lot.legacyData | NMIS_SOURCE_LOTS LEGACYDATA | Yes | - | - |  |  |

## Source Lot Data › Storage → storage

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| startDate | storage.startDate | NMIS_ID_LOCATIONS BEGIN_DATE | Yes | - | - |  |  |
| endDate | storage.endDate | NMIS_ID_LOCATIONS END_DATE | Yes | - | - |  |  |
| name | storage.name | NMIS_ID_LOCATIONS NAME/NUMBER | Yes | - | - |  |  |
| stored at Client | NOT IN SCHEMA (did you mean storage.startDate) | NMIS_ID_LOCATIONS STORED_AT_ASSOCIATE | Yes | - | - |  |  |
| type | storage.type | NMIS_LOCATIONS NMIS_LOCATIONS.LOCATION_TYPE | Yes | - | - | see enum J |  |
| section | storage.section | NMIS_LOCATIONS LOCATION | Yes | - | - |  |  |
| area | storage.area | NMIS_LOCATIONS LOCATION | Yes | - | - |  |  |
| shelf | storage.shelf | NMIS_LOCATIONS LOCATION | Yes | - | - |  |  |
| space | storage.space | NMIS_LOCATIONS LOCATION | Yes | - | - |  |  |
| dollarAmount | storage.dollarAmount |   | Yes? | - | - |  |  |

## Source Lot Data › Processing → processing_activity

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| activityDate | processing_activity.activityDate | NMIS_ID_ACTIVITIES ACTIVITY_DATE | Yes | - | - |  |  |
| activityType | processing_activity.activityType | NMIS_ID_ACTIVITIES ACTIVITY_CODE | Yes | - | - |  | Store Original Enum in NOTES |
| quantity | processing_activity.quantity | NMIS_ID_ACTIVITIES ACTIVITY_UNITS | Yes | - | - |  |  |
| unitOfMeasurement | processing_activity.unitOfMeasurement | NMIS_ID_ACTIVITIES UNIT_CODE | Yes | - | - |  |  |
| amountCharged | processing_activity.amountCharged | NMIS_ID_ACTIVITIES + NMIS_ACTIVITY_CHARGES override fields or charge per code | Yes | - | - |  |  |
| notes | processing_activity.notes | NMIS_ID_ACTIVITIES NOTE | Yes | - | - |  | Store Original Enum in NOTES |

## Source Lot Data › Test → source_lot_test

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| testDate | source_lot_test.testDate | NMIS_SOURCE_TESTS TEST_DATE | Yes | - | - |  |  |
| testType | source_lot_test.testType | NMIS_SOURCE_TESTS TYPE_OF_TEST | Yes | - | - |  | dependent on Test results field we are mapping in |
| testResults | source_lot_test.testResults | NMIS_SOURCE_TESTS GROSS_SOURCE_PER_UNIT, STRATIFIED, GERM_PCT, PURITY_PCT, MOISTURE_PCT, FILLED_PCT | Yes | - | - |  | MISSING GRAMS PER 100 SEED FINAL RESULT LOCATION |
| dollarAmount | source_lot_test.dollarAmount | NMIS_SOURCE_TESTS DOLLAR_AMOUNT | Yes | - | - |  |  |
| notes | source_lot_test.notes | NMIS_SOURCE_TESTS NOTE | Yes | - | - |  |  |
| legacyData | source_lot_test.legacyData | NMIS_SOURCE_TESTS LEGACYDATA | Yes | - | - |  |  |
| legacyId | source_lot_test.legacyId | NMIS_SOURCE_TESTS CN | Yes | - | - |  |  |
| metadataCreatedBy | source_lot_test.metadataCreatedby | NMIS_SOURCE_TESTS METADATA_CREATED_BY | Yes | - | - |  |  |
| metadataCreatedon | source_lot_test.metadataCreatedon | NMIS_SOURCE_TESTS METADATA_DATE_CREATED | Yes | - | - |  |  |
| sourceLotUuid | source_lot_test.sourceLotUuid | NMIS_SOURCE_TESTS SOURCE_LOT_CN | Yes | - | - |  | if present if not reference activity source |
| gramsPer100Samples | NOT IN SCHEMA | NMIS_SOURCE_TESTS  | NO | - | - |  |  |

## Source Lot Data › Stratification Data → source_lot_test

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| stratDayLength | source_lot_test.stratificationData | NMIS_SOURCE_TEST_RESULTS DAYS_STRAT | Yes | - | - |  |  |
| germPercent | source_lot_test.stratificationData | NMIS_SOURCE_TEST_RESULTS GERM_PCT | Yes | - | - |  |  |
| dayChecked | source_lot_test.stratificationData | NMIS_SOURCE_TEST_RESULTS DAYS | - | - | - |  |  |
| notes | source_lot_test.stratificationData | NMIS_SOURCE_TEST_RESULTS N/A | MAYBE | - | - |  |  |

## Source Lot Data › Receiving → receiving_activity

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| dateReceived | receiving_activity.dateReceived | NMIS_ID_ACTIVITIES ACTIVITY_DATE | Yes, per code type | - | - |  |  |
| activityType | receiving_activity.activityType | NMIS_ID_ACTIVITIES ACTIVITY_CODE | Yes, per code type | - | - |  | Store Original Enum in NOTES |
| quantity | receiving_activity.quantity | NMIS_ID_ACTIVITIES ACTIVITY_UNITS | Yes | - | - |  |  |
| unitOfMeasurement | NOT IN SCHEMA (did you mean receiving_activity.receivedUnitOfMeasurement, processing_activity.unitOfMeasurement, recieving_activity.unitOfMeasurement, source_lot.unitOfMeasurement) | NMIS_ID_ACTIVITIES UNIT_CODE | Yes | - | - | see enum M |  |
| finalProcessedWeight | receiving_activity.finalProcessedWeight | NMIS_ID_ACTIVITIES ACTIVITY_UNITS | Yes, per code type | - | - |  |  |
| amountCharged | receiving_activity.amountCharged | NMIS_ID_ACTIVITIES DOLLAR_AMOUNT | Yes | - | - |  |  |
| notes | receiving_activity.notes | NMIS_ID_ACTIVITIES NOTE | Yes | - | - |  | Store Original Enum in NOTES |

## Source Lot Data › Ship Ticket → source_shipment

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| shippedFrom | source_shipment.shippedFrom | NMIS_TICKETS NURSERY_ASSOCIATE | Yes | - | - |  |  |
| clientUuid | NOT IN SCHEMA (did you mean source_shipment.destinationClientUuid, source_shipment.requestedByClientUuid, billing_file.clientUuid, grow_request.clientUuid) | NMIS_TICKETS DELIVERED_TO_ASSOCIATE | Yes | - | - |  |  |
| RequestedBy | NOT IN SCHEMA (did you mean source_shipment.requestedByClientUuid) |  Delivered_BY_ASSOCIATE | Yes | - | - |  |  |
| shipDate | source_shipment.shipDate | NMIS_TICKETS DESIRED_DATE | Yes | - | - |  |  |
| carrierTrackingInfo | source_shipment.carrierTrackingInfo | NMIS_TICKETS EXT_DOC_REF | Yes | - | - |  |  |
| shippingFees | source_shipment.shippingFees | NMIS_TICKETS CHARGE_PER_TICKET | Yes | - | - |  |  |
| lotType | source_shipment.lotType | NMIS_TICKETS Source | Yes | - | - |  | Enum is based on if shipping source or seedlings |
| id | source_shipment.id | NMIS_TICKETS TICKET_NO | Yes | - | - |  |  |
| notes | NOT IN SCHEMA (did you mean client.notes, grow_request.notes, harvest_summary.notes, inventory_progress.notes) | NMIS_TICKETS NOTE | Yes, per code type | - | - |  | Missing Notes field on ship ticket |

## Source Lot Data › Lot Slip → lot_slip

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| shipTicketUuid | NOT IN SCHEMA (did you mean lot_slip.shippingCost) | NMIS_ID_ACTIVITIES TICKET_CN | Yes | - | - |  |  |
| sourceLotUuid | lot_slip.sourceLotUuid | NMIS_ID_ACTIVITIES SOURCE_LOT_CN | Yes | - | - |  |  |
| quantity | lot_slip.quantity | NMIS_ID_ACTIVITIES ACTIVITY_UNITS | Yes | - | - |  | If the UNIT_CODE does not match the lot UOM it will be converted |
| activity | lot_slip.activity | NMIS_ID_ACTIVITIES ACTIVITY_CODE | Yes | - | - |  | Store Original Enum in NOTES |
| withdrawCost | NOT IN SCHEMA (did you mean lot_slip.withdrawFee) | NMIS_ID_ACTIVITIES DOLLAR_AMOUNT | Yes | - | - |  |  |
| Notes | lot_slip.notes | NMIS_ID_ACTIVITIES NOTE | Yes | - | - |  |  |

## Seedling Lot › Request → grow_request

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| growNursery | NOT IN SCHEMA (did you mean order.growNursery) | NMIS_AGREEMENTS NURSERY_ASSOCIATE | - | - | - |  | Top-level order nursery |
| growLotId | grow_request.growLotId | NMIS_AGREEMENT_LOTS ID | - | - | - |  |  |
| client | grow_request.clientUuid | NMIS_AGREEMENT_LOTS ORDER_CLIENT_ASSOCIATE | - | - | - |  | UUID ref resolved during migration |
| contact | grow_request.contact | NMIS_AGREEMENT_LOTS ORDER_CONTACT_CN | - | - | - |  |  |
| speciesProduct | grow_request.speciesProductUuid | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_SPECIES_PRODUCT_DESC | - | - | - |  | Linked via species-products Access migration |
| targetLiftYear | grow_request.targetLiftYear | NMIS_AGREEMENT_LOTS END_FY | - | - | - |  | 4-digit fiscal year |
| requestedSeedlingQuantity | grow_request.requestedSeedlingQuantity | NMIS_AGREEMENT_LOTS TOTAL_REQUEST | - | - | - |  | Oracle value x1000 in migration |
| agreementQuantity | grow_request.agreementQuantity |   | - | - | - |  | Not found in Oracle migration script |
| estimatedCost | grow_request.estimatedCost |   | - | - | - |  | costs are often pre-generatd via access calculations |
| notes | grow_request.notes | NMIS_AGREEMENT_LOTS ORDER_CLIENT_NOTE | - | - | - |  |  |

## Seedling Lot › Planning → order_cycle_planning

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| sourceLotNursery | order_cycle_planning.sourceLotNursery | NMIS_AGREEMENT_LOTS  | - | - | - |  | Not directly in Oracle script; derived from source lot |
| sourceLot | order_cycle_planning.sourceLotUuid | NMIS_AGREEMENT_LOTS SOURCE_LOT_CN | - | - | - |  | FK resolved to source_lot UUID |
| stockType | order_cycle_planning.stockType | NMIS_AGREEMENT_LOTS CATEGORY_CODE | - | - | - | BR=Bareroot, CTR=Container, UNKN=Unknown Oracle |  |
| sowOrTransplant | order_cycle_planning.sowOrTransplant | NMIS_AGREEMENT_LOTS SOW_OR_TRANSPLANT | - | - | - | -1=Unknown, 0=Sow, 1=Transplant |  |
| requestDate | order_cycle_planning.requestDate | NMIS_AGREEMENT_LOTS ORDER_DESIRED_DATE | - | - | - |  | Auto-set on insert |
| plannedSowDate | order_cycle_planning.plannedSowDate | NMIS_AGREEMENT_LOTS BEGIN_FY | - | - | - |  |  |
| stratTime | order_cycle_planning.stratTime |   | - | - | - |  | Integer (days); no Oracle mapping found |
| plannedStratDate | order_cycle_planning.plannedStratDate |   | - | - | - |  |  |
| productType | order_cycle_planning.productType | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_SPECIES_PRODUCT_DESC | - | - | - |  |  |
| factor1 | order_cycle_planning.factor1 | NMIS_AGREEMENT_LOTS HARVEST_FACTOR_1 | - | - | - |  |  |
| factor2 | order_cycle_planning.factor2 | NMIS_AGREEMENT_LOTS HARVEST_FACTOR_2 | - | - | - |  |  |
| factor3 | order_cycle_planning.factor3 | NMIS_AGREEMENT_LOTS HARVEST_FACTOR_3 | - | - | - |  |  |
| estimatedLbsOfSeed | order_cycle_planning.estimatedLbsOfSeed | NMIS_AGREEMENT_LOTS SOURCE_REQUIRED | - | - | - |  |  |
| adjustedQuantityRequested | order_cycle_planning.adjustedQuantityRequested |   | - | - | - |  | Calculated; no direct Oracle mapping |
| pastInventoryPerformance | order_cycle_planning.pastInventoryPerformance |   | - | - | - |  |  |
| seedPerPound | order_cycle_planning.seedPerPound |   | - | - | - |  |  |
| purityPercent | order_cycle_planning.purityPercent |   | - | - | - |  |  |
| germPercent | order_cycle_planning.germPercent |   | - | - | - |  |  |
| thinningProbability | order_cycle_planning.thinningProbability |   | - | - | - |  |  |
| desiredDensity | order_cycle_planning.desiredDensity | NMIS_AGREEMENT_LOTS DESIRED_DENSITY | - | - | - |  | Bareroot - seedlings per bed foot |
| cellsFilled | order_cycle_planning.cellsFilled |   | - | - | - |  |  |
| containerSurvival | order_cycle_planning.containerSurvival |   | - | - | - |  |  |
| seedPerCell | order_cycle_planning.seedPerCell |   | - | - | - |  |  |
| estimatedContainer | order_cycle_planning.estimatedContainer |   | - | - | - |  |  |
| adjustedCalculatedSeedQuantity | order_cycle_planning.adjustedCalculatedSeedQuantity |   | - | - | - |  |  |
| adjustedCalculatedSpaceQuantity | order_cycle_planning.adjustedCalculatedSpaceQuantity |   | - | - | - |  |  |
| containerSpec.numberOfContainersNeeded | order_cycle_planning.containerSpecificationsNumberofcontainersneeded | NMIS_AGREEMENT_LOTS EST_CONTAINERS_REQUIRED | - | - | - |  | Embedded model |
| containerSpec.cellsPerContainer | order_cycle_planning.containerSpecificationsCellspercontainer | NMIS_AGREEMENT_LOTS NUMBER_CALIBRATION_CONTAINERS | - | - | - |  |  |
| containerSpec.nurseryFactors | order_cycle_planning.containerSpecificationsNurseryfactors | NMIS_AGREEMENT_LOTS CONTAINER_ASF_ADJUSTMENT | - | - | - |  |  |
| barerootSpec.revolutions | order_cycle_production.barerootSpecificationsRevolutions | NMIS_AGREEMENT_LOTS CALIBRATION_REVS_USED | - | - | - |  | Deprecated for Oracle data |
| barerootSpec.nurseryFactors | NOT IN SCHEMA (did you mean order_cycle_planning.seedFactorUuid, order_cycle_planning.containerSpecificationsNurseryfactors) | NMIS_AGREEMENT_LOTS HARVEST_ASF_ADJUSTMENT | - | - | - |  |  |
| barerootSpec.estimatedFeetPerRevolution | order_cycle_production.barerootSpecificationsEstimatedfeetperrevolution | NMIS_AGREEMENT_LOTS CALIBRATION_TRAVEL_PER_REV | - | - | - |  |  |
| barerootSpec.totalImbibedSeedWeight | order_cycle_production.barerootSpecificationsTotalimbibedseedweight | NMIS_AGREEMENT_LOTS CALIBRATION_SOURCE_UNITS | - | - | - |  |  |
| barerootSpec.avgImbibedSeedWeightPerRevolution | order_cycle_production.barerootSpecificationsAvgimbibedseedweightperrevolution | NMIS_AGREEMENT_LOTS CALIBRATION_REV_SOURCE_UNITS | - | - | - |  |  |

## Seedling Lot › Production → order_cycle_production

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| plantingDate | order_cycle_production.plantingDate | NMIS_AGREEMENT_LOTS GROW_REQUEST_BEGIN_FY | - | - | - |  |  |
| withdrawalDate | order_cycle_production.withdrawalDate |   | - | - | - |  | No Oracle mapping found |
| lbsOfSeedWithdrawn | order_cycle_production.lbsOfSeedWithdrawn |   | - | - | - |  |  |
| stratificationDate | order_cycle_production.stratificationDate |   | - | - | - |  |  |
| stratNotes | order_cycle_production.stratNotes |   | - | - | - |  |  |
| numberBedFeet | order_cycle_production.numberBedFeet |   | - | - | - |  |  |
| containersPlanted | order_cycle_production.containersPlanted |   | - | - | - |  |  |
| totalGrowUnitsPlanted | order_cycle_production.totalGrowUnitsPlanted |   | - | - | - |  |  |
| dollarAmount | order_cycle_production.dollarAmount |   | - | - | - |  |  |
| isContract | order_cycle_production.isContract |   | - | - | - |  | Boolean, default false |
| useRisers | order_cycle_production.useRisers |   | - | - | - |  | Boolean, default false |
| notes | order_cycle_production.notes |   | - | - | - |  |  |

## Seedling Lot › Production Location → production_location

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| type | production_location.type |   | - | - | - | FD=Field, GH=Greenhouse, CT=Contract | GrowLocationEnum |
| area | production_location.area |   | - | - | - |  |  |
| section | production_location.section |   | - | - | - |  |  |
| unit | production_location.unit |   | - | - | - |  |  |
| startBedFeet | production_location.startBedFeet |   | - | - | - |  |  |
| endBedFeet | production_location.endBedFeet |   | - | - | - |  |  |
| startRiser | production_location.startRiser |   | - | - | - |  |  |
| endRiser | production_location.endRiser |   | - | - | - |  |  |
| bedFeetPlanted | production_location.bedFeetPlanted |   | - | - | - |  |  |
| startBench | production_location.startBench |   | - | - | - |  |  |
| endBench | production_location.endBench |   | - | - | - |  |  |
| totalContainersPlanted | production_location.totalContainersPlanted |   | - | - | - |  |  |
| notes | production_location.notes |   | - | - | - |  |  |

## Seedling Lot › Fulfillment - Lift Request → lift_request

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| requestedDate | lift_request.requestedDate | NMIS_ID_ACTIVITIES ACTIVITY_DATE | - | - | - |  |  |
| requestedSeedlings | lift_request.requestedSeedlings | NMIS_PACK_ORDERS LIFT_TOTAL_REQUESTED | - | - | - |  | Value x1000 |
| liftActivity | lift_request.liftActivity |   | - | - | - | la1=Lift, la2=Lift (Hand), la3=Non-Viable, la4=Ship in Grow Container | No direct Oracle mapping found |
| shippableSeedlingsPerSpace | lift_request.shippableSeedlingsPerSpace |   | - | - | - |  |  |
| estimatedLiftedSpaces | lift_request.estimatedLiftedSpaces |   | - | - | - |  |  |
| expectedShipDate | lift_request.expectedShipDate |   | - | - | - |  |  |
| seedlingStorage | lift_request.seedlingStorage |   | - | - | - |  |  |
| estimatedSeedlingsPerBox | lift_request.estimatedSeedlingsPerBox |   | - | - | - |  |  |
| estimatedPackingBoxes | lift_request.estimatedPackingBoxes |   | - | - | - |  |  |
| minimumHeight | lift_request.minimumHeight | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_SPEC_MIN | - | - | - |  | Sourced from GrowRequest migration |
| maximumHeight | lift_request.maximumHeight | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_SPEC_MAX | - | - | - |  |  |
| caliper | lift_request.caliper | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_CALIPER_MIN | - | - | - |  |  |
| minimumRootLength | lift_request.minimumRootLength | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_ROOT_PRUNE_MIN | - | - | - |  |  |
| pruneTarget | lift_request.pruneTarget | NMIS_AGREEMENT_LOTS SPECIES_PRODUCT_ROOT_PRUNE_MAX | - | - | - |  |  |
| note | lift_request.note |   | - | - | - |  |  |

## Seedling Lot › Fulfillment - Lift Summary → lift_summary

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| liftDate | lift_summary.liftDate | NMIS_ID_ACTIVITIES ACTIVITY_DATE | - | - | - |  |  |
| liftActivity | lift_summary.liftActivity |   | - | - | - | la1=Lift, la2=Lift (Hand), la3=Non-Viable, la4=Ship in Grow Container |  |
| contractor | lift_summary.contractor |   | - | - | - |  | Boolean |
| temporaryStorage | lift_summary.temporaryStorage |   | - | - | - |  |  |
| fieldContainerType | lift_summary.fieldContainerType |   | - | - | - | Bin, Tub | FieldContainerTypeEnum |
| fieldContainerQuantity | lift_summary.fieldContainerQuantity | NMIS_ID_ACTIVITIES TUB_QUANTITY | - | - | - |  |  |
| estSeedlingsPerFieldContainer | lift_summary.estSeedlingsPerFieldContainer | NMIS_ID_ACTIVITIES ACTIVITY_UNITS | - | - | - |  | Value x1000 |
| estSeedlingQuantity | lift_summary.estSeedlingQuantity |   | - | - | - |  | Calculated |
| liftedSpaces | NOT IN SCHEMA (did you mean lift_summary.liftDate) | NMIS_ID_ACTIVITIES AMT_PER_UNIT | - | - | - |  |  |
| qcIssue | lift_summary.qcIssue |   | - | - | - |  | Boolean |
| notes | lift_summary.notes | NMIS_ID_ACTIVITIES NOTE | - | - | - |  |  |

## Seedling Lot › Fulfillment - Pack Summary → pack_summary

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| packDate | pack_summary.packDate | NMIS_ID_ACTIVITIES ACTIVITY_DATE | - | - | - |  |  |
| packedBoxes | NOT IN SCHEMA (did you mean pack_summary.packDate) | NMIS_ID_ACTIVITIES AMT_PER_UNIT | - | - | - |  |  |
| seedlingsPerBox | NOT IN SCHEMA (did you mean order_cycle_production.seedlingsPerBox, storage_summary.seedlingsPerBox) | NMIS_ID_ACTIVITIES ACTIVITY_UNITS / AMT_PER_UNIT | - | - | - |  | Calculated in migration |
| packedSeedlings | NOT IN SCHEMA (did you mean pack_summary.packedSeedlingCost, pack_summary.costPerSeedling, storage_summary.packedSeedlings) | NMIS_ID_ACTIVITIES ACTIVITY_UNITS | - | - | - |  | Value x1000 |
| packedSeedlingCost | pack_summary.packedSeedlingCost | NMIS_ID_ACTIVITIES DOLLAR_AMOUNT | - | - | - |  |  |
| costPerSeedling | pack_summary.costPerSeedling |   | - | - | - |  | Calculated |
| packedTubs | NOT IN SCHEMA (did you mean pack_summary.packDate) |   | - | - | - |  | No Oracle mapping found |

## Seedling Lot › Fulfillment - Storage Summary → storage_summary

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| startDate | storage_summary.startDate |   | - | - | - |  | No Oracle mapping found |
| coolerOrFreezer | NOT IN SCHEMA |   | - | - | - | -1=Unknown, 0=Cooler, 1=Freezer |  |
| quantityOfBoxes | storage_summary.quantityOfBoxes |   | - | - | - |  |  |
| specificLocation | NOT IN SCHEMA (did you mean storage_summary.section) |   | - | - | - |  |  |

## Seedling Lot › Fulfillment - Thaw Summary → thaw_summary

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| thawDate | thaw_summary.thawDate |   | - | - | - |  | No Oracle mapping found |
| quantityOfBoxes | thaw_summary.quantityOfBoxes |   | - | - | - |  |  |
| costPerBox | thaw_summary.costPerBox |   | - | - | - |  |  |
| totalCosts | thaw_summary.totalCosts |   | - | - | - |  |  |

## Seedling Lot › Inventory Progress → inventory_progress

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| samplingDate | inventory_progress.samplingDate | NMIS_PRODUCT_INVENTORIES / NMIS_ID_ACTIVITIES ACTIVITY_ACTIVITY_DATE | - | - | - |  |  |
| sampledBy | inventory_progress.sampledBy |   | - | - | - |  |  |
| type | inventory_progress.type |   | - | - | - | it1=Count, it2=Size, it3=Spec | Default: it3 |
| grossInventory | inventory_progress.grossInventory | NMIS_PRODUCT_INVENTORIES GROSS_INV | - | - | - |  | Value x1000 |
| estimatedNetInventory | inventory_progress.estimatedNetInventory | NMIS_PRODUCT_INVENTORIES NET_INV | - | - | - |  | Value x1000 |
| notes | inventory_progress.notes | NMIS_PRODUCT_INVENTORIES NOTE | - | - | - |  |  |
| maxCV | inventory_progress.maxCV |   | - | - | - |  |  |
| survival | inventory_progress.survival |   | - | - | - |  |  |
| target | inventory_progress.target |   | - | - | - |  |  |
| shippable | inventory_progress.shippable |   | - | - | - |  |  |
| totalContainersPlanted | inventory_progress.totalContainersPlanted |   | - | - | - |  |  |
| totalContainersSampled | inventory_progress.totalContainersSampled |   | - | - | - |  |  |
| totalCount | inventory_progress.totalCount |   | - | - | - |  |  |
| seedlingsPerContainer | inventory_progress.seedlingsPerContainer |   | - | - | - |  |  |
| standardDeviation | inventory_progress.standardDeviation |   | - | - | - |  |  |
| coefficientOfVariation | inventory_progress.coefficientOfVariation |   | - | - | - |  |  |
| totalAtSpec | inventory_progress.totalAtSpec |   | - | - | - |  |  |
| totalAtAltSpec | inventory_progress.totalAtAltSpec |   | - | - | - |  |  |
| percentAtSpec | inventory_progress.percentAtSpec |   | - | - | - |  |  |
| percentAtAltSpec | inventory_progress.percentAtAltSpec |   | - | - | - |  |  |

## Client › Associate → client

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| accessLegacyId | client.accessLegacyId | NMIS_ASSOCIATE CN | - | - | - |  |  |
| clientId | client.clientId | NMIS_ASSOCIATE ASSOCIATE | - | - | - |  |  |
| department | client.department | NMIS_ASSOCIATE ASSOCIATE_NAME | - | - | - |  |  |
| unit | client.unit | NMIS_ASSOCIATE DEPARTMENT | - | - | - |  |  |
| agency | client.agency | NMIS_ASSOCIATE AGENCY | - | - | - |  |  |
| billingEmailAddress | client.billingEmailAddress | NMIS_ASSOCIATE EMAIL_ADDR | - | - | - |  |  |
| billingAddress | client.billingAddress | NMIS_ASSOCIATE MAIL_ADDR | - | - | - |  |  |
| shippingAddress | client.shippingAddress | NMIS_ASSOCIATE SHIP_ADDR | - | - | - |  |  |

## Client › Contacts → client

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| id | client.contacts |   | - | - | - |  |  |
| contactName | client.contacts | NMIS_CONTACTS FIRST_NAME + LAST_NAME | - | - | - |  |  |
| positionOrTitle | client.contacts | NMIS_CONTACTS CONTACT_DESC | - | - | - |  |  |
| email | client.contacts | NMIS_CONTACTS EMAIL_ADDR | - | - | - |  |  |
| phoneNumber | client.contacts | NMIS_CONTACTS PHONE_NUMBER | - | - | - |  |  |
| homeClient | client.contacts | NMIS_CONTACTS HOME_ASSOCIATE | - | - | - |  |  |

## Species Product › Species Product → species_product

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| nursery | species_product.nursery | NMIS_SPECIES_PRODUCTS Access DB Nursery | Yes | - | - |  | pvn has one historical q plug for stone |
| species | species_product.speciesUuid | NMIS_SPECIES_PRODUCTS PLNTMSTR_SYMBOL | Yes | - | - |  | FK resolved to species UUID via symbol |
| description | species_product.description | NMIS_SPECIES_PRODUCTS COMBINATION SEE NOTES FOR MAPPING ****** | Yes | - | - |  | PLNTMSTR_SYMBOL SPECIES_PRODUCT_DESC SPEC_MIN - SPEC_MAX / CALIPER_MIN (BEGIN_SEASON_CODE - END_SEASON_CODE) (BEGIN_PRODUCT_TYPE - END_PRODUCT_TYPE) |
| descriptionAddIn | species_product.descriptionAddIn | NMIS_SPECIES_PRODUCTS SPECIES_PRODUCT_DESC within parentheses | Yes | - | - |  |  |
| nonTraditional | species_product.nonTraditional | NMIS_SPECIES_PRODUCTS SPECIES_PRODUCT_DESC where NT is present | Yes, but maybe | - | - |  | No Access mapping found |
| inactive | species_product.inactive | NMIS_SPECIES_PRODUCTS HISTORICAL | Yes | - | - |  | Inverted: 0=active → false, 1=inactive → true |
| totalFiscalYears | species_product.totalFiscalYears | NMIS_SPECIES_PRODUCTS TOTAL_NUMBER_OF_FY | Yes | - | - |  |  |
| holdoverReason | species_product.holdoverReason |   | Adress in ticket 1935 | - | - | HR0=Non-Holdover, HR1=Holdover, HR2=Transplant | No Access mapping found |
| beginType | species_product.beginType | NMIS_SPECIES_PRODUCTS PRODUCT_BEGIN_PRODUCT_TYPE | Yes | - | - | B=Bulb, C=Cutting, R=Root Cutting, S=Seed, SD=Seedling, ST=Steckling, PO=Pollen |  |
| endType | species_product.endType | NMIS_SPECIES_PRODUCTS PRODUCT_END_PRODUCT_TYPE | Yes | - | - | B=Bulb, C=Cutting, R=Root Cutting, S=Seed, SD=Seedling, ST=Steckling, PO=Pollen |  |
| endUnitOfMeasurement | species_product.endUnitOfMeasurement | NMIS_SPECIES_PRODUCTS PRODUCT_UNIT_CODE | Yes | - | - | lbs, bushels, grams, Legacy UOM, count |  |
| growthHeight.minimumHeight | species_product.growthHeightMinimumheight | NMIS_SPECIES_PRODUCTS SPEC_MIN | Yes | - | - |  | Embedded HeightRequirements |
| growthHeight.maximumHeight | species_product.growthHeightMaximumheight | NMIS_SPECIES_PRODUCTS SPEC_MAX | Yes | - | - |  | Embedded HeightRequirements |
| growthHeight.minimumStemCaliper | species_product.growthHeightMinimumstemcaliper | NMIS_SPECIES_PRODUCTS CALIPER_MIN | Yes | - | - |  | Embedded HeightRequirements |
| rootLength.minimumHeight | species_product.rootLengthMinimumheight |   | - | - | - |  | Embedded RootRequirements |
| rootLength.maximumHeight | species_product.rootLengthMaximumheight |   | - | - | - |  | Embedded RootRequirements |
| altGrowthHeight.minimumHeight | species_product.altGrowthHeightMinimumheight | NMIS_SPECIES_PRODUCTS ALT_SPEC_MIN | Yes | - | - |  | No Access mapping found |
| altGrowthHeight.maximumHeight | species_product.altGrowthHeightMaximumheight | NMIS_SPECIES_PRODUCTS ALT_SPEC_MAX | Yes | - | - |  | No Access mapping found |
| altGrowthHeight.minimumStemCaliper | species_product.altGrowthHeightMinimumstemcaliper | NMIS_SPECIES_PRODUCTS ALT_CAL_MIN | Yes | - | - |  | No Access mapping found |
| funnelSettings | species_product.funnelSettings | NMIS_SPECIES_PRODUCTS DRILL_FUNNEL_SETTING | Yes | - | - |  | No Access mapping found |
| minUnitsPerRevolutions | species_product.minUnitsPerRevolutions | NMIS_SPECIES_PRODUCTS DRILL_MIN_REV_UNITS | Yes | - | - |  | No Access mapping found |
| maxUnitsPerRevolutions | species_product.maxUnitsPerRevolutions | NMIS_SPECIES_PRODUCTS DRILL_MAX_REV_UNITS | Yes | - | - |  | No Access mapping found |
| notes | species_product.notes | NMIS_SPECIES_PRODUCTS PRODUCT_NOTE | Yes, but maybe | - | - |  | No Access mapping found |

## Species Product › Seed Factor → seed_factor

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| speciesProduct | seed_factor.speciesProductUuid | NMIS_FACTORS FOUND_NMIS_SPECIES_PRODUCTS_CN | Yes, linking column for Chirs | - | - |  | FK resolved to species_product UUID |
| clientPartial | seed_factor.clientPartial | NMIS_FACTORS LIKE_ASSOCIATE | - | - | - |  |  |
| minElevation | seed_factor.minElevation | NMIS_FACTORS ELEVATION_MIN | - | - | - |  |  |
| maxElevation | seed_factor.maxElevation | NMIS_FACTORS ELEVATION_MAX | - | - | - |  |  |
| minGermination | seed_factor.minGermination | NMIS_FACTORS GERM_MIN | - | - | - |  |  |
| maxGermination | seed_factor.maxGermination | NMIS_FACTORS GERM_MAX | - | - | - |  |  |
| factor1 | seed_factor.factor1 | NMIS_FACTORS HARVEST_FACTOR_1 | - | - | - |  |  |
| factor2 | seed_factor.factor2 | NMIS_FACTORS HARVEST_FACTOR_2 | - | - | - |  |  |
| factor3 | seed_factor.factor3 | NMIS_FACTORS HARVEST_FACTOR_3 | - | - | - |  |  |

## Species Product › Grow Cycle → grow_cycle

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| speciesProduct | grow_cycle.speciesProductUuid |  SPECIES_PRODUCT_UUID | Yes, linking column for Chirs | - | - |  | FK resolved to species_product UUID |
| growUnit | grow_cycle.growUnitUuid | NMIS_SPECIES_PRODUCTS AGE_STRING | Yes, with conditions | - | - | Split age string on '+' and take the alphanumeric after the first numeric character | FK resolved to grow_unit UUID |
| cycleIndex | grow_cycle.cycleIndex | NMIS_SPECIES_PRODUCTS AGE_STRING | Yes, linking column for Chirs | - | - | Split age string on '+' and then based on order of split portions determine cycle order |  |
| stockType | grow_cycle.stockType | Grow units data collection NMIS_UNITS.STOCK_TYPE | Yes | - | - | BR=Bareroot, CTR=Container, UNKN=Unknown Oracle |  |
| timeGrown | grow_cycle.timeGrown | NMIS_SPECIES_PRODUCTS AGE_STRING | Yes, with conditions | - | - | Split age string on '+' and take the first numeric character | grow_cycle_timegrown_enum |
| desiredDensity | grow_cycle.desiredDensity | NMIS_FACTORS DESIRED_DENSITY | Yes, but maybe | - | - | JHSN Seems to only have one set of factors for multi cycle products. So, we may need to determine what cycle they are for and then add in density only for those cycles. Lindsay has suggested these factors are for the first cycle. The desired density especially is only for the first cycle. |  |
| maximumDensity | grow_cycle.maximumDensity | NMIS_FACTORS MAXIMUM_DENSITY | Yes, but maybe | - | - | NMIS_Factors desired / max density will go to the first grow cycle for now, this may change. |  |
| containerFactor | grow_cycle.containerFactor |   | No, need to revisit how factors were mapped | - | - |  |  |
| beginSeason | grow_cycle.beginSeason |  BEGIN_SEASON_CODE | Yes | - | - | S=Spring, M=Summer, F=Fall, W=Winter |  |
| endSeason | grow_cycle.endSeason |  END_SEASON_CODE | Yes | - | - | S=Spring, M=Summer, F=Fall, W=Winter |  |

## Species Product › Product Inventory Cycle → product_inventory_cycle

| GrowHub field | Resolved column | Access source | Approved | Validated | Final | Enum | Notes |
|---|---|---|---|---|---|---|---|
| growCycle | product_inventory_cycle.growCycleUuid | NMIS_INV_CYCLES GROW_CYCLE_UUID | - | - | - |  | FK resolved to grow_cycle UUID |
| timeInGrowCycle | product_inventory_cycle.timeInGrowCycle | NMIS_INV_CYCLES NUMBER_OF_FY_MAX | - | - | - |  | product_inventory_cycle_timeingrowcycle_enum |
| maxCV | product_inventory_cycle.maxCV | NMIS_INV_CYCLES INV_MAX_CV | - | - | - |  |  |
| survival | product_inventory_cycle.survival | NMIS_INV_CYCLES INV_FACTOR_1 | - | - | - |  |  |
| shippable | product_inventory_cycle.shippable | NMIS_INV_CYCLES INV_FACTOR_2 | - | - | - |  |  |
| target | product_inventory_cycle.target | NMIS_INV_CYCLES INV_TARGET_PCT | - | - | - |  |  |
| sizedSeedlingsPer | product_inventory_cycle.sizedSeedlingsPer | NMIS_INV_CYCLES INV_SIZE_SAMPLE | - | - | - |  |  |

## Coverage: GrowHub columns with no mapping row
- client: billingPOC, notes, nurseries, sourceTestingLab
- grow_cycle: all covered
- grow_request: originatingClientId, originatingGrowLotIdType, originatingGrowLotId, originatingGrowUnitNotes, originatingTimeGrown, plannedTransplanter, rootLength, seedlingsInGrowContainer, originatingNotes, sourceType, nonGrowhubSourceLotId, nonGrowhubSourceData
- inventory_progress: orderCycleUuid, countInventoryUuid, inventoryCycleUuid, sizeInventoryUuid, latestCountInventoryUuid, altGrowthHeightMinimumheight, altGrowthHeightMaximumheight, altGrowthHeightMinimumstemcaliper, altNetInventory, sizeSpecInventoryUuid
- lift_request: fulfillmentUuid, packAll, shipContainerType
- lift_summary: fulfillmentUuid
- lot_slip: numberOfBoxes, sourceShipmentUuid, orderCycleUuid, handlingFee, withdrawFee, shippingCost, billUuid
- order_cycle_planning: containerSpecificationsContainersize, containerSpecificationsSeedspercell, seedFactorUuid
- order_cycle_production: barerootSpecificationsFunnelsetting, barerootSpecificationsDroppedweight, barerootSpecificationsCalibrationnotes, barerootSpecificationsSeederid, oyjordSettingUuid, receivedDate, receivedFromGrower, temporaryStorage, estSeedlingQty, qtyOfBoxes, seedlingsPerBox, seedlingsInOddBox, receiveNotes
- pack_summary: fulfillmentUuid, billUuid, fieldContainersPacked, fieldContainersRemaining, notes, qcIssue, isContract
- processing_activity: sourceLotUuid, addToInvoice, billUuid
- product_inventory_cycle: all covered
- production_location: riserDistance, cycleProductionUuid, bedRowUuid, bayUuid
- receiving_activity: receivedUnitOfMeasurement, pointOfContact, rushOrder, billUuid, finalWeighDate, sourceLotUuid
- seed_factor: all covered
- source_lot: lotIdNumber, generation, provisionalZone, parentTransferLotUuid, lotBalance, transactions, unitOfMeasurement, seedOrchardName, originHarvestSummaryUuid
- source_lot_test: invoice, billUuid, testedByUuid, testSamples
- source_shipment: shippedTo, shippingAddress, status, transfer, destinationClientUuid, totalShippingCost, requestedByClientUuid
- species_product: rootLengthPrunetarget, parentSpeciesProductUuid, originatingStockType, originatingGrowUnitUuid
- storage: sourceLotUuid, billUuid
- storage_summary: fulfillmentUuid, type, name, section, area, shelf, space, shipContainerType, seedlingsPerBox, packedSeedlings, packSummaryUuid, availableBoxQty, transactions
- thaw_summary: fulfillmentUuid, billUuid