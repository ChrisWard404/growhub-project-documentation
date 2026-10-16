# GrowHub migration history

All TypeORM migrations newest first, with the tables/columns each touched.

## 2026-09-03 AddWeighToReceivingActivityEnum
- receiving_activity alter column activityType TYPE "nmis"."receiving_activity_activitytype_enum" USING "activityType"::"text"::"nmis"."receiving_activity_activitytype
- harvest_summary alter column activity TYPE "nmis"."harvest_summary_activity_enum" USING "activity"::"text"::"nmis"."harvest_summary_activity_enum"

## 2026-08-18 RestructureShippingModels
- source_shipment rename table from ship_ticket
- lot_slip rename column sourceShipmentUuid from shipTicketUuid
- lot_slip add FK sourceShipmentUuid → source_shipment.uuid
- ship_request add column deliveryLocation character varying
- ship_request add column boxQty integer
- ship_request add column contact character varying
- ship_request add column phone character varying
- ship_request add column longitude numeric(11,8)
- ship_request add column latitude numeric(11,8)
- ship_request data update 
- ship_request data update 
- ship_request data update 
- ship_request alter column deliveryLocation SET NOT NULL
- ship_request alter column boxQty SET NOT NULL
- request_destination drop table 
- seedling_ship_ticket create table 
- seedling_ship_ticket add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- seedling_ship_ticket add column id character varying NOT NULL
- seedling_ship_ticket add column nursery "nmis"."seedling_ship_ticket_nursery_enum" NOT NULL
- seedling_ship_ticket add column status "nmis"."seedling_ship_ticket_status_enum" NOT NULL DEFAULT 'draft'
- seedling_ship_ticket add column truckDescription character varying
- seedling_ship_ticket add column departureDate TIMESTAMP WITH TIME ZONE
- seedling_ship_ticket add column deliveryActivity "nmis"."seedling_ship_ticket_deliveryactivity_enum" NOT NULL DEFAULT 'da2'
- seedling_ship_ticket add column deliveryType "nmis"."seedling_ship_ticket_deliverytype_enum"
- seedling_ship_ticket add column maxTruckLength character varying
- seedling_ship_ticket add column liftGate boolean DEFAULT false
- seedling_ship_ticket add column palletJack boolean DEFAULT false
- seedling_ship_ticket add column carrierTrackingInfo character varying
- seedling_ship_ticket add column carrierShippingFee numeric(10,2)
- seedling_ship_ticket add column notes character varying(1000)
- seedling_ship_ticket add column metadataCreatedby uuid
- seedling_ship_ticket add column metadataModifiedby uuid
- seedling_ship_ticket add column metadataDeletedby uuid
- seedling_ship_ticket add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- seedling_ship_ticket add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- seedling_ship_ticket add column metadataDeleted boolean NOT NULL DEFAULT false
- seedling_ship_ticket add column metadataDeletedon TIMESTAMP
- seedling_destination_drop create table 
- seedling_destination_drop add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- seedling_destination_drop add column requesterContactName character varying
- seedling_destination_drop add column requesterContactPhone character varying
- seedling_destination_drop add column deliveryLocation character varying NOT NULL
- seedling_destination_drop add column travelDays integer NOT NULL
- seedling_destination_drop add column dropOrder integer NOT NULL
- seedling_destination_drop add column handLoad boolean DEFAULT false
- seedling_destination_drop add column handUnload boolean DEFAULT false
- seedling_destination_drop add column contact character varying
- seedling_destination_drop add column phone character varying
- seedling_destination_drop add column longitude numeric(11,8)
- seedling_destination_drop add column latitude numeric(11,8)
- seedling_destination_drop add column desiredDeliveryDate TIMESTAMP WITH TIME ZONE NOT NULL
- seedling_destination_drop add column notes character varying(1000)
- seedling_destination_drop add column seedlingShipTicketUuid uuid
- seedling_destination_drop add column destinationClientUuid uuid
- seedling_destination_drop add column metadataCreatedby uuid
- seedling_destination_drop add column metadataModifiedby uuid
- seedling_destination_drop add column metadataDeletedby uuid
- seedling_destination_drop add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- seedling_destination_drop add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- seedling_destination_drop add column metadataDeleted boolean NOT NULL DEFAULT false
- seedling_destination_drop add column metadataDeletedon TIMESTAMP
- seedling_lot_slip create table 
- seedling_lot_slip add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- seedling_lot_slip add column quantity numeric(12,4)
- seedling_lot_slip add column numberOfBoxes numeric(10,0) NOT NULL
- seedling_lot_slip add column donation boolean DEFAULT false
- seedling_lot_slip add column thawDays numeric(5,0)
- seedling_lot_slip add column thawLocation character varying
- seedling_lot_slip add column seedlingDestinationDropUuid uuid
- seedling_lot_slip add column storageSummaryUuid uuid
- seedling_lot_slip add column metadataCreatedby uuid
- seedling_lot_slip add column metadataModifiedby uuid
- seedling_lot_slip add column metadataDeletedby uuid
- seedling_lot_slip add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- seedling_lot_slip add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- seedling_lot_slip add column metadataDeleted boolean NOT NULL DEFAULT false
- seedling_lot_slip add column metadataDeletedon TIMESTAMP
- storage_summary add column availableBoxQty numeric(10,0) NOT NULL DEFAULT '0'
- storage_summary add column transactions jsonb NOT NULL DEFAULT '[]'
- storage_summary data update 

## 2026-08-13 RestructurePackAndStorageSummaryHierarchy
- pack_summary drop column packedTubs 
- pack_summary drop column packedBoxes 
- pack_summary drop column seedlingsPerBox 
- pack_summary drop column packedSeedlings 
- pack_summary drop column oddBox 
- pack_summary drop column shipContainerType 
- storage_summary add column shipContainerType character varying
- storage_summary add column seedlingsPerBox numeric(10,0)
- storage_summary add column packedSeedlings numeric(12,4)
- storage_summary add column packSummaryUuid uuid
- storage_summary add FK packSummaryUuid → pack_summary.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2026-07-27 AddSeedlingToSeedlingFields
- order_cycle_production add column receivedDate TIMESTAMP WITH TIME ZONE
- order_cycle_production add column receivedFromGrower character varying
- order_cycle_production add column temporaryStorage character varying
- order_cycle_production add column estSeedlingQty numeric(10,0)
- order_cycle_production add column qtyOfBoxes numeric(10,0)
- order_cycle_production add column seedlingsPerBox numeric(10,0)
- order_cycle_production add column seedlingsInOddBox numeric(10,0)
- order_cycle_production add column receiveNotes character varying
- grow_request add column originatingClientId character varying
- grow_request add column originatingGrowLotIdType character varying
- grow_request add column originatingGrowLotId character varying(30)
- grow_request add column originatingGrowUnitNotes character varying
- grow_request add column originatingTimeGrown "nmis"."grow_request_originatingtimegrown_enum"
- grow_request add column plannedTransplanter "nmis"."grow_request_plannedtransplanter_enum"
- grow_request add column rootLength numeric(10,2)
- grow_request add column seedlingsInGrowContainer boolean DEFAULT false
- grow_request add column originatingNotes character varying
- grow_request add column sourceType character varying
- grow_request add column nonGrowhubSourceLotId character varying(30)
- grow_request add column nonGrowhubSourceData jsonb
- species_product add column originatingStockType character varying
- species_product add column originatingGrowUnitUuid uuid
- species_product add FK originatingGrowUnitUuid → grow_unit.uuid ON DELETE SET NULL ON UPDATE NO ACTION

## 2026-07-15 AddOrderSplitAndIsCompletedCycle
- order_split create table 
- order_split add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- order_split add column splitDate TIMESTAMP WITH TIME ZONE NOT NULL
- order_split add column parentOrderUuid uuid
- order_split add column childOrderUuid uuid
- order_split add column originCycleUuid uuid
- order_split add column metadataCreatedby uuid
- order_split add column metadataModifiedby uuid
- order_split add column metadataDeletedby uuid
- order_split add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- order_split add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- order_split add column metadataDeleted boolean NOT NULL DEFAULT false
- order_split add column metadataDeletedon TIMESTAMP
- order_cycle add column isCompleted boolean NOT NULL DEFAULT false
- order_split add FK parentOrderUuid → order.uuid
- order_split add FK childOrderUuid → order.uuid
- order_split add FK originCycleUuid → order_cycle.uuid
- order_split add FK metadataCreatedby → user.uuid
- order_split add FK metadataModifiedby → user.uuid
- order_split add FK metadataDeletedby → user.uuid

## 2026-07-10 AddOrderSpeciesProductChangeTable
- order_species_product_change create table 
- order_species_product_change add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- order_species_product_change add column orderUuid uuid
- order_species_product_change add column fromSpeciesProductUuid uuid
- order_species_product_change add column toSpeciesProductUuid uuid
- order_species_product_change add column metadataCreatedby uuid
- order_species_product_change add column metadataModifiedby uuid
- order_species_product_change add column metadataDeletedby uuid
- order_species_product_change add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- order_species_product_change add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- order_species_product_change add column metadataDeleted boolean NOT NULL DEFAULT false
- order_species_product_change add column metadataDeletedon TIMESTAMP
- request_destination add FK shipRequestUuid → ship_request.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- request_destination add FK metadataCreatedby → user.uuid
- request_destination add FK metadataModifiedby → user.uuid
- request_destination add FK metadataDeletedby → user.uuid
- order_species_product_change add FK orderUuid → order.uuid
- order_species_product_change add FK fromSpeciesProductUuid → species_product.uuid
- order_species_product_change add FK toSpeciesProductUuid → species_product.uuid
- order_species_product_change add FK metadataCreatedby → user.uuid
- order_species_product_change add FK metadataModifiedby → user.uuid
- order_species_product_change add FK metadataDeletedby → user.uuid

## 2026-05-27 RenamePackContainerTypeAndAddPackSummaryFields
- lift_request rename column shipContainerType from packContainerType
- pack_summary add column shipContainerType character varying
- pack_summary add column qcIssue boolean DEFAULT false
- pack_summary add column isContract boolean DEFAULT false

## 2026-05-19 AddShipRequestToFulfillment
- ship_request create table 
- ship_request add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- ship_request add column desiredDeliveryDate TIMESTAMP WITH TIME ZONE NOT NULL
- ship_request add column maxTruckLength character varying
- ship_request add column liftGate boolean DEFAULT false
- ship_request add column palletJack boolean DEFAULT false
- ship_request add column thaw boolean DEFAULT false
- ship_request add column notes character varying(1000)
- ship_request add column fulfillmentUuid uuid
- ship_request add column metadataCreatedby uuid
- ship_request add column metadataModifiedby uuid
- ship_request add column metadataDeletedby uuid
- ship_request add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- ship_request add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- ship_request add column metadataDeleted boolean NOT NULL DEFAULT false
- ship_request add column metadataDeletedon TIMESTAMP
- request_destination create table 
- request_destination add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- request_destination add column deliveryLocation character varying NOT NULL
- request_destination add column boxQty integer NOT NULL
- request_destination add column contact character varying
- request_destination add column phone character varying
- request_destination add column longitude numeric(11,8)
- request_destination add column latitude numeric(11,8)
- request_destination add column shipRequestUuid uuid
- request_destination add column metadataCreatedby uuid
- request_destination add column metadataModifiedby uuid
- request_destination add column metadataDeletedby uuid
- request_destination add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- request_destination add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- request_destination add column metadataDeleted boolean NOT NULL DEFAULT false
- request_destination add column metadataDeletedon TIMESTAMP
- ship_request add FK fulfillmentUuid → fulfillment.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- ship_request add FK metadataCreatedby → user.uuid
- ship_request add FK metadataModifiedby → user.uuid
- ship_request add FK metadataDeletedby → user.uuid
- request_destination add FK shipRequestUuid → ship_request.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- request_destination add FK metadataCreatedby → user.uuid
- request_destination add FK metadataModifiedby → user.uuid
- request_destination add FK metadataDeletedby → user.uuid

## 2026-05-08 UpdatePackAndStorageSummaryFields
- storage_summary drop column specificLocation 
- storage_summary drop column coolerOrFreezer 
- storage_summary add column type "nmis"."storage_summary_type_enum"
- storage_summary add column name character varying
- storage_summary add column section character varying
- storage_summary add column area character varying
- storage_summary add column shelf character varying
- storage_summary add column space character varying
- pack_summary add column oddBox numeric(10,0)
- pack_summary add column fieldContainersPacked numeric(10,0)
- pack_summary add column fieldContainersRemaining numeric(10,0)
- pack_summary add column notes text
- storage_summary alter column startDate DROP NOT NULL
- lift_request add column packAll boolean DEFAULT false
- lift_request drop column seedlingStorage 
- lift_request add column seedlingStorage boolean DEFAULT false
- lift_request add column packContainerType character varying

