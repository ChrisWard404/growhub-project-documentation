# Form: NMIS_ID_LOCATIONS_SOURCE_INPUT

**Caption:** NMIS ID Locations Form  
**Record source:**

```sql
SELECT NMIS_ID_LOCATIONS.*, NMIS_LOCATIONS.LOCATION FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN WHERE (((NMIS_ID_LOCATIONS.SOURCE_LOT_CN)=[Forms]![NMIS_SOURCE_LOTS]![CN])) ORDER BY NMIS_LOCATIONS.LOCATION;
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_SOURCE_LOTS`, `NMIS_UNITS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.08, 0.52, 0.85, 0.37 |
| Label | BEGIN_DATE_Label | Begin Date |  |  |  | 2.22, 0.52, 0.58, 0.37 |
| Label | BEGIN_INDEX_Label | Begin Index |  |  |  | 3.46, 0.52, 0.47, 0.37 |
| Label | END_INDEX_Label | End Index |  |  |  | 3.97, 0.52, 0.47, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 0.97, 0.52, 0.71, 0.37 |
| TextBox | Index |  | Index |  |  | 0.43, 0.52, 0.00, 0.00 |
| Label | Label25 | Comments |  |  |  | 4.49, 0.52, 3.80, 0.37 |
| Label | Label27 | Sublot# |  |  |  | 1.71, 0.52, 0.47, 0.37 |
| Label | Label35 | End Date |  |  |  | 2.84, 0.52, 0.58, 0.37 |
| ComboBox | AGREEMENT_LOT_CN | SOURCE LOT: | =[Forms]![NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE]![SOURCE_LOT_CN] | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS; |  | 1.57, 0.08, 2.27, 0.23 |
| TextBox | CN |  | CN |  |  | 2.16, 0.52, 0.00, 0.00 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code] |  |  | 4.50, 0.17, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | LOCATION_CN |  | LOCATION_CN | SELECT NMIS_LOCATIONS.CN, NMIS_LOCATIONS.LOCATION AS Location, NMIS_LOCATIONS.LOCATION_TYPE AS Type, NMIS_LOCATIONS.INDEX_MAX AS [Max Index], Round([Index_max]/IIf([location_type]="FIELD",[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Field_Index_Increment_Default],1),1) AS [Max Index Units] FROM NMIS_LOCATIONS ORDER BY NMIS_LOCATIONS.LOCATION_TYPE, NMIS_LOCATIONS.LOCATION; |  | 0.08, 0.04, 0.85, 0.20 |
| TextBox | BEGIN_DATE |  | BEGIN_DATE |  |  | 2.22, 0.03, 0.58, 0.20 |
| TextBox | BEGIN_INDEX |  | BEGIN_INDEX |  |  | 3.46, 0.03, 0.47, 0.20 |
| TextBox | END_INDEX |  | END_INDEX |  |  | 3.97, 0.03, 0.47, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC, NMIS_UNITS.CELLS_PER_CONTAINER FROM NMIS_UNITS WHERE (((NMIS_UNITS.UNIT_TYPE)="STORE")) OR (((NMIS_UNITS.UNIT_CODE)="tote")) ORDER BY NMIS_UNITS.UNIT_CODE; |  | 0.97, 0.03, 0.71, 0.20 |
| TextBox | DIST_FROM_BED_BEG |  | DIST_FROM_BED_BEG |  |  | 4.78, 0.04, 0.62, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 4.49, 0.03, 3.79, 0.20 |
| TextBox | SUBLOT_NO |  | SUBLOT_NO |  |  | 1.71, 0.03, 0.47, 0.19 |
| TextBox | END_DATE |  | END_DATE |  |  | 2.84, 0.03, 0.58, 0.20 |
