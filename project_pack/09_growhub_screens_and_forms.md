# GrowHub frontend screens and forms

Scraped from 2665-split-from-fulfillment @ 9478274e (2026-10-06 08:13). Each route screen with its components, reactive forms (fields, labels, validators, GrowHub column) and the service requests each form sends.

## Screen /admin (AdminMainComponent)

## Screen /admin/client-management (ClientManagementComponent)

## Screen /admin/client-management/new, /admin/client-management/edit/:id (ClientEditComponent)
### ClientEditComponent (`src/app/routes/admin/client-edit/client-edit.component.ts`)
Form **clientForm** (line 78), requests: ClientService.createClient, ClientService.updateClient
- clientId "Client ID" [maxLength(20), required] → client.clientId
- department "Department" [compose([required])] → client.department
- agency "Choose Agency" [compose([required])] → client.agency
- unit "Unit (ie. Office, Unit, Dept.)" [compose([required])] → client.unit
- billingPOC "Billing Contact" → client.billingPOC
- billingEmailAddress "Billing Email" [maxLength(200)] → client.billingEmailAddress
- billingAddress "Billing Address" → client.billingAddress
- shippingAddress "Shipping Address" → client.shippingAddress
- nurseries "Associated Nurseries" [compose([required])] → client.nurseries
- sourceTestingLab "Source Testing Lab" → client.sourceTestingLab
- notes "Notes" → client.notes
### ContactFormComponent (`src/app/routes/admin/client-edit/contact-form/contact-form.component.ts`)
Form **contactForm** (line 59), requests: ClientService.getSingleClient, ClientService.updateClient
- contactName "Contact Name"
- positionOrTitle "Position/Title"
- email "Email Address" → user.email
- phoneNumber "Phone Number" [max(9999999999), min(1000000000)]

## Screen /admin/grow-units (GrowUnitsComponent)
### GrowUnitFormComponent (`src/app/routes/admin/grow-units/grow-unit-form/grow-unit-form.component.ts`)
Form **growUnitForm** (line 52), requests: GrowUnitsService.createGrowUnit, GrowUnitsService.updateGrowUnit
- stockType "Stock Type" [required] → grow_unit.stockType
- code "Code" [maxLength(12), required] → grow_unit.code
- description "Description" [maxLength(100), required] → grow_unit.description
- cellDiameter "Cell Diameter" [max(999999999), min(0)] → grow_unit.cellDiameter
- cellDepth "Cell Depth" [max(999999999), min(0)] → grow_unit.cellDepth
- cellRows "Cell Rows" [max(999999999), min(0)] → grow_unit.cellRows
- cellColumns "Cell Columns" [max(999999999), min(0)] → grow_unit.cellColumns
- cellsPerContainer "Cells Per Container" [max(999999999), min(1), required] → grow_unit.cellsPerContainer
- areaPerContainer "Area Per Container" [max(999999999), min(0)] → grow_unit.areaPerContainer
- width "Width" [max(999999999), min(0)] → grow_unit.width
- length "Length" [max(999999999), min(0)] → grow_unit.length
- height "Height" [max(999999999), min(0)] → grow_unit.height
- drillRows "Drill Rows" [max(999999999), min(0)] → grow_unit.drillRows
- inactive "Inactive" → grow_unit.inactive

## Screen /admin/products (ProductsComponent)

## Screen /admin/products/new, /admin/products/edit/:id (ProductsFormComponent)
### GrowCyclesComponent (`src/app/routes/admin/products/grow-cycles/grow-cycles.component.ts`)
Form **growCyclesForm** (line 117), requests: GrowUnitsService.getGrowUnits, ProductsService.createProductCycle, ProductsService.updateProductCycle
- uuid → grow_cycle.uuid, grow_unit.uuid, product_inventory_cycle.uuid
- stockType "Stock Type: * Bareroot Container" [required] → grow_cycle.stockType, grow_unit.stockType
- growUnit "Grow Unit" [required] → grow_cycle.growUnitUuid
- timeGrown "Time Grown" [required] → grow_cycle.timeGrown
- beginSeason "Begin Season" [required] → grow_cycle.beginSeason
- endSeason "End Season" [required] → grow_cycle.endSeason
- desiredDensity "Desired Density" → grow_cycle.desiredDensity
- maximumDensity "Max. Density" → grow_cycle.maximumDensity
- containerFactor "Bareroot Space" → grow_cycle.containerFactor
- cycleIndex → grow_cycle.cycleIndex
- inventoryCycles
### ProductsFormComponent (`src/app/routes/admin/products/products-form/products-form.component.ts`)
Form **speciesProductForm** (line 409), requests: ProductsService.createProduct, ProductsService.getProduct, ProductsService.updateProduct
- createdAt (disabled)
- createdDate (disabled)
- createdBy (disabled)
- lastModifiedOn
- lastModifiedBy
- species "Species Code or Genus" → species_product.speciesUuid
- description → grow_unit.description, species_product.description
- totalFiscalYears "Total Years" → species_product.totalFiscalYears
- nonTraditional "Non-Traditional" → species_product.nonTraditional
- inactive "Mark Inactive" → grow_unit.inactive, species_product.inactive
- beginType "Begin Product" → species_product.beginType
- endType "End Product" → species_product.endType
- endUnitOfMeasurement "End Unit" → species_product.endUnitOfMeasurement
- originatingStockType "Previous Stock Type: * Bareroot Container" → species_product.originatingStockType
- originatingGrowUnit "Previous Grow Unit" → species_product.originatingGrowUnitUuid
- funnelSettings "Funnel Setting" → species_product.funnelSettings
- minUnitsPerRevolutions "Min. Units/Rev." → species_product.minUnitsPerRevolutions
- maxUnitsPerRevolutions "Max. Units/Rev." → species_product.maxUnitsPerRevolutions
- minHeight "Min. Height"
- maxHeight "Max. Height"
- minStemCaliper "Min. Caliper"
- altMinHeight "Min. Height"
- altMaxHeight "Max. Height"
- altMinStemCaliper "Min. Caliper"
- minRootLength "Min. Root Length"
- targetRootPrune "Prune Target"
- notes "Notes" → species_product.notes
### SeedFactorsComponent (`src/app/routes/admin/products/seed-factors/seed-factors.component.ts`)
Form **seedFactorsForm** (line 124), requests: ProductsService.createProductSeedFactors, ProductsService.updateProductSeedFactors
- uuid → client.uuid, seed_factor.uuid
- factorParams "Parameter Type" [required]
- clientPartial "Client" → seed_factor.clientPartial
- minElevation "Min. Elevation" → seed_factor.minElevation
- maxElevation "Max. Elevation" → seed_factor.maxElevation
- minGermination "Min. Germination" → seed_factor.minGermination
- maxGermination "Max. Germination" → seed_factor.maxGermination
- factor1 "Survival" → seed_factor.factor1
- factor2 "Harvest" → seed_factor.factor2
- factor3 "Shippable" → seed_factor.factor3
- overSowPercent "Over Sow %"

## Screen /admin/user-management (UserManagementComponent)
### UserFormComponent (`src/app/routes/admin/user-management/user-form/user-form.component.ts`)
Form **userForm** (line 73), requests: AuthService.authenticate, RoleService.getAllRoles, UserService.createrUser, UserService.updateUser
- firstName "First Name" [required] → user.firstName
- lastName "Last Name" [required] → user.lastName
- email "USDA Email Address" [compose([required,email])] → user.email
- currentNursery "Nursery" → user.currentNursery
- roles "Roles"

## Screen /dashboard (DashboardComponent)
### HeroComponent (`src/app/components/hero/hero.component.ts`)
Other inputs: selectedNurseryControl ""

## Screen /financial-management/invoicing (ClientInvoicingComponent)

## Screen /financial-management/invoicing/create (CreateInvoiceComponent)
### CreateInvoiceComponent (`src/app/routes/financial-management/client-invoicing/create-invoice/create-invoice.component.ts`)
Form **createInvoiceFilterForm** (line 116), requests: FinancialManagementService.appendRowsToBill, FinancialManagementService.createBill, FinancialManagementService.getInvoiceActivites
- facility "Nursery" [required]
- clientId "Client ID or Name" [required] → client.clientId
- clientToBill "Client to Bill" [required]
- startDate "Start Date" [required] → billing_file.startDate
- endDate "End Date" [required] → billing_file.endDate
- status "Invoice Status" [required]
- activityTypes "Billable Activity Types" [required]
- jobCode "Job Code" → billing_file.jobCode
- invoiceNumber "Invoice Number*" → billing_file.invoiceNumber