## 2026-05-05 AddHarvestSummary
- harvest_summary create table 
- harvest_summary add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- harvest_summary add column dateCollected TIMESTAMP WITH TIME ZONE NOT NULL
- harvest_summary add column category "nmis"."harvest_summary_category_enum"
- harvest_summary add column rawMaterialQty numeric(14,4)
- harvest_summary add column uom "nmis"."harvest_summary_uom_enum"
- harvest_summary add column activity "nmis"."harvest_summary_activity_enum"
- harvest_summary add column contractor boolean DEFAULT false
- harvest_summary add column isHandHarvest boolean DEFAULT false
- harvest_summary add column cost numeric(10,2)
- harvest_summary add column notes character varying(2000)
- harvest_summary add column fulfillmentUuid uuid
- harvest_summary add column createdSourceLotUuid uuid
- harvest_summary add column metadataCreatedby uuid
- harvest_summary add column metadataModifiedby uuid
- harvest_summary add column metadataDeletedby uuid
- harvest_summary add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- harvest_summary add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- harvest_summary add column metadataDeleted boolean NOT NULL DEFAULT false
- harvest_summary add column metadataDeletedon TIMESTAMP
- source_lot add column originHarvestSummaryUuid uuid
- storage_cost alter column storageType TYPE "nmis"."storage_cost_storagetype_enum" USING "storageType"::"text"::"nmis"."storage_cost_storagetype_enum"
- storage alter column type TYPE "nmis"."storage_cost_storagetype_enum" USING "type"::"text"::"nmis"."storage_cost_storagetype_enum"
- receiving_activity alter column activityType TYPE "nmis"."receiving_activity_activitytype_enum" USING "activityType"::"text"::"nmis"."receiving_activity_activitytype
- grow_unit unique index code, inactive
- role add FK metadataCreatedby → user.uuid
- role add FK metadataModifiedby → user.uuid
- role add FK metadataDeletedby → user.uuid
- user add FK metadataCreatedby → user.uuid
- user add FK metadataModifiedby → user.uuid
- user add FK metadataDeletedby → user.uuid
- storage_cost add FK metadataCreatedby → user.uuid
- storage_cost add FK metadataModifiedby → user.uuid
- storage_cost add FK metadataDeletedby → user.uuid
- storage_pricing add FK metadataCreatedby → user.uuid
- storage_pricing add FK metadataModifiedby → user.uuid
- storage_pricing add FK metadataDeletedby → user.uuid
- report_file add FK metadataCreatedby → user.uuid
- report_file add FK metadataModifiedby → user.uuid
- report_file add FK metadataDeletedby → user.uuid
- source_lot_attachment add FK metadataCreatedby → user.uuid
- source_lot_attachment add FK metadataModifiedby → user.uuid
- source_lot_attachment add FK metadataDeletedby → user.uuid
- bed_row add FK metadataCreatedby → user.uuid
- bed_row add FK metadataModifiedby → user.uuid
- bed_row add FK metadataDeletedby → user.uuid
- production_location add FK metadataCreatedby → user.uuid
- production_location add FK metadataModifiedby → user.uuid
- production_location add FK metadataDeletedby → user.uuid
- order_cycle_production add FK metadataCreatedby → user.uuid
- order_cycle_production add FK metadataModifiedby → user.uuid
- order_cycle_production add FK metadataDeletedby → user.uuid
- lift_summary add FK metadataCreatedby → user.uuid
- lift_summary add FK metadataModifiedby → user.uuid
- lift_summary add FK metadataDeletedby → user.uuid
- lift_request add FK metadataCreatedby → user.uuid
- lift_request add FK metadataModifiedby → user.uuid
- lift_request add FK metadataDeletedby → user.uuid
- storage_summary add FK metadataCreatedby → user.uuid
- storage_summary add FK metadataModifiedby → user.uuid
- storage_summary add FK metadataDeletedby → user.uuid
- processing_activity add FK metadataCreatedby → user.uuid
- processing_activity add FK metadataModifiedby → user.uuid
- processing_activity add FK metadataDeletedby → user.uuid
- receiving_activity add FK metadataCreatedby → user.uuid
- receiving_activity add FK metadataModifiedby → user.uuid
- receiving_activity add FK metadataDeletedby → user.uuid
- source_shipment add FK destinationClientUuid → client.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- source_shipment add FK metadataCreatedby → user.uuid
- source_shipment add FK metadataModifiedby → user.uuid
- source_shipment add FK metadataDeletedby → user.uuid
- lot_slip add FK metadataCreatedby → user.uuid
- lot_slip add FK metadataModifiedby → user.uuid
- lot_slip add FK metadataDeletedby → user.uuid
- source_lot_test add FK metadataCreatedby → user.uuid
- source_lot_test add FK metadataModifiedby → user.uuid
- source_lot_test add FK metadataDeletedby → user.uuid
- storage add FK metadataCreatedby → user.uuid
- storage add FK metadataModifiedby → user.uuid
- storage add FK metadataDeletedby → user.uuid

## 2026-04-22 AddLiftActivitiesToLiftSummary
- lift_summary_location create table 
- lift_summary_location add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- lift_summary_location add column liftedStartBedFoot numeric(5,0)
- lift_summary_location add column liftedEndBedFoot numeric(5,0)
- lift_summary_location add column liftedContainers numeric(5,0)
- lift_summary_location add column liftSummaryUuid uuid
- lift_summary_location add column productionLocationUuid uuid
- lift_summary_location add column metadataCreatedby uuid
- lift_summary_location add column metadataModifiedby uuid
- lift_summary_location add column metadataDeletedby uuid
- lift_summary_location add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- lift_summary_location add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- lift_summary_location add column metadataDeleted boolean NOT NULL DEFAULT false
- lift_summary_location add column metadataDeletedon TIMESTAMP
- lift_summary drop column liftedSpaces 
- lift_summary drop column fieldTubQuantity 
- lift_summary drop column estSeedlingsPerTub 
- lift_summary add column liftActivity "nmis"."lift_summary_liftactivity_enum"
- lift_summary add column contractor boolean DEFAULT true
- lift_summary add column temporaryStorage character varying
- lift_summary add column fieldContainerType "nmis"."lift_summary_fieldcontainertype_enum"
- lift_summary add column fieldContainerQuantity numeric(10,2)
- lift_summary add column estSeedlingsPerFieldContainer numeric(10,0)
- lift_summary add column estSeedlingQuantity numeric(10,0)
- lift_summary add column qcIssue boolean DEFAULT false
- lift_summary drop column notes 
- lift_summary add column notes character varying(500)
- lift_summary_location add FK liftSummaryUuid → lift_summary.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- lift_summary_location add FK productionLocationUuid → production_location.uuid
- lift_summary_location add FK metadataCreatedby → user.uuid
- lift_summary_location add FK metadataModifiedby → user.uuid
- lift_summary_location add FK metadataDeletedby → user.uuid

## 2026-04-15 AddFieldsToLiftRequest
- lift_request add column liftActivity "nmis"."lift_request_liftactivity_enum"
- lift_request data update 
- lift_request alter column liftActivity SET NOT NULL
- lift_request add column expectedShipDate TIMESTAMP WITH TIME ZONE
- lift_request add column seedlingStorage character varying
- lift_request add column estimatedSeedlingsPerBox integer
- lift_request add column estimatedPackingBoxes integer
- lift_request add column minimumHeight numeric(10,2)
- lift_request add column maximumHeight numeric(10,2)
- lift_request add column caliper numeric(10,2)
- lift_request add column minimumRootLength numeric(10,2)
- lift_request add column pruneTarget numeric(10,2)
- lift_request add column note character varying(500)

