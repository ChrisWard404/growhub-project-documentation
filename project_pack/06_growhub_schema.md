# GrowHub Postgres schema (nmis)

Every table with exact types, enum values, keys, FKs (on-delete), the Access source from the mapping sheet, and recent migrations. Audit columns metadata* are omitted (every table has them).

## bay
- entity: src/database/entity/bay/bay.entity.ts
- created: 1740429917397-AddLocationToProduction.ts
- recent migrations: 2025-02-24 AddLocationToProduction

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| nursery | bay_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req |  |  |  |
| greenhouse | character varying |  |  |  |  |
| bay | character varying |  |  |  |  |
| width | numeric(10,2) |  |  |  |  |
| length | numeric(10,2) |  |  |  |  |

## bay_table_row
- entity: src/database/entity/bay/bay-tables.entity.ts
- created: 1740596195816-AddBayTables.ts
- recent migrations: 2025-02-26 AddBayTables

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| numberOfTables | numeric(10,0) |  |  |  |  |
| bayUuid | uuid |  |  |  → bay.uuid NO ACTION |  |
| tableUuid | uuid |  |  |  → grow_table.uuid NO ACTION |  |

## bed_row
- entity: src/database/entity/bed-row/bed-row.entity.ts
- created: 1724864728815-AddFieldLocations.ts
- recent migrations: 2024-08-28 AddFieldLocations; 2024-09-13 AddEsriGeoDataToLocation; 2025-02-24 AddLocationToProduction; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| nursery | bed_row_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req |  |  |  |
| type | bed_row_type_enum (FD, GH, CT) | req |  |  |  |
| area | character varying(2) | req |  |  |  |
| section | character varying(2) | req | ''::character varying |  |  |
| row | character varying(2) | req |  |  |  |
| totalBedFeet | numeric(4,0) |  |  |  |  |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| sowDirection | character varying |  |  |  |  |
| group | character varying |  |  |  |  |
| geometry | geography |  |  |  |  |
| centerline | geography |  |  |  |  |
| transactions | jsonb | req | '[]'::jsonb |  |  |

## billing_file
- entity: src/database/entity/billing/billing.entity.ts
- created: 1677606589418-AddBillingTable.ts
- recent migrations: 2023-02-28 AddBillingTable; 2023-06-22 AddOrderGrowReqContainerFactor; 2024-05-28 AltarMetadataNames; 2025-08-07 UniqueInvoiceNumber; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| invoiceNumber | character varying | req |  |  |  |
| startDate | timestamp with time zone | req |  |  |  |
| endDate | timestamp with time zone | req |  |  |  |
| billingFacility | billing_file_billingfacility_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  |  |
| totalChargeAmount | numeric(10,2) |  |  |  |  |
| clientUuid | uuid |  |  |  → client.uuid NO ACTION |  |
| jobCode | character varying |  |  |  |  |