## Screen /financial-management/invoicing/details/:id (InvoiceDetailsComponent)

## Screen /financial-management/storage-costs (StorageCostsComponent)
### AddStorageCostModalComponent (`src/app/routes/financial-management/storage-costs/add-storage-cost-modal/add-storage-cost-modal.component.ts`)
Form **addStorageCostForm** (line 40), requests: FinancialManagementService.createStorageCost
- year "Year" → storage_pricing.year
- nursery "Nursery Facility" → storage_pricing.nursery
- costPerSeedling "Cost Per Packed Seedling" → storage_pricing.costPerSeedling
- storageCosts.coolerWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerWCFCosts.storageType → storage_cost.storageType
- storageCosts.coolerWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.coolerNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerTICosts.storageType → storage_cost.storageType
- storageCosts.coolerTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerTIPOCosts.storageType → storage_cost.storageType
- storageCosts.coolerTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerCOOPCosts.storageType → storage_cost.storageType
- storageCosts.coolerCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerSDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerSDSUCosts.storageType → storage_cost.storageType
- storageCosts.coolerSDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerSDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerSDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerSTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerSTZMCosts.storageType → storage_cost.storageType
- storageCosts.coolerSTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerSTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerSTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerWCFCosts.storageType → storage_cost.storageType
- storageCosts.freezerWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.freezerNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerTICosts.storageType → storage_cost.storageType
- storageCosts.freezerTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerTIPOCosts.storageType → storage_cost.storageType
- storageCosts.freezerTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerCOOPCosts.storageType → storage_cost.storageType
- storageCosts.freezerCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerSDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerSDSUCosts.storageType → storage_cost.storageType
- storageCosts.freezerSDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerSDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerSDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerSTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerSTZMCosts.storageType → storage_cost.storageType
- storageCosts.freezerSTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerSTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerSTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryWCFCosts.storageType → storage_cost.storageType
- storageCosts.granaryWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.granaryNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryTICosts.storageType → storage_cost.storageType
- storageCosts.granaryTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryTIPOCosts.storageType → storage_cost.storageType
- storageCosts.granaryTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryCOOPCosts.storageType → storage_cost.storageType
- storageCosts.granaryCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granarySDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granarySDSUCosts.storageType → storage_cost.storageType
- storageCosts.granarySDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granarySDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granarySDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granarySTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granarySTZMCosts.storageType → storage_cost.storageType
- storageCosts.granarySTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granarySTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granarySTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomWCFCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomTICosts.storageType → storage_cost.storageType
- storageCosts.stratRoomTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomTIPOCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomCOOPCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomSDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomSDSUCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomSDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomSDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomSDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomSTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomSTZMCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomSTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomSTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomSTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
### EditStorageCostModalComponent (`src/app/routes/financial-management/storage-costs/edit-storage-cost-modal/edit-storage-cost-modal.component.ts`)
Form **editStorageCostForm** (line 50), requests: FinancialManagementService.updateStorageCost
- year "Year" → storage_pricing.year
- nursery "Nursery Facility" → storage_pricing.nursery
- costPerSeedling "Cost Per Packed Seedling" → storage_pricing.costPerSeedling
- storageCosts.coolerWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerWCFCosts.storageType → storage_cost.storageType
- storageCosts.coolerWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.coolerNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerTICosts.storageType → storage_cost.storageType
- storageCosts.coolerTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerTIPOCosts.storageType → storage_cost.storageType
- storageCosts.coolerTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerCOOPCosts.storageType → storage_cost.storageType
- storageCosts.coolerCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerSDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerSDSUCosts.storageType → storage_cost.storageType
- storageCosts.coolerSDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerSDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerSDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.coolerSTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.coolerSTZMCosts.storageType → storage_cost.storageType
- storageCosts.coolerSTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.coolerSTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.coolerSTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerWCFCosts.storageType → storage_cost.storageType
- storageCosts.freezerWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.freezerNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerTICosts.storageType → storage_cost.storageType
- storageCosts.freezerTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerTIPOCosts.storageType → storage_cost.storageType
- storageCosts.freezerTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerCOOPCosts.storageType → storage_cost.storageType
- storageCosts.freezerCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerSDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerSDSUCosts.storageType → storage_cost.storageType
- storageCosts.freezerSDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerSDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerSDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.freezerSTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.freezerSTZMCosts.storageType → storage_cost.storageType
- storageCosts.freezerSTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.freezerSTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.freezerSTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryWCFCosts.storageType → storage_cost.storageType
- storageCosts.granaryWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.granaryNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryTICosts.storageType → storage_cost.storageType
- storageCosts.granaryTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryTIPOCosts.storageType → storage_cost.storageType
- storageCosts.granaryTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granaryCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granaryCOOPCosts.storageType → storage_cost.storageType
- storageCosts.granaryCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granaryCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granaryCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granarySDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granarySDSUCosts.storageType → storage_cost.storageType
- storageCosts.granarySDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granarySDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granarySDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.granarySTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.granarySTZMCosts.storageType → storage_cost.storageType
- storageCosts.granarySTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.granarySTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.granarySTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomWCFCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomNonWCFCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomNonWCFCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomNonWCFCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomNonWCFCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomNonWCFCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomTICosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomTICosts.storageType → storage_cost.storageType
- storageCosts.stratRoomTICosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomTICosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomTICosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomTIPOCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomTIPOCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomTIPOCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomTIPOCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomTIPOCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomCOOPCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomCOOPCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomCOOPCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomCOOPCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomCOOPCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomSDSUCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomSDSUCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomSDSUCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomSDSUCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomSDSUCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing
- storageCosts.stratRoomSTZMCosts.clientCategory → storage_cost.clientCategory
- storageCosts.stratRoomSTZMCosts.storageType → storage_cost.storageType
- storageCosts.stratRoomSTZMCosts.priceDividingWeight "Flat Rate Max Weight" → storage_cost.priceDividingWeight
- storageCosts.stratRoomSTZMCosts.lowWeightPricing "Flat Rate $ Amount" → storage_cost.lowWeightPricing
- storageCosts.stratRoomSTZMCosts.highWeightPricing "Per Pound $ Rate" → storage_cost.highWeightPricing

## Screen /inventory/seed-bank (SeedBankComponent)
### CombineLotModalComponent (`src/app/routes/inventory/seed-bank/combine-lot-modal/combine-lot-modal.component.ts`)
Form **combineLotForm** (line 58), requests: SourceLotService.getSingleSourceLotDetails
- parentLot "Parent Source Lot & Code"
- parentLotQuantity "Parent Source Lot Balance"
- childLot "Child Source Lot & Code"
- childLotQuantity "Child Source Lot Balance"
### SeedBankComponent (`src/app/routes/inventory/seed-bank/seed-bank.component.ts`)
Form **filterForm** (line 73), requests: ReportingService.getSourceLotReportData, ReportingService.getSourceLotReportExcel
- columnGroupDropdown
- actionGroupDropdown
- nurseries "Facilities" → client.nurseries
- statuses "Source Lot Status"
- columns
- startDate "Start Date" [required]
- endDate "End Date" [required]
Form **searchForm** (line 87), requests: -
- searchString "Search Input"
- operator "Operator"
- searchCategory "Search Column"
- searchString2 "Search Input"
- operator2 "Operator"
- searchCategory2 "Search Column"
- searchString3 "Search Input"
- operator3 "Operator"
- searchCategory3 "Search Column"
- searchString4 "Search Input"
- operator4 "Operator"
- searchCategory4 "Search Column"
### SplitLotModalComponent (`src/app/routes/inventory/seed-bank/split-lot-modal/split-lot-modal.component.ts`)
Form **splitLotForm** (line 58), requests: SourceLotService.getSingleSourceLotDetails, SourceLotService.splitSourceLots
- parentLot "Parent Source Lot & Code"
- parentLotQuantity "Parent Source Lot Balance"
- splitQuantity "Quantity To Split"

