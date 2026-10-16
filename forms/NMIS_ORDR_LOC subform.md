# Form: NMIS_ORDR_LOC subform

**Caption:** NMIS_ORDR_LOC subform  
**Record source:**

```sql
SELECT [NMIS_ID_LOCATIONS].[CN], [NMIS_ID_LOCATIONS].[LOCATION_CN], [NMIS_ID_LOCATIONS].[SOURCE_LOT_CN], [NMIS_ID_LOCATIONS].[AGREEMENT_LOT_CN], [NMIS_ID_LOCATIONS].[UNIT_CODE], [NMIS_ID_LOCATIONS].[SUBLOT_NO], [NMIS_ID_LOCATIONS].[DIST_FROM_BED_BEG], [NMIS_ID_LOCATIONS].[BEGIN_INDEX], [NMIS_ID_LOCATIONS].[BEGIN_COUNTER], [NMIS_ID_LOCATIONS].[END_INDEX], [NMIS_ID_LOCATIONS].[END_COUNTER], [NMIS_ID_LOCATIONS].[BEGIN_DATE], [NMIS_ID_LOCATIONS].[END_DATE], [NMIS_ID_LOCATIONS].[Index] FROM NMIS_ID_LOCATIONS ORDER BY [NMIS_ID_LOCATIONS].[CN], [NMIS_ID_LOCATIONS].[LOCATION_CN];
```

**Backend tables referenced:** `NMIS_ID_LOCATIONS`, `NMIS_LOCATIONS`  
**Embedded in:** `Form:NMIS_ORDER_ACT-TRANS-LOC`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 1.92, 0.04, 0.62, 0.19 |
| Label | Label13 | Location |  |  |  | 0.92, 0.04, 0.96, 0.19 |
| Label | Begin_Date_Label | Begin Date |  |  |  | 2.58, 0.04, 0.62, 0.19 |
| Label | Label24 | ID Location CN |  |  |  | 0.04, 0.04, 0.83, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | UNIT_CODE |  | UNIT_CODE |  | Exit | 1.92, 0.04, 0.62, 0.19 |
| ComboBox | LOCATION_CN |  | LOCATION_CN | SELECT [NMIS_LOCATIONS].[CN], [NMIS_LOCATIONS].[LOCATION] FROM NMIS_LOCATIONS;  |  | 0.92, 0.04, 0.96, 0.19 |
| TextBox | BEGIN_DATE |  | BEGIN_DATE |  |  | 2.58, 0.04, 0.62, 0.19 |
| TextBox | CN |  | CN |  |  | 0.04, 0.04, 0.83, 0.19 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Index |  | Index |  |  | 0.04, 0.04, 0.46, 0.19 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 0.58, 0.04, 0.96, 0.19 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 1.58, 0.04, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub UNIT_CODE_Exit(Cancel As Integer)
    
    If Not IsNull(LOCATION_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub
```
