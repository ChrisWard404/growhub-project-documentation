# GrowHub frontend HTTP requests

Every HTTP call in the Angular services, paired with the backend route it hits.

## ActivitiesService (`src/app/services/activities.service.ts`)
- **getAllActivities** GET /api/sourcelot/:p/activities → /api/sourcelot/:id/activities · tables: source_lot · callers: ActivitiesComponent
- **getReceivingActivity** GET /api/sourcelot/receiving/:p → /api/sourcelot/receiving/:id · tables: receiving_activity · callers: unused
- **createReceivingActivity** POST /api/sourcelot/:p/receiving → /api/sourcelot/:id/receiving · tables: receiving_activity, source_lot · callers: ReceivingFormComponent
- **updateReceivingActivity** PUT /api/sourcelot/receiving/:p → /api/sourcelot/receiving/:id · tables: receiving_activity · callers: ReceivingFormComponent
- **deleteReceivingActivity** DELETE /api/sourcelot/receiving/:p → /api/sourcelot/receiving/:id · tables: receiving_activity, user · callers: ActivitiesComponent
- **createProcessingActivity** POST /api/sourcelot/:p/processing → /api/sourcelot/:id/processing · tables: processing_activity, source_lot · callers: ProcessingFormComponent
- **updateProcessingActivity** PUT /api/sourcelot/processing/:p → /api/sourcelot/processing/:processingId · tables: processing_activity, source_lot · callers: ProcessingFormComponent
- **deleteProcessingActivity** DELETE /api/sourcelot/processing/:p → /api/sourcelot/processing/:processingId · tables: processing_activity · callers: ActivitiesComponent

## AuthService (`src/app/services/auth.service.ts`)
- **authenticate** GET /auth/redirect → NO BACKEND ROUTE · tables:  · callers: NmisAccessComponent, UserFormComponent
- **login** GET /auth/profile → NO BACKEND ROUTE · tables:  · callers: NmisAccessRedirectComponent

## BaseApiService (`src/app/services/base-api.service.ts`)
- **getAll** GET /api/base → NO BACKEND ROUTE · tables:  · callers: unused
- **get** GET /api/base/:p → NO BACKEND ROUTE · tables:  · callers: unused
- **create** POST /api/base → NO BACKEND ROUTE · tables:  · callers: unused
- **create** POST /api/base → NO BACKEND ROUTE · tables:  · callers: unused
- **update** PUT /api/base/:p → NO BACKEND ROUTE · tables:  · callers: unused
- **update** PUT /api/base/:p → NO BACKEND ROUTE · tables:  · callers: unused

## ClientService (`src/app/services/client.service.ts`)
- **getAllClients** GET /api/client → /api/client · tables: client · callers: ClientManagementComponent
- **getAllNurseries** GET /api/client/nurseries → /api/client/nurseries · tables: client · callers: ShippingAddEditComponent
- **getAllLabs** GET /api/client/labs → /api/client/labs · tables: client · callers: MultiAddFormComponent, ShippingAddEditComponent, TestingFormComponent.getAllLabs
- **getSingleClient** GET /api/client/:p → /api/client/:id · tables: client · callers: ClientEditComponent, ContactFormComponent.getCurrentClient, InvoiceDetailsComponent, OrderSummaryComponent, SeedlingShippingDetailsComponent.getShippedFromClient, SeedlingShippingMainComponent, ShippingDetailsComponent, SourceLotInvoiceSummaryComponent
- **createClient** POST /api/client → /api/client · tables: client · callers: ClientEditComponent
- **updateClient** PUT /api/client/:p → /api/client/:id · tables: client · callers: ClientEditComponent, ContactFormComponent.openDeleteModal, ContactFormComponent.updateExistingClient
- **updateClient** PUT /api/client/:p → /api/client/:id · tables: client · callers: ClientEditComponent, ContactFormComponent.openDeleteModal, ContactFormComponent.updateExistingClient
- **deleteClient** DELETE /api/client/:p → /api/client/:id · tables: client · callers: ClientEditComponent
- **deleteClient** DELETE /api/client/:p → /api/client/:id · tables: client · callers: ClientEditComponent
- **getAllContacts** GET /api/client → /api/client · tables: client · callers: unused
- **getSingleContact** GET /api/client/:p → /api/client/:id · tables: client · callers: unused
- **createContact** POST /api/client → /api/client · tables: client · callers: unused
- **updateContact** PUT /api/client/:p → /api/client/:id · tables: client · callers: unused
- **updateContact** PUT /api/client/:p → /api/client/:id · tables: client · callers: unused
- **deleteContact** DELETE /api/client/:p → /api/client/:id · tables: client · callers: unused
- **deleteContact** DELETE /api/client/:p → /api/client/:id · tables: client · callers: unused
- **search** GET /api/client/search → /api/client/search · tables: client, user · callers: unused
- **searchLabs** GET /api/client/labs → /api/client/labs · tables: client · callers: unused