## Screen /inventory/seedlings (SeedlingBankComponent)
### InventoryModalComponent (`src/app/routes/orders/order-inventory/inventory-modal/inventory-modal.component.ts`)
Form **inventoryForm** (line 95), requests: OrderService.createCycleInventoryRecord, OrderService.getAllInventoryProgresses, OrderService.updateSingleInventoryRecord
- uuid → count_inventory.uuid, inventory_progress.uuid, size_inventory.uuid
- samplingDate "Sample Date" [required] → inventory_progress.samplingDate
- sampledBy "Sampled By" → inventory_progress.sampledBy
- notes "Notes" → inventory_progress.notes
- type → inventory_progress.type
- countInventory.actualCount "Actual Count" → count_inventory.actualCount
- maxCV "Max CV" → inventory_progress.maxCV
- survival "Survival" → inventory_progress.survival
- target "Target" → inventory_progress.target
- shippable "Shippable" → inventory_progress.shippable
- totalContainersPlanted → inventory_progress.totalContainersPlanted
- totalContainersSampled → inventory_progress.totalContainersSampled
- totalCount → inventory_progress.totalCount
- seedlingsPerContainer → inventory_progress.seedlingsPerContainer
- standardDeviation → inventory_progress.standardDeviation
- coefficientOfVariation → inventory_progress.coefficientOfVariation
- grossInventory → inventory_progress.grossInventory
- estimatedNetInventory → inventory_progress.estimatedNetInventory
- legacyData → inventory_progress.legacyData
- legacyId → inventory_progress.legacyId
- inventoryCycle "Time in Grow Cycle" → inventory_progress.inventoryCycleUuid
- latestCountInventory "Prev. Count Date" [required] → inventory_progress.latestCountInventoryUuid
- selectedGrossInventory "Prev. Gross"
- minHeight "Min. Height"
- maxHeight "Max. Height"
- minStemCaliper "Min. Caliper"
- altMinHeight "Alt Min. Height"
- altMaxHeight "Alt Max. Height"
- altMinStemCaliper "Alt Min. Caliper"
- totalAtSpec → inventory_progress.totalAtSpec
- totalAtAltSpec → inventory_progress.totalAtAltSpec
- percentAtSpec → inventory_progress.percentAtSpec
- percentAtAltSpec → inventory_progress.percentAtAltSpec
- altNetInventory → inventory_progress.altNetInventory
### SeedlingBankComponent (`src/app/routes/inventory/seedling-bank/seedling-bank.component.ts`)
Form **filterForm** (line 75), requests: ReportingService.getSeedlingReportData, ReportingService.getSeedlingReportExcel
- columnGroupDropdown
- nurseries "Facilities" → client.nurseries
- columns
- startDate "Start Date" [required]
- endDate "End Date" [required]
Form **searchForm** (line 87), requests: -
- searchString "Search Input"
- searchCategory "Search Column"
- searchString2 "Search Input"
- searchCategory2 "Search Column"

## Screen /orders (OrdersComponent)

## Screen /orders/inventory (InventoryTableComponent)

