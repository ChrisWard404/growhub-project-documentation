# Form: NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform

**Caption:** NMIS_ORDER_SERVICES  
**Record source:**

```sql
NMIS_ORDER_SERVICES
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ORDER_SERVICES`  
**Embedded in:** `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 0.04, 0.01, 0.79, 0.35 |
| Label | CHARGE_PER_UNIT_OVERRIDE_Label | Chrg/Unit Adj. |  |  |  | 1.51, 0.01, 0.70, 0.35 |
| Label | CHARGE_PER_AMT_OVERRIDE_Label | Chrg/Amt Adj. |  |  |  | 2.25, 0.01, 0.70, 0.35 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 0.88, 0.01, 0.60, 0.35 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 3.17, 0.17, 0.83, 0.21 |
| TextBox | RecordCount |  | =Count([ACTIVITY_CODE]) |  |  | 3.17, 0.00, 0.83, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 0.04, 0.04, 0.79, 0.20 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 1.51, 0.04, 0.70, 0.20 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 2.25, 0.04, 0.70, 0.20 |
| ComboBox | CONTRACT_ITEM |  | CONTRACT_ITEM | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.DEFAULT_CONTRACT_ITEM FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![Child102].[Form]![ACTIVITY_CODE])); | Enter | 0.88, 0.04, 0.60, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()
    
    CONTRACT_ITEM.Requery
    
End Sub
```