## client
- entity: src/database/entity/client/client.entity.ts
- created: 1646414823124-AddClientTable.ts
- recent migrations: 2022-07-26 GrowRequestOrderAndSpec; 2022-07-27 ClientRenameErrorShippingAddress; 2023-12-07 AlterClientAgencyAddCml; 2023-12-11 AlterSourceTestTestedBy; 2024-05-28 AltarMetadataNames; 2025-03-05 addSourceDetailsAccessField; 2026-01-13 AddAgencyEnumNewTypes; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| clientId | character varying | req |  |  | NMIS_ASSOCIATE ← ASSOCIATE blank |
| department | character varying | req |  |  | NMIS_ASSOCIATE ← ASSOCIATE_NAME blank |
| unit | character varying |  |  |  | NMIS_ASSOCIATE ← DEPARTMENT blank |
| agency | client_agency_enum (BLM, TR, PV, DOD, FW, NPS, AG, NRC, FH, 01, 02, 03, 04, 05, 06, 08, 09, 10, RS, AL, AK, AS, AZ, AR, CA, CO, CT, DE, DC, FL, GA, GU, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, PR, RI, SC, SD, TN, TX, UT, VT, VA, VI, WA, WV, WI, WY, CML, DOI, BOR, USGS) | req | 'AG'::nmis.client_agency_enum |  | NMIS_ASSOCIATE ← AGENCY blank |
| billingPOC | character varying |  |  |  |  |
| billingEmailAddress | character varying |  |  |  | NMIS_ASSOCIATE ← EMAIL_ADDR blank |
| billingAddress | character varying |  |  |  | NMIS_ASSOCIATE ← MAIL_ADDR blank |
| shippingAddress | character varying |  |  |  | NMIS_ASSOCIATE ← SHIP_ADDR blank |
| notes | character varying |  |  |  |  |
| nurseries | client_nurseries_enum[] (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req | '{}'::nmis.client_nurseries_enum[] |  |  |
| contacts | jsonb | req | '[]'::jsonb |  |  ←  blank; NMIS_CONTACTS ← FIRST_NAME + LAST_NAME blank; NMIS_CONTACTS ← CONTACT_DESC blank; NMIS_CONTACTS ← EMAIL_ADDR blank; NMIS_CONTACTS ← PHONE_NUMBER blank; NMIS_CONTACTS ← HOME_ASSOCIATE blank |
| sourceTestingLab | boolean |  | false |  |  |
| accessLegacyId | character varying |  |  |  | NMIS_ASSOCIATE ← CN blank |

## client_change
- entity: none in code
- created: None
- recent migrations: 

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| fromClientId | character varying | req |  |  |  |
| toClientId | character varying | req |  |  |  |
| changedOn | timestamp with time zone | req | now() |  |  |
| reason | text |  |  |  |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| growRequestUuid | uuid |  |  |  → grow_request.uuid CASCADE |  |
| fromClientUuid | uuid |  |  |  → client.uuid SET NULL |  |
| toClientUuid | uuid |  |  |  → client.uuid SET NULL |  |

## count_inventory
- entity: src/database/entity/order-inventory-progress/count-inventory.entity.ts
- created: 1744202868809-AddInventoryCount.ts
- recent migrations: 2025-04-09 AddInventoryCount

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| actualCount | boolean |  |  |  |  |
| samples | jsonb | req | '[]'::jsonb |  |  |

## cycle_index_backup_fractional
- entity: none in code
- created: None
- recent migrations: 

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| tableName | character varying | req |  | PK |  |
| uuid | uuid | req |  | PK |  |
| oldIndex | numeric |  |  |  |  |
| newIndex | numeric |  |  |  |  |

## fulfillment
- entity: src/database/entity/order-fulfillment/fulfillment.entity.ts
- created: 1663272582222-AddOrdersFulFillment.ts
- recent migrations: 2022-09-15 AddOrdersFulFillment; 2022-09-21 AlterFulfillmentProductionCosts; 2023-03-08 AdjustQuantityDecimalPlaces; 2023-03-29 DropOrderFulfillmentDeliveries; 2023-07-31 AddFulfillmentSubTables; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| productionCostsTotalseedlingsproduced | numeric(10,4) |  |  |  |  |
| productionCostsTotalseedlingspurchased | numeric(10,4) |  |  |  |  |
| productionCostsDollarperseedling | numeric(10,2) |  |  |  |  |
| productionCostsDollartotal | numeric(10,2) |  |  |  |  |

## grow_cycle
- entity: src/database/entity/species-product-grow-cycle/species-product-grow-cycle.entity.ts
- created: 1725470119668-AddGrowCycles.ts
- recent migrations: 2024-09-04 AddGrowCycles; 2024-10-23 AdjustYearsGrownEnumForNoNumeric; 2024-11-01 AddInventoryFieldsToProductCycle

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| cycleIndex | numeric | req |  |  | NMIS_SPECIES_PRODUCTS ← AGE_STRING yes |
| stockType | grow_cycle_stocktype_enum (BR, CTR, UNKN) | req |  |  | Grow units data collection ← NMIS_UNITS.STOCK_TYPE yes |
| timeGrown | grow_cycle_timegrown_enum (0.25, 0.5, 0.75, 1, 1.5, 2, 2.5, 3, 4, 5, 10) |  |  |  | NMIS_SPECIES_PRODUCTS ← AGE_STRING maybe |
| beginSeason | grow_cycle_beginseason_enum (S, M, F, W) |  |  |  |  ← BEGIN_SEASON_CODE yes |
| endSeason | grow_cycle_endseason_enum (S, M, F, W) |  |  |  |  ← END_SEASON_CODE yes |
| desiredDensity | numeric(10,2) |  |  |  | NMIS_FACTORS ← DESIRED_DENSITY maybe |
| maximumDensity | numeric(10,2) |  |  |  | NMIS_FACTORS ← MAXIMUM_DENSITY maybe |
| containerFactor | numeric(10,2) |  |  |  |  ←  no |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| speciesProductUuid | uuid |  |  |  → species_product.uuid NO ACTION |  ← SPECIES_PRODUCT_UUID yes |
| growUnitUuid | uuid |  |  |  → grow_unit.uuid NO ACTION | NMIS_SPECIES_PRODUCTS ← AGE_STRING maybe |

## grow_request
- entity: src/database/entity/order-grow-request/grow-request.entity.ts
- created: 1658868810289-GrowRequestOrderAndSpec.ts
- recent migrations: 2024-05-28 AltarMetadataNames; 2024-07-31 AlignGrowRequestWithSpeciesProduct; 2024-08-12 AddGrowReqPastInventoryField; 2024-08-15 AlterGrowReqAddCalcFields; 2024-08-22 AddSowFactorsToSpeciesProduct; 2025-01-10 manualOrderCycleCreation; 2026-05-05 AddHarvestSummary; 2026-07-27 AddSeedlingToSeedlingFields

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| growLotId | character varying |  |  |  | NMIS_AGREEMENT_LOTS ← ID blank |
| contact | character varying |  |  |  | NMIS_AGREEMENT_LOTS ← ORDER_CONTACT_CN blank |
| requestedSeedlingQuantity | numeric(10,2) | req |  |  | NMIS_AGREEMENT_LOTS ← TOTAL_REQUEST blank |
| estimatedCost | numeric(10,2) |  |  |  |  ←  blank |
| notes | character varying |  |  |  | NMIS_AGREEMENT_LOTS ← ORDER_CLIENT_NOTE blank |
| targetLiftYear | numeric(4,0) |  |  |  | NMIS_AGREEMENT_LOTS ← END_FY blank |
| clientUuid | uuid | req |  |  → client.uuid NO ACTION | NMIS_AGREEMENT_LOTS ← ORDER_CLIENT_ASSOCIATE blank |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| speciesProductUuid | uuid |  |  |  → species_product.uuid NO ACTION | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_SPECIES_PRODUCT_DESC blank |
| agreementQuantity | numeric(10,2) |  |  |  |  ←  blank |
| originatingClientId | character varying |  |  |  |  |
| originatingGrowLotIdType | character varying |  |  |  |  |
| originatingGrowLotId | character varying(30) |  |  |  |  |
| originatingGrowUnitNotes | character varying |  |  |  |  |
| originatingTimeGrown | grow_request_originatingtimegrown_enum (0.25, 0.5, 0.75, 1, 1.5, 2, 2.5, 3, 4, 5, 10) |  |  |  |  |
| plannedTransplanter | grow_request_plannedtransplanter_enum (5R-BR, 5R-PLUGS, 6R, 9R, MINI-PLUG, 3R-CUTTING) |  |  |  |  |
| rootLength | numeric(10,2) |  |  |  |  |
| seedlingsInGrowContainer | boolean |  | false |  |  |
| originatingNotes | character varying |  |  |  |  |
| sourceType | character varying |  |  |  |  |
| nonGrowhubSourceLotId | character varying(30) |  |  |  |  |
| nonGrowhubSourceData | jsonb |  |  |  |  |

## grow_table
- entity: src/database/entity/grow-table/grow-table.entity.ts
- created: 1740596195816-AddBayTables.ts
- recent migrations: 2025-02-26 AddBayTables

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| nursery | grow_table_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req |  |  |  |
| name | character varying | req |  |  |  |
| length | numeric(10,2) |  |  |  |  |
| width | numeric(10,2) |  |  |  |  |

## grow_unit
- entity: src/database/entity/grow-unit/grow-unit.entity.ts
- created: 1725457425563-AddGrowUnitTable.ts
- recent migrations: 2024-09-04 AddGrowUnitTable; 2026-02-24 GrowUnitUniqueisActiveTrueWithCode; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| stockType | grow_unit_stocktype_enum (BR, CTR, UNKN) | req |  |  |  |
| code | character varying |  |  |  |  |
| description | character varying | req |  |  |  |
| cellDiameter | numeric(10,2) |  |  |  |  |
| cellDepth | numeric(10,2) |  |  |  |  |
| cellRows | numeric(10,2) |  |  |  |  |
| cellColumns | numeric(10,2) |  |  |  |  |
| cellsPerContainer | numeric(10,2) |  |  |  |  |
| areaPerContainer | numeric(10,2) |  |  |  |  |
| width | numeric(10,2) |  |  |  |  |
| length | numeric(10,2) |  |  |  |  |
| height | numeric(10,2) |  |  |  |  |
| drillRows | numeric(10,2) |  |  |  |  |
| inactive | boolean | req | false |  |  |

## harvest_summary
- entity: src/database/entity/order-fulfillment-harvest-summary/harvest-summary.entity.ts
- created: 1777995844118-AddHarvestSummary.ts
- recent migrations: 2026-05-05 AddHarvestSummary; 2026-09-03 AddWeighToReceivingActivityEnum

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| dateCollected | timestamp with time zone | req |  |  |  |
| category | harvest_summary_category_enum (NWCF, TI, TIPO, WCF, COOP, SDSU, STZM) |  |  |  |  |
| rawMaterialQty | numeric(14,4) |  |  |  |  |
| uom | harvest_summary_uom_enum (0, 1, 2, 3, 4) |  |  |  |  |
| activity | harvest_summary_activity_enum (0, 1, 2, 3, 4, 5, 6, 7, 8) |  |  |  |  |
| contractor | boolean |  | false |  |  |
| isHandHarvest | boolean |  | false |  |  |
| cost | numeric(10,2) |  |  |  |  |
| notes | character varying(2000) |  |  |  |  |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| createdSourceLotUuid | uuid |  |  |  → source_lot.uuid SET NULL |  |

## inventory_progress
- entity: src/database/entity/order-inventory-progress/inventory-progress.entity.ts
- created: 1680550939384-AddSeedlingInventoryProgress.ts
- recent migrations: 2024-05-28 AltarMetadataNames; 2025-01-10 manualOrderCycleCreation; 2025-04-09 AddInventoryCount; 2025-04-28 addSizeInventory; 2025-04-29 addAltSpecInventoryFields; 2025-04-30 AddSizeSpecInventory; 2025-05-02 DropCascadeOnCountInv; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| samplingDate | timestamp with time zone | req |  |  | NMIS_PRODUCT_INVENTORIES / NMIS_ID_ACTIVITIES ← ACTIVITY_ACTIVITY_DATE blank |
| grossInventory | numeric(10,2) |  |  |  | NMIS_PRODUCT_INVENTORIES ← GROSS_INV blank |
| estimatedNetInventory | numeric(10,2) |  |  |  | NMIS_PRODUCT_INVENTORIES ← NET_INV blank |
| notes | character varying |  |  |  | NMIS_PRODUCT_INVENTORIES ← NOTE blank |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| orderCycleUuid | uuid |  |  |  → order_cycle.uuid CASCADE |  |
| sampledBy | character varying |  |  |  |  ←  blank |
| type | inventory_progress_type_enum (it1, it2, it3) | req | 'it3'::nmis.inventory_progress_type_enum |  |  ←  blank |
| maxCV | numeric(10,2) |  |  |  |  ←  blank |
| survival | numeric(10,2) |  |  |  |  ←  blank |
| target | numeric(10,2) |  |  |  |  ←  blank |
| shippable | numeric(10,2) |  |  |  |  ←  blank |
| totalContainersPlanted | numeric(10,2) |  |  |  |  ←  blank |
| totalContainersSampled | numeric(10,2) |  |  |  |  ←  blank |
| totalCount | numeric(10,2) |  |  |  |  ←  blank |
| seedlingsPerContainer | numeric(10,2) |  |  |  |  ←  blank |
| standardDeviation | numeric(10,2) |  |  |  |  ←  blank |
| coefficientOfVariation | numeric(10,2) |  |  |  |  ←  blank |
| countInventoryUuid | uuid |  |  |  → count_inventory.uuid CASCADE |  |
| inventoryCycleUuid | uuid |  |  |  → product_inventory_cycle.uuid NO ACTION |  |
| sizeInventoryUuid | uuid |  |  |  → size_inventory.uuid CASCADE |  |
| latestCountInventoryUuid | uuid |  |  |  → inventory_progress.uuid NO ACTION |  |
| altGrowthHeightMinimumheight | numeric(10,2) |  |  |  |  |
| altGrowthHeightMaximumheight | numeric(10,2) |  |  |  |  |
| altGrowthHeightMinimumstemcaliper | numeric(10,2) |  |  |  |  |
| totalAtSpec | numeric(10,2) |  |  |  |  ←  blank |
| totalAtAltSpec | numeric(10,2) |  |  |  |  ←  blank |
| percentAtSpec | numeric(10,2) |  |  |  |  ←  blank |
| percentAtAltSpec | numeric(10,2) |  |  |  |  ←  blank |
| altNetInventory | numeric(10,2) |  |  |  |  |
| sizeSpecInventoryUuid | uuid |  |  |  → size_spec_inventory.uuid NO ACTION |  |

## lift_request
- entity: src/database/entity/order-fulfillment-lift-request/lift-request.entity.ts
- created: 1690825455832-AddFulfillmentSubTables.ts
- recent migrations: 2023-07-31 AddFulfillmentSubTables; 2023-09-18 AdjustFulfillmentForLegacy; 2024-05-28 AltarMetadataNames; 2026-04-15 AddFieldsToLiftRequest; 2026-05-05 AddHarvestSummary; 2026-05-08 UpdatePackAndStorageSummaryFields; 2026-05-27 RenamePackContainerTypeAndAddPackSummaryFields

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| requestedDate | timestamp with time zone | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_DATE blank |
| requestedSeedlings | numeric(10,4) |  |  |  | NMIS_PACK_ORDERS ← LIFT_TOTAL_REQUESTED blank |
| shippableSeedlingsPerSpace | numeric(10,2) |  |  |  |  ←  blank |
| estimatedLiftedSpaces | character varying |  |  |  |  ←  blank |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| legacyId | character varying |  |  |  |  |
| legacyData | jsonb |  |  |  |  |
| liftActivity | lift_request_liftactivity_enum (la1, la2, la3, la4) | req |  |  |  ←  blank |
| expectedShipDate | timestamp with time zone |  |  |  |  ←  blank |
| estimatedSeedlingsPerBox | integer |  |  |  |  ←  blank |
| estimatedPackingBoxes | integer |  |  |  |  ←  blank |
| minimumHeight | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_SPEC_MIN blank |
| maximumHeight | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_SPEC_MAX blank |
| caliper | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_CALIPER_MIN blank |
| minimumRootLength | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_ROOT_PRUNE_MIN blank |
| pruneTarget | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_ROOT_PRUNE_MAX blank |
| note | character varying(500) |  |  |  |  ←  blank |
| packAll | boolean |  | false |  |  |
| seedlingStorage | boolean |  | false |  |  ←  blank |
| shipContainerType | character varying |  |  |  |  |

## lift_summary
- entity: src/database/entity/order-fulfillment-lift-summary/lift-summary.entity.ts
- created: 1690825455832-AddFulfillmentSubTables.ts
- recent migrations: 2023-07-31 AddFulfillmentSubTables; 2023-09-18 AdjustFulfillmentForLegacy; 2024-05-28 AltarMetadataNames; 2026-04-22 AddLiftActivitiesToLiftSummary; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| liftDate | timestamp with time zone | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_DATE blank |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| legacyId | character varying |  |  |  |  |
| legacyData | jsonb |  |  |  |  |
| liftActivity | lift_summary_liftactivity_enum (la1, la2, la3, la4) |  |  |  |  ←  blank |
| contractor | boolean |  | true |  |  ←  blank |
| temporaryStorage | character varying |  |  |  |  ←  blank |
| fieldContainerType | lift_summary_fieldcontainertype_enum (Bin, Tub) |  |  |  |  ←  blank |
| fieldContainerQuantity | numeric(10,2) |  |  |  | NMIS_ID_ACTIVITIES ← TUB_QUANTITY blank |
| estSeedlingsPerFieldContainer | numeric(10,0) |  |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_UNITS blank |
| estSeedlingQuantity | numeric(10,0) |  |  |  |  ←  blank |
| qcIssue | boolean |  | false |  |  ←  blank |
| notes | character varying(500) |  |  |  | NMIS_ID_ACTIVITIES ← NOTE blank |

## lift_summary_location
- entity: src/database/entity/order-fulfillment-lift-summary/lift-summary-location.entity.ts
- created: 1776887222612-AddLiftActivitiesToLiftSummary.ts
- recent migrations: 2026-04-22 AddLiftActivitiesToLiftSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| liftedStartBedFoot | numeric(5,0) |  |  |  |  |
| liftedEndBedFoot | numeric(5,0) |  |  |  |  |
| liftedContainers | numeric(5,0) |  |  |  |  |
| liftSummaryUuid | uuid |  |  |  → lift_summary.uuid CASCADE |  |
| productionLocationUuid | uuid |  |  |  → production_location.uuid NO ACTION |  |

## lot_slip
- entity: src/database/entity/source-shipment/lot-slip.entity.ts
- created: 1666026636665-AddShipTicketTable.ts
- recent migrations: 2023-09-19 AdjustLotSlip; 2024-03-25 AddLotSlipNote; 2024-05-28 AltarMetadataNames; 2025-01-10 manualOrderCycleCreation; 2025-03-25 AddSourceAccessIdField; 2025-06-20 AddRetestEnum; 2026-05-05 AddHarvestSummary; 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| quantity | numeric(12,4) |  |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_UNITS yes |
| numberOfBoxes | numeric(10,0) |  |  |  |  |
| activity | lot_slip_activity_enum (da1, da2, da3, da4, da5, da6, da7, da8, da9) |  |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_CODE yes |
| sourceShipmentUuid | uuid |  |  |  → source_shipment.uuid NO ACTION |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE | NMIS_ID_ACTIVITIES ← SOURCE_LOT_CN yes |
| orderCycleUuid | uuid |  |  |  → order_cycle.uuid CASCADE |  |
| handlingFee | numeric(10,2) |  |  |  |  |
| withdrawFee | numeric(10,2) |  |  |  |  |
| shippingCost | numeric(10,2) |  |  |  |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| notes | character varying |  |  |  | NMIS_ID_ACTIVITIES ← NOTE yes |
| accessLegacyId | character varying |  |  |  |  |

## migrations
- entity: none in code
- created: None
- recent migrations: 

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| id | serial | req |  | PK |  |
| timestamp | bigint | req |  |  |  |
| name | character varying | req |  |  |  |

## order
- entity: src/database/entity/order/order.entity.ts
- created: 1661271781872-OrdersAndProduction.ts
- recent migrations: 2022-08-23 OrdersAndProduction; 2022-09-15 AddOrdersFulFillment; 2022-10-12 Restrictions; 2023-03-23 AddOrderStatusField; 2023-07-24 AddOrderAndGrowReqLegacyFields; 2024-05-28 AltarMetadataNames; 2025-01-10 manualOrderCycleCreation; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| growRequestUuid | uuid |  |  |  → grow_request.uuid CASCADE |  |
| growNursery | order_grownursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  |  |
| status | integer |  | 1 |  |  |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |

## order_cycle
- entity: src/database/entity/order-cycles/order-cycles.entity.ts
- created: 1736516055933-manualOrderCycleCreation.ts
- recent migrations: 2025-01-10 manualOrderCycleCreation; 2026-05-05 AddHarvestSummary; 2026-07-15 AddOrderSplitAndIsCompletedCycle

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| cyclePlanningUuid | uuid |  |  |  → order_cycle_planning.uuid CASCADE |  |
| productionUuid | uuid |  |  |  → order_cycle_production.uuid CASCADE |  |
| plantedBalance | numeric(10,2) | req | '0'::numeric |  |  |
| liftedBalance | numeric(10,2) | req | '0'::numeric |  |  |
| packedBalance | numeric(10,2) | req | '0'::numeric |  |  |
| transactions | jsonb | req | '[]'::jsonb |  |  |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| status | integer |  | 1 |  |  |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| cycleIndex | numeric | req | 0 |  |  |
| orderUuid | uuid |  |  |  → order.uuid NO ACTION |  |
| growCycleUuid | uuid |  |  |  → grow_cycle.uuid NO ACTION |  |
| isCompleted | boolean | req | false |  |  |

## order_cycle_planning
- entity: src/database/entity/order-cycle-planning/order-cycle-planning.entity.ts
- created: 1736516055933-manualOrderCycleCreation.ts
- recent migrations: 2025-01-10 manualOrderCycleCreation; 2025-02-11 ProductionSeedPrep; 2026-03-23 ConvertStratTimeEnumToText; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| requestDate | timestamp with time zone |  |  |  | NMIS_AGREEMENT_LOTS ← ORDER_DESIRED_DATE blank |
| stockType | order_cycle_planning_stocktype_enum (BR, CTR, UNKN) |  |  |  | NMIS_AGREEMENT_LOTS ← CATEGORY_CODE blank |
| productType | character varying |  |  |  | NMIS_AGREEMENT_LOTS ← SPECIES_PRODUCT_SPECIES_PRODUCT_DESC blank |
| estimatedLbsOfSeed | numeric(10,4) |  |  |  | NMIS_AGREEMENT_LOTS ← SOURCE_REQUIRED blank |
| pastInventoryPerformance | numeric(10,2) |  |  |  |  ←  blank |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE | NMIS_AGREEMENT_LOTS ← SOURCE_LOT_CN blank |
| containerSpecificationsContainersize | order_cycle_planning_containerspecificationscontainersize_enum (CT1, CT2, CT3, CT4, CT5, CT6, CT7, CT8, CT9, CT10, CT11, CT12, CT13, CT14, CT15, CT16, CT17, CT18, CT19) |  |  |  |  |
| containerSpecificationsNumberofcontainersneeded | numeric(10,0) |  |  |  | NMIS_AGREEMENT_LOTS ← EST_CONTAINERS_REQUIRED blank |
| factor1 | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← HARVEST_FACTOR_1 blank |
| factor2 | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← HARVEST_FACTOR_2 blank |
| factor3 | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← HARVEST_FACTOR_3 blank |
| containerSpecificationsSeedspercell | numeric(10,0) |  |  |  |  |
| containerSpecificationsCellspercontainer | numeric(10,0) |  |  |  | NMIS_AGREEMENT_LOTS ← NUMBER_CALIBRATION_CONTAINERS blank |
| containerSpecificationsNurseryfactors | numeric(10,4) |  |  |  | NMIS_AGREEMENT_LOTS ← CONTAINER_ASF_ADJUSTMENT blank |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| sourceLotNursery | order_cycle_planning_sourcelotnursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  | NMIS_AGREEMENT_LOTS ←  blank |
| plannedSowDate | timestamp with time zone |  |  |  | NMIS_AGREEMENT_LOTS ← BEGIN_FY blank |
| sowOrTransplant | integer | req | '-1'::integer |  | NMIS_AGREEMENT_LOTS ← SOW_OR_TRANSPLANT blank |
| plannedStratDate | timestamp with time zone |  |  |  |  ←  blank |
| stratTime | integer |  |  |  |  ←  blank |
| adjustedQuantityRequested | numeric(10,2) |  |  |  |  ←  blank |
| seedPerPound | numeric(10,2) |  |  |  |  ←  blank |
| purityPercent | numeric(10,2) |  |  |  |  ←  blank |
| germPercent | numeric(10,2) |  |  |  |  ←  blank |
| seedFactorUuid | uuid |  |  |  → seed_factor.uuid NO ACTION |  |
| thinningProbability | numeric(10,2) |  |  |  |  ←  blank |
| cellsFilled | numeric(10,2) |  |  |  |  ←  blank |
| desiredDensity | numeric(10,2) |  |  |  | NMIS_AGREEMENT_LOTS ← DESIRED_DENSITY blank |
| containerSurvival | numeric(10,2) |  |  |  |  ←  blank |
| seedPerCell | numeric(10,1) |  |  |  |  ←  blank |
| estimatedContainer | numeric(10,4) |  |  |  |  ←  blank |
| adjustedCalculatedSeedQuantity | numeric(10,4) |  |  |  |  ←  blank |
| adjustedCalculatedSpaceQuantity | numeric(10,4) |  |  |  |  ←  blank |

## order_cycle_production
- entity: src/database/entity/order-production/order-production.entity.ts
- created: 1661271781872-OrdersAndProduction.ts
- recent migrations: 2024-04-09 AdjustLbsWithdrawnDecimals; 2024-05-28 AltarMetadataNames; 2025-01-10 manualOrderCycleCreation; 2025-02-11 ProductionSeedPrep; 2025-02-13 AddOyjordSettingsTable; 2025-02-24 AddLocationToProduction; 2026-05-05 AddHarvestSummary; 2026-07-27 AddSeedlingToSeedlingFields

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| dollarAmount | numeric(10,2) |  |  |  |  ←  blank |
| plantingDate | timestamp with time zone |  |  |  | NMIS_AGREEMENT_LOTS ← GROW_REQUEST_BEGIN_FY blank |
| lbsOfSeedWithdrawn | numeric(12,4) |  |  |  |  ←  blank |
| numberBedFeet | numeric(10,2) |  |  |  |  ←  blank |
| containersPlanted | numeric(10,0) |  |  |  |  ←  blank |
| totalGrowUnitsPlanted | numeric(10,0) |  |  |  |  ←  blank |
| notes | character varying |  |  |  |  ←  blank |
| withdrawalDate | timestamp with time zone |  |  |  |  ←  blank |
| stratificationDate | timestamp with time zone |  |  |  |  ←  blank |
| stratNotes | character varying |  |  |  |  ←  blank |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| barerootSpecificationsFunnelsetting | numeric(10,4) |  |  |  |  |
| barerootSpecificationsTotalimbibedseedweight | numeric(10,3) |  |  |  | NMIS_AGREEMENT_LOTS ← CALIBRATION_SOURCE_UNITS blank |
| barerootSpecificationsRevolutions | numeric(10,0) |  |  |  | NMIS_AGREEMENT_LOTS ← CALIBRATION_REVS_USED blank |
| barerootSpecificationsDroppedweight | numeric(10,3) |  |  |  |  |
| barerootSpecificationsAvgimbibedseedweightperrevolution | numeric(10,3) |  |  |  | NMIS_AGREEMENT_LOTS ← CALIBRATION_REV_SOURCE_UNITS blank |
| barerootSpecificationsEstimatedfeetperrevolution | numeric(10,3) |  |  |  | NMIS_AGREEMENT_LOTS ← CALIBRATION_TRAVEL_PER_REV blank |
| barerootSpecificationsCalibrationnotes | character varying |  |  |  |  |
| barerootSpecificationsSeederid | numeric(1,0) |  |  |  |  |
| oyjordSettingUuid | uuid |  |  |  → oyjord_setting.uuid NO ACTION |  |
| isContract | boolean | req | false |  |  ←  blank |
| useRisers | boolean | req | false |  |  ←  blank |
| receivedDate | timestamp with time zone |  |  |  |  |
| receivedFromGrower | character varying |  |  |  |  |
| temporaryStorage | character varying |  |  |  |  |
| estSeedlingQty | numeric(10,0) |  |  |  |  |
| qtyOfBoxes | numeric(10,0) |  |  |  |  |
| seedlingsPerBox | numeric(10,0) |  |  |  |  |
| seedlingsInOddBox | numeric(10,0) |  |  |  |  |
| receiveNotes | character varying |  |  |  |  |

## order_species_product_change
- entity: src/database/entity/order-species-product-change/order-species-product-change.entity.ts
- created: 1783687457314-AddOrderSpeciesProductChangeTable.ts
- recent migrations: 2026-07-10 AddOrderSpeciesProductChangeTable

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| orderUuid | uuid |  |  |  → order.uuid NO ACTION |  |
| fromSpeciesProductUuid | uuid |  |  |  → species_product.uuid NO ACTION |  |
| toSpeciesProductUuid | uuid |  |  |  → species_product.uuid NO ACTION |  |

## order_split
- entity: src/database/entity/order-split/order-split.entity.ts
- created: 1784145286041-AddOrderSplitAndIsCompletedCycle.ts
- recent migrations: 2026-07-15 AddOrderSplitAndIsCompletedCycle

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| splitDate | timestamp with time zone | req |  |  |  |
| parentOrderUuid | uuid |  |  |  → order.uuid NO ACTION |  |
| childOrderUuid | uuid |  |  |  → order.uuid NO ACTION |  |
| originCycleUuid | uuid |  |  |  → order_cycle.uuid NO ACTION |  |

## oyjord_setting
- entity: src/database/entity/oyjord-settings/oyjord-settings.entity.ts
- created: 1739467888690-AddOyjordSettingsTable.ts
- recent migrations: 2025-02-13 AddOyjordSettingsTable

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| oyjordId | character varying | req |  |  |  |
| gear | integer |  |  |  |  |
| zMax | integer |  |  |  |  |
| turns | numeric(10,2) |  |  |  |  |
| travelPerRevolution | numeric(10,2) |  |  |  |  |
| notes | character varying |  |  |  |  |
| nursery | oyjord_setting_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req |  |  |  |

## pack_summary
- entity: src/database/entity/order-fulfillment-pack-summary/pack-summary.entity.ts
- created: 1690825455832-AddFulfillmentSubTables.ts
- recent migrations: 2023-07-31 AddFulfillmentSubTables; 2023-09-18 AdjustFulfillmentForLegacy; 2023-11-29 AddSeedlingBilling; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary; 2026-05-08 UpdatePackAndStorageSummaryFields; 2026-05-27 RenamePackContainerTypeAndAddPackSummaryFields; 2026-08-13 RestructurePackAndStorageSummaryHierarchy

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| packDate | timestamp with time zone | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_DATE blank |
| packedSeedlingCost | numeric(10,2) |  |  |  | NMIS_ID_ACTIVITIES ← DOLLAR_AMOUNT blank |
| costPerSeedling | numeric(10,2) |  |  |  |  ←  blank |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| legacyId | character varying |  |  |  |  |
| legacyData | jsonb |  |  |  |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
| fieldContainersPacked | numeric(10,0) |  |  |  |  |
| fieldContainersRemaining | numeric(10,0) |  |  |  |  |
| notes | text |  |  |  |  |
| qcIssue | boolean |  | false |  |  |
| isContract | boolean |  | false |  |  |

## processing_activity
- entity: src/database/entity/processingActivity/processing-activity.entity.ts
- created: 1650915596355-AddActivities.ts
- recent migrations: 2023-12-19 AddOracleMigrationUpdates; 2024-01-02 AddUnitOfMeasurement; 2024-04-12 AddUnitOfMeasurement; 2024-04-24 AddProductsBadeEntities; 2024-05-28 AltarMetadataNames; 2025-03-25 AddSourceAccessIdField; 2025-07-22 InHouseTestingActivity; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| activityDate | timestamp with time zone | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_DATE yes |
| activityType | processing_activity_activitytype_enum (pa1, pa2, pa3, pa4, pa5, pa6, pa7, pa8) | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_CODE yes |
| unitOfMeasurement | processing_activity_unitofmeasurement_enum (0, 1, 2, 3, 4) | req |  |  | NMIS_ID_ACTIVITIES ← UNIT_CODE yes |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| amountCharged | numeric(10,2) |  |  |  | NMIS_ID_ACTIVITIES + NMIS_ACTIVITY_CHARGES ← override fields or charge per code yes |
| quantity | numeric(10,4) |  |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_UNITS yes |
| addToInvoice | boolean |  |  |  |  |
| notes | character varying |  |  |  | NMIS_ID_ACTIVITIES ← NOTE yes |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
| accessLegacyId | character varying |  |  |  |  |

## product
- entity: none in code
- created: 1713976804841-AddProductsBadeEntities.ts
- recent migrations: 2024-04-24 AddProductsBadeEntities; 2024-05-28 AltarMetadataNames

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| nursery | product_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req |  |  |  |
| description | character varying | req |  |  |  |
| class | character varying | req |  |  |  |
| stockType | product_stocktype_enum (BR, CTR, UNKN) | req |  |  |  |
| growUnitType | product_growunittype_enum (B160, B160L, B160M, B160S, B240, B91, BLOCK, P16, P40, B98S, HB200, B112L, B112S, TPT1, TPT2, TPT8, B112, B98, B96, SB, TB, TB9) | req |  |  |  |
| growYears | numeric | req |  |  |  |
| transplant | boolean | req |  |  |  |
| transplantStockType | product_transplantstocktype_enum (BR, CTR, UNKN) |  |  |  |  |
| transplantGrowUnitType | product_transplantgrowunittype_enum (B160, B160L, B160M, B160S, B240, B91, BLOCK, P16, P40, B98S, HB200, B112L, B112S, TPT1, TPT2, TPT8, B112, B98, B96, SB, TB, TB9) |  |  |  |  |
| transplantGrowYears | numeric |  |  |  |  |
| beginType | product_begintype_enum (B, C, R, S, SD, ST) | req |  |  |  |
| endType | product_endtype_enum (B, C, R, S, SD, ST) | req |  |  |  |
| endUnitOfMeasurement | product_endunitofmeasurement_enum (0, 1, 2, 3, 4) | req |  |  |  |
| notes | character varying |  |  |  |  |
| status | numeric(1,0) | req |  |  |  |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |

## product_inventory_cycle
- entity: src/database/entity/species-product-grow-cycle-inventory/product-inventory-cycle.entity.ts
- created: 1730475145949-AddInventoryFieldsToProductCycle.ts
- recent migrations: 2024-11-01 AddInventoryFieldsToProductCycle

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| timeInGrowCycle | product_inventory_cycle_timeingrowcycle_enum (0.25, 0.5, 0.75, 1, 1.5, 2, 2.5, 3, 4, 5, 10) |  |  |  | NMIS_INV_CYCLES ← NUMBER_OF_FY_MAX blank |
| maxCV | numeric(10,0) |  |  |  | NMIS_INV_CYCLES ← INV_MAX_CV blank |
| survival | numeric(10,2) |  | '100'::numeric |  | NMIS_INV_CYCLES ← INV_FACTOR_1 blank |
| shippable | numeric(10,2) |  | '100'::numeric |  | NMIS_INV_CYCLES ← INV_FACTOR_2 blank |
| target | numeric(10,2) |  | '100'::numeric |  | NMIS_INV_CYCLES ← INV_TARGET_PCT blank |
| sizedSeedlingsPer | numeric(10,0) |  |  |  | NMIS_INV_CYCLES ← INV_SIZE_SAMPLE blank |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| growCycleUuid | uuid |  |  |  → grow_cycle.uuid NO ACTION | NMIS_INV_CYCLES ← GROW_CYCLE_UUID blank |

## production_location
- entity: src/database/entity/order-prouduction-location/production-location.entity.ts
- created: 1740429917397-AddLocationToProduction.ts
- recent migrations: 2025-02-24 AddLocationToProduction; 2025-02-26 AddBayTables; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| type | production_location_type_enum (FD, GH, CT) | req |  |  |  ←  blank |
| area | character varying |  |  |  |  ←  blank |
| section | character varying |  |  |  |  ←  blank |
| unit | character varying |  |  |  |  ←  blank |
| startBedFeet | numeric(5,0) |  |  |  |  ←  blank |
| endBedFeet | numeric(5,0) |  |  |  |  ←  blank |
| startRiser | numeric(6,1) |  |  |  |  ←  blank |
| endRiser | numeric(6,1) |  |  |  |  ←  blank |
| riserDistance | numeric(6,1) |  |  |  |  |
| bedFeetPlanted | numeric(5,0) |  |  |  |  ←  blank |
| startBench | character varying(10) |  |  |  |  ←  blank |
| endBench | character varying(10) |  |  |  |  ←  blank |
| totalContainersPlanted | numeric(5,0) |  |  |  |  ←  blank |
| notes | character varying(150) |  |  |  |  ←  blank |
| cycleProductionUuid | uuid |  |  |  → order_cycle_production.uuid NO ACTION |  |
| bedRowUuid | uuid |  |  |  → bed_row.uuid NO ACTION |  |
| bayUuid | uuid |  |  |  → bay.uuid NO ACTION |  |

## receiving_activity
- entity: src/database/entity/receivingActivity/receiving-activity.entity.ts
- created: 1652984532072-ReceivingNameError.ts
- recent migrations: 2024-01-02 AddUnitOfMeasurement; 2024-02-29 AlterSourceBalanceLocation; 2024-04-12 AddUnitOfMeasurement; 2024-04-24 AddProductsBadeEntities; 2024-05-28 AltarMetadataNames; 2025-03-25 AddSourceAccessIdField; 2026-05-05 AddHarvestSummary; 2026-09-03 AddWeighToReceivingActivityEnum

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| dateReceived | timestamp with time zone | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_DATE yes |
| activityType | receiving_activity_activitytype_enum (0, 1, 2, 3, 4, 5, 6, 7, 8) | req |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_CODE yes |
| receivedUnitOfMeasurement | receiving_activity_receivedunitofmeasurement_enum (0, 1, 2, 3, 4) | req |  |  |  |
| pointOfContact | character varying |  |  |  |  |
| rushOrder | boolean |  |  |  |  |
| quantity | numeric(10,4) |  |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_UNITS yes |
| finalProcessedWeight | numeric(10,4) |  |  |  | NMIS_ID_ACTIVITIES ← ACTIVITY_UNITS yes |
| notes | character varying |  |  |  | NMIS_ID_ACTIVITIES ← NOTE yes |
| amountCharged | numeric(10,2) |  |  |  | NMIS_ID_ACTIVITIES ← DOLLAR_AMOUNT yes |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
| finalWeighDate | timestamp with time zone |  |  |  |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| accessLegacyId | character varying |  |  |  |  |

## recieving_activity
- entity: none in code
- created: 1650915596355-AddActivities.ts
- recent migrations: 2022-04-25 AddActivities; 2022-05-03 sourceLotBreedingZoneToNullable

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| dateRecieved | date | req |  |  |  |
| activityType | recieving_activity_activitytype_enum (0, 1, 2, 3, 4, 5) | req |  |  |  |
| quantity | integer | req |  |  |  |
| unitOfMeasurement | recieving_activity_unitofmeasurement_enum (0, 1) | req |  |  |  |
| pointOfContact | character varying |  |  |  |  |
| finalProcessedWeight | integer |  |  |  |  |
| rushOrder | boolean |  |  |  |  |
| lotBalance | integer | req |  |  |  |

## report_file
- entity: src/database/entity/reports/reports.entity.ts
- created: 1668788181091-AddReportFileTable.ts
- recent migrations: 2022-11-18 AddReportFileTable; 2023-02-28 AddBillingTable; 2023-03-24 AddReportType; 2024-05-28 AltarMetadataNames; 2026-03-06 AddS3FilePathToFileEntities; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| fileFilename | character varying | req |  |  |  |
| fileData | bytea |  |  |  |  |
| reportType | integer | req | 0 |  |  |
| fileS3filepath | character varying |  |  |  |  |

## role
- entity: src/database/entity/role/role.entity.ts
- created: 1640728686639-AddTables_UserAndSourceLot.ts
- recent migrations: 2021-12-28 AddTables_UserAndSourceLot; 2022-05-26 UpdateRoleEntity; 2022-06-17 ShipmentUpdatesWithMetaDataEmbedding; 2022-10-12 Restrictions; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| name | character varying | req |  |  |  |
| description | character varying | req |  |  |  |
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| display | character varying | req |  |  |  |
| nursery | role_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  |  |

## seed_factor
- entity: src/database/entity/seed-factor/seed-factor.entity.ts
- created: 1724342673214-AddSowFactorsToSpeciesProduct.ts
- recent migrations: 2024-08-22 AddSowFactorsToSpeciesProduct; 2024-12-12 SeedFactorClientToPartialString; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| minElevation | character varying |  |  |  | NMIS_FACTORS ← ELEVATION_MIN blank |
| maxElevation | character varying | req |  |  | NMIS_FACTORS ← ELEVATION_MAX blank |
| minGermination | character varying | req |  |  | NMIS_FACTORS ← GERM_MIN blank |
| maxGermination | character varying | req |  |  | NMIS_FACTORS ← GERM_MAX blank |
| factor1 | numeric(10,2) |  |  |  | NMIS_FACTORS ← HARVEST_FACTOR_1 blank |
| factor2 | numeric(10,2) |  |  |  | NMIS_FACTORS ← HARVEST_FACTOR_2 blank |
| factor3 | numeric(10,2) |  |  |  | NMIS_FACTORS ← HARVEST_FACTOR_3 blank |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| speciesProductUuid | uuid |  |  |  → species_product.uuid NO ACTION | NMIS_FACTORS ← FOUND_NMIS_SPECIES_PRODUCTS_CN yes |
| clientPartial | character varying |  |  |  | NMIS_FACTORS ← LIKE_ASSOCIATE blank |

## seedling_destination_drop
- entity: src/database/entity/seedling-ship-ticket/seedling-destination-drop.entity.ts
- created: 1787074891086-RestructureShippingModels.ts
- recent migrations: 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| requesterContactName | character varying |  |  |  |  |
| requesterContactPhone | character varying |  |  |  |  |
| deliveryLocation | character varying | req |  |  |  |
| travelDays | integer | req |  |  |  |
| dropOrder | integer | req |  |  |  |
| handLoad | boolean |  | false |  |  |
| handUnload | boolean |  | false |  |  |
| contact | character varying |  |  |  |  |
| phone | character varying |  |  |  |  |
| longitude | numeric(11,8) |  |  |  |  |
| latitude | numeric(11,8) |  |  |  |  |
| desiredDeliveryDate | timestamp with time zone | req |  |  |  |
| notes | character varying(1000) |  |  |  |  |
| seedlingShipTicketUuid | uuid |  |  |  → seedling_ship_ticket.uuid CASCADE |  |
| destinationClientUuid | uuid |  |  |  → client.uuid CASCADE |  |

## seedling_lot_slip
- entity: src/database/entity/seedling-ship-ticket/seedling-lot-slip.entity.ts
- created: 1787074891086-RestructureShippingModels.ts
- recent migrations: 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| quantity | numeric(12,4) |  |  |  |  |
| numberOfBoxes | numeric(10,0) | req |  |  |  |
| donation | boolean |  | false |  |  |
| thawDays | numeric(5,0) |  |  |  |  |
| thawLocation | character varying |  |  |  |  |
| seedlingDestinationDropUuid | uuid |  |  |  → seedling_destination_drop.uuid CASCADE |  |
| storageSummaryUuid | uuid |  |  |  → storage_summary.uuid CASCADE |  |

## seedling_ship_ticket
- entity: src/database/entity/seedling-ship-ticket/seedling-ship-ticket.entity.ts
- created: 1787074891086-RestructureShippingModels.ts
- recent migrations: 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| id | character varying | req |  |  |  |
| nursery | seedling_ship_ticket_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) | req |  |  |  |
| status | seedling_ship_ticket_status_enum (draft, final) | req | 'draft'::nmis.seedling_ship_ticket_status_enum |  |  |
| truckDescription | character varying |  |  |  |  |
| departureDate | timestamp with time zone |  |  |  |  |
| deliveryActivity | seedling_ship_ticket_deliveryactivity_enum (da1, da2, da3, da4, da5, da6, da7, da8, da9) | req | 'da2'::nmis.seedling_ship_ticket_deliveryactivity_enum |  |  |
| deliveryType | seedling_ship_ticket_deliverytype_enum (dt1, dt2, dt3, dt4, dt5, dt6, dt7) |  |  |  |  |
| maxTruckLength | character varying |  |  |  |  |
| liftGate | boolean |  | false |  |  |
| palletJack | boolean |  | false |  |  |
| carrierTrackingInfo | character varying |  |  |  |  |
| carrierShippingFee | numeric(10,2) |  |  |  |  |
| notes | character varying(1000) |  |  |  |  |