## Screen /orders/new, /orders/edit/:id (OrdersMainComponent)
### HarvestSummaryFormComponent (`src/app/routes/orders/order-fulfillment/harvest-summary-form/harvest-summary-form.component.ts`)
Form **form** (line 66), requests: OrderFulfillmentService.updateSingleHarvestSummary
- dateCollected "Date" [required] → harvest_summary.dateCollected
- category "Category" → harvest_summary.category
- rawMaterialQty "Raw Material Qty" [min(0), required] → harvest_summary.rawMaterialQty
- uom "UoM" [required] → harvest_summary.uom
- isHandHarvest "Hand Harvest" → harvest_summary.isHandHarvest
- contractor "Contractor" → harvest_summary.contractor
- cost "Cost" [min(0)] → harvest_summary.cost
- notes "Notes" [maxLength(2000)] → harvest_summary.notes
### InventoryModalComponent (`src/app/routes/orders/order-inventory/inventory-modal/inventory-modal.component.ts`)
Form **inventoryForm** (line 95), requests: OrderService.createCycleInventoryRecord, OrderService.getAllInventoryProgresses, OrderService.updateSingleInventoryRecord
- uuid → count_inventory.uuid, inventory_progress.uuid, size_inventory.uuid
- samplingDate "Sample Date" [required] → inventory_progress.samplingDate
- sampledBy "Sampled By" → inventory_progress.sampledBy
- notes "Notes" → inventory_progress.notes
- type → inventory_progress.type
- countInventory.actualCount "Actual Count" → count_inventory.actualCount
- maxCV "Max CV" → inventory_progress.maxCV
- survival "Survival" → inventory_progress.survival
- target "Target" → inventory_progress.target
- shippable "Shippable" → inventory_progress.shippable
- totalContainersPlanted → inventory_progress.totalContainersPlanted
- totalContainersSampled → inventory_progress.totalContainersSampled
- totalCount → inventory_progress.totalCount
- seedlingsPerContainer → inventory_progress.seedlingsPerContainer
- standardDeviation → inventory_progress.standardDeviation
- coefficientOfVariation → inventory_progress.coefficientOfVariation
- grossInventory → inventory_progress.grossInventory
- estimatedNetInventory → inventory_progress.estimatedNetInventory
- legacyData → inventory_progress.legacyData
- legacyId → inventory_progress.legacyId
- inventoryCycle "Time in Grow Cycle" → inventory_progress.inventoryCycleUuid
- latestCountInventory "Prev. Count Date" [required] → inventory_progress.latestCountInventoryUuid
- selectedGrossInventory "Prev. Gross"
- minHeight "Min. Height"
- maxHeight "Max. Height"
- minStemCaliper "Min. Caliper"
- altMinHeight "Alt Min. Height"
- altMaxHeight "Alt Max. Height"
- altMinStemCaliper "Alt Min. Caliper"
- totalAtSpec → inventory_progress.totalAtSpec
- totalAtAltSpec → inventory_progress.totalAtAltSpec
- percentAtSpec → inventory_progress.percentAtSpec
- percentAtAltSpec → inventory_progress.percentAtAltSpec
- altNetInventory → inventory_progress.altNetInventory
### LiftRequestFormComponent (`src/app/routes/orders/order-fulfillment/lift-request-form/lift-request-form.component.ts`)
Form **liftRequests** (line 106), requests: OrderFulfillmentService.updateSingleLiftRequest
- requestedDate "Order Date" [required] → lift_request.requestedDate
- liftActivity "Lift Activity" [required] → lift_request.liftActivity
- expectedShipDate "Expected Ship Date" → lift_request.expectedShipDate
- seedlingStorage "Freeze" → lift_request.seedlingStorage
- shipContainerType "Box Type" → lift_request.shipContainerType
- packAll "Pack all seedlings that meet specs" → lift_request.packAll
- requestedSeedlings "Ordered Seedlings" → lift_request.requestedSeedlings
- shippableSeedlingsPerSpace "Est. Shippable Seedlings per Container" → lift_request.shippableSeedlingsPerSpace
- estimatedLiftedSpaces "Est. Containers" → lift_request.estimatedLiftedSpaces
- estimatedSeedlingsPerBox "Est. Seedlings per Box" → lift_request.estimatedSeedlingsPerBox
- estimatedPackingBoxes "Est. Boxes" → lift_request.estimatedPackingBoxes
- minimumHeight "Min. Height" [max(1000), min(0)] → lift_request.minimumHeight
- maximumHeight "Max. Height" [max(1000), min(0)] → lift_request.maximumHeight
- caliper "Caliper" [max(1000), min(0)] → lift_request.caliper
- minimumRootLength "Min. Root Length" [max(1000), min(0)] → lift_request.minimumRootLength
- pruneTarget "Prune Target" [max(1000), min(0)] → lift_request.pruneTarget
- note "Notes" [maxLength(500)] → lift_request.note
### LiftSummaryFormComponent (`src/app/routes/orders/order-fulfillment/lift-summary-form/lift-summary-form.component.ts`)
Form **liftActivityForm** (line 208), requests: OrderFulfillmentService.deleteSingleLiftSummaryLocation, OrderFulfillmentService.updateSingleLiftSummary, OrderFulfillmentService.updateSingleLiftSummaryLocation
- liftDate "Activity Date" [required] → lift_summary.liftDate
- liftActivity "Activity Type" [required] → lift_summary.liftActivity
- contractor "Contracted Lift" → lift_summary.contractor
- temporaryStorage "Temporary Storage" → lift_summary.temporaryStorage
- fieldContainerType "Field Bin Type" → lift_summary.fieldContainerType
- fieldContainerQuantity "Field Bin Qty" → lift_summary.fieldContainerQuantity
- estSeedlingsPerFieldContainer "Estimated Seedlings per Bin" → lift_summary.estSeedlingsPerFieldContainer
- estSeedlingQuantity "Est. Seedling Qty" → lift_summary.estSeedlingQuantity
- qcIssue "QC Issue" → lift_summary.qcIssue
- notes "Notes" [maxLength(500)] → lift_summary.notes, production_location.notes
Form **liftActivityForm** (line 231), requests: OrderFulfillmentService.deleteSingleLiftSummaryLocation, OrderFulfillmentService.updateSingleLiftSummary, OrderFulfillmentService.updateSingleLiftSummaryLocation
- liftDate "Activity Date" [required] → lift_summary.liftDate
- liftActivity "Activity Type" [required] → lift_summary.liftActivity
- contractor "Contracted Lift" → lift_summary.contractor
- temporaryStorage "Temporary Storage" → lift_summary.temporaryStorage
- fieldContainerType "Field Bin Type" → lift_summary.fieldContainerType
- fieldContainerQuantity "Field Bin Qty" → lift_summary.fieldContainerQuantity
- estSeedlingsPerFieldContainer "Estimated Seedlings per Bin" → lift_summary.estSeedlingsPerFieldContainer
- estSeedlingQuantity "Est. Seedling Qty" → lift_summary.estSeedlingQuantity
- qcIssue "QC Issue" → lift_summary.qcIssue
- notes "Notes" [maxLength(500)] → lift_summary.notes, production_location.notes
### OrderGrowRequestComponent (`src/app/routes/orders/order-grow-request/order-grow-request.component.ts`)
### OrderPlanningComponent (`src/app/routes/orders/order-planning/order-planning.component.ts`)
### OrderProductionComponent (`src/app/routes/orders/order-production/order-production.component.ts`)
### OrdersMainComponent (`src/app/routes/orders/orders-main/orders-main.component.ts`)
Form **returned by newPlanningCycles()** (line 83), requests: -
- uuid → fulfillment.uuid, grow_cycle.uuid, grow_request.uuid
- metadata
- factor1 → order_cycle_planning.factor1
- factor2 → order_cycle_planning.factor2
- factor3 → order_cycle_planning.factor3
- sourceLotNursery → order_cycle_planning.sourceLotNursery
- sourceLot → lot_slip.sourceLotUuid, order_cycle_planning.sourceLotUuid
- seedFactor → order_cycle_planning.seedFactorUuid
- plannedSowDate → order_cycle_planning.plannedSowDate
- estimatedLbsOfSeed → order_cycle_planning.estimatedLbsOfSeed
- plannedStratDate → order_cycle_planning.plannedStratDate
- stratTime → order_cycle_planning.stratTime
- germPercent → order_cycle_planning.germPercent
- purityPercent → order_cycle_planning.purityPercent
- seedPerPound → order_cycle_planning.seedPerPound
- seedPerCell → order_cycle_planning.seedPerCell
- adjustedQuantityRequested → order_cycle_planning.adjustedQuantityRequested
- pastInventoryPerformance → order_cycle_planning.pastInventoryPerformance
- beginSeason → grow_cycle.beginSeason
- endSeason → grow_cycle.endSeason
- thinningProbability → order_cycle_planning.thinningProbability
- calculatedThinning
- cellsFilled → order_cycle_planning.cellsFilled
- desiredDensity → grow_cycle.desiredDensity, order_cycle_planning.desiredDensity
- containerSurvival → order_cycle_planning.containerSurvival
- adjustedCalculatedSeedQuantity → order_cycle_planning.adjustedCalculatedSeedQuantity
- adjustedCalculatedSpaceQuantity [required] → order_cycle_planning.adjustedCalculatedSpaceQuantity
- isUnsaved
Form **orderForm** (line 222), requests: GrowLocationService.getBays, GrowLocationService.getBeds, LocationService.getAllStorage, OrderService.batchUpsertGrowLocations, OrderService.createSingleOrder, OrderService.getSingleOrder, OrderService.getSpeciesProductChangeHistory, OrderService.updateGrowRequest, OrderService.updateSingleCyclePlanning, OrderService.updateSingleCycleProduction, OyjordSettingsService.findAll, SourceLotService.getSingleSourceLotDetails, TestingService.getAllTests
- status → order.status, order_cycle.status
- growNursery → order.growNursery
- growRequest.uuid → grow_request.uuid
- growRequest.client [required] → grow_request.clientUuid
- growRequest.contact → grow_request.contact
- growRequest.speciesProduct → grow_request.speciesProductUuid
- growRequest.targetLiftYear → grow_request.targetLiftYear
- growRequest.requestedSeedlingQuantity [required] → grow_request.requestedSeedlingQuantity
- growRequest.notes → grow_request.notes
- growRequest.estimatedCost → grow_request.estimatedCost
- growRequest.agreementQuantity → grow_request.agreementQuantity
- growRequest.dateCreated (disabled)
- growRequest.createdBy
- growRequest.createdAtFacility
- growRequest.originatingClientId → grow_request.originatingClientId
- growRequest.originatingGrowLotIdType → grow_request.originatingGrowLotIdType
- growRequest.originatingGrowLotId → grow_request.originatingGrowLotId
- growRequest.originatingGrowUnitNotes → grow_request.originatingGrowUnitNotes
- growRequest.originatingTimeGrown → grow_request.originatingTimeGrown
- growRequest.plannedTransplanter → grow_request.plannedTransplanter
- growRequest.rootLength → grow_request.rootLength
- growRequest.seedlingsInGrowContainer → grow_request.seedlingsInGrowContainer
- growRequest.originatingNotes → grow_request.originatingNotes
- growRequest.sourceType → grow_request.sourceType
- growRequest.nonGrowhubSourceLotId → grow_request.nonGrowhubSourceLotId
- growRequest.growHubSourceLotDisplay
- growRequest.nonGrowhubSourceData.dateCollected
- growRequest.nonGrowhubSourceData.generation → source_lot.generation
- growRequest.nonGrowhubSourceData.collectedBy → source_lot.collectedByUuid
- growRequest.nonGrowhubSourceData.collectionMethod → source_lot.collectionMethod
- growRequest.nonGrowhubSourceData.latitude [max(90), min(-90)]
- growRequest.nonGrowhubSourceData.longitude [max(180), min(-180)]
- growRequest.nonGrowhubSourceData.localAreaDescription [maxLength(30)] → source_lot.localAreaDescription
- growRequest.nonGrowhubSourceData.town [maxLength(3)] → source_lot.town
- growRequest.nonGrowhubSourceData.range [maxLength(3)] → source_lot.range
- growRequest.nonGrowhubSourceData.section [maxLength(2)] → production_location.section, storage_summary.section
- growRequest.nonGrowhubSourceData.meridian → source_lot.meridian
- growRequest.nonGrowhubSourceData.zoneFieldToShow
- growRequest.nonGrowhubSourceData.seedZone → source_lot.seedZone
- growRequest.nonGrowhubSourceData.breedingZone → source_lot.breedingZone
- growRequest.nonGrowhubSourceData.provisionalZone → source_lot.provisionalZone
- growRequest.nonGrowhubSourceData.factsCode → source_lot.factsCode
- growRequest.nonGrowhubSourceData.elevationRange [maxLength(12)] → source_lot.elevationRange
- growRequest.nonGrowhubSourceData.exactElevation [max(99999), min(0)] → source_lot.exactElevation
- growRequest.nonGrowhubSourceData.stands [max(999999), min(0)] → source_lot.stands
- growRequest.nonGrowhubSourceData.treesPerStand [max(999999), min(0)] → source_lot.treesPerStand
- growRequest.nonGrowhubSourceData.seedOrchardName [maxLength(100)] → source_lot.seedOrchardName
- growRequest.nonGrowhubSourceData.orchardSubUnit [maxLength(20)] → source_lot.orchardSubUnit
- growRequest.nonGrowhubSourceData.standNumber [maxLength(20)] → source_lot.standNumber
- growRequest.nonGrowhubSourceData.treeNumber [maxLength(20)] → source_lot.treeNumber
- growRequest.nonGrowhubSourceData.pedigree [maxLength(20)] → source_lot.pedigree
- growRequest.nonGrowhubSourceData.cycle [maxLength(10)] → source_lot.cycle
- growRequest.nonGrowhubSourceData.resistanceType [maxLength(20)] → source_lot.resistanceType
Form **returned by loadGrowCyclesIntoForm()** (line 530), requests: -
- planning.factor1 → order_cycle_planning.factor1
- planning.factor2 → order_cycle_planning.factor2
- planning.factor3 → order_cycle_planning.factor3
- planning.sourceLotNursery → order_cycle_planning.sourceLotNursery
- planning.sourceLot → order_cycle_planning.sourceLotUuid
- planning.seedFactor → order_cycle_planning.seedFactorUuid
- planning.plannedSowDate → order_cycle_planning.plannedSowDate
- planning.estimatedLbsOfSeed → order_cycle_planning.estimatedLbsOfSeed
- planning.plannedStratDate → order_cycle_planning.plannedStratDate
- planning.stratTime → order_cycle_planning.stratTime
- planning.germPercent → order_cycle_planning.germPercent
- planning.purityPercent → order_cycle_planning.purityPercent
- planning.seedPerPound → order_cycle_planning.seedPerPound
- planning.seedPerCell → order_cycle_planning.seedPerCell
- planning.adjustedQuantityRequested → order_cycle_planning.adjustedQuantityRequested
- planning.pastInventoryPerformance → order_cycle_planning.pastInventoryPerformance
- planning.beginSeason → grow_cycle.beginSeason
- planning.endSeason → grow_cycle.endSeason
- planning.thinningProbability → order_cycle_planning.thinningProbability
- planning.calculatedThinning
- planning.cellsFilled → order_cycle_planning.cellsFilled
- planning.desiredDensity → order_cycle_planning.desiredDensity
- planning.containerSurvival → order_cycle_planning.containerSurvival
- planning.adjustedCalculatedSeedQuantity → order_cycle_planning.adjustedCalculatedSeedQuantity
- planning.adjustedCalculatorSpaceQuantity
- planning.isUnsaved
- production.uuid → order_cycle_production.uuid
- production.metadata
- production.plantingDate → order_cycle_production.plantingDate
- production.isContract → order_cycle_production.isContract
- production.useRisers → order_cycle_production.useRisers
- production.withdrawalDate → order_cycle_production.withdrawalDate
- production.stratificationDate → order_cycle_production.stratificationDate
- production.stratNotes → order_cycle_production.stratNotes
- production.lbsOfSeedWithdrawn → order_cycle_production.lbsOfSeedWithdrawn
- production.numberBedFeet → order_cycle_production.numberBedFeet
- production.containersPlanted → order_cycle_production.containersPlanted
- production.totalGrowUnitsPlanted → order_cycle_production.totalGrowUnitsPlanted
- production.notes → order_cycle_production.notes
- production.receivedDate → order_cycle_production.receivedDate
- production.receivedFromGrower → order_cycle_production.receivedFromGrower
- production.temporaryStorage → order_cycle_production.temporaryStorage
- production.qtyOfBoxes → order_cycle_production.qtyOfBoxes
- production.seedlingsPerBox → order_cycle_production.seedlingsPerBox
- production.seedlingsInOddBox → order_cycle_production.seedlingsInOddBox
- production.estSeedlingQty → order_cycle_production.estSeedlingQty
- production.receiveNotes → order_cycle_production.receiveNotes
- production.barerootSpecifications.funnelSetting → order_cycle_production.barerootSpecificationsFunnelsetting
- production.barerootSpecifications.totalImbibedSeedWeight → order_cycle_production.barerootSpecificationsTotalimbibedseedweight
- production.barerootSpecifications.revolutions → order_cycle_production.barerootSpecificationsRevolutions
- production.barerootSpecifications.droppedWeight → order_cycle_production.barerootSpecificationsDroppedweight
- production.barerootSpecifications.AvgImbibedSeedWeightPerRevolution → order_cycle_production.barerootSpecificationsAvgimbibedseedweightperrevolution
- production.barerootSpecifications.estimatedFeetPerRevolution → order_cycle_production.barerootSpecificationsEstimatedfeetperrevolution
- production.barerootSpecifications.calibrationNotes → order_cycle_production.barerootSpecificationsCalibrationnotes
- production.barerootSpecifications.seederId → order_cycle_production.barerootSpecificationsSeederid
- inventoryProgresses.samplingDate → inventory_progress.samplingDate
- inventoryProgresses.sampleSize
- inventoryProgresses.estimatedNetInventory → inventory_progress.estimatedNetInventory
- inventoryProgresses.seedlingsAtSpecifications
- inventoryProgresses.cullFactor
- inventoryProgresses.shipFactor
- inventoryProgresses.grossInventory → inventory_progress.grossInventory
- inventoryProgresses.notes → grow_request.notes, inventory_progress.notes, lift_summary.notes
- inventoryProgresses.legacyData → grow_cycle.legacyData, grow_request.legacyData, inventory_progress.legacyData
- inventoryProgresses.legacyId → grow_cycle.legacyId, grow_request.legacyId, inventory_progress.legacyId
- inventoryProgresses.orderCycle → inventory_progress.orderCycleUuid, lot_slip.orderCycleUuid
- fulfillment.liftSummaries.liftDate → lift_summary.liftDate
- fulfillment.liftSummaries.quantity → lot_slip.quantity
- fulfillment.liftSummaries.carryOverQuantity
- fulfillment.liftSummaries.packedQuantity
- fulfillment.storageSummaries.startDate → storage_summary.startDate
- fulfillment.storageSummaries.coolerOrFreezer
- fulfillment.storageSummaries.quantityOfBoxes → storage_summary.quantityOfBoxes, thaw_summary.quantityOfBoxes
- fulfillment.storageSummaries.specificLocation
- fulfillment.thawSummaries.thawDate → thaw_summary.thawDate
- fulfillment.thawSummaries.quantityOfBoxes → storage_summary.quantityOfBoxes, thaw_summary.quantityOfBoxes
- fulfillment.thawSummaries.costPerBox → thaw_summary.costPerBox
- fulfillment.thawSummaries.totalCosts → thaw_summary.totalCosts
- fulfillment.deliveries.deliveryDate
- fulfillment.deliveries.deliveryActivity → seedling_ship_ticket.deliveryActivity
- fulfillment.deliveries.quantityOfSeedlings
- fulfillment.productionCosts.dollarPerSeedling
- fulfillment.productionCosts.totalDollar
- fulfillment.productionCosts.totalSeedlingsPurchased
- fulfillment.productionCosts.totalSeedlingsProduced
### PackSummaryFormComponent (`src/app/routes/orders/order-fulfillment/pack-summary-form/pack-summary-form.component.ts`)
Form **packForm** (line 105), requests: OrderFulfillmentService.createPackSummary, OrderFulfillmentService.createStorageSummary, OrderFulfillmentService.deleteSingleStorageSummary, OrderFulfillmentService.updateSinglePackSummary, OrderFulfillmentService.updateSingleStorageSummary
- packDate "Pack Date" [required] → pack_summary.packDate
- fieldContainersPacked "Field Bins Packed" [fieldBinsPackedValidator] → pack_summary.fieldContainersPacked
- fieldContainersRemaining "Field Bins Remaining" → pack_summary.fieldContainersRemaining
- isContract "Contracted Pack" → pack_summary.isContract
- qcIssue "QC Issue" → pack_summary.qcIssue
- notes "Notes" [maxLength(500)] → pack_summary.notes
Form **packForm** (line 124), requests: OrderFulfillmentService.createPackSummary, OrderFulfillmentService.createStorageSummary, OrderFulfillmentService.deleteSingleStorageSummary, OrderFulfillmentService.updateSinglePackSummary, OrderFulfillmentService.updateSingleStorageSummary
- packDate "Pack Date" [required] → pack_summary.packDate
- fieldContainersPacked "Field Bins Packed" [fieldBinsPackedValidator] → pack_summary.fieldContainersPacked
- fieldContainersRemaining "Field Bins Remaining" → pack_summary.fieldContainersRemaining
- isContract "Contracted Pack" → pack_summary.isContract
- qcIssue "QC Issue" → pack_summary.qcIssue
- notes "Notes" [maxLength(500)] → pack_summary.notes
Form **returned by buildLineGroup()** (line 144), requests: -
- storageUuid
- shipContainerType "—" → storage_summary.shipContainerType
- quantityOfBoxes → storage_summary.quantityOfBoxes
- seedlingsPerBox → storage_summary.seedlingsPerBox
- type "—" → storage_summary.type
- name → storage_summary.name
- section → storage_summary.section
- area → storage_summary.area
- shelf → storage_summary.shelf
- space → storage_summary.space
### PrintModeSelectModalComponent (`src/app/routes/orders/order-fulfillment/print-mode-select-modal/print-mode-select-modal.component.ts`)
Other inputs: printMode "Print with data from this Order Print blank form"
### ReceiveSeedlingsComponent (`src/app/routes/orders/receive-seedlings/receive-seedlings.component.ts`)
### SeedPreparationComponent (`src/app/routes/orders/seed-preparation/seed-preparation.component.ts`)
### ShipRequestFormComponent (`src/app/routes/orders/order-fulfillment/ship-request-form/ship-request-form.component.ts`)
Form **shipRequestForm** (line 104), requests: OrderFulfillmentService.getAllDestinations, OrderFulfillmentService.updateShipRequest
- desiredDeliveryDate "Desired Delivery Date" [required] → ship_request.desiredDeliveryDate
- maxTruckLength "Max. Truck Length" → ship_request.maxTruckLength
- liftGate "Lift Gate" → ship_request.liftGate
- palletJack "Pallet Jack" → ship_request.palletJack
- thaw "Thaw" → ship_request.thaw
- notes "Notes" [maxLength(1000)] → ship_request.notes
Form **destForm** (line 115), requests: OrderFulfillmentService.getAllDestinations
- deliveryLocation "Location" [required] → ship_request.deliveryLocation
- boxQty "Qty" [min(1), pattern('^[0-9]+$'), required] → ship_request.boxQty
- contact "Contact" → ship_request.contact
- phone "Phone" → ship_request.phone
- latitude "Lat (20 to 52)" [max(52), min(20)] → ship_request.latitude
- longitude "Lng (-130 to -60)" [max(-60), min(-130)] → ship_request.longitude
### SplitGrowLotModalComponent (`src/app/routes/orders/orders-main/split-grow-lot-modal/split-grow-lot-modal.component.ts`)
Form **splitForm** (line 187), requests: OrderService.splitOrder
- growRequest.client "Client ID or Name" → grow_request.clientUuid (disabled)
- growRequest.targetLiftYear "Target Lift Year" → grow_request.targetLiftYear
- growRequest.requestedSeedlingQuantity "Initial Request Quantity" [required] → grow_request.requestedSeedlingQuantity
- growRequest.agreementQuantity "Agreement Quantity" → grow_request.agreementQuantity
- growRequest.estimatedCost "Estimated Cost" [max(10000000)] → grow_request.estimatedCost
- growRequest.notes "Notes" → grow_request.notes
Form **returned by buildRowGroup()** (line 404), requests: -
- holdoverStart
- holdoverEnd
Form **returned by buildRowGroup()** (line 413), requests: -
- containersToMove
Form **returned by buildPackRowGroup()** (line 497), requests: -
- fieldContainersPacked "Field Containers to Move" → pack_summary.fieldContainersPacked
Form **returned by buildStorageRowGroup()** (line 509), requests: -
- quantityOfBoxes → storage_summary.quantityOfBoxes
### SwapSpeciesProductModalComponent (`src/app/routes/orders/orders-main/swap-species-product-modal/swap-species-product-modal.component.ts`)
Other inputs: selectedProductControl "{{ product.description }}"

