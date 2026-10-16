# Form: BeginFY_EndFY_Associate_Species_Input_Inv_rpt

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Report Input  |  |  |  | 1.96, 0.08, 1.30, 0.27 |
| TextBox | Like_Client | Associate: |  |  |  | 3.67, 1.72, 0.79, 0.20 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.29 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.45, 1.41, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.45, 1.72, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 3.67, 1.41, 0.79, 0.20 |
| TextBox | COLLECT_METHOD | Collection Code: |  |  |  | 1.46, 2.04, 0.46, 0.20 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.67, 2.03, 0.80, 0.21 |
| CheckBox | Excel_Message_Viewed | Excel Message |  |  |  | 0.75, 2.52, 0.83, 0.33 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 2.50, 2.56, 0.83, 0.33 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

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

    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY REPORT", acPreview
    If Not Excel_Message_Viewed Then
        MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
        Excel_Message_Viewed = True
    End If
    
End Sub
```
