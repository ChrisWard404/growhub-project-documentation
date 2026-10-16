# Form: NMIS_PRODUCT_INVENTORY_ID_ACTIVITIES subformbu

**Caption:** NMIS_LOCATION_ACTIVITIES subform  
**Record source:**

```sql
SELECT NMIS_ID_ACTIVITIES.* FROM NMIS_ID_ACTIVITIES ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Date |  |  |  | 0.63, 0.03, 0.61, 0.20 |
| Label | Label33 | Activity |  |  |  | 1.29, 0.03, 2.03, 0.20 |
| Label | Label34 |                                            Note |  |  |  | 4.28, 0.03, 9.01, 0.20 |
| TextBox | Index |  | Index |  |  | 5.96, 0.03, 0.50, 0.00 |
| TextBox | CN |  | CN |  |  | 2.21, 0.03, 0.74, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 4.33, 0.03, 0.88, 0.00 |
| Label | Label54 | FY |  |  |  | 0.05, 0.03, 0.56, 0.20 |
| Label | Label57 | Units/Code |  |  |  | 3.39, 0.03, 0.82, 0.20 |
| TextBox | New_CN |  | =[Index] & [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery_Code] |  |  | 1.29, 0.04, 0.74, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODES ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME;  |  | 1.27, 0.03, 2.08, 0.20 |
| TextBox | ACTIVITY_DATE |  | ACTIVITY_DATE |  | Change, Enter, Exit, LostFocus | 0.63, 0.03, 0.59, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 4.25, 0.03, 9.03, 0.19 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS;  |  | 0.03, 0.03, 0.57, 0.20 |
| TextBox | ACTIVITY_UNITS |  | ACTIVITY_UNITS |  |  | 3.39, 0.03, 0.53, 0.20 |
| TextBox | UNIT_CODE |  | UNIT_CODE |  |  | 3.96, 0.03, 0.26, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_DATE_Change()
    
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub

Private Sub ACTIVITY_DATE_Enter()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![CN]) Then
        If IsNull(ACTIVITY_DATE) Then
            ACTIVITY_DATE = Forms![NMIS_PRODUCT_INVENTORIES]![Default_Date]
        End If
    End If
    
End Sub

Private Sub ACTIVITY_DATE_Exit(Cancel As Integer)
    
    'If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        'If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        'End If
    'End If
   
End Sub

Private Sub ACTIVITY_DATE_LostFocus()
    
    If Not IsNull(Activity_Code) And Not IsNull(ACTIVITY_DATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If
   
End Sub
```