## ship_request
- entity: src/database/entity/order-fulfillment-ship-request/ship-request.entity.ts
- created: 1779190617028-AddShipRequestToFulfillment.ts
- recent migrations: 2026-05-19 AddShipRequestToFulfillment; 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| desiredDeliveryDate | timestamp with time zone | req |  |  |  |
| maxTruckLength | character varying |  |  |  |  |
| liftGate | boolean |  | false |  |  |
| palletJack | boolean |  | false |  |  |
| thaw | boolean |  | false |  |  |
| notes | character varying(1000) |  |  |  |  |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| deliveryLocation | character varying | req |  |  |  |
| boxQty | integer | req |  |  |  |
| contact | character varying |  |  |  |  |
| phone | character varying |  |  |  |  |
| longitude | numeric(11,8) |  |  |  |  |
| latitude | numeric(11,8) |  |  |  |  |

## shipment
- entity: none in code
- created: 1654193975157-AddShipmentAndStorageTables.ts
- recent migrations: 2022-06-02 AddShipmentAndStorageTables; 2022-06-16 TimestampToDate; 2022-06-17 ShipmentUpdatesWithMetaDataEmbedding

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| shipmentDate | date |  |  |  |  |
| quantity | numeric(12,2) |  |  |  |  |
| shippedTo | character varying |  |  |  |  |
| carrierTrackingInfo | character varying |  |  |  |  |
| dollarAmount | numeric(10,2) |  |  |  |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| shippingAddress | character varying |  |  |  |  |
| clientShippedToUuid | uuid |  |  |  → client.uuid CASCADE |  |

