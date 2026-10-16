# Report: NMIS_TRANSACTIONS_invcheck subreport

**Caption:** NMIS_TRANSACTIONS_packcheck subreport  
**Record source:**

```sql
SELECT NMIS_TRANSACTIONS.ID_ACTIVITY_CN, NMIS_TRANSACTIONS.ID_LOCATION_CN, NMIS_TRANSACTIONS.NUMBER_OF_ACTIVITY_UNITS, NMIS_TRANSACTIONS.AMT_PER_UNIT, NMIS_TRANSACTIONS.AMT_PER_UNIT_INV_GROSS, NMIS_TRANSACTIONS.AMT_PER_UNIT_PACK_CONTRACT_GROSS, NMIS_TRANSACTIONS.CHARGE_PER_UNIT_OVERRIDE, NMIS_TRANSACTIONS.CHARGE_PER_AMT_OVERRIDE, NMIS_TRANSACTIONS.CONTRACT_ITEM, NMIS_LOCATIONS.LOCATION, NMIS_ID_LOCATIONS.SUBLOT_NO FROM NMIS_UNITS INNER JOIN (NMIS_LOCATIONS INNER JOIN (NMIS_TRANSACTIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_TRANSACTIONS.ID_LOCATION_CN = NMIS_ID_LOCATIONS.CN) ON NMIS_LOCATIONS.CN = NMIS_ID_LOCATIONS.LOCATION_CN) ON (NMIS_UNITS.UNIT_CODE = NMIS_ID_LOCATIONS.UNIT_CODE) AND (NMIS_UNITS.UNIT_CODE = NMIS_ID_LOCATIONS.UNIT_CODE) WHERE (((NMIS_TRANSACTIONS.NUMBER_OF_ACTIVITY_UNITS)>0) AND ((NMIS_UNITS.UNIT_TYPE)="g")) ORDER BY NMIS_TRANSACTIONS.ID_ACTIVITY_CN, NMIS_TRANSACTIONS.NUMBER_OF_ACTIVITY_UNITS;
```

**Grouping/sorting:** `LOCATION`, `SUBLOT_NO`, `NUMBER_OF_ACTIVITY_UNITS`  
**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`, `NMIS_TRANSACTIONS`, `NMIS_UNITS`  
**Embedded in:** `Report:inv_act_tot_vs_trans_total_checklist`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ID_LOCATION_CN_Label | LOCATION |  |  |  | 0.00, 0.02, 0.96, 0.35 |
| Label | NUMBER_OF_ACTIVITY_UNITS_Label |  Activity Units |  |  |  | 1.51, 0.02, 0.64, 0.35 |
| Label | AMT_PER_UNIT_Label | Amt/Unit Net |  |  |  | 4.12, 0.02, 0.61, 0.35 |
| Label | AMT_PER_UNIT_INV_GROSS_Label | Amt/Unit Gross |  |  |  | 3.32, 0.02, 0.77, 0.35 |
| Label | CHARGE_PER_UNIT_OVERRIDE_Label | Charge/Unit Override |  |  |  | 4.77, 0.02, 0.82, 0.35 |
| Label | CHARGE_PER_AMT_OVERRIDE_Label | Charge/Amt Override |  |  |  | 5.60, 0.02, 0.78, 0.35 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 6.38, 0.02, 0.59, 0.35 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line18 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NUMBER_OF_ACTIVITY_UNITS |  | NUMBER_OF_ACTIVITY_UNITS |  |  | 1.29, 0.00, 0.52, 0.17 |
| TextBox | AMT_PER_UNIT |  | AMT_PER_UNIT |  |  | 4.11, 0.00, 0.61, 0.17 |
| TextBox | AMT_PER_UNIT_INV_GROSS |  | AMT_PER_UNIT_INV_GROSS |  |  | 3.30, 0.00, 0.72, 0.17 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 4.83, 0.00, 0.53, 0.17 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 5.67, 0.00, 0.54, 0.17 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 6.40, 0.00, 0.46, 0.17 |
| ComboBox | ID_ACTIVITY_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS INNER JOIN NMIS_ID_LOCATIONS ON (NMIS_UNITS.UNIT_CODE=NMIS_ID_LOCATIONS.UNIT_CODE) AND (NMIS_UNITS.UNIT_CODE=NMIS_ID_LOCATIONS.UNIT_CODE);  |  | 1.83, 0.00, 1.43, 0.17 |
| ComboBox | ID_LOCATION_CN |  | ID_LOCATION_CN | SELECT NMIS_ID_LOCATIONS.CN, [Location] & IIf((IsNull([Sublot_NO]) Or [Sublot_No]=" "),"","(" & [Sublot_NO] & ") ") & " " & [Begin_Index] & IIf(Not IsNull([End_Index]),"-" & [End_Index],"") AS [Local] FROM NMIS_LOCATIONS INNER JOIN NMIS_ID_LOCATIONS ON NMIS_LOCATIONS.CN=NMIS_ID_LOCATIONS.LOCATION_CN;  |  | 0.00, 0.00, 1.27, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line19 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