## Screen /orders/production-lots (ProductionLotsComponent)

## Screen /orders/sow-plan (SowPlanComponent)

## Screen /shipping/create, /shipping/update/:id (ShippingAddEditComponent)
### ShippingAddEditComponent (`src/app/routes/shipping/shipping-add-edit/shipping-add-edit.component.ts`)
Form **lotSlipsTable** (line 139), requests: ShippingService.createSingleShipTicket, ShippingService.deleteLotSlipByID, ShippingService.getShipTicketById, ShippingService.updateShipTicket
Form **returned by initiateForm()** (line 151), requests: ClientService.getAllLabs, ClientService.getAllNurseries
- alreadySaved
- activity [required] → lot_slip.activity
- quantity [required] → lot_slip.quantity
- displayActivity
- withdrawFee → lot_slip.withdrawFee
- handlingFee → lot_slip.handlingFee
- shippingCost → lot_slip.shippingCost
- totalSlipCost
- isEditable
- shipTicketUuid
- sourceLot [required] → lot_slip.sourceLotUuid
- sourceLotId [required]
- quantityOffset
- savedQuantity
- availableBalance
- originalAvailableBalance
- unitOfMeasurement → source_lot.unitOfMeasurement
- notes → client.notes, lot_slip.notes, source_lot.notes
Form **grp** (line 194), requests: ShippingService.getShipTicketById
- activity [required] → lot_slip.activity
- displayActivity
- quantity [required] → lot_slip.quantity
- sourceLot [required] → lot_slip.sourceLotUuid
- isEditable
- shipTicketUuid
- sourceLotId [required]
- withdrawFee → lot_slip.withdrawFee
- handlingFee → lot_slip.handlingFee
- shippingCost → lot_slip.shippingCost
- totalSlipCost
- alreadySaved
- uuid → client.uuid, lot_slip.uuid, source_lot.uuid
- savedQuantity
- quantityOffset
- availableBalance
- originalAvailableBalance
- unitOfMeasurement → source_lot.unitOfMeasurement
- notes → client.notes, lot_slip.notes, source_lot.notes
Form **shipTicketForm** (line 397), requests: ClientService.getAllLabs, ClientService.getAllNurseries, ShippingService.createSingleShipTicket, ShippingService.getShipTicketById, ShippingService.updateShipTicket
- shipDate "Shipping Date" [required] → source_shipment.shipDate
- createdBy
- createdAtFacility
- destinationClient → source_shipment.destinationClientUuid
- requestedByClient → source_shipment.requestedByClientUuid
- clientId → client.clientId
- requestedByClientId "Requested By Client"
- destinationClientId "Destination Client"
- shippedTo "Shipping Contact Name" → source_shipment.shippedTo
- shippingAddress "Shipping Address" → client.shippingAddress, source_shipment.shippingAddress
- carrierTrackingInfo "Carrier Tracking Info" → source_shipment.carrierTrackingInfo
- shippingFees "Carrier Shipping Fee" → source_shipment.shippingFees
- totalShippingCost → source_shipment.totalShippingCost
- lotType → source_shipment.lotType
- lotSlips
- transfer → source_shipment.transfer