## size_inventory
- entity: src/database/entity/order-inventory-progress/size-inventory.entity.ts
- created: 1745860055970-addSizeInventory.ts
- recent migrations: 2025-04-28 addSizeInventory

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| samples | jsonb | req | '[]'::jsonb |  |  |

## size_spec_inventory
- entity: src/database/entity/order-inventory-progress/size-spec-inventory.entity.ts
- created: 1746037590228-AddSizeSpecInventory.ts
- recent migrations: 2025-04-30 AddSizeSpecInventory

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| samples | jsonb | req | '[]'::jsonb |  |  |

## source_lot
- entity: src/database/entity/source-lot/source-lot.entity.ts
- created: 1640728686639-AddTables_UserAndSourceLot.ts
- recent migrations: 2024-05-28 AltarMetadataNames; 2024-10-02 AddLotIndex; 2024-10-11 AlterLotBalanceDefaultTo0; 2025-01-27 AddTreeImpFieldsToSource; 2025-03-05 addSourceDetailsAccessField; 2025-03-25 AddSourceAccessIdField; 2026-01-07 LotBalanceDefaultNull; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| seedYear | integer |  | 1900 |  | NMIS_SOURCE_LOTS ← SEED_YEAR yes |
| status | integer |  | 1 |  | NMIS_SOURCE_LOTS ← LOT_STATUS yes |
| lotIdNumber | integer | req | '-1'::integer |  |  |
| lotId | character varying | req |  |  | NMIS_SOURCE_LOTS ← ID yes |
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| coordinates | geography |  |  |  | NMIS_SOURCE_LOTS ← COORDINATES yes |
| dateCollected | timestamp with time zone |  |  |  | NMIS_SOURCE_LOTS ← DATE_COLLECTED yes |
| meridian | character varying |  |  |  | NMIS_SOURCE_LOTS ← MERIDIAN yes |
| range | character varying |  |  |  | NMIS_SOURCE_LOTS ← RANGE yes |
| section | character varying |  |  |  | NMIS_SOURCE_LOTS ← SECTION yes |
| seedZone | character varying |  |  |  | NMIS_SOURCE_LOTS ← SEED_ZONE yes |
| sourceCode | character varying |  |  |  | NMIS_SOURCE_LOTS ← SOURCE_CODE yes |
| stands | integer |  |  |  | NMIS_SOURCE_LOTS ← GENETIC_BASE_STAND yes |
| town | character varying |  |  |  | NMIS_SOURCE_LOTS ← TOWNSHIP yes |
| treesPerStand | integer |  |  |  | NMIS_SOURCE_LOTS ← GENETIC_BASE_TREES yes |
| notes | character varying |  |  |  | NMIS_SOURCE_LOTS ← NOTE yes |
| collectionMethod | source_lot_collectionmethod_enum (100, 200, 300, 400, 500, 600, 700) |  |  |  | NMIS_SOURCE_LOTS ← COLLECT_METHOD yes |
| generation | source_lot_generation_enum (G0, G1, G2, G3, G4) |  |  |  |  |
| localAreaDescription | character varying(30) |  |  |  | NMIS_SOURCE_LOTS ← GEOGRAPHIC_LOCATION yes |
| provisionalZone | source_lot_provisionalzone_enum (g0_l2, g0_2t3, g0_3t6, g0_6t12, e0t5_g2, e0t5_2t3, e0t5_3t6, e0t5_6t12, e0t5_12t30, e5t10_g2, e5t10_2t3, e5t10_3t6, e5t10_6t12, e5t10_12t30, e10t15_g2, e10t15_2t3, e10t15_3t6, e10t15_6t12, e10t15_12t30, e15t20_g2, e15t20_2t3, e15t20_3t6,  e15t20_6t12, e15t20_12t30, e20t25_g2, e20t25_2t3, e20t25_3t6, e20t25_6t12, e20t25_12t30, e25t30_g2, e25t30_2t3, e25t30_3t6, e25t30_6t12, e25t30_12t30, e25t30_g30, e30t35_g2, e30t35_2t3, e30t35_3t6, e30t35_6t12, e30t35_12t30, e30t35_g30, e35t40_g2, e35t40_2t3, e35t40_3t6, e35t40_6t12, e35t40_12t30, e35t40_g30, e40t45_g2, e40t45_2t3, e40t45_3t6, e40t45_6t12, e40t45_12t30, e40t45_g30, e45t50_g2, e45t50_2t3, e45t50_3t6, e45t50_6t12, e45t50_12t30, e50t55_2t3, e50t55_3t6, e50t55_6t12, e50t55_12t30, g55_2t3, g55_t6) |  |  |  |  |
| storageFacility | source_lot_storagefacility_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  | NMIS_SOURCE_LOTS ← STORED_AT_ASSOCIATE yes |
| breedingZone | character varying(10) |  |  |  | NMIS_SOURCE_LOTS ← BREEDING_ZONE yes |
| elevationRange | character varying |  |  |  | NMIS_SOURCE_LOTS ← PROAG_ELEVATION yes |
| exactElevation | numeric(10,2) |  |  |  | NMIS_SOURCE_LOTS ← ORIGIN_ELEVATION yes |
| legacyId | character varying |  |  |  |  |
| category | source_lot_category_enum (NWCF, TI, TIPO, WCF, COOP, SDSU, STZM) |  |  |  | NMIS_SOURCE_LOTS ← CATEGORY_CODE yes |
| factsCode | source_lot_factscode_enum (fc1, fc2, fc3, fc4, fc5, fc6, fc7, fc8) |  |  |  | NMIS_SOURCE_LOTS ← FACTS_SOURCE_CODE no |
| legacyData | jsonb |  |  |  | NMIS_SOURCE_LOTS ← LEGACYDATA yes |
| clientUuid | uuid |  |  |  → client.uuid NO ACTION | NMIS_SOURCE_LOTS ← STORED_FOR_ASSOCIATE yes |
| collectedByUuid | uuid |  |  |  → client.uuid NO ACTION | NMIS_SOURCE_LOTS ← COLLECTED_BY_ASSOCIATE yes |
| speciesUuid | uuid |  |  |  → species.uuid NO ACTION | NMIS_SOURCE_LOTS ← PLNTMSTR_SYMBOL yes |
| parentTransferLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| lotBalance | numeric(10,4) |  |  |  |  |
| transactions | jsonb | req | '[]'::jsonb |  |  |
| unitOfMeasurement | source_lot_unitofmeasurement_enum (0, 1, 2, 3, 4) |  |  |  |  |
| seedOrchardName | character varying(100) |  |  |  |  |
| orchardSubUnit | character varying(20) |  |  |  | NMIS_SOURCE_LOTS ← BREEDING_SUBUNIT yes |
| standNumber | character varying(20) |  |  |  | NMIS_SOURCE_LOTS ← STAND yes |
| treeNumber | character varying(20) |  |  |  | NMIS_SOURCE_LOTS ← TREE_NUMBER yes |
| pedigree | character varying(20) |  |  |  | NMIS_SOURCE_LOTS ← PEDIGREE yes |
| cycle | character varying(10) |  |  |  | NMIS_SOURCE_LOTS ← CYCLE_TI yes |
| resistanceType | character varying(20) |  |  |  | NMIS_SOURCE_LOTS ← RESISTANCE_TYPE yes |
| accessLegacyId | character varying |  |  |  | NMIS_SOURCE_LOTS ← CN yes |
| originHarvestSummaryUuid | uuid |  |  |  → harvest_summary.uuid SET NULL |  |

