# Form: NMIS_ORDR_ACT subform

**Caption:** NMIS_ORDR_ACT subform  
**Record source:**

```sql
SELECT [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE], [NMIS_ID_ACTIVITIES].[CN], [NMIS_ID_ACTIVITIES].[FISCAL_YEAR], [NMIS_ID_ACTIVITIES].[ACTIVITY_CODE], [NMIS_ID_ACTIVITIES].[ACTIVITY_UNITS], [NMIS_ID_ACTIVITIES].[ACTIVITY_TIME], [NMIS_ID_ACTIVITIES].[ACTIVITY_HOURS], [NMIS_ID_ACTIVITIES].[AMT_PER_UNIT], [NMIS_ID_ACTIVITIES].[CONTRACT_ITEM], [NMIS_ID_ACTIVITIES].[CHARGE_PER_HOUR_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_AMT_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_UNIT_OVERRIDE], [NMIS_ID_ACTIVITIES].[CHARGE_PER_ACTIVITY_OVERRIDE], [NMIS_ID_ACTIVITIES].[NOTE], [NMIS_ID_ACTIVITIES].[DESTINATION_ASSOCIATE], [NMIS_ID_ACTIVITIES].[SOURCE_LOT_CN], [NMIS_ID_ACTIVITIES].[AGREEMENT_LOT_CN], [NMIS_ID_ACTIVITIES].[ORDER_CN], [NMIS_ID_ACTIVITIES].[TICKET_CN], [NMIS_ID_ACTIVITIES].[Index], [NMIS_ID_ACTIVITIES].[UNIT_CODE] FROM NMIS_ID_ACTIVITIES ORDER BY [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE], [NMIS_ID_ACTIVITIES].[CN];
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ID_ACTIVITIES`, `NMIS_ORDERS`  
**Embedded in:** `Form:NMIS_ORDER_ACT-TRANS-LOC`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ORDER_CN_Label | Order ID |  |  |  | 3.29, 0.04, 0.90, 0.16 |
| Label | ACTIVITY_DATE_Label | Act. Date |  |  |  | 0.04, 0.04, 0.71, 0.16 |
| Label | ACTIVITY_CODE_Label | Act. Code |  |  |  | 0.77, 0.04, 0.62, 0.16 |
| Label | ACTIVITY_UNITS_Label | # Units |  |  |  | 1.41, 0.04, 0.58, 0.16 |
| Label | Label19 | Unit |  |  |  | 2.01, 0.04, 0.28, 0.16 |
| Label | Label21 | C Item |  |  |  | 2.33, 0.04, 0.41, 0.16 |
| Label | ACTIVITY_HOURS_Label | # Hours |  |  |  | 2.79, 0.04, 0.46, 0.16 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  | Exit | 0.04, 0.04, 0.71, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES;  |  | 0.77, 0.04, 0.62, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 1.41, 0.04, 0.58, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 2.01, 0.04, 0.28, 0.19 |
| TextBox | ACTIVITY_HOURS |  | ACTIVITY_HOURS |  |  | 2.79, 0.04, 0.46, 0.19 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 2.33, 0.04, 0.41, 0.19 |
| TextBox | CN |  | CN |  |  | 4.21, 0.04, 0.90, 0.19 |
| ComboBox | ORDER_CN |  | [ORDER_CN] | SELECT [NMIS_ORDERS].[CN], Left$([CN],Len([CN])-7) AS ORDER_ID FROM NMIS_ORDERS;  |  | 3.29, 0.04, 0.90, 0.18 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Index |  | Index |  |  | 1.12, 0.08, 0.50, 0.19 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 1.67, 0.08, 0.46, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 2.17, 0.08, 0.85, 0.19 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.12, 0.08, 1.88, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Activity_Code_Exit(Cancel As Integer)
    
    If Not IsNull(Activity_Code) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
 
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)

    ORDER_CN.Requery

End Sub
```