## FinancialManagementService (`src/app/services/financial-management.service.ts`)
- **getAllStorageCosts** GET /api/pricing/storage → /api/pricing/storage · tables: storage_pricing · callers: StorageCostsComponent
- **getAllInvoices** GET /api/billing → /api/billing · tables: billing_file · callers: ClientInvoicingComponent
- **createStorageCost** POST /api/pricing/storage → /api/pricing/storage · tables: storage_cost, storage_pricing · callers: AddStorageCostModalComponent
- **getStorageCostById** GET /api/pricing/storage/:p → /api/pricing/storage/:pricingId · tables: storage_pricing · callers: StorageCostsComponent
- **getStorageCostById** GET /api/pricing/storage/:p → /api/pricing/storage/:pricingId · tables: storage_pricing · callers: StorageCostsComponent
- **getInvoiceActivites** POST /api/billing/new → /api/billing/new · tables: billing_file · callers: CreateInvoiceComponent
- **createBill** POST /api/billing → /api/billing · tables: billing_file · callers: CreateInvoiceComponent
- **appendRowsToBill** POST /api/billing/:p/append-rows → /api/billing/:id/append-rows · tables: billing_file · callers: CreateInvoiceComponent
- **getInvoiceById** GET /api/billing/:p → /api/billing/:id · tables: billing_file · callers: InvoiceDetailsComponent
- **getInvoiceById** GET /api/billing/:p → /api/billing/:id · tables: billing_file · callers: InvoiceDetailsComponent
- **updateStorageCost** PUT /api/pricing/storage/:p → /api/pricing/storage/:pricingId · tables: storage_cost, storage_pricing · callers: EditStorageCostModalComponent
- **updateStorageCost** PUT /api/pricing/storage/:p → /api/pricing/storage/:pricingId · tables: storage_cost, storage_pricing · callers: EditStorageCostModalComponent
- **deleteStorageCost** DELETE /api/pricing/storage/:p → /api/pricing/storage/:pricingId · tables: storage_pricing · callers: StorageCostsComponent
- **deleteStorageCost** PUT /api/pricing/storage/:p → /api/pricing/storage/:pricingId · tables: storage_cost, storage_pricing · callers: StorageCostsComponent
- **deleteBill** DELETE /api/billing/:p → /api/billing/:id · tables: billing_file, yearly_storage_cost · callers: InvoiceDetailsComponent
- **deleteBill** PUT /api/billing/:p → NO BACKEND ROUTE · tables:  · callers: InvoiceDetailsComponent
- **searchPricing** GET /api/pricing/storage/search → /api/pricing/storage/search · tables: storage_pricing · callers: unused
- **search** GET /api/billing/search → /api/billing/search · tables: billing_file · callers: unused

## GrowLocationService (`src/app/services/grow-location.service.ts`)
- **getAllStorage** GET /api/grow-locations → NO BACKEND ROUTE · tables:  · callers: EsriMapsComponent
- **getBeds** GET /api/bed-row → /api/bed-row · tables: bed_row · callers: OrderProductionComponent
- **getBays** GET /api/bay → /api/bay · tables: bay · callers: OrderProductionComponent

## GrowUnitsService (`src/app/services/grow-units.service.ts`)
- **getGrowUnits** GET /api/grow-unit/ → /api/grow-unit · tables: grow_unit · callers: GrowCyclesComponent, GrowUnitsComponent, ProductsFormComponent
- **getGrowUnitById** GET /api/grow-unit/:p → /api/grow-unit/:id · tables: grow_unit · callers: unused
- **createGrowUnit** POST /api/grow-unit/ → /api/grow-unit · tables: grow_unit · callers: GrowUnitFormComponent
- **updateGrowUnit** PUT /api/grow-unit/:p → /api/grow-unit/:id · tables: grow_unit · callers: GrowUnitFormComponent

## LocationService (`src/app/services/location.service.ts`)
- **getAllStorage** GET /api/sourcelot/:p/storage → /api/sourcelot/:id/storage · tables: storage · callers: LocationComponent, OrderGrowRequestComponent.getSourceLotStorageInfo, OrderPlanningComponent, SeedPreparationComponent
- **getSingleStorage** GET /api/sourcelot/storage/:p → /api/sourcelot/storage/:id · tables: storage · callers: unused
- **createStorage** POST /api/sourcelot/:p/storage → /api/sourcelot/:id/storage · tables: source_lot, storage · callers: StorageFormComponent
- **updateStorage** PUT /api/sourcelot/storage/:p → /api/sourcelot/storage/:id · tables: storage · callers: StorageFormComponent
- **deleteStorage** DELETE /api/sourcelot/storage/:p → /api/sourcelot/storage/:id · tables: storage · callers: LocationComponent