## source_lot_attachment
- entity: src/database/entity/source-lot-attachment/source-lot-attachment.entity.ts
- created: 1646238876303-AddFileTable.ts
- recent migrations: 2022-03-02 AddFileTable; 2022-05-18 SourceLotonDeleteRelations; 2022-06-17 ShipmentUpdatesWithMetaDataEmbedding; 2023-01-19 AddTransferFields; 2023-02-28 AddBillingTable; 2024-05-28 AltarMetadataNames; 2026-03-06 AddS3FilePathToFileEntities; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| fileFilename | character varying | req |  |  |  |
| fileData | bytea |  |  |  |  |
| fileS3filepath | character varying |  |  |  |  |

## source_lot_test
- entity: src/database/entity/source-lot-test/source-lot-test.entity.ts
- created: 1651002090781-AddTesting.ts
- recent migrations: 2023-05-02 AlterTestTableAddLegacyFields; 2023-10-26 TestFieldAdjustments; 2023-12-11 AlterSourceTestTestedBy; 2024-05-28 AltarMetadataNames; 2025-03-25 AddSourceAccessIdField; 2026-02-25 AddNewColumnForSamplesOnTest; 2026-03-15 AddStratificationDataToSourceLotTest; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| testDate | timestamp with time zone | req |  |  | NMIS_SOURCE_TESTS ← TEST_DATE yes |
| testType | source_lot_test_testtype_enum (t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11) | req |  |  | NMIS_SOURCE_TESTS ← TYPE_OF_TEST yes |
| invoice | boolean | req | false |  |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE | NMIS_SOURCE_TESTS ← SOURCE_LOT_CN yes |
| dollarAmount | numeric(14,2) |  |  |  | NMIS_SOURCE_TESTS ← DOLLAR_AMOUNT yes |
| testResults | character varying |  |  |  | NMIS_SOURCE_TESTS ← GROSS_SOURCE_PER_UNIT, STRATIFIED, GERM_PCT, PURITY_PCT, MOISTURE_PCT, FILLED_PCT yes |
| notes | character varying |  |  |  | NMIS_SOURCE_TESTS ← NOTE yes |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
| legacyData | jsonb |  |  |  | NMIS_SOURCE_TESTS ← LEGACYDATA yes |
| legacyId | character varying |  |  |  | NMIS_SOURCE_TESTS ← CN yes |
| testedByUuid | uuid |  |  |  → client.uuid NO ACTION |  |
| accessLegacyId | character varying |  |  |  |  |
| testSamples | numeric[] | req | '{}'::numeric[] |  |  |
| stratificationData | jsonb |  |  |  | NMIS_SOURCE_TEST_RESULTS ← DAYS_STRAT yes; NMIS_SOURCE_TEST_RESULTS ← GERM_PCT yes; NMIS_SOURCE_TEST_RESULTS ← DAYS blank; NMIS_SOURCE_TEST_RESULTS ← N/A maybe |