## Screen /shipping/details/:id (ShippingDetailsComponent)

## Screen /shipping/seedling/create, /shipping/seedling/update/:id (SeedlingShipTicketAddEditComponent)
### SeedlingDestinationDropModalComponent (`src/app/routes/shipping/seedling-ship-ticket-add-edit/seedling-destination-drop-modal/seedling-destination-drop-modal.component.ts`)
Form **dropForm** (line 352), requests: SeedlingShippingService.createDestinationDrop, SeedlingShippingService.createLotSlip, SeedlingShippingService.deleteLotSlip, SeedlingShippingService.growLotSearch, SeedlingShippingService.updateDestinationDrop
- destinationClient "Destination Client" [required] → seedling_destination_drop.destinationClientUuid
- requesterContactName "Requester Contact Name" → seedling_destination_drop.requesterContactName
- requesterContactPhone "Requester Contact Phone" → seedling_destination_drop.requesterContactPhone
- deliveryLocation "Delivery Address or Description" [required] → seedling_destination_drop.deliveryLocation
- latitude "Latitude" → seedling_destination_drop.latitude
- longitude "Longitude" → seedling_destination_drop.longitude
- travelDays "Travel Days" [min(0), required] → seedling_destination_drop.travelDays
- desiredDeliveryDate "Desired Delivery Date" [required] → seedling_destination_drop.desiredDeliveryDate
- handLoad "Hand Load" → seedling_destination_drop.handLoad
- handUnload "Hand Unload" → seedling_destination_drop.handUnload
- contact "On-Site Contact" → seedling_destination_drop.contact
- phone "On-Site Phone" → seedling_destination_drop.phone
- notes "Notes" [maxLength(1000)] → client.notes, seedling_destination_drop.notes, seedling_ship_ticket.notes
Form **returned by buildPackRow()** (line 592), requests: -
- storageSummaryUuid → seedling_lot_slip.storageSummaryUuid
- location
- shipContainerType → storage_summary.shipContainerType
- availableBoxQty → storage_summary.availableBoxQty
- reservedBoxQty
- effectiveFreeBoxQty
- draftShipTickets
- availableSeedlings
- seedlingsPerBox → storage_summary.seedlingsPerBox
- numberOfBoxes "Boxes *" [max(effectiveFree), min(1), required] → seedling_lot_slip.numberOfBoxes
- thawDays "Thaw days" [min(0)] → seedling_lot_slip.thawDays
- thawLocation "Thaw location" → seedling_lot_slip.thawLocation
Form **returned by buildSlipGroup()** (line 1016), requests: -
- uuid → client.uuid, seedling_destination_drop.uuid, seedling_lot_slip.uuid
- storageSummaryUuid [required] → seedling_lot_slip.storageSummaryUuid
- lotLabel
- location
- seedlingsPerBox → storage_summary.seedlingsPerBox
- availableBoxQty → storage_summary.availableBoxQty
- reservedBoxQty
- numberOfBoxes "Boxes *" [boxValidators] → seedling_lot_slip.numberOfBoxes
- donation → seedling_lot_slip.donation
- thawDays "Thaw days" → seedling_lot_slip.thawDays
- thawLocation "Thaw location" → seedling_lot_slip.thawLocation
Other inputs: searchGrowLotId "Grow Lot ID", searchAllClients "All clients", searchAllClients "All clients"
### SeedlingShipTicketAddEditComponent (`src/app/routes/shipping/seedling-ship-ticket-add-edit/seedling-ship-ticket-add-edit.component.ts`)
Form **shipTicketForm** (line 199), requests: SeedlingShippingService.createSeedlingShipTicket, SeedlingShippingService.getSeedlingShipTicketById, SeedlingShippingService.patchFinalizedTicketFields, SeedlingShippingService.updateSeedlingShipTicket
- departureDate "Departure Date" [required] → seedling_ship_ticket.departureDate
- truckDescription "Truck Name or Description" [required] → seedling_ship_ticket.truckDescription
- deliveryActivity "Delivery Activity" [required] → seedling_ship_ticket.deliveryActivity
- deliveryType "Delivery Type" [required] → seedling_ship_ticket.deliveryType
- maxTruckLength "Max. Truck Length" → seedling_ship_ticket.maxTruckLength
- liftGate "Lift Gate" → seedling_ship_ticket.liftGate
- palletJack "Pallet Jack" → seedling_ship_ticket.palletJack
- carrierTrackingInfo "Carrier Tracking Info" → seedling_ship_ticket.carrierTrackingInfo
- carrierShippingFee "Carrier Shipping Fee" → seedling_ship_ticket.carrierShippingFee
- notes "Notes" [maxLength(1000)] → seedling_destination_drop.notes, seedling_ship_ticket.notes

