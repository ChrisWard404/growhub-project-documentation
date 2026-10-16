# GrowHub sprint plan: Invoicing, Shipping, Inventory Progress, Field Space

Built 2026-10-05 from this extract (legacy Access forms/reports/VBA, `growhub.json`, `growhub_frontend.json`, `mapping.json`, `reachability.json`, `rules.json`). The shipping review also read the GrowHub backend repo (read-only) to check the balance logic.

Sizes: **S** ≈ 1–2 days, **M** ≈ 3–5 days, **L** ≈ 1–2 weeks, **XL** = more than a sprint. These need splitting before commitment. **🔒 SME** means the story is blocked on a subject-matter decision.

---

## 1. Where each area stands

| Area | Legacy scope (reachable) | GrowHub today | Verdict |
|---|---|---|---|
| **Invoicing** | 4 invoice types: product/seedling, seed (WCF / non-WCF), non-WCF storage, propagule. About 20 charge families calculated from fiscal-year rate tables, plus TSO ticket-charge split, contractor payment estimates (FS-6300-30) and yearly rate rollover. 49 forms, 59 reports. | `billing_file` invoice header. Lines are activity rows linked by `billUuid`. Amounts are **typed in by hand**. Rates exist only for storage (`storage_cost`, `storage_pricing`). Invoicing screens are wired; storage-costs CRUD works. Schema is untouched since 2023. | **Thin, about 20%.** Grouping of seed-service charges works. No charge engine, rate tables, invoice status or snapshot, and product/seedling billing is effectively absent. |
| **Shipping** | Product ship ticket (P), source ship ticket (S), sow-withdrawal ticket (SW), TSO cost split by miles / containers / racks. Driver ticket, pull list, labels, bag tags, summaries. 41 forms, 68 reports. | Restructured **2026-08-18**. Seedling ship ticket, destination drops and lot slips are wired. Finalizing a ticket decrements `storage_summary.availableBoxQty` in a transaction with a ledger entry and reverses on delete. Source shipments adjust `lotBalance`. | **About 50%, actively changing.** Core ticket works. **Ship request → ship ticket is not linked.** The ship-request form calls a dropped endpoint. No list routes, no migration mapping, no cost split, no labels. |
| **Inventory progress** | Samples → mean / SD / CV → gross → shipping factor → net, % at spec plus ingrowth, alt spec. Net posts to the lot's transactions. About 40 reports. | Count, size and at-spec types with samples, factors and print worksheet are wired end to end for **capture**. Schema has been stable since 2025-05. **All calculations run in the browser**; the backend is plain CRUD with no validation and no specs. | **About 60% for capture, 0% for effect on stock.** Has a calculation bug, several formula differences, and net never reaches the lot balance. |
| **Field space** | Flat `NMIS_LOCATIONS` with lot spans over time (`NMIS_ID_LOCATIONS`), location activities (cover crop, fumigation), field and container proofsheets (used vs. max, over-allocated / short beds), lifting priorities, field tags. No forward capacity planner existed. | `bed_row`, `bay`, `grow_table` and `production_location` exist (dormant since 2025-02). Lots are assigned to beds inside the Production step. **No admin screen, no capacity or overlap check, no utilization view.** `/api/bed-row/field-visualizer` is unused, and `/orders/sow-plan` is just a lot list. | **About 15%. Needs discovery first.** Rotation, fallow and forward-capacity planning would be net-new scope, not parity. |

### Cross-cutting findings
- **Reporting is a hidden epic.** About 437 reachable top-level legacy reports; GrowHub `/reports` is a placeholder. Printable operational documents (order form, ship tickets, labels, field tags, invoices, source cards) are missing everywhere. This needs a triage to a must-have list before it can be sized.
- **Data migration is unplanned for all four areas.** `seedling_ship_ticket`, `seedling_destination_drop`, `seedling_lot_slip`, `ship_request`, `billing_file`, the rate tables and `bed_row` have **no mapping rows**. Inventory samples and sizes have none either. The mapping sheet has stale field names (`shipTicketUuid`, `withdrawCost`).
- **Hardening the "done" areas.** 16 of 18 seedling-planning rules don't match. Five are high severity (SP-01, 02, 03, 08, 10), and SP-01 to SP-03 change how much seed gets ordered. 81 of 130 Seedling-sheet mapping rows have no Access source, so migrated lots will be sparse. Storage and pack summary location fields are mostly unmapped.
- **Auth guard check.** The scrape shows no `AuthGuard` on `/orders`, `/shipping` or `/financial-management`. That is probably inherited from a parent route in `auth-routing.ts`, but confirm it.
- **Backend stack.** The shipping review found the backend uses Express routers rather than NestJS. Worth checking before applying NestJS-specific conventions (guards, Swagger decorators).