## source_shipment
- entity: src/database/entity/source-shipment/source-shipment.entity.ts
- created: 1666026636665-AddShipTicketTable.ts
- recent migrations: 2022-10-25 AlterShipTicketTable; 2023-01-12 AdjustTimeColumnsToTimeStamptz; 2023-06-05 AddShippingLegacyFields; 2024-05-22 AddRequestedByClient; 2024-05-28 AltarMetadataNames; 2025-03-25 AddSourceAccessIdField; 2026-05-05 AddHarvestSummary; 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| id | character varying | req |  |  | NMIS_TICKETS ← TICKET_NO yes |
| shippedFrom | source_shipment_shippedfrom_enum | req |  |  | NMIS_TICKETS ← NURSERY_ASSOCIATE yes |
| shipDate | timestamp with time zone |  |  |  | NMIS_TICKETS ← DESIRED_DATE yes |
| shippedTo | character varying |  |  |  |  |
| shippingAddress | character varying |  |  |  |  |
| carrierTrackingInfo | character varying |  |  |  | NMIS_TICKETS ← EXT_DOC_REF yes |
| status | numeric(1,0) |  |  |  |  |
| transfer | boolean |  | false |  |  |
| destinationClientUuid | uuid |  |  |  → client.uuid CASCADE |  |
| shippingFees | numeric(10,2) |  |  |  | NMIS_TICKETS ← CHARGE_PER_TICKET yes |
| totalShippingCost | numeric(10,2) |  |  |  |  |
| lotType | integer | req | '-1'::integer |  | NMIS_TICKETS ← Source yes |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| requestedByClientUuid | uuid |  |  |  → client.uuid CASCADE |  |
| accessLegacyId | character varying |  |  |  |  |

