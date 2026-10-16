# Form: NMIS_ORDER_BADJ_ACT subform

**Caption:** NMIS_ORDR_ACT subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN, NMIS_ID_ACTIVITIES.FISCAL_YEAR, NMIS_ID_ACTIVITIES.ACTIVITY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.ACTIVITY_TIME, NMIS_ID_ACTIVITIES.ACTIVITY_HOURS, NMIS_ID_ACTIVITIES.AMT_PER_UNIT, NMIS_ID_ACTIVITIES.CONTRACT_ITEM, NMIS_ID_ACTIVITIES.CHARGE_PER_HOUR_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_AMT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_UNIT_OVERRIDE, NMIS_ID_ACTIVITIES.CHARGE_PER_ACTIVITY_OVERRIDE, NMIS_ID_ACTIVITIES.NOTE, NMIS_ID_ACTIVITIES.DESTINATION_ASSOCIATE, NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN, NMIS_ID_ACTIVITIES.ORDER_CN, NMIS_ID_ACTIVITIES.TICKET_CN, NMIS_ID_ACTIVITIES.Index, NMIS_ID_ACTIVITIES.UNIT_CODE, IIf(Not IsNull([ORDER_CN]),Left$([ORDER_CN],Len([ORDER_CN])-7),"") AS Order_ID FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.AGREEMENT_LOT_CN)=[Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE, NMIS_ID_ACTIVITIES.CN;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ID_ACTIVITIES`  
**Embedded in:** `Form:NMIS_ORDER_BILL_ADJUSTMENTS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ORDER_CN_Label | Order ID |  |  |  | 4.15, 0.04, 0.46, 0.31 |
| Label | ACTIVITY_DATE_Label |  Activity  Date |  |  |  | 0.04, 0.04, 0.78, 0.31 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 0.85, 0.04, 0.76, 0.31 |
| Label | ACTIVITY_UNITS_Label | # Units |  |  |  | 1.64, 0.04, 0.58, 0.31 |
| Label | Label19 | Unit |  |  |  | 2.26, 0.04, 0.28, 0.31 |
| Label | Label32 | Charge/Unit Override |  |  |  | 2.58, 0.04, 0.75, 0.31 |
| Label | Label33 | Charge/Amt Override |  |  |  | 3.37, 0.04, 0.75, 0.31 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Order_ID |  | Order_ID |  |  | 4.15, 0.02, 0.46, 0.19 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  | Exit | 0.04, 0.02, 0.78, 0.19 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES;  |  | 0.85, 0.02, 0.76, 0.19 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 1.64, 0.02, 0.58, 0.19 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 2.26, 0.02, 0.28, 0.19 |
| TextBox | CHARGE_PER_UNIT_OVERRIDE |  | CHARGE_PER_UNIT_OVERRIDE |  |  | 2.58, 0.02, 0.75, 0.19 |
| TextBox | CHARGE_PER_AMT_OVERRIDE |  | CHARGE_PER_AMT_OVERRIDE |  |  | 3.37, 0.02, 0.75, 0.19 |
| TextBox | Note Label |  | NOTE |  |  | 0.04, 0.25, 4.58, 0.19 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Index |  | Index |  |  | 1.08, 0.04, 0.50, 0.16 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 1.62, 0.04, 0.46, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.21, 0.04, 0.85, 0.15 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 2.12, 0.04, 0.96, 0.00 |
| TextBox | CN |  | CN |  |  | 3.17, 0.00, 0.90, 0.19 |
| Label | Label51 | Charge/Unit overrides the Product Price |  |  |  | 0.04, 0.04, 2.69, 0.21 |

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

    'ORDER_CN.Requery

End Sub
```
