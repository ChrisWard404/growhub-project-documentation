# NMIS Access frontend: views + ERD extract

Source: `nmis_Demo.mdb` (Jet 4 / Access 2000–2003 format). This file is the **frontend**: it holds forms, reports, queries and VBA, and links to 91 tables in a backend file (`C:\nmis\nmis_data\NmisData.mdb`, plus 5 from `NmisDataBend.mdb`). That backend isn't in this file.

## What's here

| Path | What it is |
|---|---|
| `explorer.html` | Self-contained browser app with two halves. **Legacy Access:** Lists every form and report with a wireframe drawn from the saved control positions (tab pages switchable), every control and what it's bound to, combo/list row-source SQL, subform links, navigation and VBA. Also has a Tables view with each table's columns, relationships and the views that use it, an ERD tab, and the Switchboard menu tree. **GrowHub:** all 59 `nmis` Postgres tables with exact types, enum values, defaults, PKs, FKs and on-delete rules; the entity class and controllers for each table; per-table and per-column migration history; an ERD laid out from your pgAdmin diagram (pan, zoom, hover to highlight); and a browsable list of all 147 migrations. The Mermaid diagrams load Mermaid from cdn.jsdelivr.net, so open it while online. Everything else works offline. |
| `forms/*.md` (482), `reports/*.md` (894) | One spec per view: caption, record source, backend tables used, subforms, what opens it and what it opens, a controls table (type, name, label, binding, row source, events, position in inches), and the code-behind. |
| `erd.mmd` | Mermaid `erDiagram` of the 67 core backend tables and 197 relationships. Paste into mermaid.live, or view it in GitHub or VS Code. |
| `nmis_frontend.json` | All extracted data in machine-readable form: views, ERD tables/columns/relationships (with evidence counts and example sources), menus, VBA, local table schemas. |
| `vba/*.bas` (496 modules, ~51k lines) | All VBA: form and report code-behind plus standard modules. |
| `local_tables.md` | Exact schema of the 234 tables stored in the frontend itself (mostly temp/staging). |
| `mapping.json` | The Access→GrowHub mapping workbook, parsed and checked against both schemas (built by `tools/mapping.py`). |
| `reachability.json` | Which legacy forms/reports/macros can be reached from the Switchboard menus, with the path (built by `tools/reach.py`). |
| `growhub_frontend.json` | GrowHub Angular app scrape: routes, components, form fields with labels, table columns, API calls traced to backend routes and tables (built by `tools/ghfront.py`). |
| `rules.json` | Business-rule catalogue with the real legacy and GrowHub code attached (built by `tools/rules.py` from `tools/rules/*.json`). |
| `growhub_backend.json` | Every `/api` endpoint with its handler (file:line), auth checks, request fields read and tables touched (built by `tools/ghback.py`). |
| `growhub.json` | GrowHub schema + migration history (built by `tools/growhub.py` from the pgAdmin ERD export and `src/database/migration`). |
| `tools/` | Scripts that produced all of this, so it can be rerun on another copy. |

## How the ERD was built (read before relying on it)

Column definitions for linked tables live only in the backend, so this ERD is **inferred**:

- **Columns** come from the field lists Access caches inside each form/report, plus every `Table.Column` reference in 5,071 saved queries, form/report SQL and VBA. A column that nothing in the frontend uses won't appear. **Data types are unknown.**
- **Relationships** come from 9,994 join conditions in saved queries plus `JOIN … ON` clauses in form SQL (148 distinct joins). Direction comes from the `CN` surrogate key (`X.CN ← Y.SOMETHING_CN`) and from natural keys (`PLNTMSTR_SYMBOL` → `NMIS_SPECIES`, `ASSOCIATE` → `NMIS_ASSOCIATES`, `ACTIVITY_CODE` → `NMIS_ACTIVITY_CODES`, etc.). Some links are inferred from `*_CN` column names alone and are flagged "by name". 14 joins have unclear direction and are marked that way in the JSON and the Tables view.
- Only 2 relationships are declared in `MSysRelationships` among the linked tables. The real backend may declare more.

**To get exact types, keys and declared relationships, run the same extraction against `NmisData.mdb`.** `tools/Dump.java`'s schema dump works on any local table.

## Decoding notes / limits

- Access stores form and report designs in an undocumented binary format. I reverse-engineered the property encoding (value width depends on the property ID range; `0xFD`/`0xFE` start objects and attached labels; `0xFF n` starts a list of n child objects). Mapping property IDs to names (Name, Caption, ControlSource, RowSource, LinkChild/MasterFields, StatusBarText, Format, InputMask, DefaultValue, geometry) was checked against known forms. Colors, fonts and most boolean flags were not mapped.
- 480/482 forms and 892/894 reports decoded completely. `Switchboard`, `xNative_Propagule_Harvest_Menu`, `*******dbd map` and `Report1` contain embedded images, so they decoded only partly. Their controls are present but may be incomplete.
- Event wiring comes from VBA handler names (`Sub Control_Event()`). Events wired to macros (the `Scripts` storage, 38 macros) were not decoded.
- Many objects are old copies (names starting with `*`, `x`, `old`, `_bu`, `Copy of`). The explorer hides them by default.

## Rebuilding the GrowHub half

```
python3 tools/growhub.py        # writes growhub.json (paths to the ERD export and repo are at the top)
python3 tools/make_explorer.py  # re-embeds everything into explorer.html
```