## OrderFulfillmentService (`src/app/services/order-fulfillment.service.ts`)
- **updateSingleLiftRequest** PUT /api/order/:p/cycles/:p/fulfillment/:p/lift-request/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-request/:requestId · tables: lift_request · callers: LiftRequestFormComponent
- **deleteSingleLiftRequest** DELETE /api/order/:p/cycles/:p/fulfillment/:p/lift-request/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-request/:requestId · tables: lift_request · callers: OrderFulfillmentComponent
- **updateSingleLiftSummary** PUT /api/order/:p/cycles/:p/fulfillment/:p/lift-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-summary/:summaryId · tables: lift_summary · callers: LiftSummaryFormComponent
- **deleteSingleLiftSummary** DELETE /api/order/:p/cycles/:p/fulfillment/:p/lift-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-summary/:summaryId · tables: lift_summary, lift_summary_location · callers: OrderFulfillmentComponent
- **getSingleLiftSummary** GET /api/order/:p/cycles/:p/fulfillment/:p/lift-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-summary/:summaryId · tables: lift_summary · callers: unused
- **updateSingleLiftSummaryLocation** PUT /api/order/:p/cycles/:p/fulfillment/:p/lift-summary/:p/location/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-summary/:summaryId/location/:locationId · tables: lift_summary_location · callers: LiftSummaryFormComponent
- **deleteSingleLiftSummaryLocation** DELETE /api/order/:p/cycles/:p/fulfillment/:p/lift-summary/:p/location/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/lift-summary/:summaryId/location/:locationId · tables: production_location · callers: LiftSummaryFormComponent
- **createPackSummary** POST /api/order/:p/cycles/:p/fulfillment/:p/pack-summary → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/pack-summary · tables: pack_summary · callers: PackSummaryFormComponent
- **updateSinglePackSummary** PUT /api/order/:p/cycles/:p/fulfillment/:p/pack-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/pack-summary/:id · tables: pack_summary · callers: PackSummaryFormComponent
- **deleteSinglePackSummary** DELETE /api/order/:p/cycles/:p/fulfillment/:p/pack-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/pack-summary/:id · tables: pack_summary, user · callers: OrderFulfillmentComponent
- **createStorageSummary** POST /api/order/:p/cycles/:p/fulfillment/:p/pack-summary/:p/storage-summary → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/pack-summary/:packSummaryId/storage-summary · tables: storage_summary · callers: PackSummaryFormComponent
- **updateSingleStorageSummary** PUT /api/order/:p/cycles/:p/fulfillment/:p/pack-summary/:p/storage-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/pack-summary/:packSummaryId/storage-summary/:id · tables: storage_summary · callers: PackSummaryFormComponent
- **deleteSingleStorageSummary** DELETE /api/order/:p/cycles/:p/fulfillment/:p/pack-summary/:p/storage-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/pack-summary/:packSummaryId/storage-summary/:id · tables: storage_summary, user · callers: OrderFulfillmentComponent, PackSummaryFormComponent
- **updateSingleHarvestSummary** PUT /api/order/:p/cycles/:p/fulfillment/:p/harvest-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/harvest-summary/:harvestSummaryId · tables: harvest_summary · callers: HarvestSummaryFormComponent
- **deleteSingleHarvestSummary** DELETE /api/order/:p/cycles/:p/fulfillment/:p/harvest-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/harvest-summary/:harvestSummaryId · tables: harvest_summary, user · callers: OrderFulfillmentComponent
- **updateSingleThawSummary** PUT /api/order/:p/cycles/:p/fulfillment/:p/thaw-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/thaw-summary/:id · tables: thaw_summary · callers: ThawSummaryFormComponent
- **deleteSingleThawSummary** DELETE /api/order/:p/cycles/:p/fulfillment/:p/thaw-summary/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/thaw-summary/:id · tables: thaw_summary · callers: unused
- **updateShipRequest** PUT /api/order/:p/cycles/:p/fulfillment/:p/ship-request/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/ship-request/:requestId · tables: ship_request · callers: ShipRequestFormComponent
- **deleteShipRequest** DELETE /api/order/:p/cycles/:p/fulfillment/:p/ship-request/:p → /api/order/:id/cycles/:cycleId/fulfillment/:fulfillmentId/ship-request/:requestId · tables: ship_request · callers: OrderFulfillmentComponent
- **getAllDestinations** GET /api/order/:p/cycles/:p/fulfillment/:p/ship-request/:p/destination → NO BACKEND ROUTE · tables:  · callers: ShipRequestFormComponent
- **deleteDestination** DELETE /api/order/:p/cycles/:p/fulfillment/:p/ship-request/:p/destination/:p → NO BACKEND ROUTE · tables:  · callers: ShipRequestFormComponent