## Screen /shipping/seedling/details/:id (SeedlingShippingDetailsComponent)
### SeedlingDestinationDropModalComponent (`src/app/routes/shipping/seedling-ship-ticket-add-edit/seedling-destination-drop-modal/seedling-destination-drop-modal.component.ts`)
Form **dropForm** (line 352), requests: SeedlingShippingService.createDestinationDrop, SeedlingShippingService.createLotSlip, SeedlingShippingService.deleteLotSlip, SeedlingShippingService.growLotSearch, SeedlingShippingService.updateDestinationDrop
- destinationClient "Destination Client" [required] → seedling_destination_drop.destinationClientUuid
- requesterContactName "Requester Contact Name" → seedling_destination_drop.requesterContactName
- requesterContactPhone "Requester Contact Phone" → seedling_destination_drop.requesterContactPhone
- deliveryLocation "Delivery Address or Description" [required] → seedling_destination_drop.deliveryLocation
- latitude "Latitude" → seedling_destination_drop.latitude
- longitude "Longitude" → seedling_destination_drop.longitude
- travelDays "Travel Days" [min(0), required] → seedling_destination_drop.travelDays
- desiredDeliveryDate "Desired Delivery Date" [required] → seedling_destination_drop.desiredDeliveryDate
- handLoad "Hand Load" → seedling_destination_drop.handLoad
- handUnload "Hand Unload" → seedling_destination_drop.handUnload
- contact "On-Site Contact" → seedling_destination_drop.contact
- phone "On-Site Phone" → seedling_destination_drop.phone
- notes "Notes" [maxLength(1000)] → client.notes, seedling_destination_drop.notes, seedling_ship_ticket.notes
Form **returned by buildPackRow()** (line 592), requests: -
- storageSummaryUuid → seedling_lot_slip.storageSummaryUuid
- location
- shipContainerType → storage_summary.shipContainerType
- availableBoxQty → storage_summary.availableBoxQty
- reservedBoxQty
- effectiveFreeBoxQty
- draftShipTickets
- availableSeedlings
- seedlingsPerBox → storage_summary.seedlingsPerBox
- numberOfBoxes "Boxes *" [max(effectiveFree), min(1), required] → seedling_lot_slip.numberOfBoxes
- thawDays "Thaw days" [min(0)] → seedling_lot_slip.thawDays
- thawLocation "Thaw location" → seedling_lot_slip.thawLocation
Form **returned by buildSlipGroup()** (line 1016), requests: -
- uuid → client.uuid, seedling_destination_drop.uuid, seedling_lot_slip.uuid
- storageSummaryUuid [required] → seedling_lot_slip.storageSummaryUuid
- lotLabel
- location
- seedlingsPerBox → storage_summary.seedlingsPerBox
- availableBoxQty → storage_summary.availableBoxQty
- reservedBoxQty
- numberOfBoxes "Boxes *" [boxValidators] → seedling_lot_slip.numberOfBoxes
- donation → seedling_lot_slip.donation
- thawDays "Thaw days" → seedling_lot_slip.thawDays
- thawLocation "Thaw location" → seedling_lot_slip.thawLocation
Other inputs: searchGrowLotId "Grow Lot ID", searchAllClients "All clients", searchAllClients "All clients"

## Screen /source-lots (SourceLotComponent)

