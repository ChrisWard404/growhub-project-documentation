# Form: BeginFY_EndFY_Associate_Species_Input_w_cost_center

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opened from (VBA):** `Report_NMIS_PRODUCT_INVENTORY_By_Age_Class_Report`, `Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Report_QP`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Report Input  |  |  |  | 1.96, 0.08, 1.30, 0.27 |
| TextBox | Like_Client | Associate: |  |  |  | 3.67, 1.72, 0.79, 0.20 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.41, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.72, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 3.67, 1.41, 0.79, 0.20 |
| TextBox | COLLECT_METHOD | Collection Code: |  |  |  | 1.46, 2.04, 0.46, 0.20 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.67, 2.03, 0.80, 0.21 |
| ComboBox | BorC | Cost Center: |  | *;All;B;Bareroot;C;Container |  | 2.59, 0.75, 1.06, 0.24 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Close()
On Error GoTo Err_Form_Close

   Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_TEXT]

Exit_Form_Close:
    Exit Sub

Err_Form_Close:
    MsgBox Err.DESCRIPTION
    Resume Exit_Form_Close
End Sub

Private Sub Form_Open(Cancel As Integer)

    Forms![Switchboard]![FY_For_Reports] = 2000 + Val(Right$(Date, 2))

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        COLLECT_METHOD.Visible = True
    Else
        COLLECT_METHOD.Visible = False
    End If
    
End Sub

Private Sub Preview_Report_Click()

    'If IsNull([BEGIN_FY]) Or IsNull([END_FY]) Then
        'MsgBox "You must enter both beginning and ending dates."
        'DoCmd.GoToControl "Begin_FY"
    'Else
        'If [END_FY] <> "*" Then
            'If ([BEGIN_FY] > [END_FY]) Then
                'MsgBox "Ending FY must be greater than Beginning FY."
                'DoCmd.GoToControl "Begin_FY"
            'End If
        'Else
            Me.Visible = False
        'End If
    'End If

End Sub
```