## OrderService (`src/app/services/order.service.ts`)
- **createSingleOrder** POST /api/order → /api/order · tables: client, fulfillment, grow_cycle, grow_request, order, order_cycle, order_cycle_planning, order_cycle_production, user · callers: OrderGrowRequestComponent
- **getAllOrders** GET /api/order → /api/order · tables: order · callers: OrdersComponent
- **getSingleOrder** GET /api/order/:p → /api/order/:id · tables: order · callers: InventoryMenuCellRenderer, OrderFulfillmentComponent, OrderGrowRequestComponent, OrderProductionComponent, OrdersMainComponent, SeedPreparationComponent, SeedlingBankComponent
- **updateSingleOrder** PUT /api/order/:p → /api/order/:id · tables: order · callers: DeliverySummaryFormComponent, ProductionDetailsFormComponent
- **updateSingleOrder** PUT /api/order/:p → /api/order/:id · tables: order · callers: DeliverySummaryFormComponent, ProductionDetailsFormComponent
- **deleteSingleOrder** DELETE /api/order/:p → /api/order/:id · tables: fulfillment, grow_request, inventory_progress, lift_request, lift_summary, lift_summary_location, lot_slip, order, order_cycle, order_cycle_planning, order_cycle_production, pack_summary, production_location, storage_summary, thaw_summary · callers: OrdersMainComponent
- **deleteSingleOrder** DELETE /api/order/:p → /api/order/:id · tables: fulfillment, grow_request, inventory_progress, lift_request, lift_summary, lift_summary_location, lot_slip, order, order_cycle, order_cycle_planning, order_cycle_production, pack_summary, production_location, storage_summary, thaw_summary · callers: OrdersMainComponent
- **deleteSingleInventoryRecord** DELETE /api/order/:p/cycles/:p/inventory/:p → /api/order/:id/cycles/:cycleId/inventory/:id · tables: count_inventory, inventory_progress, size_inventory, size_spec_inventory · callers: OrderInventoryComponent
- **deleteSingleInventoryRecord** DELETE /api/order/:p/cycles/:p/inventory/:p → /api/order/:id/cycles/:cycleId/inventory/:id · tables: count_inventory, inventory_progress, size_inventory, size_spec_inventory · callers: OrderInventoryComponent
- **search** GET /api/order/search → /api/order/search · tables: order · callers: unused
- **growLotSearch** GET /api/order/growlot/search → /api/order/growlot/search · tables: order · callers: OrderGrowRequestComponent
- **getCompatibleSpeciesProducts** GET /api/order/:p/change-species-product/compatible-products → /api/order/:id/change-species-product/compatible-products · tables: order, species_product · callers: SwapSpeciesProductModalComponent
- **changeSpeciesProduct** POST /api/order/:p/change-species-product → /api/order/:id/change-species-product · tables: fulfillment, grow_cycle, grow_request, order, order_cycle, order_cycle_planning, order_cycle_production, order_species_product_change, species_product · callers: SwapSpeciesProductModalComponent
- **splitOrder** POST /api/order/:p/split → /api/order/:id/split · tables: bed_row, client, fulfillment, grow_request, lift_summary_location, order, order_cycle, order_cycle_planning, order_cycle_production, order_split, pack_summary, production_location, storage, storage_summary · callers: SplitGrowLotModalComponent
- **getSpeciesProductChangeHistory** GET /api/order/:p/species-product-change-history → /api/order/:id/species-product-change-history · tables: order, order_species_product_change · callers: OrdersMainComponent
- **updateGrowRequest** PUT /api/order/:p/request/:p → /api/order/:id/request/:requestId · tables: grow_request, order · callers: OrderGrowRequestComponent
- **updateGrowRequest** PUT /api/order/:p/request/:p → /api/order/:id/request/:requestId · tables: grow_request, order · callers: OrderGrowRequestComponent
- **updateSingleCyclePlanning** PUT /api/order/:p/cycles/:p/planning/:p → /api/order/:id/cycles/:cycleId/planning/:planningId · tables: order_cycle_planning · callers: OrderPlanningComponent
- **updateSingleCyclePlanning** PUT /api/order/:p/cycles/:p/planning/:p → /api/order/:id/cycles/:cycleId/planning/:planningId · tables: order_cycle_planning · callers: OrderPlanningComponent
- **updateSingleCycleProduction** PUT /api/order/:p/cycles/:p/production/:p → /api/order/:id/cycles/:cycleId/production/:productionId · tables: order_cycle, order_cycle_planning, order_cycle_production · callers: OrderProductionComponent, ReceiveSeedlingsComponent, SeedPreparationComponent
- **updateSingleCycleProduction** PUT /api/order/:p/cycles/:p/production/:p → /api/order/:id/cycles/:cycleId/production/:productionId · tables: order_cycle, order_cycle_planning, order_cycle_production · callers: OrderProductionComponent, ReceiveSeedlingsComponent, SeedPreparationComponent
- **getSingleOrderProduction** GET /api/order/:p/cycles/:p/production/:p → /api/order/:id/cycles/:cycleId/production/:productionId · tables: order_cycle_production · callers: unused
- **createSingleCycleGrowLocation** POST /api/order/:p/cycles/:p/production/:p/location → /api/order/:id/cycles/:cycleId/production/:productionId/location · tables: production_location · callers: unused
- **batchUpsertGrowLocations** POST /api/order/:p/cycles/:p/production/:p/location/batch → /api/order/:id/cycles/:cycleId/production/:productionId/location/batch · tables: order_cycle_production, production_location · callers: OrderProductionComponent
- **updateSingleCycleGrowLocation** PUT /api/order/:p/cycles/:p/production/:p/location/:p → /api/order/:id/cycles/:cycleId/production/:productionId/location/:locationId · tables: production_location · callers: unused
- **updateSingleCycleGrowLocation** PUT /api/order/:p/cycles/:p/production/:p/location/:p → /api/order/:id/cycles/:cycleId/production/:productionId/location/:locationId · tables: production_location · callers: unused
- **deleteSingleProductionLocation** DELETE /api/order/:p/cycles/:p/production/:p/location/:p → /api/order/:id/cycles/:cycleId/production/:productionId/location/:locationId · tables: production_location · callers: unused
- **deleteSingleProductionLocation** DELETE /api/order/:p/cycles/:p/production/:p/location/:p → /api/order/:id/cycles/:cycleId/production/:productionId/location/:locationId · tables: production_location · callers: unused
- **createCycleInventoryRecord** POST /api/order/:p/cycles/:p/inventory/ → /api/order/:id/cycles/:cycleId/inventory · tables: count_inventory, inventory_progress, size_inventory, size_spec_inventory · callers: InventoryModalComponent
- **getAllInventoryProgresses** GET /api/order/:p/cycles/:p/inventory/ → /api/order/:id/cycles/:cycleId/inventory · tables: inventory_progress · callers: InventoryModalComponent.getAllInventories, OrderInventoryComponent
- **updateSingleInventoryRecord** PUT /api/order/:p/cycles/:p/inventory/:p → /api/order/:id/cycles/:cycleId/inventory/:id · tables: count_inventory, inventory_progress, size_inventory, size_spec_inventory · callers: InventoryModalComponent
- **updateSingleInventoryRecord** PUT /api/order/:p/cycles/:p/inventory/:p → /api/order/:id/cycles/:cycleId/inventory/:id · tables: count_inventory, inventory_progress, size_inventory, size_spec_inventory · callers: InventoryModalComponent
- **getAllOrdersInventoryTable** GET /api/order/findAlInventoryProgressTable → /api/order/findAlInventoryProgressTable · tables: order · callers: InventoryTableComponent
- **getProductionLotsReport** GET /api/order/production-lots-report → /api/order/production-lots-report · tables: bed_row, inventory_progress, lift_request, lift_summary, order_cycle · callers: ProductionLotsComponent
- **getSowPlan** GET /api/order/sow-plan → /api/order/sow-plan · tables: order_cycle, oyjord_setting · callers: SowPlanComponent

