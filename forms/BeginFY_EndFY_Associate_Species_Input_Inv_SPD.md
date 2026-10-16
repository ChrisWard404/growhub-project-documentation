# Form: BeginFY_EndFY_Associate_Species_Input_Inv_SPD

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 |  Plant Product Inventory Spreadsheet  |  |  |  | 1.11, 0.08, 3.72, 0.28 |
| TextBox | Like_Client | Associate: |  |  | AfterUpdate, DblClick | 4.20, 1.19, 0.79, 0.20 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 2.15, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 5.15, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.04, 0.79, 5.81, 1.54 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.35, 0.90, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.35, 1.19, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 4.20, 0.90, 0.79, 0.20 |
| TextBox | COLLECT_METHOD | Collection Code: |  |  |  | 1.35, 1.49, 0.46, 0.20 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 4.20, 1.77, 0.80, 0.21 |
| CheckBox | Excel_Message_Viewed | Excel Message |  |  |  | 0.75, 2.52, 0.83, 0.33 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 0.17, 0.31, 0.83, 0.33 |
| ComboBox | Diverse | Traditional/Non-Traditonal Species |  | 0;Traditional;-1;Non-Traditional;*;All | AfterUpdate | 4.21, 2.06, 1.12, 0.21 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![BeginFY_EndFY_Associate_Species_Input_Inv_SPD]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | DblClick | 4.19, 1.46, 1.60, 0.21 |
| CheckBox | Location_Processed | Location Processed |  |  |  | 0.17, 0.06, 0.83, 0.33 |
| CheckBox | Please_Wait | Please Wait Message Shown |  |  |  | 0.00, 3.53, 0.83, 0.33 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 1.06, 1.77, 2.00, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Diverse_AfterUpdate()
    
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


Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"
    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click
    If Not Location_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    End If
    If Not Data_Processed Then
        DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Spreadsheet" ', acPreview
    'If Not Excel_Message_Viewed Then
        'MsgBox "Click on the Print Previw Tab, Select Excel from the data section and select Export Data with Formatting and Layout in the export window to save as a Spreadsheet in desired folder"
        'Excel_Message_Viewed = True
    'End If
    
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click

End Sub
```