---

## 2. SME decision pack (send in Sprint 1, since it gates later sprints)

| # | Area | Question | Gates |
|---|---|---|---|
| Q1 | Planning | Sign off on SP-01 (missing germ / purity), SP-02 (harvest-factor operator), SP-03 (thinning in seed quantity), SP-08 (bareroot space basis), SP-10 (which container formula) | Seed ordering correctness |
| Q2 | Invoicing | Which of the about 20 product charge families and the deposit / surcharge toggles are still used? | Product invoice engine (XL) |
| Q3 | Invoicing | Is WCF billed in GrowHub? Are propagule billing and the contractor payment estimate in scope? | Scope of 3 epics |
| Q4 | Invoicing | Is payment receipt tracked here or in FMMI? Is invoice history migrated? How does income split by mgmt / job code work? | Lifecycle, migration |
| Q5 | Shipping | Is the TSO / mileage cost split still used, or is a single carrier fee enough? | Cost allocation (L) |
| Q6 | Shipping | Should shipping decrement `packedBalance` as well as boxes? Can one ticket span several orders? Should a ship request auto-create a draft ticket? | Fulfillment link |
| Q7 | Shipping | Labels for the `da*` / `dt*` enums. Keep the P- / S- ticket numbering per FY? Are sow-withdrawal tickets in scope? Intermec label formats? | Enums, docs, SW flow |
| Q8 | Inventory | Gross based on units planted or current mapped containers? Is ingrowth still counted? 2-decimal or integer %? | Calculation parity |
| Q9 | Inventory | Should a CV above max CV block saves? What is the source of the min-sample rule? **Should net inventory adjust the planted balance or availability?** | Post to stock (L–XL) |
| Q10 | Field | Real hierarchy (area › section › row; greenhouse › bay › table › bench)? Per-nursery index increment and bed width? | Location admin |
| Q11 | Field | Is rotation, fallow, cover-crop or forward capacity-by-FY planning needed? (Legacy never had it.) | Net-new scope |
| Q12 | Field | Is lifting priority still a manual rank? Are Husky handhelds still used? What is the field visualizer / ESRI meant to show? | Lifting, map |
| Q13 | All | **Top-20 must-have reports and printed documents** | Reporting epic |

---

## 3. Sprint-by-sprint plan (2-week sprints)

### Sprint 1: Stabilize and discover (no SME blockers)
| Story | Area | Size |
|---|---|---|
| Confirm or add AuthGuard on `/orders`, `/shipping`, `/financial-management` | All | S |
| Fix `PUT /api/billing/:id` mismatch (add the route or remove the frontend call) | Invoicing | S |
| Remove or fix dead `/ship-request/:id/destination` calls in `ShipRequestFormComponent` | Shipping | S |
| Add `/shipping` and `/shipping/seedling` list routes; confirm ticket create (POST) works | Shipping | S |
| Fix the at-spec (it3) net-factor ordering bug, and add alt net to it3 | Inventory | S |
| Split-lot modal: use the latest inventory by sampling date, not `[0]` | Inventory | S |
| Fix the stale `/api/grow-locations` call (`GrowLocationService`) | Field | S |
| Specs for the inventory modal calculations and the inventory controller | Inventory | M |
| **Spike:** parse legacy location codes, profile `NMIS_ID_LOCATIONS`, recover `Transaction_Total_Bed_Ft` and TOLIFT queries from `NmisData.mdb` | Field | M |
| **Spike:** state of the ESRI geometry and field-visualizer | Field | S |
| Send the SME pack (section 2); run the report triage workshop | All | — |

### Sprint 2: Server-side foundations
| Story | Area | Size |
|---|---|---|
| Move inventory calculations to the backend; recompute on POST/PUT; DTO validation; check the cycle belongs to the order | Inventory | L |
| Paginate `findAlInventoryProgressTable` | Inventory | M |
| FK from ship ticket / drop to `ship_request`, plus migration | Shipping | M |
| Add lot-slip PUT endpoint | Shipping | M |
| Add `status` to `billing_file`; add a `billing_line` snapshot table (amount, rate, units, source reference) | Invoicing | M |