## OyjordSettingsService (`src/app/services/oyjord-settings.service.ts`)
- **findAll** GET /api/oyjord-settings → /api/oyjord-settings · tables: oyjord_setting · callers: SeedPreparationComponent

## ProductsService (`src/app/services/products.service.ts`)
- **getProducts** GET /api/products/ → /api/products · tables: species_product · callers: ProductsComponent
- **getProduct** GET /api/products/:p → /api/products/:id · tables: species_product · callers: GrowCyclesComponent, ProductsFormComponent
- **createProduct** POST /api/products/ → /api/products · tables: grow_unit, species, species_product, user · callers: ProductsFormComponent
- **updateProduct** PUT /api/products/:p → /api/products/:id · tables: grow_unit, species_product · callers: ProductsFormComponent
- **deleteProduct** DELETE /api/products/:p → /api/products/:id · tables: species_product · callers: ProductsFormComponent
- **createProductSeedFactors** POST /api/products/:p/seedFactor/ → /api/products/:id/seedFactor · tables: seed_factor · callers: SeedFactorsComponent
- **updateProductSeedFactors** PUT /api/products/:p/seedFactor/:p → /api/products/:id/seedFactor/:id · tables: seed_factor · callers: SeedFactorsComponent
- **deleteProductSeedFactor** DELETE /api/products/:p/seedFactor/:p → /api/products/:id/seedFactor/:id · tables: seed_factor · callers: ProductsFormComponent
- **createProductCycle** POST /api/products/:p/grow-cycle/ → /api/products/:id/grow-cycle · tables: grow_cycle, product_inventory_cycle · callers: GrowCyclesComponent
- **updateProductCycle** PUT /api/products/:p/grow-cycle/:p → /api/products/:id/grow-cycle/:id · tables: grow_cycle, product_inventory_cycle · callers: GrowCyclesComponent
- **deleteProductCycle** DELETE /api/products/:p/grow-cycle/:p → /api/products/:id/grow-cycle/:id · tables: grow_cycle · callers: GrowCyclesComponent
- **updateOrder** PUT /api/products/:p/grow-cycle/order/ → /api/products/:id/grow-cycle/order · tables: grow_cycle · callers: GrowCyclesComponent, ProductsFormComponent
- **deleteGrowCycleInventoryFactors** DELETE /api/products/:p/grow-cycle/:p/inventory/:p → /api/products/:id/grow-cycle/:id/inventory/:id · tables: product_inventory_cycle · callers: BtnCellRenderer
- **search** GET /api/products/search → /api/products/search · tables: species_product · callers: OrderGrowRequestComponent

