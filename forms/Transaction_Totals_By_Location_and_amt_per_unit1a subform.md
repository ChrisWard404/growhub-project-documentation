# Form: Transaction_Totals_By_Location_and_amt_per_unit1a subform

**Caption:** Transaction_Totals_By_Location_and_amt_per_unit1 subform  
**Record source:**

```sql
Transaction_Totals_for_ID_ACT_TRANS_FORM
```

**Backend tables referenced:** `NMIS_UNITS`  
**Embedded in:** `Form:NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | LOCATION_CN_Label | Location |  |  |  | 0.41, 0.30, 1.54, 0.17 |
| Label | Sum_of_Activity_Units_Label | Units |  |  |  | 1.99, 0.30, 0.68, 0.17 |
| Label | Net_Density_Label | Net/Unit |  |  |  | 5.25, 0.30, 0.72, 0.17 |
| Label | Gross_Density_Label | Gross/Unit |  |  |  | 4.50, 0.30, 0.71, 0.17 |
| Label | Label14 | Net |  |  |  | 6.76, 0.30, 0.64, 0.17 |
| Label | Label18 | Unit |  |  |  | 2.71, 0.30, 1.75, 0.17 |
| Label | Label19 | Gross |  |  |  | 6.03, 0.30, 0.63, 0.17 |
| Label | Label24 | Current Inventory Info |  |  |  | 2.90, 0.08, 1.79, 0.17 |
| ComboBox | Like_Unit_Type | Unit Type: |  | G;Grow;L;Lift Container;S;Store;*;All | AfterUpdate | 0.78, 0.06, 0.90, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_of_Activity_Units |  | Total_Activity_Units |  |  | 1.99, 0.02, 0.68, 0.25 |
| TextBox | Net_Density |  | Net_Density |  |  | 5.25, 0.02, 0.72, 0.25 |
| TextBox | Gross_Density |  | Gross_Density |  |  | 4.50, 0.02, 0.71, 0.25 |
| TextBox | Net_M |  | =Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3) |  | DblClick | 6.74, 0.02, 0.67, 0.25 |
| TextBox | LOCATION_CN |  | LOCATION2 |  |  | 0.41, 0.02, 1.53, 0.25 |
| TextBox | Gross_M |  | =Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3) |  |  | 6.00, 0.02, 0.66, 0.25 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT NMIS_UNITS.UNIT_CODE, NMIS_UNITS.UNIT_DESC FROM NMIS_UNITS;  |  | 2.71, 0.02, 1.76, 0.25 |
| CommandButton | Zero | Zero |  |  | Click | 0.03, 0.02, 0.37, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Net_M |  | =Sum(Round([Total_Activity_Units]*Round([Net_Density],3)/[UNIT_MULTIPLIER],3)) |  | DblClick | 6.69, 0.03, 0.71, 0.25 |
| Label | Label16 | Total Inventory: |  |  |  | 4.80, 0.04, 0.95, 0.19 |
| TextBox | Sum_Gross_M |  | =Sum(Round([Total_Activity_Units]*Round([Gross_Density],3)/[UNIT_MULTIPLIER],3)) |  |  | 5.93, 0.03, 0.73, 0.25 |
| TextBox | Text27 |  | =Sum([Total_Activity_Units]) |  |  | 1.93, 0.03, 0.73, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Net_M_DblClick(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS] = Net_M
    Else
        MsgBox "Cannot Replace existing Activity Units by Double-Clicking!", vbExclamation
    End If
    
End Sub

Private Sub Sum_Net_M_DblClick(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS] = Sum_Net_M
    Else
        MsgBox "Cannot Replace existing Activity Units by Double-Clicking!", vbExclamation
    End If
   
End Sub

Private Sub Zero_Click()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
    End If
        If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = 0 Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
            = ID_LOCATION_CN
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
            = Sum_Of_ACTIVITY_UNITS * -1
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
            = Net_Density
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
            = Gross_Density
        'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Requery
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Inv_Info].Visible = True
        DoCmd.GoToRecord , , acNewRec
        End If
    
End Sub
```
