# NMIS → GrowHub migration knowledge pack

Generated 2026-10-08 from the `nmis_frontend_extract` explorer data. Flat files, one topic each, written for a Claude Project. The interactive `explorer.html` stays in the extract folder for people; these files carry the same facts as text.

**Systems:** legacy = USDA Forest Service NMIS (Access 2000 frontend `nmis_Demo.mdb`, backend NmisData.mdb not available). New = GrowHub: backend `Nursery-GrowHub-Backend` (Express + TypeORM, Postgres schema `nmis`), frontend `Nursery-GrowHub-Frontend` (Angular).

**Scrape stamps:** frontend 2665-split-from-fulfillment @ 9478274e (2026-10-06 08:13); backend 2665-split-from-fulfillment @ a79878e4 (2026-10-06 07:25).

**Conventions:** legacy tables are `NMIS_*` (UPPER_CASE, key `CN`); GrowHub tables are snake_case with `uuid` keys and camelCase columns; embedded columns are flattened (`containerSpecificationsNumberofcontainersneeded`). Legacy quantities are often in thousands; GrowHub in units. Mapping status words: yes = approved for migration work, maybe, no, blank = not reviewed.

**Caveats:** legacy backend columns/relationships are inferred; GrowHub field→column links and form→request pairing are inferred from code; reachability may miss screens opened via names built at runtime.

## Files

| File | What | Size |
|---|---|---|
| 01_legacy_menus_and_reachability.md | Legacy NMIS: menus and which screens are reachable | 169 KB |
| 02_legacy_forms_part1.md | Legacy NMIS forms (reachable only) | 713 KB |
| 02_legacy_forms_part2.md | Legacy NMIS forms (reachable only) | 92 KB |
| 03_legacy_reports.md | Legacy NMIS reports (reachable only) | 599 KB |
| 04_legacy_vba_part1.md | Legacy NMIS VBA (modules of reachable screens + standard modules) | 725 KB |
| 04_legacy_vba_part2.md | Legacy NMIS VBA (modules of reachable screens + standard modules) | 281 KB |
| 05_legacy_schema.md | Legacy NMIS backend schema (inferred) and local tables | 91 KB |
| 06_growhub_schema.md | GrowHub Postgres schema (nmis) | 70 KB |
| 07_growhub_migrations.md | GrowHub migration history | 124 KB |
| 08_growhub_api_endpoints.md | GrowHub backend API endpoints | 75 KB |
| 09_growhub_screens_and_forms.md | GrowHub frontend screens and forms | 79 KB |
| 10_growhub_frontend_requests.md | GrowHub frontend HTTP requests | 36 KB |
| 11_mapping_access_to_growhub.md | Access → GrowHub field mapping (from Access_Mapping_Spreadsheet.xlsx) | 37 KB |
| 12_mapping_enum_values.md | Access → GrowHub enum value mappings (SourceENUM sheet) | 5 KB |
| 13_reference_activity_codes_access.csv | 13_reference_activity_codes_access.csv | 135 KB |
| 13_reference_activity_codes_oracle.csv | 13_reference_activity_codes_oracle.csv | 15 KB |
| 13_reference_grow_units.csv | 13_reference_grow_units.csv | 12 KB |
| 13_reference_grow_unit_targets.csv | 13_reference_grow_unit_targets.csv | 6 KB |
| 13_reference_box_types.csv | 13_reference_box_types.csv | 3 KB |
| 14_business_rules_seedling_planning.md | Business rules: Seedling planning | 63 KB |
| 15_SPRINT_PLAN.md | SPRINT_PLAN.md | 13 KB |