## ReportingService (`src/app/services/reporting.service.ts`)
- **getSourceLotReportData** POST /api/reporting/lot → /api/reporting/lot · tables: source_lot · callers: SeedBankComponent
- **getSeedlingReportData** POST /api/reporting/seedling → /api/reporting/seedling · tables: order_cycle · callers: SeedlingBankComponent
- **getSourceLotReportExcel** POST /api/reporting/lot → /api/reporting/lot · tables: source_lot · callers: SeedBankComponent
- **getSeedlingReportExcel** POST /api/reporting/seedling → /api/reporting/seedling · tables: order_cycle · callers: SeedlingBankComponent

## RoleService (`src/app/services/role.service.ts`)
- **getAllRoles** GET /api/role → /api/role · tables: role · callers: UserFormComponent
- **getAllRolesForUser** GET /api/role/byUser → /api/role/byUser · tables: user · callers: unused

## SeedlingShippingService (`src/app/services/seedling-shipping.service.ts`)
- **getAllSeedlingShipTickets** GET /api/seedling-ship-tickets → /api/seedling-ship-tickets · tables: seedling_ship_ticket · callers: SeedlingShippingMainComponent
- **getSeedlingShipTicketById** GET /api/seedling-ship-tickets/:p → /api/seedling-ship-tickets/:id · tables: seedling_ship_ticket · callers: SeedlingShipTicketAddEditComponent, SeedlingShippingDetailsComponent, SeedlingShippingMainComponent
- **createSeedlingShipTicket** POST /api/seedling-ship-tickets → /api/seedling-ship-tickets · tables: seedling_ship_ticket · callers: SeedlingShipTicketAddEditComponent
- **updateSeedlingShipTicket** PUT /api/seedling-ship-tickets/:p → /api/seedling-ship-tickets/:id · tables: seedling_ship_ticket · callers: SeedlingShipTicketAddEditComponent
- **patchFinalizedTicketFields** PUT /api/seedling-ship-tickets/:p → /api/seedling-ship-tickets/:id · tables: seedling_ship_ticket · callers: SeedlingShipTicketAddEditComponent
- **deleteSeedlingShipTicket** DELETE /api/seedling-ship-tickets/:p → /api/seedling-ship-tickets/:id · tables: seedling_ship_ticket · callers: SeedlingShipTicketAddEditComponent
- **growLotSearch** GET /api/seedling-ship-tickets/grow-lot-search → /api/seedling-ship-tickets/grow-lot-search · tables: seedling_lot_slip, storage_summary · callers: SeedlingDestinationDropModalComponent
- **getDestinationDrops** GET /api/seedling-ship-tickets/:p/destination-drop → /api/seedling-ship-tickets/:ticketId/destination-drop · tables: seedling_ship_ticket · callers: unused
- **getDestinationDrop** GET /api/seedling-ship-tickets/:p/destination-drop/:p → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId · tables: seedling_destination_drop · callers: unused
- **createDestinationDrop** POST /api/seedling-ship-tickets/:p/destination-drop → /api/seedling-ship-tickets/:ticketId/destination-drop · tables: seedling_destination_drop, seedling_ship_ticket · callers: SeedlingDestinationDropModalComponent
- **updateDestinationDrop** PUT /api/seedling-ship-tickets/:p/destination-drop/:p → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId · tables: seedling_destination_drop · callers: SeedlingDestinationDropModalComponent.reorderDrops, SeedlingShipTicketAddEditComponent
- **deleteDestinationDrop** DELETE /api/seedling-ship-tickets/:p/destination-drop/:p → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId · tables: seedling_destination_drop · callers: SeedlingShipTicketAddEditComponent
- **getLotSlips** GET /api/seedling-ship-tickets/:p/destination-drop/:p/lot-slip → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId/lot-slip · tables: seedling_destination_drop · callers: unused
- **getLotSlip** GET /api/seedling-ship-tickets/:p/destination-drop/:p/lot-slip/:p → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId/lot-slip/:slipId · tables: seedling_lot_slip · callers: unused
- **createLotSlip** POST /api/seedling-ship-tickets/:p/destination-drop/:p/lot-slip → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId/lot-slip · tables: seedling_lot_slip, storage_summary · callers: SeedlingDestinationDropModalComponent
- **deleteLotSlip** DELETE /api/seedling-ship-tickets/:p/destination-drop/:p/lot-slip/:p → /api/seedling-ship-tickets/:ticketId/destination-drop/:dropId/lot-slip/:slipId · tables: seedling_lot_slip · callers: SeedlingDestinationDropModalComponent