To update it after new migrations, re-export the ERD from pgAdmin and rerun both. History is parsed from the raw SQL in each migration's `up()`, with table renames followed (`order_production`→`order_cycle_production`, `grow_location`→`bed_row`, `ship_ticket`→`source_shipment`). `order_cycle` and `order_cycle_planning` were created as copies of `order` and `grow_request`, so their older columns show "came with copy of …".

## Migration mapping

`explorer.html` → **Migration › Mapping / Reference data** is built from `Access_Mapping_Spreadsheet.xlsx`. The spreadsheet stays the source of truth. After editing it:

```
python3 tools/mapping.py /path/to/Access_Mapping_Spreadsheet.xlsx
python3 tools/make_explorer.py
```

What the build adds on top of the sheet:
- Each GrowHub field is checked against the real column on its section's table, and fields that don't exist get "did you mean" suggestions. The sheet doesn't name tables, so the section → table map is at the top of `tools/mapping.py`.
- Each Access field is checked against the columns seen in the frontend and in the nurseries' XML exports (`seed/access`).
- Enum links into `SourceENUM` are expanded inline.
- Mapping status appears on GrowHub table pages ("Access source" column), on legacy table pages and on legacy form controls ("GrowHub" column), with per-form coverage.

## Reachability (legacy)

`tools/reach.py` walks from the Switchboard through menu items, subforms, VBA `DoCmd.OpenForm/OpenReport` (including names assigned to variables first), called VBA procedures, macros (decoded from the `Scripts` storage) and macro or `=Function()` event properties. Result: 349/482 forms and 578/894 reports are reachable. The sidebar's **Show** filter defaults to reachable objects, and each form or report shows its menu path, or what references it if it isn't reachable. It needs the decoded `storage.cfb` from the extraction step, so rerun it from the scratch folder used by `tools/extract.py`.

## GrowHub screens

`tools/ghfront.py` scrapes `Nursery-GrowHub-Frontend/frontend/src/app`:
- **Routes:** from `auth-routing.ts` plus the lazy-loaded modules' routing files.
- **Screen components:** a screen is its route component plus every component it embeds by selector, opens as a dialog, or refers to in its TypeScript.
- **Form fields:** `formControlName`, `[formControl]` and `ngModel`, each with its mat-label and mat-step/tab section.
- **API calls:** service HTTP calls traced through the backend Express routers to the entity controller, then to the table.
- **Field → column matching:** by name, using form groups first, then the tables behind the screen's API calls, then a unique name match. Each field records which method matched it.

In the explorer: **GrowHub › Screens**. Legacy forms list the GrowHub screens that edit the same data. Each mapped legacy control says which screen it lands on. GrowHub table pages show which screens edit each column. The mapping dashboard names the main GrowHub screen for each legacy form.

```
python3 tools/ghfront.py && python3 tools/make_explorer.py
```

## Business rules

**Migration › Business rules** compares legacy calculations with their GrowHub equivalents, one domain at a time. So far there's **Seedling planning**, with 18 rules: the `NMIS_AGREEMENT_LOTS` Calculations tab against the `/orders` Planning step.

Each rule has a verdict (matches / differs / missing / legacy bug / needs SME / GrowHub only), a severity, a plain-language formula for each side, why it matters, and an open question for the SMEs. The rules are written by hand in `tools/rules/<domain>.json`. Their code references (VBA procedure plus text anchors, calculated control, saved query, GrowHub function) are resolved at build time, so the snippets always show the current code:

```
python3 tools/rules.py && python3 tools/make_explorer.py
```

To add a domain, copy `tools/rules/seedling-planning.json`, set `legacyForm`, `growhubScreen` and `growhubFile`, and write its rules.

## GrowHub frontend and backend sections

The explorer header has four groups: **Legacy Access**, **GrowHub frontend** (Screens, Forms, Requests), **GrowHub backend** (Endpoints, Tables, ERD, Migrations), and **Migration**. Frontend and endpoint pages show which branch and commit they were scraped from.

- **Frontend › Forms** (`tools/formparse.py`): every `formBuilder.group` / `new FormGroup` with nested groups and arrays, defaults, disabled flags and validators, plus each field's label, GrowHub column and Access source. A form's requests come from component methods that use it, template bindings that pass it (`(click)="onSubmit(orderForm)"`), and child components it's passed down to. They're inferred from code structure.
- **Frontend › Requests:** every HTTP call in the Angular services. URLs are rebuilt from template strings, `+` concatenation, locals, class fields and URL helper methods, then paired with the backend route. Each request lists its callers and screens.
- **Backend › Endpoints** (`tools/ghback.py`): every route under `/api`, including nested routers. Each lists its handler (base CRUD vs custom), auth checks found in the handler, the `params`/`query`/`body` fields read explicitly, the tables touched, its status codes, and the frontend requests that call it. Routes no frontend request uses are flagged.

Rebuild after pulling either repo:

```
python3 tools/ghback.py && python3 tools/ghfront.py && python3 tools/make_explorer.py
```

The GrowHub table/ERD data still comes from the pgAdmin export on the Desktop. Re-export it when the schema changes.

## Claude Project knowledge pack

Claude Projects take a flat list of files and read text best, so `tools/project_pack.py` writes the same facts as about 22 flat Markdown/CSV files into `project_pack/`. Each covers one topic, and none is over about 750 KB. `00_README.md` is the index. Don't upload `explorer.html` or the raw JSON: they're too large and nested to be useful as knowledge.

```
python3 tools/project_pack.py
```

Rerun it after any rebuild, then replace the files in the Project. Projects don't sync a local folder.