### Sprint 3: Connect the flows
| Story | Area | Size |
|---|---|---|
| "Create ship ticket from ship request" (pre-fills drops, boxes, dates) | Shipping | M |
| Order-level shipped totals and status | Shipping | M |
| Activity charges and product charges rate-table CRUD (FY, activity, category, mgmt code, grade) | Invoicing | M + M |
| Fiscal-year rate rollover | Invoicing | S |
| Bed-row admin screen (unique key, active flag) 🔒 Q10 | Field | M |
| Bay, table and bay-table admin, plus missing endpoints 🔒 Q10 | Field | M |

### Sprint 4: Engines and integrity
| Story | Area | Size |
|---|---|---|
| Source price rates and processing rates with min/max tiers | Invoicing | M |
| Auto-compute receiving, processing and test charges from rates, with override reason | Invoicing | L |
| Storage billing run (`storage_cost` → `yearly_storage_cost`, minimum weight and minimum invoice amount) plus controller | Invoicing | M |
| Validate production-location spans (within bed length, no overlap) and show remaining feet / containers while assigning | Field | M + M |
| Inventory parity: plot multiplier, count-empties, precision, spec snapshot, max-CV warning 🔒 Q8/Q9 | Inventory | M–L |
| Shipping decrements `packedBalance` / reconcile with boxes 🔒 Q6 | Shipping | M |

### Sprint 5: Outputs and stock effects
| Story | Area | Size |
|---|---|---|
| Invoice PDF (with and without lot detail, remit-to text) stored in `report_file`; proof report; spreadsheet export | Invoicing | M + M + S |
| Driver ticket parity (carrier, container type, time and temperature blanks) | Shipping | M |
| Field proofsheet (used vs. max, over-allocated / short beds, acres) and container proofsheet | Field | M + M |
| Post net inventory to the lot balance or availability, with audit trail 🔒 Q9 | Inventory | L |

### Sprint 6 onward: SME-gated and migration (order once answers land)
- **Invoicing:** product/seedling charge engine (XL 🔒 Q2), deposits and surcharges (L 🔒), propagule billing (M 🔒 Q3), lot-slip fees and TSO allocation (M–L 🔒 Q5), income distribution (L 🔒 Q4), finalize / void / credit (M), payment reference (M 🔒 Q4), contractor payment estimate (XL 🔒 Q3, likely out of scope).
- **Shipping:** ship miles on client (M), TSO cost split (L 🔒 Q5), job code / Bill To on slips → billing (L, after billing E1), mailing labels and source lot labels / bag tags (M + M 🔒 Q7), sow-withdrawal flow (L 🔒 Q7), retire the `shipment` table (S).
- **Inventory:** ingrowth % (L 🔒 Q8), inventory reports: size-distribution matrix, data summary, checklists (L 🔒 Q13).
- **Field:** location history / moves on `production_location` (L 🔒), lifting-priority list feeding `lift_request` (L 🔒 Q12), location activity log (L), field tags (M 🔒 Q7), field map (XL 🔒 Q12), forward capacity by FY (L 🔒 Q11), rotation planner (XL, only if Q11 says yes).
- **Migration track** (run alongside from about Sprint 4, one owner):
  - legacy P tickets → seedling ship ticket, drops and slips (L)
  - fill source_shipment and lot_slip mapping, fixing stale names (M)
  - rate tables (M)
  - inventory: split each legacy record into it1/it2/it3, ×1000 units, reconciliation report (XL 🔒 Q8)
  - locations and occupancy → `bed_row` / `production_location` (L)
- **Hardening of the "done" areas:** apply the SP-01 to SP-10 decisions (M per rule cluster 🔒 Q1); map the storage and pack summary location fields.

---

## 4. Recommended priorities and risks

1. **Shipping first among the four.** It is the most recent work, closest to done, and has the clearest broken seam (ship request ↔ ticket). Finishing it unblocks real-world use and shipping-based billing.
2. **Inventory next.** Move the calculations server-side before adding more. The client-side-only maths, missing validation and empty specs are the biggest correctness risk in code that already looks "done".
3. **Invoicing: build the foundation now (status, line snapshot, rate tables), and wait on SMEs for the product charge engine.** It is the largest XL in the backlog and depends on Q2.
4. **Field space: discovery before building.** Do the two Sprint-1 spikes plus Q10–Q12. Commit only to parity items (admin, overlap validation, proofsheets) until SMEs confirm any forward-planning scope.
5. **Reserve about 20% of each sprint** for migration mapping and planning-rule hardening; otherwise both will surface late as a cutover blocker.

**Confidence.** High on schema, screens and wiring. Medium on legacy calculation details, because several saved-query SQL bodies and the backend `.mdb` aren't in the extract. Low on true business need for anything legacy never had (forward capacity, rotation, payment tracking).