## 2026-03-23 ConvertStratTimeEnumToText
- order_cycle_planning alter column stratTime TYPE text USING "stratTime"::text
- order_cycle_planning alter column stratTime TYPE integer USING ( CASE "stratTime" WHEN '0' THEN 0 WHEN '1' THEN 1 WHEN '2' THEN 28 WHEN '3' THEN 42 WHEN '4' THEN 63

## 2026-03-15 AddStratificationDataToSourceLotTest
- source_lot_test alter column testType TYPE "nmis"."source_lot_test_testtype_enum" USING "testType"::"text"::"nmis"."source_lot_test_testtype_enum"
- source_lot_test add column stratificationData jsonb

## 2026-03-09 StorageAddEnumTypeAndColumns
- storage alter column type TYPE "nmis"."storage_type_enum" USING "type"::"text"::"nmis"."storage_type_enum"
- storage_cost alter column storageType TYPE "nmis"."storage_type_enum" USING "storageType"::"text"::"nmis"."storage_type_enum"
- storage add column endDate timestamptz DEFAULT NULL
- storage add column name varchar DEFAULT NULL

## 2026-03-06 AddS3FilePathToFileEntities
- source_lot_attachment add column fileS3filepath character varying
- report_file add column fileS3filepath character varying
- source_lot_attachment alter column fileData DROP NOT NULL
- report_file alter column fileData DROP NOT NULL

## 2026-02-25 AddNewColumnForSamplesOnTest
- source_lot_test add column testSamples numeric array NOT NULL DEFAULT '{}'

## 2026-02-24 GrowUnitUniqueisActiveTrueWithCode
- grow_unit unique index code, inactive

## 2026-01-13 AddAgencyEnumNewTypes
- client alter column agency DROP DEFAULT
- client alter column agency TYPE "nmis"."client_agency_enum" USING "agency"::"text"::"nmis"."client_agency_enum"
- client alter column agency SET DEFAULT 'AG'

## 2026-01-07 LotBalanceDefaultNull
- source_lot alter column lotBalance DROP NOT NULL
- source_lot alter column lotBalance DROP DEFAULT

## 2025-08-07 UniqueInvoiceNumber
- billing_file add unique "invoiceNumber"

## 2025-07-22 InHouseTestingActivity
- processing_activity alter column activityType TYPE "nmis"."processing_activity_activitytype_enum" USING "activityType"::"text"::"nmis"."processing_activity_activityty

## 2025-06-20 AddRetestEnum
- lot_slip alter column activity TYPE "nmis"."lot_slip_activity_enum" USING "activity"::"text"::"nmis"."lot_slip_activity_enum"

## 2025-05-02 DropCascadeOnCountInv
- inventory_progress add FK latestCountInventoryUuid → inventory_progress.uuid

## 2025-04-30 AddSizeSpecInventory
- size_spec_inventory create table 
- size_spec_inventory add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- size_spec_inventory add column samples jsonb NOT NULL DEFAULT '[]'
- size_spec_inventory add column metadataCreatedby uuid
- size_spec_inventory add column metadataModifiedby uuid
- size_spec_inventory add column metadataDeletedby uuid
- size_spec_inventory add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- size_spec_inventory add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- size_spec_inventory add column metadataDeleted boolean NOT NULL DEFAULT false
- size_spec_inventory add column metadataDeletedon TIMESTAMP
- inventory_progress add column sizeSpecInventoryUuid uuid
- inventory_progress add unique "sizeSpecInventoryUuid"
- size_spec_inventory add FK metadataCreatedby → user.uuid
- size_spec_inventory add FK metadataModifiedby → user.uuid
- size_spec_inventory add FK metadataDeletedby → user.uuid
- inventory_progress add FK sizeSpecInventoryUuid → size_spec_inventory.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2025-04-29 addAltSpecInventoryFields
- inventory_progress add column totalAtSpec numeric(10,2)
- inventory_progress add column totalAtAltSpec numeric(10,2)
- inventory_progress add column percentAtSpec numeric(10,2)
- inventory_progress add column percentAtAltSpec numeric(10,2)
- inventory_progress add column altNetInventory numeric(10,2)

## 2025-04-28 addSizeInventory
- size_inventory create table 
- size_inventory add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- size_inventory add column samples jsonb NOT NULL DEFAULT '[]'
- size_inventory add column metadataCreatedby uuid
- size_inventory add column metadataModifiedby uuid
- size_inventory add column metadataDeletedby uuid
- size_inventory add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- size_inventory add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- size_inventory add column metadataDeleted boolean NOT NULL DEFAULT false
- size_inventory add column metadataDeletedon TIMESTAMP
- inventory_progress add column sizeInventoryUuid uuid
- inventory_progress add unique "sizeInventoryUuid"
- inventory_progress add column latestCountInventoryUuid uuid
- inventory_progress add column altGrowthHeightMinimumheight numeric(10,2)
- inventory_progress add column altGrowthHeightMaximumheight numeric(10,2)
- inventory_progress add column altGrowthHeightMinimumstemcaliper numeric(10,2)
- size_inventory add FK metadataCreatedby → user.uuid
- size_inventory add FK metadataModifiedby → user.uuid
- size_inventory add FK metadataDeletedby → user.uuid
- inventory_progress add FK sizeInventoryUuid → size_inventory.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- inventory_progress add FK latestCountInventoryUuid → inventory_progress.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2025-04-09 AddInventoryCount
- count_inventory create table 
- count_inventory add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- count_inventory add column actualCount boolean
- count_inventory add column samples jsonb NOT NULL DEFAULT '[]'
- count_inventory add column metadataCreatedby uuid
- count_inventory add column metadataModifiedby uuid
- count_inventory add column metadataDeletedby uuid
- count_inventory add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- count_inventory add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- count_inventory add column metadataDeleted boolean NOT NULL DEFAULT false
- count_inventory add column metadataDeletedon TIMESTAMP
- inventory_progress drop column sampleSize 
- inventory_progress drop column seedlingsAtSpecifications 
- inventory_progress drop column cullFactor 
- inventory_progress drop column shipFactor 
- inventory_progress add column sampledBy character varying
- inventory_progress add column type "nmis"."inventory_progress_type_enum" NOT NULL DEFAULT 'it3'
- inventory_progress add column maxCV numeric(10,2)
- inventory_progress add column survival numeric(10,2)
- inventory_progress add column target numeric(10,2)
- inventory_progress add column shippable numeric(10,2)
- inventory_progress add column totalContainersPlanted numeric(10,2)
- inventory_progress add column totalContainersSampled numeric(10,2)
- inventory_progress add column totalCount numeric(10,2)
- inventory_progress add column seedlingsPerContainer numeric(10,2)
- inventory_progress add column standardDeviation numeric(10,2)
- inventory_progress add column coefficientOfVariation numeric(10,2)
- inventory_progress add column countInventoryUuid uuid
- inventory_progress add unique "countInventoryUuid"
- inventory_progress add column inventoryCycleUuid uuid
- count_inventory add FK metadataCreatedby → user.uuid
- count_inventory add FK metadataModifiedby → user.uuid
- count_inventory add FK metadataDeletedby → user.uuid
- inventory_progress add FK countInventoryUuid → count_inventory.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- inventory_progress add FK inventoryCycleUuid → product_inventory_cycle.uuid

## 2025-03-25 AddSourceAccessIdField
- processing_activity add column accessLegacyId character varying
- source_lot alter column seedYear DROP NOT NULL
- receiving_activity add column accessLegacyId character varying
- source_shipment add column accessLegacyId character varying
- lot_slip add column accessLegacyId character varying
- source_lot_test add column accessLegacyId character varying
- storage add column accessLegacyId character varying

## 2025-03-07 AddProductDescriptionAddInField
- species_product add column descriptionAddIn character varying

## 2025-03-05 addSourceDetailsAccessField
- source_lot add column accessLegacyId character varying
- client add column accessLegacyId character varying

## 2025-02-26 AddBayTables
- grow_table create table 
- grow_table add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- grow_table add column nursery "nmis"."grow_table_nursery_enum" NOT NULL
- grow_table add column name character varying NOT NULL
- grow_table add column length numeric(10,2)
- grow_table add column width numeric(10,2)
- grow_table add column metadataCreatedby uuid
- grow_table add column metadataModifiedby uuid
- grow_table add column metadataDeletedby uuid
- grow_table add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- grow_table add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- grow_table add column metadataDeleted boolean NOT NULL DEFAULT false
- grow_table add column metadataDeletedon TIMESTAMP
- bay_table_row create table 
- bay_table_row add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- bay_table_row add column numberOfTables numeric(10,0)
- bay_table_row add column bayUuid uuid
- bay_table_row add column tableUuid uuid
- bay_table_row add column metadataCreatedby uuid
- bay_table_row add column metadataModifiedby uuid
- bay_table_row add column metadataDeletedby uuid
- bay_table_row add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- bay_table_row add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- bay_table_row add column metadataDeleted boolean NOT NULL DEFAULT false
- bay_table_row add column metadataDeletedon TIMESTAMP
- grow_table add FK metadataCreatedby → user.uuid
- grow_table add FK metadataModifiedby → user.uuid
- grow_table add FK metadataDeletedby → user.uuid
- bay_table_row add FK bayUuid → bay.uuid
- bay_table_row add FK tableUuid → grow_table.uuid
- bay_table_row add FK metadataCreatedby → user.uuid
- bay_table_row add FK metadataModifiedby → user.uuid
- bay_table_row add FK metadataDeletedby → user.uuid
- production_location add FK bayUuid → bay.uuid

## 2025-02-24 AddLocationToProduction
- bed_row rename table from grow_location
- bay create table 
- bay add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- bay add column nursery "nmis"."bay_nursery_enum" NOT NULL
- bay add column greenhouse character varying
- bay add column bay character varying
- bay add column width numeric(10,2)
- bay add column length numeric(10,2)
- bay add column metadataCreatedby uuid
- bay add column metadataModifiedby uuid
- bay add column metadataDeletedby uuid
- bay add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- bay add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- bay add column metadataDeleted boolean NOT NULL DEFAULT false
- bay add column metadataDeletedon TIMESTAMP
- bed_row add column transactions jsonb NOT NULL DEFAULT '[]'
- bed_row alter column nursery TYPE "nmis"."bed_row_nursery_enum" USING "nursery"::"text"::"nmis"."bed_row_nursery_enum"
- bed_row alter column type TYPE "nmis"."bed_row_type_enum" USING "type"::"text"::"nmis"."bed_row_type_enum"
- bed_row unique index nursery, type, area, section, row
- bay unique index nursery, greenhouse, bay
- order_cycle_production add column isContract boolean NOT NULL DEFAULT false
- order_cycle_production add column useRisers boolean NOT NULL DEFAULT false
- production_location create table 
- production_location add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- production_location add column type "nmis"."production_location_type_enum" NOT NULL
- production_location add column area character varying
- production_location add column section character varying
- production_location add column unit character varying
- production_location add column startBedFeet numeric(5,0)
- production_location add column endBedFeet numeric(5,0)
- production_location add column startRiser numeric(6,1)
- production_location add column endRiser numeric(6,1)
- production_location add column riserDistance numeric(6,1)
- production_location add column bedFeetPlanted numeric(5,0)
- production_location add column startBench character varying(10)
- production_location add column endBench character varying(10)
- production_location add column totalContainersPlanted numeric(5,0)
- production_location add column notes character varying(150)
- production_location add column cycleProductionUuid uuid
- production_location add column bedRowUuid uuid
- production_location add column bayUuid uuid
- production_location add column metadataCreatedby uuid
- production_location add column metadataModifiedby uuid
- production_location add column metadataDeletedby uuid
- production_location add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- production_location add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- production_location add column metadataDeleted boolean NOT NULL DEFAULT false
- production_location add column metadataDeletedon TIMESTAMP
- order_cycle_production drop column growLocations 
- bay add FK metadataCreatedby → user.uuid
- bay add FK metadataModifiedby → user.uuid
- bay add FK metadataDeletedby → user.uuid
- production_location add FK cycleProductionUuid → order_cycle_production.uuid
- production_location add FK bedRowUuid → bed_row.uuid
- production_location add FK bayUuid → bay.uuid

## 2025-02-13 AddOyjordSettingsTable
- oyjord_setting create table 
- oyjord_setting add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- oyjord_setting add column oyjordId character varying NOT NULL
- oyjord_setting add column gear integer
- oyjord_setting add column zMax integer
- oyjord_setting add column turns numeric(10,2)
- oyjord_setting add column travelPerRevolution numeric(10,2)
- oyjord_setting add column notes character varying
- oyjord_setting add column nursery "nmis"."oyjord_setting_nursery_enum" NOT NULL
- oyjord_setting add column metadataCreatedby uuid
- oyjord_setting add column metadataModifiedby uuid
- oyjord_setting add column metadataDeletedby uuid
- oyjord_setting add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- oyjord_setting add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- oyjord_setting add column metadataDeleted boolean NOT NULL DEFAULT false
- oyjord_setting add column metadataDeletedon TIMESTAMP
- oyjord_setting unique index oyjordId, gear, zMax, turns, nursery
- order_cycle_production add column oyjordSettingUuid uuid
- oyjord_setting add FK metadataCreatedby → user.uuid
- oyjord_setting add FK metadataModifiedby → user.uuid
- oyjord_setting add FK metadataDeletedby → user.uuid
- order_cycle_production add FK oyjordSettingUuid → oyjord_setting.uuid
- order_cycle_production alter column withdrawalDate DROP NOT NULL
- order_cycle_production alter column withdrawalDate DROP DEFAULT

## 2025-02-11 ProductionSeedPrep
- order_cycle_production add column barerootSpecificationsFunnelsetting numeric(10,4)
- order_cycle_production add column barerootSpecificationsTotalimbibedseedweight numeric(10,3)
- order_cycle_production add column barerootSpecificationsRevolutions numeric(10,0)
- order_cycle_production add column barerootSpecificationsDroppedweight numeric(10,3)
- order_cycle_production add column barerootSpecificationsAvgimbibedseedweightperrevolution numeric(10,3)
- order_cycle_production add column barerootSpecificationsEstimatedfeetperrevolution numeric(10,3)
- order_cycle_production add column barerootSpecificationsCalibrationnotes character varying
- order_cycle_production add column barerootSpecificationsSeederid numeric(1)
- order_cycle_planning drop column barerootSpecificationsRevolutions 
- order_cycle_planning drop column barerootSpecificationsEstimatedfeetperrevolution 
- order_cycle_planning drop column barerootSpecificationsFunnelsetting 
- order_cycle_planning drop column barerootSpecificationsSeedlingsperbedfoot 
- order_cycle_planning drop column barerootSpecificationsNurseryfactors 
- order_cycle_planning drop column barerootSpecificationsTotalimbibedseedweight 
- order_cycle_planning drop column barerootSpecificationsAvgimbibedseedweightperrevolution 
- order_cycle_planning drop column barerootSpecificationsEstimatednumberofbedfeet 
- order_cycle_planning drop column barerootSpecificationsBareroottype 

## 2025-01-27 AddTreeImpFieldsToSource
- source_lot add column seedOrchardName character varying(100)
- source_lot add column orchardSubUnit character varying(20)
- source_lot add column standNumber character varying(20)
- source_lot add column treeNumber character varying(20)
- source_lot add column pedigree character varying(20)
- source_lot add column cycle character varying(10)
- source_lot add column resistanceType character varying(20)

## 2025-01-10 manualOrderCycleCreation
- order_cycle create table copied from order
- order_cycle drop column growNursery 
- order_cycle add column cycleIndex numeric NOT NULL DEFAULT 0
- order_cycle add column orderUuid uuid
- order_cycle add column growCycleUuid uuid
- order_cycle data update 
- order_cycle rename column cyclePlanningUuid from growRequestUuid
- order_cycle add unique "cyclePlanningUuid"
- order_cycle alter column uuid SET NOT NULL
- order_cycle add primary key "uuid"
- order_cycle alter column uuid SET DEFAULT uuid_generate_v4()
- order_cycle alter column plantedBalance SET NOT NULL
- order_cycle alter column plantedBalance SET DEFAULT '0'
- order_cycle alter column liftedBalance SET NOT NULL
- order_cycle alter column liftedBalance SET DEFAULT '0'
- order_cycle alter column packedBalance SET NOT NULL
- order_cycle alter column packedBalance SET DEFAULT '0'
- order_cycle alter column transactions SET NOT NULL
- order_cycle alter column transactions SET DEFAULT '[]'
- order_cycle alter column status SET DEFAULT '1'
- order_cycle add unique "productionUuid"
- order_cycle add unique "fulfillmentUuid"
- order_cycle alter column metadataCreatedon SET NOT NULL
- order_cycle alter column metadataCreatedon SET DEFAULT now()
- order_cycle alter column metadataModifiedon SET NOT NULL
- order_cycle alter column metadataModifiedon SET DEFAULT now()
- order_cycle alter column metadataDeleted SET NOT NULL
- order_cycle alter column metadataDeleted SET DEFAULT false
- order_cycle_planning create table copied from grow_request
- order_cycle_planning drop column growLotId 
- order_cycle_planning drop column contact 
- order_cycle_planning drop column requestedSeedlingQuantity 
- order_cycle_planning drop column estimatedCost 
- order_cycle_planning drop column notes 
- order_cycle_planning drop column clientUuid 
- order_cycle_planning drop column growthHeightMinimumheight 
- order_cycle_planning drop column growthHeightMaximumheight 
- order_cycle_planning drop column growthHeightMinimumstemcaliper 
- order_cycle_planning drop column rootLengthMinimumheight 
- order_cycle_planning drop column rootLengthMaximumheight 
- order_cycle_planning drop column rootLengthPrunetarget 
- order_cycle_planning drop column speciesProductUuid 
- order_cycle_planning drop column targetLiftYear 
- order_cycle_planning add column thinningProbability numeric(10,2)
- order_cycle_planning add column cellsFilled numeric(10,2)
- order_cycle_planning add column desiredDensity numeric(10,2)
- order_cycle_planning add column containerSurvival numeric(10,2)
- order_cycle_planning add column seedPerCell numeric(10,1)
- order_cycle_planning add column estimatedContainer numeric(10,4)
- order_cycle_planning add column adjustedCalculatedSeedQuantity numeric(10,4)
- order_cycle_planning add column adjustedCalculatedSpaceQuantity numeric(10,4)
- order_cycle_planning alter column uuid SET NOT NULL
- order_cycle_planning add primary key "uuid"
- order_cycle_planning alter column uuid SET DEFAULT uuid_generate_v4()
- order_cycle_planning alter column sourceLotNursery TYPE "nmis"."order_cycle_planning_sourcelotnursery_enum" USING "sourceLotNursery"::"text"::"nmis"."order_cycle_planning_
- order_cycle_planning alter column stratTime TYPE "nmis"."order_cycle_planning_strattime_enum" USING "stratTime"::"text"::"nmis"."order_cycle_planning_strattime_enum
- order_cycle_planning alter column stockType TYPE "nmis"."order_cycle_planning_stocktype_enum" USING "stockType"::"text"::"nmis"."order_cycle_planning_stocktype_enum
- order_cycle_planning alter column sowOrTransplant SET NOT NULL
- order_cycle_planning alter column sowOrTransplant SET DEFAULT '-1'
- order_cycle_planning alter column metadataCreatedon SET NOT NULL
- order_cycle_planning alter column metadataCreatedon SET DEFAULT now()
- order_cycle_planning alter column metadataModifiedon SET NOT NULL
- order_cycle_planning alter column metadataModifiedon SET DEFAULT now()
- order_cycle_planning alter column metadataDeleted SET NOT NULL
- order_cycle_planning alter column metadataDeleted SET DEFAULT false
- order_cycle_planning alter column barerootSpecificationsBareroottype TYPE "nmis"."order_cycle_planning_barerootspecificationsbareroottype_enum" USING "barerootSpecificationsBareroottype"::"
- order_cycle_planning alter column containerSpecificationsContainersize TYPE "nmis"."order_cycle_planning_containerspecificationscontainersize_enum" USING "containerSpecificationsContainersize
- order_cycle_planning add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- order_cycle_production rename table from order_production
- order_cycle add FK orderUuid → order.uuid
- order_cycle add FK cyclePlanningUuid → order_cycle_planning.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- order_cycle add FK productionUuid → order_cycle_production.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- order_cycle add FK fulfillmentUuid → fulfillment.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- lot_slip rename column orderCycleUuid from orderUuid
- lot_slip add FK orderCycleUuid → order_cycle.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- inventory_progress rename column orderCycleUuid from orderUuid
- inventory_progress add FK orderCycleUuid → order_cycle.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- order drop column productionUuid 
- order drop column plantedBalance 
- order drop column liftedBalance 

## 2024-12-12 SeedFactorClientToPartialString
- seed_factor rename column clientPartial from clientUuid
- seed_factor drop column clientPartial 
- seed_factor add column clientPartial character varying
- seed_factor unique index clientPartial, speciesProductUuid, minElevation, maxElevation, minGermination, maxGermination

## 2024-11-13 SpeciesProductParentChild
- species_product add column holdoverReason "nmis"."species_product_holdoverreason_enum" NOT NULL DEFAULT 'HR0'
- species_product add column parentSpeciesProductUuid uuid
- species_product add FK parentSpeciesProductUuid → species_product.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2024-11-01 AddInventoryFieldsToProductCycle
- product_inventory_cycle create table 
- product_inventory_cycle add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- product_inventory_cycle add column timeInGrowCycle "nmis"."product_inventory_cycle_timeingrowcycle_enum"
- product_inventory_cycle add column maxCV numeric(10,0)
- product_inventory_cycle add column survival numeric(10,2) DEFAULT '100'
- product_inventory_cycle add column shippable numeric(10,2) DEFAULT '100'
- product_inventory_cycle add column target numeric(10,2) DEFAULT '100'
- product_inventory_cycle add column sizedSeedlingsPer numeric(10,0)
- product_inventory_cycle add column legacyData jsonb
- product_inventory_cycle add column legacyId character varying
- product_inventory_cycle add column growCycleUuid uuid
- product_inventory_cycle add column metadataCreatedby uuid
- product_inventory_cycle add column metadataModifiedby uuid
- product_inventory_cycle add column metadataDeletedby uuid
- product_inventory_cycle add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- product_inventory_cycle add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- product_inventory_cycle add column metadataDeleted boolean NOT NULL DEFAULT false
- product_inventory_cycle add column metadataDeletedon TIMESTAMP
- grow_cycle alter column timeGrown TYPE "nmis"."grow_cycle_timegrown_enum" USING "timeGrown"::"text"::"nmis"."grow_cycle_timegrown_enum"
- product_inventory_cycle add FK growCycleUuid → grow_cycle.uuid
- product_inventory_cycle add FK metadataCreatedby → user.uuid
- product_inventory_cycle add FK metadataModifiedby → user.uuid
- product_inventory_cycle add FK metadataDeletedby → user.uuid

## 2024-10-29 AddProductAltSpecs
- species_product add column funnelSettings numeric(10,0)
- species_product add column minUnitsPerRevolutions numeric(10,2)
- species_product add column maxUnitsPerRevolutions numeric(10,2)
- species_product add column altGrowthHeightMinimumheight numeric(10,2)
- species_product add column altGrowthHeightMaximumheight numeric(10,2)
- species_product add column altGrowthHeightMinimumstemcaliper numeric(10,2)

## 2024-10-25 AlterUserTableNoSoftDelete


## 2024-10-23 AdjustYearsGrownEnumForNoNumeric
- grow_cycle alter column timeGrown TYPE "nmis"."grow_cycle_timegrown_enum" USING "timeGrown"::"text"::"nmis"."grow_cycle_timegrown_enum"

## 2024-10-11 AlterLotBalanceDefaultTo0
- source_lot alter column lotBalance SET NOT NULL
- source_lot alter column lotBalance SET DEFAULT '0'

## 2024-10-02 AddLotIndex
- source_lot unique index legacyId, storageFacility

## 2024-09-13 AddEsriGeoDataToLocation
- bed_row drop column endCoordinate 
- bed_row drop column startCoordinate 
- bed_row add column sowDirection character varying
- bed_row add column group character varying
- bed_row add column geometry geography(Geometry,4326)
- bed_row add column centerline geography(Geometry,4326)

## 2024-09-04 AddGrowCycles
- grow_cycle create table 
- grow_cycle add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- grow_cycle add column cycleIndex numeric NOT NULL
- grow_cycle add column stockType "nmis"."grow_cycle_stocktype_enum" NOT NULL
- grow_cycle add column timeGrown "nmis"."grow_cycle_timegrown_enum"
- grow_cycle add column beginSeason "nmis"."grow_cycle_beginseason_enum"
- grow_cycle add column endSeason "nmis"."grow_cycle_endseason_enum"
- grow_cycle add column desiredDensity numeric(10,2)
- grow_cycle add column maximumDensity numeric(10,2)
- grow_cycle add column containerFactor numeric(10,2)
- grow_cycle add column legacyData jsonb
- grow_cycle add column legacyId character varying
- grow_cycle add column speciesProductUuid uuid
- grow_cycle add column growUnitUuid uuid
- grow_cycle add column metadataCreatedby uuid
- grow_cycle add column metadataModifiedby uuid
- grow_cycle add column metadataDeletedby uuid
- grow_cycle add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- grow_cycle add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- grow_cycle add column metadataDeleted boolean NOT NULL DEFAULT false
- grow_cycle add column metadataDeletedon TIMESTAMP
- grow_cycle add FK speciesProductUuid → species_product.uuid
- grow_cycle add FK growUnitUuid → grow_unit.uuid
- grow_cycle add FK metadataCreatedby → user.uuid
- grow_cycle add FK metadataModifiedby → user.uuid
- grow_cycle add FK metadataDeletedby → user.uuid

## 2024-09-04 AddGrowUnitTable
- grow_unit create table 
- grow_unit add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- grow_unit add column stockType "nmis"."grow_unit_stocktype_enum" NOT NULL
- grow_unit add column code character varying
- grow_unit add column description character varying NOT NULL
- grow_unit add column cellDiameter numeric(10,2)
- grow_unit add column cellDepth numeric(10,2)
- grow_unit add column cellRows numeric(10,2)
- grow_unit add column cellColumns numeric(10,2)
- grow_unit add column cellsPerContainer numeric(10,2)
- grow_unit add column areaPerContainer numeric(10,2)
- grow_unit add column width numeric(10,2)
- grow_unit add column length numeric(10,2)
- grow_unit add column height numeric(10,2)
- grow_unit add column drillRows numeric(10,2)
- grow_unit add column inactive boolean NOT NULL DEFAULT false
- grow_unit add column metadataCreatedby uuid
- grow_unit add column metadataModifiedby uuid
- grow_unit add column metadataDeletedby uuid
- grow_unit add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- grow_unit add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- grow_unit add column metadataDeleted boolean NOT NULL DEFAULT false
- grow_unit add column metadataDeletedon TIMESTAMP
- grow_unit add FK metadataCreatedby → user.uuid
- grow_unit add FK metadataModifiedby → user.uuid
- grow_unit add FK metadataDeletedby → user.uuid

## 2024-08-28 AddFieldLocations
- bed_row create table 
- bed_row add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- bed_row add column nursery "nmis"."grow_location_nursery_enum" NOT NULL
- bed_row add column type "nmis"."grow_location_type_enum" NOT NULL
- bed_row add column area character varying(2) NOT NULL
- bed_row add column section character varying(2) NOT NULL DEFAULT ''
- bed_row add column row character varying(2) NOT NULL
- bed_row add column startCoordinate geography(Point,4326)
- bed_row add column endCoordinate geography(Point,4326)
- bed_row add column totalBedFeet numeric(4,0)
- bed_row add column legacyData jsonb
- bed_row add column legacyId character varying
- bed_row add column metadataCreatedby uuid
- bed_row add column metadataModifiedby uuid
- bed_row add column metadataDeletedby uuid
- bed_row add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- bed_row add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- bed_row add column metadataDeleted boolean NOT NULL DEFAULT false
- bed_row add column metadataDeletedon TIMESTAMP
- bed_row unique index nursery, type, area, section, row
- bed_row add FK metadataCreatedby → user.uuid
- bed_row add FK metadataModifiedby → user.uuid
- bed_row add FK metadataDeletedby → user.uuid

## 2024-08-22 AddSowFactorsToSpeciesProduct
- seed_factor create table 
- seed_factor add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- seed_factor add column minElevation character varying
- seed_factor add column maxElevation character varying NOT NULL
- seed_factor add column minGermination character varying NOT NULL
- seed_factor add column maxGermination character varying NOT NULL
- seed_factor add column factor1 numeric(10,2)
- seed_factor add column factor2 numeric(10,2)
- seed_factor add column factor3 numeric(10,2)
- seed_factor add column legacyData jsonb
- seed_factor add column legacyId character varying
- seed_factor add column clientUuid uuid
- seed_factor add column speciesProductUuid uuid
- seed_factor add column metadataCreatedby uuid
- seed_factor add column metadataModifiedby uuid
- seed_factor add column metadataDeletedby uuid
- seed_factor add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- seed_factor add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- seed_factor add column metadataDeleted boolean NOT NULL DEFAULT false
- seed_factor add column metadataDeletedon TIMESTAMP
- seed_factor unique index clientUuid, speciesProductUuid, minElevation, maxElevation, minGermination, maxGermination
- grow_request add column seedFactorUuid uuid
- seed_factor add FK clientUuid → client.uuid
- seed_factor add FK speciesProductUuid → species_product.uuid
- grow_request add FK seedFactorUuid → seed_factor.uuid

## 2024-08-15 AlterGrowReqAddCalcFields
- grow_request add column adjustedQuantityRequested numeric(10,2)
- grow_request add column seedPerPound numeric(10,2)
- grow_request add column purityPercent numeric(10,2)
- grow_request add column germPercent numeric(10,2)

## 2024-08-12 AddGrowReqPastInventoryField
- grow_request rename column pastInventoryPerformance from overSowPercent
- grow_request alter column plannedSowDate SET DEFAULT '"2000-01-01T05:00:00.000Z"'

## 2024-07-31 AlignGrowRequestWithSpeciesProduct
- species_product alter column beginType TYPE "nmis"."species_product_begintype_enum" USING "beginType"::"text"::"nmis"."species_product_begintype_enum"
- species_product alter column endType TYPE "nmis"."species_product_endtype_enum" USING "endType"::"text"::"nmis"."species_product_endtype_enum"
- grow_request alter column requestDate DROP NOT NULL
- grow_request alter column plannedSowDate DROP NOT NULL
- grow_request alter column plannedSowDate SET DEFAULT '"2000-01-01T05:00:00.000Z"'

## 2024-07-26 AlterSpeciesProduct
- species_product drop column minimumHeight 
- species_product drop column maximumHeight 
- species_product drop column minimumStemCaliper 
- species_product drop column status 
- species_product drop column productUuid 
- species_product drop column beginSeason 
- species_product drop column endSeason 
- species_product add column nursery "nmis"."species_product_nursery_enum"
- species_product add column totalFiscalYears numeric
- species_product add column nonTraditional boolean NOT NULL DEFAULT false
- species_product add column inactive boolean NOT NULL DEFAULT false
- species_product add column beginType "nmis"."species_product_begintype_enum" NOT NULL
- species_product add column endType "nmis"."species_product_endtype_enum" NOT NULL
- species_product add column endUnitOfMeasurement "nmis"."species_product_endunitofmeasurement_enum" NOT NULL
- species_product add column growthHeightMinimumheight numeric(10,2)
- species_product add column growthHeightMaximumheight numeric(10,2)
- species_product add column growthHeightMinimumstemcaliper numeric(10,2)
- species_product add column rootLengthMinimumheight numeric(10,2)
- species_product add column rootLengthMaximumheight numeric(10,2)
- species_product add column rootLengthPrunetarget numeric(10,2)

## 2024-05-28 AltarMetadataNames
- billing_file rename column metadataCreatedby from metadataCreatedBy
- billing_file rename column metadataModifiedby from metadataModifiedBy
- billing_file rename column metadataDeletedby from metadataDeletedBy
- client rename column metadataCreatedby from metadataCreatedBy
- client rename column metadataModifiedby from metadataModifiedBy
- client rename column metadataDeletedby from metadataDeletedBy
- fulfillment rename column metadataCreatedby from metadataCreatedBy
- fulfillment rename column metadataModifiedby from metadataModifiedBy
- fulfillment rename column metadataDeletedby from metadataDeletedBy
- grow_request rename column metadataCreatedby from metadataCreatedBy
- grow_request rename column metadataModifiedby from metadataModifiedBy
- grow_request rename column metadataDeletedby from metadataDeletedBy
- inventory_progress rename column metadataCreatedby from metadataCreatedBy
- inventory_progress rename column metadataModifiedby from metadataModifiedBy
- inventory_progress rename column metadataDeletedby from metadataDeletedBy
- lift_request rename column metadataCreatedby from metadataCreatedBy
- lift_request rename column metadataModifiedby from metadataModifiedBy
- lift_request rename column metadataDeletedby from metadataDeletedBy
- lift_summary rename column metadataCreatedby from metadataCreatedBy
- lift_summary rename column metadataModifiedby from metadataModifiedBy
- lift_summary rename column metadataDeletedby from metadataDeletedBy
- lot_slip rename column metadataCreatedby from metadataCreatedBy
- lot_slip rename column metadataModifiedby from metadataModifiedBy
- lot_slip rename column metadataDeletedby from metadataDeletedBy
- order rename column metadataCreatedby from metadataCreatedBy
- order rename column metadataModifiedby from metadataModifiedBy
- order rename column metadataDeletedby from metadataDeletedBy
- order_cycle_production rename column metadataCreatedby from metadataCreatedBy
- order_cycle_production rename column metadataModifiedby from metadataModifiedBy
- order_cycle_production rename column metadataDeletedby from metadataDeletedBy
- pack_summary rename column metadataCreatedby from metadataCreatedBy
- pack_summary rename column metadataModifiedby from metadataModifiedBy
- pack_summary rename column metadataDeletedby from metadataDeletedBy
- processing_activity rename column metadataCreatedby from metadataCreatedBy
- processing_activity rename column metadataModifiedby from metadataModifiedBy
- processing_activity rename column metadataDeletedby from metadataDeletedBy
- product rename column metadataCreatedby from metadataCreatedBy
- product rename column metadataModifiedby from metadataModifiedBy
- product rename column metadataDeletedby from metadataDeletedBy
- receiving_activity rename column metadataCreatedby from metadataCreatedBy
- receiving_activity rename column metadataModifiedby from metadataModifiedBy
- receiving_activity rename column metadataDeletedby from metadataDeletedBy
- report_file rename column metadataCreatedby from metadataCreatedBy
- report_file rename column metadataModifiedby from metadataModifiedBy
- report_file rename column metadataDeletedby from metadataDeletedBy
- role rename column metadataCreatedby from metadataCreatedBy
- role rename column metadataModifiedby from metadataModifiedBy
- role rename column metadataDeletedby from metadataDeletedBy
- source_shipment rename column metadataCreatedby from metadataCreatedBy
- source_shipment rename column metadataModifiedby from metadataModifiedBy
- source_shipment rename column metadataDeletedby from metadataDeletedBy
- source_lot rename column metadataCreatedby from metadataCreatedBy
- source_lot rename column metadataModifiedby from metadataModifiedBy
- source_lot rename column metadataDeletedby from metadataDeletedBy
- source_lot_attachment rename column metadataCreatedby from metadataCreatedBy
- source_lot_attachment rename column metadataModifiedby from metadataModifiedBy
- source_lot_attachment rename column metadataDeletedby from metadataDeletedBy
- source_lot_test rename column metadataCreatedby from metadataCreatedBy
- source_lot_test rename column metadataModifiedby from metadataModifiedBy
- source_lot_test rename column metadataDeletedby from metadataDeletedBy
- species rename column metadataCreatedby from metadataCreatedBy
- species rename column metadataModifiedby from metadataModifiedBy
- species rename column metadataDeletedby from metadataDeletedBy
- species_product rename column metadataCreatedby from metadataCreatedBy
- species_product rename column metadataModifiedby from metadataModifiedBy
- species_product rename column metadataDeletedby from metadataDeletedBy
- storage rename column metadataCreatedby from metadataCreatedBy
- storage rename column metadataModifiedby from metadataModifiedBy
- storage rename column metadataDeletedby from metadataDeletedBy
- storage_cost rename column metadataCreatedby from metadataCreatedBy
- storage_cost rename column metadataModifiedby from metadataModifiedBy
- storage_cost rename column metadataDeletedby from metadataDeletedBy
- storage_pricing rename column metadataCreatedby from metadataCreatedBy
- storage_pricing rename column metadataModifiedby from metadataModifiedBy
- storage_pricing rename column metadataDeletedby from metadataDeletedBy
- storage_summary rename column metadataCreatedby from metadataCreatedBy
- storage_summary rename column metadataModifiedby from metadataModifiedBy
- storage_summary rename column metadataDeletedby from metadataDeletedBy
- thaw_summary rename column metadataCreatedby from metadataCreatedBy
- thaw_summary rename column metadataModifiedby from metadataModifiedBy

## 2024-05-22 AddRequestedByClient
- source_shipment rename column destinationClientUuid from clientUuid
- source_shipment add column requestedByClientUuid uuid
- source_shipment add FK requestedByClientUuid → client.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2024-05-17 speciesUniqueFix
- species unique index symbol, synonymSymbol

## 2024-04-24 AddProductsBadeEntities
- product create table 
- product add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- product add column nursery "nmis"."product_nursery_enum" NOT NULL
- product add column description character varying NOT NULL
- product add column class character varying NOT NULL
- product add column stockType "nmis"."product_stocktype_enum" NOT NULL
- product add column growUnitType "nmis"."product_growunittype_enum" NOT NULL
- product add column growYears numeric NOT NULL
- product add column transplant boolean NOT NULL
- product add column transplantStockType "nmis"."product_transplantstocktype_enum"
- product add column transplantGrowUnitType "nmis"."product_transplantgrowunittype_enum"
- product add column transplantGrowYears numeric
- product add column beginType "nmis"."product_begintype_enum" NOT NULL
- product add column endType "nmis"."product_endtype_enum" NOT NULL
- product add column endUnitOfMeasurement "nmis"."product_endunitofmeasurement_enum" NOT NULL
- product add column notes character varying
- product add column status numeric(1, 0) NOT NULL
- product add column legacyData jsonb
- product add column legacyId character varying
- product add column metadataCreatedBy uuid
- product add column metadataModifiedBy uuid
- product add column metadataDeletedBy uuid
- product add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- product add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- product add column metadataDeleted boolean NOT NULL DEFAULT false
- product add column metadataDeletedon TIMESTAMP
- product unique index nursery, description
- product unique index nursery, class
- species_product create table 
- species_product add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- species_product add column description character varying NOT NULL
- species_product add column minimumHeight numeric(10, 2) NOT NULL
- species_product add column maximumHeight numeric(10, 2) NOT NULL
- species_product add column minimumStemCaliper numeric(10, 2) NOT NULL
- species_product add column beginSeason "nmis"."species_product_beginseason_enum" NOT NULL
- species_product add column endSeason "nmis"."species_product_endseason_enum" NOT NULL
- species_product add column status numeric(1, 0) NOT NULL
- species_product add column legacyData jsonb
- species_product add column legacyId character varying
- species_product add column notes character varying
- species_product add column productUuid uuid
- species_product add column speciesUuid uuid
- species_product add column metadataCreatedBy uuid
- species_product add column metadataModifiedBy uuid
- species_product add column metadataDeletedBy uuid
- species_product add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- species_product add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- species_product add column metadataDeleted boolean NOT NULL DEFAULT false
- species_product add column metadataDeletedon TIMESTAMP
- species_product unique index productUuid, description
- grow_request add column speciesProductUuid uuid
- receiving_activity alter column receivedUnitOfMeasurement TYPE "nmis"."receiving_activity_receivedunitofmeasurement_enum" USING "receivedUnitOfMeasurement"::"text"::"nmis"."recei
- processing_activity alter column unitOfMeasurement TYPE "nmis"."processing_activity_unitofmeasurement_enum" USING "unitOfMeasurement"::"text"::"nmis"."processing_activity_
- source_lot alter column unitOfMeasurement TYPE "nmis"."source_lot_unitofmeasurement_enum" USING "unitOfMeasurement"::"text"::"nmis"."source_lot_unitofmeasurement_
- product add FK metadataCreatedBy → user.uuid
- product add FK metadataModifiedBy → user.uuid
- product add FK metadataDeletedBy → user.uuid
- species_product add FK productUuid → product.uuid
- species_product add FK speciesUuid → species.uuid
- species_product add FK metadataCreatedBy → user.uuid
- species_product add FK metadataModifiedBy → user.uuid
- species_product add FK metadataDeletedBy → user.uuid
- grow_request add FK speciesProductUuid → species_product.uuid

## 2024-04-12 AddUnitOfMeasurement
- source_lot add column unitOfMeasurement "nmis"."source_lot_unitofmeasurement_enum"
- receiving_activity drop column finalUnitOfMeasurement 
- processing_activity alter column unitOfMeasurement TYPE "nmis"."processing_activity_unitofmeasurement_enum" USING "unitOfMeasurement"::"text"::"nmis"."processing_activity_

## 2024-04-09 AdjustLbsWithdrawnDecimals
- order_cycle_production alter column lbsOfSeedWithdrawn TYPE numeric(12, 4)

## 2024-03-25 AddLotSlipNote
- lot_slip add column notes character varying

## 2024-02-29 AlterSourceBalanceLocation
- receiving_activity add column sourceLotUuid uuid
- source_lot add column lotBalance numeric(10, 4)
- source_lot add column transactions jsonb NOT NULL DEFAULT '[]'
- receiving_activity add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- receiving_activity drop column lotBalance 
- receiving_activity drop column transactions 
- source_lot drop column receivingActivityUuid 

## 2024-02-21 AddCategoryCodes
- source_lot alter column category TYPE "nmis"."source_lot_category_enum" USING "category"::"text"::"nmis"."source_lot_category_enum"
- storage_cost alter column clientCategory TYPE "nmis"."storage_cost_clientcategory_enum" USING "clientCategory"::"text"::"nmis"."storage_cost_clientcategory_enum"

## 2024-01-30 AddLegacyUOM


## 2024-01-02 AddUnitOfMeasurement
- receiving_activity rename column receivedUnitOfMeasurement from unitOfMeasurement
- receiving_activity alter column receivedUnitOfMeasurement TYPE "nmis"."receiving_activity_receivedunitofmeasurement_enum" USING "receivedUnitOfMeasurement"::"text"::"nmis"."recei
- receiving_activity add column finalWeighDate TIMESTAMP WITH TIME ZONE
- receiving_activity add column finalUnitOfMeasurement "nmis"."receiving_activity_receivedunitofmeasurement_enum"
- processing_activity alter column unitOfMeasurement TYPE "nmis"."receiving_activity_receivedunitofmeasurement_enum" USING "unitOfMeasurement"::"text"::"nmis"."receiving_act
- source_lot alter column category TYPE "nmis"."source_lot_category_enum" USING "category"::"text"::"nmis"."source_lot_category_enum"
- storage_cost alter column clientCategory TYPE "nmis"."storage_cost_clientcategory_enum" USING "clientCategory"::"text"::"nmis"."storage_cost_clientcategory_enum"

## 2023-12-19 AddOracleMigrationUpdates
- processing_activity alter column activityType TYPE "nmis"."processing_activity_activitytype_enum" USING "activityType"::"text"::"nmis"."processing_activity_activityty
- source_lot alter column localAreaDescription TYPE varchar(30)

## 2023-12-11 AlterSourceTestTestedBy
- source_lot_test rename column testedByUuid from testedBy
- client add column sourceTestingLab boolean DEFAULT false
- source_lot_test drop column testedByUuid 
- source_lot_test add column testedByUuid uuid
- source_lot_test add FK testedByUuid → client.uuid

## 2023-12-11 StorageLocationsAlterEnum
- storage alter column type TYPE "nmis"."storage_type_enum" USING "type"::"text"::"nmis"."storage_type_enum"
- storage_cost alter column storageType TYPE "nmis"."storage_type_enum" USING "storageType"::"text"::"nmis"."storage_type_enum"

## 2023-12-07 AlterClientAgencyAddCml
- client alter column agency DROP DEFAULT
- client alter column agency TYPE "nmis"."client_agency_enum" USING "agency"::"text"::"nmis"."client_agency_enum"
- client alter column agency SET DEFAULT 'AG'

## 2023-11-29 AddSeedlingBilling
- pack_summary add column billUuid uuid
- thaw_summary add column billUuid uuid
- pack_summary add FK billUuid → billing_file.uuid
- thaw_summary add FK billUuid → billing_file.uuid

## 2023-10-26 TestFieldAdjustments
- source_lot_test alter column dollarAmount TYPE numeric(14, 2)

## 2023-09-19 AdjustLotSlip
- lot_slip alter column quantity TYPE numeric(12, 4)

## 2023-09-18 AdjustFulfillmentForLegacy
- lift_summary add column legacyId character varying
- lift_summary add column legacyData jsonb
- lift_request add column legacyId character varying
- lift_request add column legacyData jsonb
- pack_summary add column legacyId character varying
- pack_summary add column legacyData jsonb
- pack_summary alter column packedSeedlings TYPE numeric(12, 4)

## 2023-09-05 ModifyCellsPerContainer
- grow_request alter column containerSpecificationsContainersize TYPE "nmis"."grow_request_containerspecificationscontainersize_enum" USING "containerSpecificationsContainersize"::"text

## 2023-08-29 AddOrderProductionAlterations
- grow_request drop column plannedSowYear 
- order_cycle_production drop column sowOrTransplant 
- grow_request add column sourceLotNursery "nmis"."grow_request_sourcelotnursery_enum"
- grow_request add column plannedSowDate TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT '"2000-01-01T05:00:00.000Z"'
- grow_request add column sowOrTransplant integer NOT NULL DEFAULT '-1'
- grow_request add column plannedStratDate TIMESTAMP WITH TIME ZONE
- grow_request add column stratTime "nmis"."grow_request_strattime_enum"
- order_cycle_production add column withdrawalDate TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT '"2000-01-01T05:00:00.000Z"'
- order_cycle_production add column stratificationDate TIMESTAMP WITH TIME ZONE
- order_cycle_production add column stratNotes character varying
- order_cycle_production add column legacyData jsonb
- order_cycle_production add column legacyId character varying
- order_cycle_production alter column plantingDate DROP NOT NULL

## 2023-08-15 DeleteSourceLotCascade
- source_lot add FK parentTransferLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- grow_request add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2023-08-01 AddShippingActivity
- lot_slip alter column activity TYPE "nmis"."lot_slip_activity_enum" USING "activity"::"text"::"nmis"."lot_slip_activity_enum"

## 2023-07-31 AddFulfillmentSubTables
- lift_summary create table 
- lift_summary add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- lift_summary add column liftDate TIMESTAMP WITH TIME ZONE NOT NULL
- lift_summary add column liftedSpaces character varying
- lift_summary add column fieldTubQuantity numeric(10, 0)
- lift_summary add column estSeedlingsPerTub numeric(10, 2)
- lift_summary add column notes character varying
- lift_summary add column fulfillmentUuid uuid
- lift_summary add column metadataCreatedBy uuid
- lift_summary add column metadataModifiedBy uuid
- lift_summary add column metadataDeletedBy uuid
- lift_summary add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- lift_summary add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- lift_summary add column metadataDeleted boolean NOT NULL DEFAULT false
- lift_summary add column metadataDeletedon TIMESTAMP
- lift_request create table 
- lift_request add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- lift_request add column requestedDate TIMESTAMP WITH TIME ZONE NOT NULL
- lift_request add column requestedSeedlings numeric(10, 4)
- lift_request add column shippableSeedlingsPerSpace numeric(10, 2)
- lift_request add column estimatedLiftedSpaces character varying
- lift_request add column fulfillmentUuid uuid
- lift_request add column metadataCreatedBy uuid
- lift_request add column metadataModifiedBy uuid
- lift_request add column metadataDeletedBy uuid
- lift_request add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- lift_request add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- lift_request add column metadataDeleted boolean NOT NULL DEFAULT false
- lift_request add column metadataDeletedon TIMESTAMP
- storage_summary create table 
- storage_summary add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- storage_summary add column startDate TIMESTAMP WITH TIME ZONE NOT NULL
- storage_summary add column coolerOrFreezer integer NOT NULL DEFAULT '-1'
- storage_summary add column quantityOfBoxes numeric(10, 2)
- storage_summary add column specificLocation character varying
- storage_summary add column fulfillmentUuid uuid
- storage_summary add column metadataCreatedBy uuid
- storage_summary add column metadataModifiedBy uuid
- storage_summary add column metadataDeletedBy uuid
- storage_summary add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- storage_summary add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- storage_summary add column metadataDeleted boolean NOT NULL DEFAULT false
- storage_summary add column metadataDeletedon TIMESTAMP
- thaw_summary create table 
- thaw_summary add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- thaw_summary add column thawDate TIMESTAMP WITH TIME ZONE NOT NULL
- thaw_summary add column quantityOfBoxes numeric(10, 2)
- thaw_summary add column costPerBox numeric(10, 2)
- thaw_summary add column totalCosts numeric(10, 2)
- thaw_summary add column fulfillmentUuid uuid
- thaw_summary add column metadataCreatedBy uuid
- thaw_summary add column metadataModifiedBy uuid
- thaw_summary add column metadataDeletedBy uuid
- thaw_summary add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- thaw_summary add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- thaw_summary add column metadataDeleted boolean NOT NULL DEFAULT false
- thaw_summary add column metadataDeletedon TIMESTAMP
- pack_summary create table 
- pack_summary add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- pack_summary add column packDate TIMESTAMP WITH TIME ZONE NOT NULL
- pack_summary add column packedTubs numeric(10, 0)
- pack_summary add column packedBoxes numeric(10, 0)
- pack_summary add column seedlingsPerBox numeric(10, 0)
- pack_summary add column packedSeedlings numeric(10, 4)
- pack_summary add column packedSeedlingCost numeric(10, 2)
- pack_summary add column costPerSeedling numeric(10, 2)
- pack_summary add column fulfillmentUuid uuid
- pack_summary add column metadataCreatedBy uuid
- pack_summary add column metadataModifiedBy uuid
- pack_summary add column metadataDeletedBy uuid
- pack_summary add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- pack_summary add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- pack_summary add column metadataDeleted boolean NOT NULL DEFAULT false
- pack_summary add column metadataDeletedon TIMESTAMP
- fulfillment drop column liftSummaries 
- fulfillment drop column storageSummaries 
- fulfillment drop column thawSummaries 
- lift_summary add FK fulfillmentUuid → fulfillment.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- lift_summary add FK metadataCreatedBy → user.uuid
- lift_summary add FK metadataModifiedBy → user.uuid

## 2023-07-24 AddOrderAndGrowReqLegacyFields
- order add column legacyData jsonb
- order add column legacyId character varying
- grow_request add column legacyData jsonb
- grow_request add column legacyId character varying
- grow_request alter column stockType TYPE "nmis"."grow_request_stocktype_enum" USING "stockType"::"text"::"nmis"."grow_request_stocktype_enum"

## 2023-06-22 AddOrderGrowReqContainerFactor
- grow_request add column containerSpecificationsNurseryfactors numeric(10, 4)
- billing_file add column jobCode character varying

## 2023-06-06 AddDecimalToGrowRequestFields
- grow_request alter column estimatedLbsOfSeed TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsRevolutions TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsNurseryfactors TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsEstimatedfeetperrevolution TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsTotalimbibedseedweight TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsAvgimbibedseedweightperrevolution TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsFunnelsetting TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsEstimatednumberofbedfeet TYPE numeric(10, 4)
- grow_request alter column barerootSpecificationsSeedlingsperbedfoot TYPE numeric(10, 4)
- grow_request alter column containerSpecificationsNumberofcontainersneeded TYPE numeric(10, 0)

## 2023-06-05 AddShippingLegacyFields
- source_shipment add column legacyData jsonb
- source_shipment add column legacyId character varying
- lot_slip add column legacyData jsonb
- lot_slip add column legacyId character varying
- lot_slip alter column activity TYPE "nmis"."lot_slip_activity_enum" USING "activity"::"text"::"nmis"."lot_slip_activity_enum"

## 2023-05-24 AddStorageLegacyFields
- storage add column legacyData jsonb
- storage add column legacyId character varying

## 2023-05-23 AddPricingCostPerSeedling
- storage_pricing add column costPerSeedling numeric(10, 2)

## 2023-05-02 AlterTestTableAddLegacyFields
- source_lot_test add column legacyData jsonb
- source_lot_test add column legacyId character varying

## 2023-04-26 AddBarerootFields
- grow_request drop column barerootSpecificationsRevolutionsourceunits 
- grow_request drop column barerootSpecificationsQuantityofseedlings 
- grow_request add column barerootSpecificationsNurseryfactors numeric(10, 2)
- grow_request add column barerootSpecificationsTotalimbibedseedweight numeric(10, 2)
- grow_request add column barerootSpecificationsAvgimbibedseedweightperrevolution numeric(10, 2)
- grow_request add column barerootSpecificationsEstimatednumberofbedfeet numeric(10, 0)
- grow_request alter column containerSpecificationsNumberofcontainersneeded TYPE numeric(10, 0)

## 2023-04-18 AlterGrowRequestAddFields
- grow_request add column factor1 numeric(10, 2)
- grow_request add column factor2 numeric(10, 2)
- grow_request add column factor3 numeric(10, 2)
- grow_request add column containerSpecificationsSeedspercell numeric(10, 0)
- grow_request add column containerSpecificationsCellspercontainer numeric(10, 0)
- grow_request alter column containerSpecificationsNumberofcontainersneeded TYPE numeric(10, 0)

## 2023-04-03 AddSeedlingInventoryProgress
- inventory_progress create table 
- inventory_progress add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- inventory_progress add column samplingDate TIMESTAMP WITH TIME ZONE NOT NULL
- inventory_progress add column sampleSize numeric(10, 2)
- inventory_progress add column seedlingsAtSpecifications numeric(10, 2)
- inventory_progress add column cullFactor numeric(10, 2)
- inventory_progress add column shipFactor numeric(10, 2)
- inventory_progress add column grossInventory numeric(10, 2)
- inventory_progress add column estimatedNetInventory numeric(10, 2)
- inventory_progress add column notes character varying
- inventory_progress add column legacyData jsonb
- inventory_progress add column legacyId character varying
- inventory_progress add column orderUuid uuid
- inventory_progress add column metadataCreatedBy uuid
- inventory_progress add column metadataModifiedBy uuid
- inventory_progress add column metadataDeletedBy uuid
- inventory_progress add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- inventory_progress add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- inventory_progress add column metadataDeleted boolean NOT NULL DEFAULT false
- inventory_progress add column metadataDeletedon TIMESTAMP
- inventory_progress add FK orderUuid → order.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- inventory_progress add FK metadataCreatedBy → user.uuid
- inventory_progress add FK metadataModifiedBy → user.uuid
- inventory_progress add FK metadataDeletedBy → user.uuid

## 2023-03-29 DropOrderFulfillmentDeliveries
- fulfillment drop column deliveries 

## 2023-03-24 AddReportType
- report_file add column reportType integer NOT NULL DEFAULT '0'

## 2023-03-23 AddOrderStatusField
- order add column status integer DEFAULT '1'

## 2023-03-08 AdjustQuantityDecimalPlaces
- receiving_activity alter column quantity TYPE numeric(10, 4)
- receiving_activity alter column finalProcessedWeight TYPE numeric(10, 4)
- receiving_activity alter column lotBalance TYPE numeric(10, 4)
- processing_activity alter column quantity TYPE numeric(10, 4)
- storage alter column dollarAmount TYPE numeric(10, 4)
- fulfillment alter column productionCostsTotalseedlingsproduced TYPE numeric(10, 4)
- fulfillment alter column productionCostsTotalseedlingspurchased TYPE numeric(10, 4)

## 2023-02-28 AddBillingTable
- storage rename column billUuid from quantity
- yearly_storage_cost create table 
- yearly_storage_cost add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- yearly_storage_cost add column pricingYear numeric(4, 0)
- yearly_storage_cost add column dollarAmount numeric(10, 2)
- yearly_storage_cost add column sourceLotUuid uuid
- yearly_storage_cost add column billUuid uuid
- billing_file create table 
- billing_file add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- billing_file add column invoiceNumber character varying NOT NULL
- billing_file add column startDate TIMESTAMP WITH TIME ZONE NOT NULL
- billing_file add column endDate TIMESTAMP WITH TIME ZONE NOT NULL
- billing_file add column billingFacility "nmis"."billing_file_billingfacility_enum"
- billing_file add column totalChargeAmount numeric(10, 2)
- billing_file add column clientUuid uuid
- billing_file add column metadataCreatedBy uuid
- billing_file add column metadataModifiedBy uuid
- billing_file add column metadataDeletedBy uuid
- billing_file add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- billing_file add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- billing_file add column metadataDeleted boolean NOT NULL DEFAULT false
- billing_file add column metadataDeletedon TIMESTAMP
- source_lot_attachment drop column fileMetadataCreatedon 
- source_lot_attachment drop column fileMetadataModifiedon 
- source_lot_attachment drop column fileMetadataDeleted 
- source_lot_attachment drop column fileMetadataDeletedon 
- report_file drop column fileMetadataCreatedon 
- report_file drop column fileMetadataModifiedon 
- report_file drop column fileMetadataDeleted 
- report_file drop column fileMetadataDeletedon 
- receiving_activity add column billUuid uuid
- source_lot_test add column billUuid uuid
- processing_activity add column billUuid uuid
- lot_slip add column billUuid uuid
- storage drop column billUuid 
- storage add column billUuid uuid
- receiving_activity add FK billUuid → billing_file.uuid
- source_lot_test add FK billUuid → billing_file.uuid
- processing_activity add FK billUuid → billing_file.uuid
- storage add FK billUuid → billing_file.uuid
- lot_slip add FK billUuid → billing_file.uuid
- yearly_storage_cost add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- yearly_storage_cost add FK billUuid → billing_file.uuid
- billing_file add FK clientUuid → client.uuid
- billing_file add FK metadataCreatedBy → user.uuid
- billing_file add FK metadataModifiedBy → user.uuid
- billing_file add FK metadataDeletedBy → user.uuid

## 2023-02-14 AdjustEAuthIdConstraint
- user alter column eAuthId DROP NOT NULL

## 2023-02-09 AddPricingStorage
- storage_pricing create table 
- storage_pricing add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- storage_pricing add column year character varying NOT NULL
- storage_pricing add column nursery "nmis"."storage_pricing_nursery_enum"
- storage_pricing add column metadataCreatedBy uuid
- storage_pricing add column metadataModifiedBy uuid
- storage_pricing add column metadataDeletedBy uuid
- storage_pricing add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- storage_pricing add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- storage_pricing add column metadataDeleted boolean NOT NULL DEFAULT false
- storage_pricing add column metadataDeletedon TIMESTAMP
- storage_pricing unique index nursery, year
- storage_cost create table 
- storage_cost add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- storage_cost add column storageType "nmis"."storage_cost_storagetype_enum"
- storage_cost add column clientCategory "nmis"."storage_cost_clientcategory_enum"
- storage_cost add column priceDividingWeight numeric(10, 2)
- storage_cost add column lowWeightPricing numeric(10, 2)
- storage_cost add column highWeightPricing numeric(10, 2)
- storage_cost add column storagePricingUuid uuid
- storage_cost add column metadataCreatedBy uuid
- storage_cost add column metadataModifiedBy uuid
- storage_cost add column metadataDeletedBy uuid
- storage_cost add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- storage_cost add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- storage_cost add column metadataDeleted boolean NOT NULL DEFAULT false
- storage_cost add column metadataDeletedon TIMESTAMP
- storage add column quantity numeric(10, 2)
- storage_pricing add FK metadataCreatedBy → user.uuid
- storage_pricing add FK metadataModifiedBy → user.uuid
- storage_pricing add FK metadataDeletedBy → user.uuid
- storage_cost add FK storagePricingUuid → storage_pricing.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- storage_cost add FK metadataCreatedBy → user.uuid
- storage_cost add FK metadataModifiedBy → user.uuid
- storage_cost add FK metadataDeletedBy → user.uuid

## 2023-01-19 AddTransferFields
- source_lot add column parentTransferLotUuid uuid
- source_lot add unique "uuid"
- source_lot_attachment add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- lot_slip add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- source_lot_test add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- processing_activity add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- storage add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- source_lot add FK parentTransferLotUuid → source_lot.uuid
- grow_request add FK sourceLotUuid → source_lot.uuid

## 2023-01-12 AdjustTimeColumnsToTimeStamptz
- receiving_activity alter column dateReceived TYPE timestamptz USING "dateReceived" AT TIME ZONE 'UTC';
- source_lot_test alter column testDate TYPE timestamptz USING "testDate" AT TIME ZONE 'UTC';
- processing_activity alter column activityDate TYPE timestamptz USING "activityDate" AT TIME ZONE 'UTC';
- storage alter column startDate TYPE timestamptz USING "startDate" AT TIME ZONE 'UTC';
- order_cycle_production alter column plantingDate TYPE timestamptz USING "plantingDate" AT TIME ZONE 'UTC';
- source_shipment alter column shipDate TYPE timestamptz USING "shipDate" AT TIME ZONE 'UTC';
- source_lot alter column dateCollected TYPE timestamptz USING "dateCollected" AT TIME ZONE 'UTC';
- grow_request alter column requestDate TYPE timestamptz USING "requestDate" AT TIME ZONE 'UTC';

## 2023-01-09 AddReceivingActivityEnumValue
- receiving_activity alter column activityType TYPE "nmis"."receiving_activity_activitytype_enum" USING "activityType"::"text"::"nmis"."receiving_activity_activitytype

## 2022-12-02 AlterSourceLotRelations
- source_lot drop column speciesCodeGenus 
- source_lot drop column species 
- source_lot add column clientUuid uuid;
- source_lot add column collectedByUuid uuid;
- source_lot add column speciesUuid uuid;
- source_lot add FK clientUuid → client.uuid
- source_lot add FK collectedByUuid → client.uuid
- source_lot add FK speciesUuid → species.uuid
- source_lot drop column speciesCode 
- source_lot drop column clientId 
- source_lot drop column collectedBy 

## 2022-12-02 AlterSpecies
- species unique index symbol, scientificName

## 2022-11-18 AddReportFileTable
- report_file create table 
- report_file add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- report_file add column metadataCreatedBy uuid
- report_file add column metadataModifiedBy uuid
- report_file add column metadataDeletedBy uuid
- report_file add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- report_file add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- report_file add column metadataDeleted boolean NOT NULL DEFAULT false
- report_file add column metadataDeletedon TIMESTAMP
- report_file add column fileFilename character varying NOT NULL
- report_file add column fileData bytea NOT NULL
- report_file add column fileMetadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- report_file add column fileMetadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- report_file add column fileMetadataDeleted boolean NOT NULL DEFAULT false
- report_file add column fileMetadataDeletedon TIMESTAMP
- report_file add FK metadataCreatedBy → user.uuid
- report_file add FK metadataModifiedBy → user.uuid
- report_file add FK metadataDeletedBy → user.uuid

## 2022-11-15 addClientOwners
- source_lot add column clientOwners jsonb DEFAULT 'null'

## 2022-10-26 AlterActivitiesForLegacyData
- receiving_activity add column legacyData jsonb
- receiving_activity add column legacyId character varying
- processing_activity add column legacyData jsonb
- processing_activity add column legacyId character varying
- source_lot add column legacyData jsonb

## 2022-10-25 AlterShipTicketTable
- source_shipment drop column dollarAmount 
- lot_slip drop column dollarPerBox 
- lot_slip drop column dollarAmount 
- source_shipment add column shippingFees numeric(10, 2)
- source_shipment add column totalShippingCost numeric(10, 2)
- source_shipment add column lotType integer NOT NULL DEFAULT '-1'
- lot_slip add column handlingFee numeric(10, 2)
- lot_slip add column withdrawFee numeric(10, 2)
- lot_slip add column shippingCost numeric(10, 2)

## 2022-10-17 AddShipTicketTable
- source_shipment create table 
- source_shipment add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- source_shipment add column id character varying NOT NULL
- source_shipment add column shippedFrom "nmis"."ship_ticket_shippedfrom_enum" NOT NULL
- source_shipment add column shipDate date
- source_shipment add column shippedTo character varying
- source_shipment add column shippingAddress character varying
- source_shipment add column carrierTrackingInfo character varying
- source_shipment add column dollarAmount numeric(10, 2)
- source_shipment add column status numeric(1, 0)
- source_shipment add column transfer boolean DEFAULT false
- source_shipment add column clientUuid uuid
- source_shipment add column metadataCreatedBy uuid
- source_shipment add column metadataModifiedBy uuid
- source_shipment add column metadataDeletedBy uuid
- source_shipment add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- source_shipment add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- source_shipment add column metadataDeleted boolean NOT NULL DEFAULT false
- source_shipment add column metadataDeletedon TIMESTAMP
- lot_slip create table 
- lot_slip add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- lot_slip add column quantity numeric(10, 2)
- lot_slip add column numberOfBoxes numeric(10, 0)
- lot_slip add column dollarPerBox numeric(10, 2)
- lot_slip add column dollarAmount numeric(10, 2)
- lot_slip add column activity "nmis"."lot_slip_activity_enum"
- lot_slip add column shipTicketUuid uuid
- lot_slip add column sourceLotUuid uuid
- lot_slip add column orderUuid uuid
- lot_slip add column metadataCreatedBy uuid
- lot_slip add column metadataModifiedBy uuid
- lot_slip add column metadataDeletedBy uuid
- lot_slip add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- lot_slip add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- lot_slip add column metadataDeleted boolean NOT NULL DEFAULT false
- lot_slip add column metadataDeletedon TIMESTAMP
- source_shipment add FK clientUuid → client.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- source_shipment add FK metadataCreatedBy → user.uuid
- source_shipment add FK metadataModifiedBy → user.uuid
- source_shipment add FK metadataDeletedBy → user.uuid
- lot_slip add FK shipTicketUuid → ship_ticket.uuid
- lot_slip add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- lot_slip add FK orderUuid → order.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- lot_slip add FK metadataCreatedBy → user.uuid
- lot_slip add FK metadataModifiedBy → user.uuid
- lot_slip add FK metadataDeletedBy → user.uuid

## 2022-10-12 Restrictions
- role add column display character varying NOT NULL
- role add column nursery "nmis"."role_nursery_enum"
- order add column growNursery "nmis"."order_grownursery_enum"
- role add unique "name"
- source_lot add FK receivingActivityUuid → receiving_activity.uuid
- user_roles_role add FK roleUuid → role.uuid

## 2022-09-21 AlterFulfillmentProductionCosts
- fulfillment drop column productionCostsThawdate 
- fulfillment add column productionCostsTotalseedlingspurchased numeric(10, 2)
- fulfillment add column productionCostsDollarperseedling numeric(10, 2)
- fulfillment add column productionCostsDollartotal numeric(10, 2)
- order_cycle_production alter column lbsOfSeedWithdrawn DROP NOT NULL

## 2022-09-19 AddMissingBareRootSpecs
- grow_request add column barerootSpecificationsQuantityofseedlings numeric(10, 0)
- grow_request add column barerootSpecificationsSeedlingsperbedfoot numeric(10, 0)

## 2022-09-15 AddOrdersFulFillment
- fulfillment create table 
- fulfillment add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- fulfillment add column liftSummaries jsonb DEFAULT '[]'
- fulfillment add column storageSummaries jsonb DEFAULT '[]'
- fulfillment add column thawSummaries jsonb DEFAULT '[]'
- fulfillment add column deliveries jsonb DEFAULT '[]'
- fulfillment add column metadataCreatedBy uuid
- fulfillment add column metadataModifiedBy uuid
- fulfillment add column metadataDeletedBy uuid
- fulfillment add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- fulfillment add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- fulfillment add column metadataDeleted boolean NOT NULL DEFAULT false
- fulfillment add column metadataDeletedon TIMESTAMP
- fulfillment add column productionCostsThawdate TIMESTAMP
- fulfillment add column productionCostsTotalseedlingsproduced numeric(10, 2)
- grow_request drop column barerootSpecificationsSeedlingsperbedfoot 
- grow_request drop column barerootSpecificationsQuantityofseedlings 
- order add column plantedBalance numeric(10, 2) NOT NULL DEFAULT '0'
- order add column liftedBalance numeric(10, 2) NOT NULL DEFAULT '0'
- order add column packedBalance numeric(10, 2) NOT NULL DEFAULT '0'
- order add column transactions jsonb NOT NULL DEFAULT '[]'
- order add column fulfillmentUuid uuid
- order add unique "fulfillmentUuid"
- fulfillment add FK metadataCreatedBy → user.uuid
- fulfillment add FK metadataModifiedBy → user.uuid
- fulfillment add FK metadataDeletedBy → user.uuid
- order add FK fulfillmentUuid → fulfillment.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2022-09-08 OrdersGrowRequestTransplant
- grow_request add column barerootSpecificationsQuantityofseedlings numeric(10, 0)
- grow_request add column barerootSpecificationsSeedlingsperbedfoot numeric(10, 0)

## 2022-09-02 OrdersProductionChanges
- source_lot_test add column notes character varying
- receiving_activity add column amountCharged numeric(10, 2)
- order_cycle_production drop column sowOrTransplant 
- order_cycle_production add column sowOrTransplant integer NOT NULL DEFAULT -1
- order_cycle_production alter column growLocations DROP NOT NULL

## 2022-08-23 OrdersAndProduction
- order create table 
- order add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- order add column growRequestUuid uuid
- order add column productionUuid uuid
- order add column metadataCreatedBy uuid
- order add column metadataModifiedBy uuid
- order add column metadataDeletedBy uuid
- order add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- order add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- order add column metadataDeleted boolean NOT NULL DEFAULT false
- order add column metadataDeletedon TIMESTAMP
- order_cycle_production create table 
- order_cycle_production add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- order_cycle_production add column dollarAmount numeric(10, 2)
- order_cycle_production add column plantingDate date NOT NULL
- order_cycle_production add column sowOrTransplant boolean NOT NULL
- order_cycle_production add column lbsOfSeedWithdrawn numeric(10, 2) NOT NULL
- order_cycle_production add column numberBedFeet numeric(10, 2)
- order_cycle_production add column containersPlanted numeric(10, 0)
- order_cycle_production add column totalGrowUnitsPlanted numeric(10, 0)
- order_cycle_production add column notes character varying
- order_cycle_production add column growLocations jsonb NOT NULL DEFAULT '[]'
- order_cycle_production add column metadataCreatedBy uuid
- order_cycle_production add column metadataModifiedBy uuid
- order_cycle_production add column metadataDeletedBy uuid
- order_cycle_production add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- order_cycle_production add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- order_cycle_production add column metadataDeleted boolean NOT NULL DEFAULT false
- order_cycle_production add column metadataDeletedon TIMESTAMP
- grow_request add column barerootSpecificationsBareroottype "nmis"."grow_request_barerootspecificationsbareroottype_enum"
- grow_request alter column contact DROP NOT NULL
- grow_request alter column clientUuid SET NOT NULL
- grow_request add FK clientUuid → client.uuid
- order add FK growRequestUuid → grow_request.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- order add FK productionUuid → order_production.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- order add FK metadataCreatedBy → user.uuid
- order add FK metadataModifiedBy → user.uuid
- order add FK metadataDeletedBy → user.uuid
- order_cycle_production add FK metadataCreatedBy → user.uuid
- order_cycle_production add FK metadataModifiedBy → user.uuid
- order_cycle_production add FK metadataDeletedBy → user.uuid

## 2022-07-27 ClientRenameErrorShippingAddress
- client rename column shippingAddress from district
- grow_request alter column requestedSeedlingQuantity SET NOT NULL
- grow_request alter column plannedSowYear SET NOT NULL

## 2022-07-26 GrowRequestOrderAndSpec
- client rename column district from shippingAddress
- grow_request create table 
- grow_request add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- grow_request add column growLotId character varying
- grow_request add column requestDate TIMESTAMP NOT NULL
- grow_request add column contact character varying NOT NULL
- grow_request add column stockType "nmis"."grow_request_stocktype_enum"
- grow_request add column requestedSeedlingQuantity numeric(10, 2)
- grow_request add column plannedSowYear numeric(4, 0)
- grow_request add column estimatedCost numeric(10, 2)
- grow_request add column productType character varying
- grow_request add column notes character varying
- grow_request add column estimatedLbsOfSeed numeric(10, 2)
- grow_request add column targetLiftYear numeric(4, 0)
- grow_request add column overSowPercent numeric(10, 2)
- grow_request add column sourceLotUuid uuid
- grow_request add column clientUuid uuid
- grow_request add column metadataCreatedBy uuid
- grow_request add column metadataModifiedBy uuid
- grow_request add column metadataDeletedBy uuid
- grow_request add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- grow_request add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- grow_request add column metadataDeleted boolean NOT NULL DEFAULT false
- grow_request add column metadataDeletedon TIMESTAMP
- grow_request add column barerootSpecificationsRevolutions numeric(10, 2)
- grow_request add column barerootSpecificationsRevolutionsourceunits numeric(10, 2)
- grow_request add column barerootSpecificationsEstimatedfeetperrevolution numeric(10, 2)
- grow_request add column barerootSpecificationsFunnelsetting numeric(10, 2)
- grow_request add column containerSpecificationsContainersize "nmis"."grow_request_containerspecificationscontainersize_enum"
- grow_request add column containerSpecificationsNumberofcontainersneeded numeric(10, 2)
- grow_request add column growthHeightMinimumheight numeric(10, 2)
- grow_request add column growthHeightMaximumheight numeric(10, 2)
- grow_request add column growthHeightMinimumstemcaliper numeric(10, 2)
- grow_request add column rootLengthMinimumheight numeric(10, 2)
- grow_request add column rootLengthMaximumheight numeric(10, 2)
- grow_request add column rootLengthPrunetarget numeric(10, 2)
- grow_request add FK sourceLotUuid → source_lot.uuid
- grow_request add FK clientUuid → client.uuid
- grow_request add FK metadataCreatedBy → user.uuid
- grow_request add FK metadataModifiedBy → user.uuid
- grow_request add FK metadataDeletedBy → user.uuid

## 2022-07-19 FKConstraintOfRecAct
- source_lot add FK receivingActivityUuid → receiving_activity.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2022-07-11 RestrictCategoryCodes
- source_lot add column legacyId character varying
- source_lot add unique "legacyId"
- source_lot drop column category 
- source_lot add column category "nmis"."source_lot_category_enum"
- source_lot drop column factsCode 
- source_lot add column factsCode "nmis"."source_lot_factscode_enum"

## 2022-07-11 UserCurrentNursery
- user add column currentNursery "nmis"."user_currentnursery_enum"

## 2022-06-27 ActivitiesNotesField
- receiving_activity add column notes character varying
- processing_activity add column notes character varying

## 2022-06-17 SpeciesFieldAdditions
- species add column group character varying
- species add column growthHabit character varying

## 2022-06-17 ShipmentUpdatesWithMetaDataEmbedding
- role add column metadataCreatedBy uuid
- role add column metadataModifiedBy uuid
- role add column metadataDeletedBy uuid
- role add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- role add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- role add column metadataDeleted boolean NOT NULL DEFAULT false
- role add column metadataDeletedon TIMESTAMP
- source_lot_attachment add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot_attachment add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot_attachment add column metadataDeleted boolean NOT NULL DEFAULT false
- source_lot_attachment add column metadataDeletedon TIMESTAMP
- storage add column metadataCreatedBy uuid
- storage add column metadataModifiedBy uuid
- storage add column metadataDeletedBy uuid
- storage add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- storage add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- storage add column metadataDeleted boolean NOT NULL DEFAULT false
- storage add column metadataDeletedon TIMESTAMP
- shipment add column shippingAddress character varying
- shipment add column clientShippedToUuid uuid
- shipment add column metadataCreatedBy uuid
- shipment add column metadataModifiedBy uuid
- shipment add column metadataDeletedBy uuid
- shipment add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- shipment add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- shipment add column metadataDeleted boolean NOT NULL DEFAULT false
- shipment add column metadataDeletedon TIMESTAMP
- storage alter column type TYPE "nmis"."storage_type_enum" USING "type"::"text"::"nmis"."storage_type_enum"
- role add FK metadataCreatedBy → user.uuid
- role add FK metadataModifiedBy → user.uuid
- role add FK metadataDeletedBy → user.uuid
- storage add FK metadataCreatedBy → user.uuid
- storage add FK metadataModifiedBy → user.uuid
- storage add FK metadataDeletedBy → user.uuid
- shipment add FK clientShippedToUuid → client.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- shipment add FK metadataCreatedBy → user.uuid
- shipment add FK metadataModifiedBy → user.uuid
- shipment add FK metadataDeletedBy → user.uuid

## 2022-06-16 TimestampToDate
- source_lot_test alter column testDate TYPE DATE
- shipment alter column shipmentDate TYPE DATE
- storage alter column startDate TYPE DATE
- source_lot alter column dateCollected TYPE DATE

## 2022-06-15 RemoveTestResultsTable
- source_lot_test add column testResults character varying
- source_lot_test add column metadataCreatedBy uuid
- source_lot_test add column metadataModifiedBy uuid
- source_lot_test add column metadataDeletedBy uuid
- source_lot_test add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot_test add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot_test add column metadataDeleted boolean NOT NULL DEFAULT false
- source_lot_test add column metadataDeletedon TIMESTAMP
- source_lot_test add FK metadataCreatedBy → user.uuid
- source_lot_test add FK metadataModifiedBy → user.uuid
- source_lot_test add FK metadataDeletedBy → user.uuid
- test_result drop table 

## 2022-06-10 AdjustSourceLotTestTestedBy
- user drop column testsConductedUuid 
- source_lot_test add column testedBy "nmis"."source_lot_test_testedby_enum"

## 2022-06-08 ClientModelRework
- client rename column department from forest
- client alter column department SET NOT NULL
- client rename column unit from district
- client add column agency "nmis"."client_agency_enum" NOT NULL DEFAULT 'AG'
- client add column billingPOC character varying
- client add column billingEmailAddress character varying
- client add column billingAddress character varying
- client add column shippingAddress character varying
- client add column notes character varying
- client add column nurseries "nmis"."client_nurseries_enum" array NOT NULL DEFAULT '{}'
- client add column contacts jsonb NOT NULL DEFAULT '[]'

## 2022-06-03 AddTransactions
- storage drop column quantity 
- receiving_activity add column transactions jsonb NOT NULL DEFAULT '[]'

## 2022-06-02 AddShipmentAndStorageTables
- receiving_activity rename column dateReceived from dateRecieved
- shipment create table 
- shipment add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- shipment add column shipmentDate TIMESTAMP
- shipment add column quantity numeric(12, 2)
- shipment add column shippedTo character varying
- shipment add column carrierTrackingInfo character varying
- shipment add column dollarAmount numeric(10, 2)
- shipment add column sourceLotUuid uuid
- storage create table 
- storage add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- storage add column startDate TIMESTAMP
- storage add column quantity numeric(12, 4)
- storage add column type "nmis"."storage_type_enum"
- storage add column section character varying
- storage add column area character varying
- storage add column shelf character varying
- storage add column space character varying
- storage add column dollarAmount numeric(10, 2)
- storage add column sourceLotUuid uuid
- shipment add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- storage add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2022-06-01 AddToInvoice
- processing_activity add column addToInvoice boolean

## 2022-06-01 DecimalLogicOnDb
- processing_activity drop column quantity 
- processing_activity add column quantity numeric(10, 2)
- source_lot drop column exactElevation 
- source_lot add column exactElevation numeric(10, 2)
- test_result drop column germinationPercent 
- test_result add column germinationPercent numeric(10, 2)
- test_result drop column purityPercent 
- test_result add column purityPercent numeric(10, 2)
- test_result drop column eRHPercent 
- test_result add column eRHPercent numeric(10, 2)
- test_result drop column seedsPerLb 
- test_result add column seedsPerLb numeric(10, 2)
- test_result drop column gramsPer100Seed 
- test_result add column gramsPer100Seed numeric(10, 2)
- test_result drop column fillPercent 
- test_result add column fillPercent numeric(10, 2)
- source_lot_test drop column dollarAmount 
- source_lot_test add column dollarAmount numeric(10, 2)
- receiving_activity drop column quantity 
- receiving_activity add column quantity numeric(10, 2)
- receiving_activity drop column finalProcessedWeight 
- receiving_activity add column finalProcessedWeight numeric(10, 2)
- receiving_activity drop column lotBalance 
- receiving_activity add column lotBalance numeric(10, 2)

## 2022-05-27 AddProcessingAmountChargedAsDecimal
- processing_activity drop column amountCharged 
- processing_activity add column amountCharged numeric(10, 2)

## 2022-05-26 UpdateRoleEntity
- role rename column uuid from id
- user rename column uuid from id
- user_roles_role add primary key "roleId"
- user_roles_role drop column userId 
- user_roles_role drop column roleId 
- user_roles_role add column userUuid uuid NOT NULL
- user_roles_role add primary key "userUuid"
- user_roles_role add column roleUuid uuid NOT NULL
- user_roles_role add primary key "userUuid", "roleUuid"
- role drop column uuid 
- role add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- role add primary key "uuid"
- user_roles_role index userUuid
- user_roles_role index roleUuid
- user_roles_role add FK userUuid → user.uuid ON DELETE CASCADE ON UPDATE CASCADE
- user_roles_role add FK roleUuid → role.uuid ON DELETE CASCADE ON UPDATE CASCADE

## 2022-05-19 ReceivingNameError
- receiving_activity create table 
- receiving_activity add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- receiving_activity add column dateRecieved date NOT NULL
- receiving_activity add column activityType "nmis"."receiving_activity_activitytype_enum" NOT NULL
- receiving_activity add column quantity integer NOT NULL
- receiving_activity add column unitOfMeasurement "nmis"."receiving_activity_unitofmeasurement_enum" NOT NULL
- receiving_activity add column pointOfContact character varying
- receiving_activity add column finalProcessedWeight integer
- receiving_activity add column rushOrder boolean
- receiving_activity add column lotBalance integer NOT NULL
- receiving_activity add column metadataCreatedBy uuid
- receiving_activity add column metadataModifiedBy uuid
- receiving_activity add column metadataDeletedBy uuid
- receiving_activity add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- receiving_activity add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- receiving_activity add column metadataDeleted boolean NOT NULL DEFAULT false
- receiving_activity add column metadataDeletedon TIMESTAMP
- source_lot drop column recievingActivityUuid 
- source_lot add column receivingActivityUuid uuid
- source_lot add unique "receivingActivityUuid"
- source_lot drop column elevationRange 
- source_lot add column elevationRange character varying
- receiving_activity add FK metadataCreatedBy → user.id
- receiving_activity add FK metadataModifiedBy → user.id
- receiving_activity add FK metadataDeletedBy → user.id
- source_lot add FK receivingActivityUuid → receiving_activity.uuid

## 2022-05-18 SourceLotonDeleteRelations
- source_lot_attachment add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- test_result add FK testUuid → source_lot_test.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- source_lot_test add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION
- processing_activity add FK sourceLotUuid → source_lot.uuid ON DELETE CASCADE ON UPDATE NO ACTION

## 2022-05-03 sourceLotBreedingZoneToNullable
- recieving_activity drop column sourceLotUuid 
- source_lot drop column breedingZone 
- source_lot add column breedingZone character varying(10)

## 2022-04-26 AddTesting
- test_result create table 
- test_result add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- test_result add column germinationPercent integer
- test_result add column statification boolean
- test_result add column purityPercent integer
- test_result add column eRHPercent integer
- test_result add column seedsPerLb integer
- test_result add column gramsPer100Seed integer
- test_result add column fillPercent integer
- test_result add column testUuid uuid
- source_lot_test create table 
- source_lot_test add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- source_lot_test add column testDate TIMESTAMP NOT NULL
- source_lot_test add column testType character varying NOT NULL
- source_lot_test add column invoice boolean NOT NULL DEFAULT false
- source_lot_test add column dollarAmount integer
- source_lot_test add column sourceLotUuid uuid
- user add column testsConductedUuid uuid
- test_result add FK testUuid → source_lot_test.uuid
- source_lot_test add FK sourceLotUuid → source_lot.uuid
- user add FK testsConductedUuid → source_lot_test.uuid

## 2022-04-25 AddActivities
- recieving_activity create table 
- recieving_activity add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- recieving_activity add column dateRecieved date NOT NULL
- recieving_activity add column activityType "nmis"."recieving_activity_activitytype_enum" NOT NULL
- recieving_activity add column quantity integer NOT NULL
- recieving_activity add column unitOfMeasurement "nmis"."recieving_activity_unitofmeasurement_enum" NOT NULL
- recieving_activity add column pointOfContact character varying
- recieving_activity add column finalProcessedWeight integer
- recieving_activity add column rushOrder boolean
- recieving_activity add column lotBalance integer NOT NULL
- recieving_activity add column sourceLotUuid uuid
- recieving_activity add column metadataCreatedBy uuid
- recieving_activity add column metadataModifiedBy uuid
- recieving_activity add column metadataDeletedBy uuid
- recieving_activity add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- recieving_activity add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- recieving_activity add column metadataDeleted boolean NOT NULL DEFAULT false
- recieving_activity add column metadataDeletedon TIMESTAMP
- processing_activity create table 
- processing_activity add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- processing_activity add column activityDate date NOT NULL
- processing_activity add column activityType "nmis"."processing_activity_activitytype_enum" NOT NULL
- processing_activity add column quantity integer NOT NULL
- processing_activity add column unitOfMeasurement "nmis"."processing_activity_unitofmeasurement_enum" NOT NULL
- processing_activity add column amountCharged integer NOT NULL
- processing_activity add column sourceLotUuid uuid
- processing_activity add column metadataCreatedBy uuid
- processing_activity add column metadataModifiedBy uuid
- processing_activity add column metadataDeletedBy uuid
- processing_activity add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- processing_activity add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- processing_activity add column metadataDeleted boolean NOT NULL DEFAULT false
- processing_activity add column metadataDeletedon TIMESTAMP
- source_lot add column recievingActivityUuid uuid
- source_lot add unique "recievingActivityUuid"
- recieving_activity add FK sourceLotUuid → source_lot.uuid
- recieving_activity add FK metadataCreatedBy → user.id
- recieving_activity add FK metadataModifiedBy → user.id
- recieving_activity add FK metadataDeletedBy → user.id
- processing_activity add FK sourceLotUuid → source_lot.uuid
- processing_activity add FK metadataCreatedBy → user.id
- processing_activity add FK metadataModifiedBy → user.id
- processing_activity add FK metadataDeletedBy → user.id
- source_lot add FK recievingActivityUuid → recieving_activity.uuid

## 2022-04-18 FixCollectedBy
- source_lot add column collectedBy character varying

## 2022-04-12 AddSourceLotFieldChangesToEnums
- source_lot drop column collectedBy 
- source_lot drop column collectionMethod 
- source_lot add column collectionMethod "nmis"."source_lot_collectionmethod_enum"
- source_lot drop column elevationRange 
- source_lot add column elevationRange "nmis"."source_lot_elevationrange_enum"
- source_lot drop column generation 
- source_lot add column generation "nmis"."source_lot_generation_enum"
- source_lot drop column localAreaDescription 
- source_lot add column localAreaDescription character varying(10)
- source_lot drop column provisionalZone 
- source_lot add column provisionalZone "nmis"."source_lot_provisionalzone_enum"
- source_lot drop column storageFacility 
- source_lot add column storageFacility "nmis"."source_lot_storagefacility_enum"

## 2022-03-28 AddSourceLotStatusDefault
- source_lot alter column status SET DEFAULT '1'

## 2022-03-04 AddClientTable
- client create table 
- client add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- client add column clientId character varying NOT NULL
- client add column forest character varying
- client add column district character varying
- client add column metadataCreatedBy uuid
- client add column metadataModifiedBy uuid
- client add column metadataDeletedBy uuid
- client add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- client add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- client add column metadataDeleted boolean NOT NULL DEFAULT false
- client add column metadataDeletedon TIMESTAMP
- client add FK metadataCreatedBy → user.id
- client add FK metadataModifiedBy → user.id
- client add FK metadataDeletedBy → user.id

## 2022-03-02 AddFileTable
- source_lot_attachment create table 
- source_lot_attachment add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- source_lot_attachment add column sourceLotUuid uuid
- source_lot_attachment add column metadataCreatedBy uuid
- source_lot_attachment add column metadataModifiedBy uuid
- source_lot_attachment add column metadataDeletedBy uuid
- source_lot_attachment add column fileFilename character varying NOT NULL
- source_lot_attachment add column fileData bytea NOT NULL
- source_lot_attachment add column fileMetadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot_attachment add column fileMetadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot_attachment add column fileMetadataDeleted boolean NOT NULL DEFAULT false
- source_lot_attachment add column fileMetadataDeletedon TIMESTAMP
- source_lot add column notes character varying
- source_lot_attachment add FK sourceLotUuid → source_lot.uuid
- source_lot_attachment add FK metadataCreatedBy → user.id
- source_lot_attachment add FK metadataModifiedBy → user.id
- source_lot_attachment add FK metadataDeletedBy → user.id

## 2022-02-03 AddSpeciesTable
- species create table 
- species add column uuid uuid NOT NULL DEFAULT uuid_generate_v4()
- species add column symbol character varying NOT NULL
- species add column synonymSymbol character varying
- species add column scientificName character varying
- species add column commonName character varying
- species add column family character varying
- species add column metadataCreatedBy uuid
- species add column metadataModifiedBy uuid
- species add column metadataDeletedBy uuid
- species add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- species add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- species add column metadataDeleted boolean NOT NULL DEFAULT false
- species add column metadataDeletedon TIMESTAMP
- species add FK metadataCreatedBy → user.id
- species add FK metadataModifiedBy → user.id
- species add FK metadataDeletedBy → user.id

## 2022-01-31 SourceCodeFields
- source_lot rename column uuid from id
- source_lot add column breedingZone character varying NOT NULL DEFAULT 'none'
- source_lot add column collectedBy character varying
- source_lot add column collectionMethod character varying
- source_lot add column coordinates geography(Point, 4326)
- source_lot add column dateCollected TIMESTAMP
- source_lot add column elevationRange character varying
- source_lot add column exactElevation integer
- source_lot add column factsCode character varying
- source_lot add column generation character varying(2)
- source_lot add column localAreaDescription character varying
- source_lot add column meridian character varying
- source_lot add column provisionalZone character varying
- source_lot add column range character varying
- source_lot add column section character varying
- source_lot add column seedZone character varying
- source_lot add column sourceCode character varying
- source_lot add column speciesCodeGenus character varying
- source_lot add column stands integer
- source_lot add column town character varying
- source_lot add column treesPerStand integer
- source_lot alter column category DROP NOT NULL
- source_lot alter column clientId DROP DEFAULT
- source_lot alter column lotId DROP DEFAULT
- source_lot alter column speciesCode DROP NOT NULL
- source_lot alter column speciesCode DROP DEFAULT
- source_lot alter column species DROP NOT NULL
- source_lot alter column species DROP DEFAULT
- source_lot alter column status DROP NOT NULL
- source_lot alter column status DROP DEFAULT
- source_lot alter column storageFacility DROP NOT NULL
- source_lot alter column storageFacility DROP DEFAULT

## 2022-01-25 cleanup-unembedded-columns
- source_lot drop column createdBy 
- source_lot drop column createdOn 

## 2022-01-25 EmbedMetadata
- user add column metadataCreatedBy uuid
- user add column metadataModifiedBy uuid
- user add column metadataDeletedBy uuid
- user add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- user add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- user add column metadataDeleted boolean NOT NULL DEFAULT false
- user add column metadataDeletedon TIMESTAMP
- source_lot add column metadataCreatedBy uuid
- source_lot add column metadataModifiedBy uuid
- source_lot add column metadataDeletedBy uuid
- source_lot add column metadataCreatedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot add column metadataModifiedon TIMESTAMP NOT NULL DEFAULT now()
- source_lot add column metadataDeleted boolean NOT NULL DEFAULT false
- source_lot add column metadataDeletedon TIMESTAMP
- user add FK metadataCreatedBy → user.id
- user add FK metadataModifiedBy → user.id
- user add FK metadataDeletedBy → user.id
- source_lot add FK metadataCreatedBy → user.id
- source_lot add FK metadataModifiedBy → user.id
- source_lot add FK metadataDeletedBy → user.id

## 2022-01-20 addSourceLotFields
- source_lot rename column speciesCode from species_code
- source_lot alter column speciesCode SET DEFAULT 'none'
- source_lot alter column species SET DEFAULT 'none'
- source_lot rename column storageFacility from storage_facility
- source_lot alter column storageFacility SET DEFAULT 'unknown facility'
- source_lot add column seedYear integer NOT NULL DEFAULT '1900'
- source_lot data update 
- source_lot drop column seed_year 
- source_lot rename column clientId from client
- source_lot alter column clientId SET DEFAULT 'unknown client'
- source_lot add column createdBy character varying NOT NULL DEFAULT 'unknown creator'
- source_lot add column createdOn TIMESTAMP NOT NULL DEFAULT '2020-01-01 00:00:00'
- source_lot add column status INTEGER NOT NULL DEFAULT '-1'
- source_lot add column lotIdNumber INTEGER NOT NULL DEFAULT '-1'
- source_lot add column lotId character varying NOT NULL DEFAULT 'unknown-2000--1'
- source_lot data update 
- source_lot drop column id 
- source_lot add column id uuid NOT NULL DEFAULT uuid_generate_v4()
- source_lot add primary key "id"

## 2021-12-28 AddTables_UserAndSourceLot
- role create table 
- role add column id character varying NOT NULL
- role add column name character varying NOT NULL
- role add column description character varying NOT NULL
- source_lot create table 
- source_lot add column id SERIAL NOT NULL
- source_lot add column species_code character varying NOT NULL
- source_lot add column species character varying NOT NULL
- source_lot add column storage_facility character varying NOT NULL
- source_lot add column seed_year TIMESTAMP NOT NULL DEFAULT '2020-01-01 00:00:00'
- source_lot add column category character varying NOT NULL
- source_lot add column client character varying NOT NULL
- user create table 
- user add column id uuid NOT NULL DEFAULT uuid_generate_v4()
- user add column eAuthId character varying NOT NULL
- user add column email character varying NOT NULL
- user add column firstName character varying NOT NULL
- user add column lastName character varying NOT NULL
- user_roles_role create table 
- user_roles_role add column userId uuid NOT NULL
- user_roles_role add column roleId character varying NOT NULL
- user_roles_role index userId
- user_roles_role index roleId
- user_roles_role add FK userId → user.id ON DELETE CASCADE ON UPDATE CASCADE
- user_roles_role add FK roleId → role.id ON DELETE CASCADE ON UPDATE CASCADE