## species
- entity: src/database/entity/species/species.entity.ts
- created: 1643915545638-AddSpeciesTable.ts
- recent migrations: 2022-02-03 AddSpeciesTable; 2022-06-17 SpeciesFieldAdditions; 2022-12-02 AlterSpecies; 2024-05-17 speciesUniqueFix; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| symbol | character varying | req |  |  |  |
| synonymSymbol | character varying |  |  |  |  |
| scientificName | character varying |  |  |  |  |
| commonName | character varying |  |  |  |  |
| family | character varying |  |  |  |  |
| group | character varying |  |  |  |  |
| growthHabit | character varying |  |  |  |  |

## species_product
- entity: src/database/entity/species-product/species-product.entity.ts
- created: 1713976804841-AddProductsBadeEntities.ts
- recent migrations: 2024-05-28 AltarMetadataNames; 2024-07-26 AlterSpeciesProduct; 2024-07-31 AlignGrowRequestWithSpeciesProduct; 2024-10-29 AddProductAltSpecs; 2024-11-13 SpeciesProductParentChild; 2025-03-07 AddProductDescriptionAddInField; 2026-05-05 AddHarvestSummary; 2026-07-27 AddSeedlingToSeedlingFields

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| description | character varying | req |  |  | NMIS_SPECIES_PRODUCTS ← COMBINATION SEE NOTES FOR MAPPING ****** yes |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| notes | character varying |  |  |  | NMIS_SPECIES_PRODUCTS ← PRODUCT_NOTE maybe |
| speciesUuid | uuid |  |  |  → species.uuid NO ACTION | NMIS_SPECIES_PRODUCTS ← PLNTMSTR_SYMBOL yes |
| nursery | species_product_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  | NMIS_SPECIES_PRODUCTS ← Access DB Nursery yes |
| totalFiscalYears | numeric |  |  |  | NMIS_SPECIES_PRODUCTS ← TOTAL_NUMBER_OF_FY yes |
| nonTraditional | boolean | req | false |  | NMIS_SPECIES_PRODUCTS ← SPECIES_PRODUCT_DESC where NT is present maybe |
| inactive | boolean | req | false |  | NMIS_SPECIES_PRODUCTS ← HISTORICAL yes |
| beginType | species_product_begintype_enum (B, C, R, S, SD, ST, PO) | req |  |  | NMIS_SPECIES_PRODUCTS ← PRODUCT_BEGIN_PRODUCT_TYPE yes |
| endType | species_product_endtype_enum (B, C, R, S, SD, ST, PO) | req |  |  | NMIS_SPECIES_PRODUCTS ← PRODUCT_END_PRODUCT_TYPE yes |
| endUnitOfMeasurement | species_product_endunitofmeasurement_enum (0, 1, 2, 3, 4) | req |  |  | NMIS_SPECIES_PRODUCTS ← PRODUCT_UNIT_CODE yes |
| growthHeightMinimumheight | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← SPEC_MIN yes |
| growthHeightMaximumheight | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← SPEC_MAX yes |
| growthHeightMinimumstemcaliper | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← CALIPER_MIN yes |
| rootLengthMinimumheight | numeric(10,2) |  |  |  |  ←  blank |
| rootLengthMaximumheight | numeric(10,2) |  |  |  |  ←  blank |
| rootLengthPrunetarget | numeric(10,2) |  |  |  |  |
| funnelSettings | numeric(10,0) |  |  |  | NMIS_SPECIES_PRODUCTS ← DRILL_FUNNEL_SETTING yes |
| minUnitsPerRevolutions | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← DRILL_MIN_REV_UNITS yes |
| maxUnitsPerRevolutions | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← DRILL_MAX_REV_UNITS yes |
| altGrowthHeightMinimumheight | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← ALT_SPEC_MIN yes |
| altGrowthHeightMaximumheight | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← ALT_SPEC_MAX yes |
| altGrowthHeightMinimumstemcaliper | numeric(10,2) |  |  |  | NMIS_SPECIES_PRODUCTS ← ALT_CAL_MIN yes |
| holdoverReason | species_product_holdoverreason_enum (HR0, HR1, HR2) | req | 'HR0'::nmis.species_product_holdoverreason_enum |  |  ←  other |
| parentSpeciesProductUuid | uuid |  |  |  → species_product.uuid CASCADE |  |
| descriptionAddIn | character varying |  |  |  | NMIS_SPECIES_PRODUCTS ← SPECIES_PRODUCT_DESC within parentheses yes |
| originatingStockType | character varying |  |  |  |  |
| originatingGrowUnitUuid | uuid |  |  |  → grow_unit.uuid SET NULL |  |