## ShippingService (`src/app/services/shipping.service.ts`)
- **getAllShipTickets** GET /api/source-shipments → /api/source-shipments · tables: source_shipment · callers: ShippingMainComponent
- **createSingleShipTicket** POST /api/source-shipments → /api/source-shipments · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **getShipTicketById** GET /api/source-shipments/:p → /api/source-shipments/:id · tables: source_shipment · callers: ShippingAddEditComponent, ShippingDetailsComponent, ShippingMainComponent
- **updateShipTicket** PUT /api/source-shipments/:p → /api/source-shipments/:id · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **updateShipTicket** PUT /api/source-shipments/:p → /api/source-shipments/:id · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **deleteLotSlipByID** DELETE /api/source-shipments/:p/lotSlip/:p → /api/source-shipments/:id/lotSlip/:slipId · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **deleteLotSlipByID** DELETE /api/source-shipments/:p/lotSlip/:p → /api/source-shipments/:id/lotSlip/:slipId · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **deleteShipTicket** DELETE /api/source-shipments/:p → /api/source-shipments/:id · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **deleteShipTicket** DELETE /api/source-shipments/:p → /api/source-shipments/:id · tables: lot_slip, source_shipment · callers: ShippingAddEditComponent
- **search** GET /api/source-shipments/search → /api/source-shipments/search · tables: source_shipment · callers: unused

## SourceLotAttachmentService (`src/app/services/sourcelot-attachment.service.ts`)
- **getAllSourceLotAttachments** GET /api/sourcelot/:p/file → /api/sourcelot/:id/file · tables: source_lot_attachment · callers: SourceLotDetailsComponent
- **createAttachments** POST /api/sourcelot/:p/file → /api/sourcelot/:id/file · tables: source_lot, source_lot_attachment · callers: SourceLotDetailsComponent
- **updateAttachment** PUT /api/sourcelot/file/:p → /api/sourcelot/file/:id · tables: source_lot_attachment · callers: unused
- **updateAttachment** PUT /api/sourcelot/file/:p → /api/sourcelot/file/:id · tables: source_lot_attachment · callers: unused
- **deleteAttachment** DELETE /api/sourcelot/file/:p → /api/sourcelot/file/:id · tables: source_lot_attachment · callers: SourceLotDetailsComponent
- **deleteAttachment** DELETE /api/sourcelot/file/:p → /api/sourcelot/file/:id · tables: source_lot_attachment · callers: SourceLotDetailsComponent