## Screen /source-lots/new, /source-lots/edit/:id (SourceLotMainComponent)
### AdjustLotBalanceModalComponent (`src/app/routes/source-lot/activities/adjust-lot-balance-modal/adjust-lot-balance-modal.component.ts`)
Form **adjustedLotBalanceForm** (line 61), requests: SourceLotService.adjustSourceLotBalance
- sourceLotId
- currentQuantity
- adjustmentTotal "Adjustment Quantity" [required]
- notes "Notes" → source_lot.notes
### ChangeOwnerModalComponent (`src/app/routes/source-lot/details/change-owner-modal/change-owner-modal.component.ts`)
Other inputs: clientFormControl "Client ID or Name"
### MultiAddFormComponent (`src/app/routes/source-lot/testing/multi-add-form/multi-add-form.component.ts`)
Form **multiTestForm** (line 83), requests: TestingService.createMultipleTests
- testDate "Test Date" [required] → source_lot_test.testDate
- testedBy "Tested By" → source_lot_test.testedByUuid
- t2 "Germination Result" [maxValueValidator]
- t11_1 "Rep 1" [maxValueValidator]
- t11_2 "Rep 2" [maxValueValidator]
- t11_3 "Rep 3" [maxValueValidator]
- t11_4 "Rep 4" [maxValueValidator]
- t11_5 "Rep 5" [maxValueValidator]
- t11_6 "Rep 6" [maxValueValidator]
- t11_7 "Rep 7" [maxValueValidator]
- t11_8 "Rep 8" [maxValueValidator]
- t4 "Purity" [maxValueValidator]
- t6 "ERH" [maxValueValidator]
- t9 "Moisture" [maxValueValidator]
- t10 "Fill" [maxValueValidator]
- t7 "Seeds Per Pound" [maxValueValidator]
- t3 "TZ" [maxValueValidator]
- dollarAmount "$ Amount" → source_lot_test.dollarAmount
- notes → client.notes, source_lot.notes, source_lot_test.notes
Form **returned by createStratRow()** (line 133), requests: -
- stratDayLength [max(999), min(0), required]
- dayChecked [max(999), min(0), required]
- germPercent [max(200), min(0), required] → order_cycle_planning.germPercent
- notes [maxLength(150)] → client.notes, source_lot.notes, source_lot_test.notes
### ProcessingFormComponent (`src/app/routes/source-lot/activities/processing-form/processing-form.component.ts`)
Form **processingActivityForm** (line 70), requests: ActivitiesService.createProcessingActivity, ActivitiesService.updateProcessingActivity
- activityDate "Date" [required] → processing_activity.activityDate
- activityType "Activity" [required] → processing_activity.activityType
- quantity "Quantity" → processing_activity.quantity
- unitOfMeasurement "UOM" → processing_activity.unitOfMeasurement, source_lot.unitOfMeasurement
- amountCharged "$ Amount" → processing_activity.amountCharged
- addToInvoice → processing_activity.addToInvoice
- notes "Notes" → processing_activity.notes, source_lot.notes
### ReceivingFormComponent (`src/app/routes/source-lot/activities/receiving-form/receiving-form.component.ts`)
Form **receivingActivityForm** (line 112), requests: ActivitiesService.createReceivingActivity, ActivitiesService.updateReceivingActivity
- dateReceived "Date" [required] → receiving_activity.dateReceived
- finalWeighDate "Weigh Date" → receiving_activity.finalWeighDate
- activityType "Activity" [required] → receiving_activity.activityType
- pointOfContact "Point of Contact" → receiving_activity.pointOfContact
- receivedUnitOfMeasurement "UOM" [required] → receiving_activity.receivedUnitOfMeasurement
- finalUnitOfMeasurement "UOM"
- quantity "Quantity" → receiving_activity.quantity
- finalProcessedWeight "Processed Weight" → receiving_activity.finalProcessedWeight
- lotBalance → source_lot.lotBalance (disabled)
- rushOrder "Rush Order" → receiving_activity.rushOrder
- amountCharged "$ Amount" → receiving_activity.amountCharged
- notes "Notes" → receiving_activity.notes, source_lot.notes
### SourceLotDetailsComponent (`src/app/routes/source-lot/details/source-lot-details.component.ts`)
Form **sourceLotIntakeForm** (line 128), requests: SourceLotAttachmentService.getAllSourceLotAttachments, SourceLotService.createSingleSourceLot, SourceLotService.getSingleSourceLot, SourceLotService.getSingleSourceLotDetails, SourceLotService.updateSingleSourceLot
- seedYear "Seed Year" [maxLength(4), minLength(4), required] → source_lot.seedYear
- dateCreated (disabled)
- createdBy (disabled)
- createdAtFacility (disabled)
- category "Category" → source_lot.category
- client → source_lot.clientUuid
- clientId "Client ID or Name" [required] → client.clientId
- attachments
- notes "Notes Area" → client.notes, source_lot.notes
- lotId → source_lot.lotId (disabled)
- speciesCodeGenus "Species Code or Genus Species" [required]
- generation "Generation *" → source_lot.generation
- collectionMethod "Collection Method *" → source_lot.collectionMethod
- collectedBy "Collected By *" → source_lot.collectedByUuid
- dateCollected "Date Collected" → source_lot.dateCollected
- latitude "Latitude" [max(90), min(-90)]
- longitude "Longitude" [max(180), min(-180)]
- localAreaDescription "Local Area Description *" → source_lot.localAreaDescription
- range "Range" [maxLength(3), minLength(0)] → source_lot.range
- section "Section" [maxLength(2), minLength(0)] → source_lot.section
- town "Town" [maxLength(3), minLength(0)] → source_lot.town
- meridian "Meridian" → source_lot.meridian
- zoneFieldToShow "Seed Breeding Provisional Click To View Provisional Zone Map Guide"
- breedingZone "Breeding Zone *" → source_lot.breedingZone
- seedZone "Seed Zone *" → source_lot.seedZone
- provisionalZone "Provisional Zone *" → source_lot.provisionalZone
- factsCode "Facts Code" → source_lot.factsCode
- elevationRange "Elevation Range" [maxLength(12), minLength(0)] → source_lot.elevationRange
- exactElevation "Exact Elevation *" [maxLength(6), minLength(1)] → source_lot.exactElevation
- stands "Stands" [maxLength(6)] → source_lot.stands
- treesPerStand "Trees per Stand" [maxLength(6)] → source_lot.treesPerStand
- sourceCode → source_lot.sourceCode (disabled)
- seedOrchardName "Seed Orchard Name" → source_lot.seedOrchardName
- orchardSubUnit "Seed Orchard Subunit/Block" → source_lot.orchardSubUnit
- standNumber "Stand Number/ID" → source_lot.standNumber
- treeNumber "Tree Number/ID" → source_lot.treeNumber
- pedigree "Pedigree" → source_lot.pedigree
- cycle "Cycle" → source_lot.cycle
- resistanceType "Resistance Type" → source_lot.resistanceType
### StorageFormComponent (`src/app/routes/source-lot/location/storage-form/storage-form.component.ts`)
Form **storageForm** (line 59), requests: LocationService.createStorage, LocationService.updateStorage
- startDate "Start Date" [required] → storage.startDate
- endDate → storage.endDate
- name "Name" → storage.name
- type "Storage Type" [required] → storage.type
- section "Section" → source_lot.section, storage.section
- area "Area" → storage.area
- shelf "Shelf" → storage.shelf
- space "Space" → storage.space
- dollarAmount "$ Amount" → storage.dollarAmount
### TestingFormComponent (`src/app/routes/source-lot/testing/testing-form/testing-form.component.ts`)
Form **testForm** (line 90), requests: TestingService.createTest, TestingService.updateTest
- testDate "Test Date" [required] → source_lot_test.testDate
- testedBy "Tested By" → source_lot_test.testedByUuid
- testType "Test Type" [required] → source_lot_test.testType
- testResults "Test Result" → source_lot_test.testResults
- t11_1 "Rep 1" [maxValueValidator]
- t11_2 "Rep 2" [maxValueValidator]
- t11_3 "Rep 3" [maxValueValidator]
- t11_4 "Rep 4" [maxValueValidator]
- t11_5 "Rep 5" [maxValueValidator]
- t11_6 "Rep 6" [maxValueValidator]
- t11_7 "Rep 7" [maxValueValidator]
- t11_8 "Rep 8" [maxValueValidator]
- dollarAmount "$ Amount" → source_lot_test.dollarAmount
- notes "Notes" → client.notes, source_lot.notes, source_lot_test.notes
Form **returned by createStratRow()** (line 150), requests: -
- stratDayLength [max(999), min(0), required]
- dayChecked [max(999), min(0), required]
- germPercent [max(200), min(0), required] → order_cycle_planning.germPercent
- notes "Notes" [maxLength(150)] → client.notes, source_lot.notes, source_lot_test.notes
### TransferLotModalComponent (`src/app/routes/source-lot/activities/transfer-lot-modal/transfer-lot-modal.component.ts`)
Form **transferLotForm** (line 65), requests: SourceLotService.transferSourceLotBalance
- transferType "Create New Lot Add To Existing Lot"
- transferLot "Destination Lot"
- transferAmount "Processed Weight"