## storage
- entity: src/database/entity/storage/storage.entity.ts
- created: 1654193975157-AddShipmentAndStorageTables.ts
- recent migrations: 2023-02-28 AddBillingTable; 2023-03-08 AdjustQuantityDecimalPlaces; 2023-05-24 AddStorageLegacyFields; 2023-12-11 StorageLocationsAlterEnum; 2024-05-28 AltarMetadataNames; 2025-03-25 AddSourceAccessIdField; 2026-03-09 StorageAddEnumTypeAndColumns; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| startDate | timestamp with time zone |  |  |  | NMIS_ID_LOCATIONS ← BEGIN_DATE yes |
| type | storage_cost_storagetype_enum (st1, st2, st3, st4, st5, st6, st7) |  |  |  | NMIS_LOCATIONS ← NMIS_LOCATIONS.LOCATION_TYPE yes |
| section | character varying |  |  |  | NMIS_LOCATIONS ← LOCATION yes |
| area | character varying |  |  |  | NMIS_LOCATIONS ← LOCATION yes |
| shelf | character varying |  |  |  | NMIS_LOCATIONS ← LOCATION yes |
| space | character varying |  |  |  | NMIS_LOCATIONS ← LOCATION yes |
| dollarAmount | numeric(10,4) |  |  |  |  ←  maybe |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
| legacyData | jsonb |  |  |  |  |
| legacyId | character varying |  |  |  |  |
| accessLegacyId | character varying |  |  |  |  |
| endDate | timestamp with time zone |  |  |  | NMIS_ID_LOCATIONS ← END_DATE yes |
| name | character varying |  |  |  | NMIS_ID_LOCATIONS ← NAME/NUMBER yes |

## storage_cost
- entity: src/database/entity/pricing-storage/storage-cost.entity.ts
- created: 1675975833040-AddPricingStorage.ts
- recent migrations: 2023-02-09 AddPricingStorage; 2023-12-11 StorageLocationsAlterEnum; 2024-01-02 AddUnitOfMeasurement; 2024-02-21 AddCategoryCodes; 2024-05-28 AltarMetadataNames; 2026-03-09 StorageAddEnumTypeAndColumns; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| storageType | storage_cost_storagetype_enum (st1, st2, st3, st4, st5, st6, st7) |  |  |  |  |
| clientCategory | storage_cost_clientcategory_enum (NWCF, TI, TIPO, WCF, COOP, SDSU, STZM) |  |  |  |  |
| priceDividingWeight | numeric(10,2) |  |  |  |  |
| lowWeightPricing | numeric(10,2) |  |  |  |  |
| highWeightPricing | numeric(10,2) |  |  |  |  |
| storagePricingUuid | uuid |  |  |  → storage_pricing.uuid CASCADE |  |

## storage_pricing
- entity: src/database/entity/pricing-storage/pricing-storage.entity.ts
- created: 1675975833040-AddPricingStorage.ts
- recent migrations: 2023-02-09 AddPricingStorage; 2023-05-23 AddPricingCostPerSeedling; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| year | character varying | req |  |  |  |
| nursery | storage_pricing_nursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  |  |
| costPerSeedling | numeric(10,2) |  |  |  |  |

## storage_summary
- entity: src/database/entity/order-fulfillment-storage-summary/storage-summary.entity.ts
- created: 1690825455832-AddFulfillmentSubTables.ts
- recent migrations: 2023-07-31 AddFulfillmentSubTables; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary; 2026-05-08 UpdatePackAndStorageSummaryFields; 2026-08-13 RestructurePackAndStorageSummaryHierarchy; 2026-08-18 RestructureShippingModels

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| startDate | timestamp with time zone |  |  |  |  ←  blank |
| quantityOfBoxes | numeric(10,2) |  |  |  |  ←  blank |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| type | storage_summary_type_enum (st1, st2, st3, st4, st5, st6, st7) |  |  |  |  |
| name | character varying |  |  |  |  |
| section | character varying |  |  |  |  |
| area | character varying |  |  |  |  |
| shelf | character varying |  |  |  |  |
| space | character varying |  |  |  |  |
| shipContainerType | character varying |  |  |  |  |
| seedlingsPerBox | numeric(10,0) |  |  |  |  |
| packedSeedlings | numeric(12,4) |  |  |  |  |
| packSummaryUuid | uuid |  |  |  → pack_summary.uuid CASCADE |  |
| availableBoxQty | numeric(10,0) | req | '0'::numeric |  |  |
| transactions | jsonb | req | '[]'::jsonb |  |  |

## thaw_summary
- entity: src/database/entity/order-fulfillment-thaw-summary/thaw-summary.entity.ts
- created: 1690825455832-AddFulfillmentSubTables.ts
- recent migrations: 2023-07-31 AddFulfillmentSubTables; 2023-11-29 AddSeedlingBilling; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| thawDate | timestamp with time zone | req |  |  |  ←  blank |
| quantityOfBoxes | numeric(10,2) |  |  |  |  ←  blank |
| costPerBox | numeric(10,2) |  |  |  |  ←  blank |
| totalCosts | numeric(10,2) |  |  |  |  ←  blank |
| fulfillmentUuid | uuid |  |  |  → fulfillment.uuid CASCADE |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |

## typeorm_metadata
- entity: none in code
- created: None
- recent migrations: 

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| type | character varying | req |  |  |  |
| database | character varying |  |  |  |  |
| schema | character varying |  |  |  |  |
| table | character varying |  |  |  |  |
| name | character varying |  |  |  |  |
| value | text |  |  |  |  |

## user
- entity: src/database/entity/user/user.entity.ts
- created: 1640728686639-AddTables_UserAndSourceLot.ts
- recent migrations: 2022-01-25 EmbedMetadata; 2022-04-26 AddTesting; 2022-05-26 UpdateRoleEntity; 2022-06-10 AdjustSourceLotTestTestedBy; 2022-07-11 UserCurrentNursery; 2023-02-14 AdjustEAuthIdConstraint; 2024-05-28 AltarMetadataNames; 2026-05-05 AddHarvestSummary

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| eAuthId | character varying |  |  |  |  |
| email | character varying | req |  |  |  |
| firstName | character varying | req |  |  |  |
| lastName | character varying | req |  |  |  |
| currentNursery | user_currentnursery_enum (nf1, nf2, nf3, nf4, nf5, nf6, nf7, nf8, nf9, nf10) |  |  |  |  |

## user_roles_role
- entity: none in code
- created: 1640728686639-AddTables_UserAndSourceLot.ts
- recent migrations: 2021-12-28 AddTables_UserAndSourceLot; 2022-05-26 UpdateRoleEntity; 2022-10-12 Restrictions

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| userUuid | uuid | req |  | PK → user.uuid CASCADE |  |
| roleUuid | uuid | req |  | PK → role.uuid NO ACTION |  |

## yearly_storage_cost
- entity: src/database/entity/pricing-yearly-storage/yearly-pricing.entity.ts
- created: 1677606589418-AddBillingTable.ts
- recent migrations: 2023-02-28 AddBillingTable

| Column | Type | Null | Default | Keys | Access source (mapping) |
|---|---|---|---|---|---|
| uuid | uuid | req | uuid_generate_v4() | PK |  |
| pricingYear | numeric(4,0) |  |  |  |  |
| dollarAmount | numeric(10,2) |  |  |  |  |
| sourceLotUuid | uuid |  |  |  → source_lot.uuid CASCADE |  |
| billUuid | uuid |  |  |  → billing_file.uuid NO ACTION |  |