## SourceLotService (`src/app/services/source-lot.service.ts`)
- **getAllSourceLots** GET /api/sourcelot?viewLegacyData=:p → /api/sourcelot · tables: source_lot · callers: SourceLotComponent
- **getSingleSourceLot** GET /api/sourcelot/:p → /api/sourcelot/:id · tables: source_lot · callers: SourceLotDetailsComponent
- **getSingleSourceLotDetails** GET /api/sourcelot/:p/details → /api/sourcelot/:id/details · tables: source_lot · callers: ActivitiesComponent, CombineLotModalComponent, LocationComponent, SeedPreparationComponent, SourceLotDetailsComponent.getCurrentSourceLot, SourceLotMainComponent, SplitLotModalComponent.getLotBalance, SplitLotModalComponent.getParentLotBalance
- **getSingleSourceLotSummary** GET /api/sourcelot/:p/summary → /api/sourcelot/:id/summary · tables: client, source_lot · callers: SourceLotInvoiceSummaryComponent
- **createSingleSourceLot** POST /api/sourcelot → /api/sourcelot · tables: client, source_lot, species · callers: SourceLotDetailsComponent
- **updateSingleSourceLot** PUT /api/sourcelot/:p → /api/sourcelot/:id · tables: source_lot · callers: LocationComponent, SourceLotDetailsComponent
- **updateSingleSourceLot** PUT /api/sourcelot/:p → /api/sourcelot/:id · tables: source_lot · callers: LocationComponent, SourceLotDetailsComponent
- **updateToSurplusLot** PUT /api/sourcelot/:p/surplus → /api/sourcelot/:id/surplus · tables: source_lot · callers: LocationComponent
- **updateToSurplusLot** PUT /api/sourcelot/:p/surplus → /api/sourcelot/:id/surplus · tables: source_lot · callers: LocationComponent
- **changeSourceLotOwner** PUT /api/sourcelot/:p/changeOwner/:p → /api/sourcelot/:id/changeOwner/:clientId · tables: client · callers: ChangeOwnerModalComponent
- **deleteSingleSourceLot** DELETE /api/sourcelot/:p → /api/sourcelot/:id · tables: source_lot · callers: SourceLotDetailsComponent
- **deleteSingleSourceLot** DELETE /api/sourcelot/:p → /api/sourcelot/:id · tables: source_lot · callers: SourceLotDetailsComponent
- **combineSourceLots** PUT /api/sourcelot/:p/combo/:p → /api/sourcelot/:combinerLotId/combo/:combineeLotId · tables: source_lot · callers: CombineLotModalComponent
- **splitSourceLots** PUT /api/sourcelot/:p/split → /api/sourcelot/:id/split · tables: source_lot, user · callers: SplitLotModalComponent
- **adjustSourceLotBalance** PUT /api/sourcelot/:p/lotAdjustment → /api/sourcelot/:id/lotAdjustment · tables: source_lot, user · callers: AdjustLotBalanceModalComponent
- **transferSourceLotBalance** PUT /api/sourcelot/:p/transfer → /api/sourcelot/:id/transfer · tables: receiving_activity, source_lot, user · callers: TransferLotModalComponent
- **comboSearch** GET /api/sourceLot/search/combo → /api/sourcelot/search/combo · tables: source_lot · callers: CombineLotModalComponent
- **search** GET /api/sourceLot/search → /api/sourcelot/search · tables: source_lot, user · callers: OrderGrowRequestComponent, ShippingAddEditComponent, TestingComponent
- **search** GET /api/sourceLot/search → /api/sourcelot/search · tables: source_lot, user · callers: OrderGrowRequestComponent, ShippingAddEditComponent, TestingComponent
- **search** GET /api/sourceLot/search → /api/sourcelot/search · tables: source_lot, user · callers: OrderGrowRequestComponent, ShippingAddEditComponent, TestingComponent
- **search** GET /api/sourceLot/search → /api/sourcelot/search · tables: source_lot, user · callers: OrderGrowRequestComponent, ShippingAddEditComponent, TestingComponent
- **searchForPlanning** GET /api/sourceLot/searchForPlanning → /api/sourcelot/searchForPlanning · tables: source_lot · callers: OrderPlanningComponent

## SpeciesService (`src/app/services/species.service.ts`)
- **search** GET /api/species/search → /api/species/search · tables: species · callers: unused

## StatsService (`src/app/services/stats.service.ts`)
- **getAllStats** GET /api/stats/ → /api/stats · tables:  · callers: AdminMainComponent, DashboardComponent

## TestingService (`src/app/services/testing.service.ts`)
- **getAllTests** GET /api/sourcelot/:p/test → /api/sourcelot/:id/test · tables: source_lot_test · callers: OrderGrowRequestComponent.getSourceLotTests, OrderPlanningComponent, TestingComponent
- **getSingleTest** GET /api/sourcelot/test/:p → /api/sourcelot/test/:id · tables: source_lot_test · callers: unused
- **createTest** POST /api/sourcelot/:p/test → /api/sourcelot/:id/test · tables: client, source_lot, source_lot_test · callers: TestingFormComponent
- **createMultipleTests** POST /api/sourcelot/:p/test → /api/sourcelot/:id/test · tables: client, source_lot, source_lot_test · callers: MultiAddFormComponent
- **updateTest** PUT /api/sourcelot/test/:p → /api/sourcelot/test/:id · tables: client, source_lot, source_lot_test · callers: TestingFormComponent
- **deleteTest** DELETE /api/sourcelot/test/:p → /api/sourcelot/test/:id · tables: source_lot_test · callers: TestingComponent

## UserService (`src/app/services/user.service.ts`)
- **getAllRealUsers** GET /api/user → /api/user · tables: user · callers: UserManagementComponent
- **getSingleRealUser** GET /api/user/:p → /api/user/:id · tables: user · callers: HeaderComponent, HeroComponent
- **createrUser** POST /api/user/ → /api/user · tables: user · callers: UserFormComponent
- **updateUser** PUT /api/user/:p → /api/user/:id · tables: user · callers: UserFormComponent
- **deleteUser** DELETE /api/user/:p → /api/user/:id · tables: user · callers: UserFormComponent
