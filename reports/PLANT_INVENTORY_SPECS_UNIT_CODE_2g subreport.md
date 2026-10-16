# Report: PLANT_INVENTORY_SPECS_UNIT_CODE_2g subreport

**Caption:** PLANT_INVENTORY_SPECS_UNIT_CODE subreport  
**Record source:**

```sql
SELECT PLANT_INVENTORY_SPECS_UNIT_CODE.ID_ACTIVITY_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.AGREEMENT_LOT_CN, PLANT_INVENTORY_SPECS_UNIT_CODE.SPECS_UNIT_CODE FROM PLANT_INVENTORY_SPECS_UNIT_CODE WHERE (((PLANT_INVENTORY_SPECS_UNIT_CODE.ID_ACTIVITY_CN)=[Forms]![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].[Form]![ID_ACTIVITY_CN]));
```

**Backend tables referenced:** `NMIS_PRODUCT_INVENTORIES`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID_ACTIVITY_CN |  | ID_ACTIVITY_CN |  |  | 1.62, 0.04, 1.08, 0.19 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.83, 0.04, 0.64, 0.19 |
| TextBox | SPECS_UNIT_CODE |  | SPECS_UNIT_CODE |  |  | 0.04, 0.04, 0.67, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
