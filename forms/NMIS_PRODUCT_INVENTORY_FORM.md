# Form: NMIS_PRODUCT_INVENTORY_FORM

**Caption:** Plant Product Inventory Report  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`, `Report:NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report`, `Report:NMIS_PRODUCT_INVENTORY_Checklist`, `Report:NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts`, `Report:NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2`, `Report:NMIS_PRODUCT_INVENTORY_No_Subtotals_Report`, `Report:NMIS_PRODUCT_INVENTORY_Report`, `Report:NMIS_PRODUCT_INVENTORY_Report2`, `Report:NMIS_PRODUCT_INVENTORY_Report2Sum`, `Report:NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Preview_Report2 | Click to Preview Last Inventory from ALL Years... |  |  | Click | 0.09, 3.32, 1.71, 0.54 |
| Label | Label0 |  Plant Product Inventory Report |  |  |  | 1.27, 0.08, 3.08, 0.27 |
| Line | Line12 |  |  |  |  | 0.02, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.06, 0.56, 5.29, 1.49 |
| TextBox | COLLECT_METHOD | Collection Code: |  |  |  | 1.39, 1.38, 0.46, 0.20 |
| ComboBox | Plntmstr_Symbol | Like Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; | DblClick | 3.60, 1.40, 0.80, 0.21 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 2.85, 0.83, 0.83, 0.33 |
| CheckBox | Location_Processed | Location Processed |  |  |  | 0.08, 0.07, 0.83, 0.33 |
| CheckBox | Please_Wait | Please Wait Message Shown |  |  |  | 1.69, 0.73, 0.83, 0.33 |
| CheckBox | Data_Processed2 | Data Processed2 |  |  |  | 0.08, 0.27, 0.83, 0.33 |
| CommandButton | Preview_Client_Checklist | Inventory Client Checklist |  |  | Click | 0.09, 2.09, 1.40, 0.39 |
| CommandButton | Preview_Client_Checklist_w_contacts | Inventory Client Checklist w/Contacts |  |  | Click | 0.09, 2.50, 1.40, 0.39 |
| ComboBox | Diverse | Traditional/Non-Traditonal Species |  | 0;Traditional;-1;Non-Traditional;*;All | DblClick | 3.60, 1.65, 1.12, 0.21 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_PRODUCT_INVENTORY_FORM]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | DblClick, Enter | 3.60, 1.14, 1.60, 0.21 |
| TextBox | Like_Client | Like Associate: |  |  | AfterUpdate, DblClick | 3.60, 0.90, 0.79, 0.20 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.39, 0.90, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.39, 1.13, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  | DblClick | 3.60, 2.14, 0.79, 0.20 |
| CommandButton | Preview_Report_No_Subtotals | Click to Preview Inventory for CURRENT Year Only without Subtotals... |  |  | Click | 3.66, 3.32, 1.71, 0.54 |
| CommandButton | Preview_Client_Checklist_w_contacts2 | Inventory Contact Checklist w/Client |  |  | Click | 0.09, 2.91, 1.40, 0.39 |
| CommandButton | Preview_Report_Species_AgeClass | Click for Inventory by Species and Age Class for CURRENT Year |  |  | Click | 0.96, 3.32, 1.71, 0.54 |
| CommandButton | Preview_Report_AgeClass_Species | Click for Inventory by Age Class and Species for CURRENT Year  |  |  | Click | 2.74, 3.32, 1.71, 0.54 |
| CommandButton | Preview_Report | Click to Preview Inventory for CURRENT Year Only... |  |  | Click | 1.88, 3.32, 1.71, 0.54 |
| CommandButton | Preview_Report2Sum | Click to Preview Last Inventory from ALL Years by Stocktype/Lot... |  |  | Click | 0.09, 3.90, 1.71, 0.54 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Begin_FY_AfterUpdate()

    Data_Processed = False
    Please_Wait = False
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    Please_Wait = False
    
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
    
End Sub

Private Sub Parent_Associate_DblClick(Cancel As Integer)

    PARENT_ASSOCIATE = "*"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)

    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Client_Checklist_Click()
On Error GoTo Err_Preview_Client_Checklist_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_Click:
    Exit Sub

Err_Preview_Client_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_Click
    
End Sub

Private Sub Preview_Client_Checklist_w_contacts_Click()
On Error GoTo Err_Preview_Client_Checklist_w_contacts_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_w_contacts_Click:
    Exit Sub

Err_Preview_Client_Checklist_w_contacts_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_w_contacts_Click
    
End Sub

Private Sub Preview_Client_Checklist_w_contacts2_Click()
On Error GoTo Err_Preview_Client_Checklist_w_contacts2_Click

    Dim stDocName As String
    stDocName = "NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2"
    
    If Not Data_Processed Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_w_contacts2_Click:
    Exit Sub

Err_Preview_Client_Checklist_w_contacts2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_w_contacts2_Click
    
End Sub

Private Sub Preview_Report_AgeClass_Species_Click()
On Error GoTo Err_Preview_Report_AgeClass_Species_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_AgeClass_Species_Click:
    Exit Sub

Err_Preview_Report_AgeClass_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_AgeClass_Species_Click
    
End Sub

Private Sub Preview_Report_Click()

On Error GoTo Err_Preview_Report_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
    
End Sub

Private Sub Preview_Report_No_Subtotals_Click()
On Error GoTo Err_Preview_Report_No_Subtotals_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_No_Subtotals_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_No_Subtotals_Click:
    Exit Sub

Err_Preview_Report_No_Subtotals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_No_Subtotals_Click
    
End Sub

Private Sub Preview_Report_Species_AgeClass_Click()
On Error GoTo Err_Preview_Report_Species_AgeClass_Click

    Dim stDocName As String
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
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report_Species_AgeClass_Click:
    Exit Sub

Err_Preview_Report_Species_AgeClass_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Species_AgeClass_Click
    
End Sub

Private Sub Preview_Report2_Click()
On Error GoTo Err_Preview_Report2_Click

    Dim stDocName As String
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
    If Not Data_Processed2 Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt2"
        DoCmd.SetWarnings True
        Data_Processed2 = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2_Click:
    Exit Sub

Err_Preview_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2_Click
End Sub

Private Sub Preview_Report2Sum_Click()
On Error GoTo Err_Preview_Report2Sum_Click

    Dim stDocName As String
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
    If Not Data_Processed2 Then
        If Not Please_Wait Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            Please_Wait = True
        End If
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_Query_mt2"
        DoCmd.SetWarnings True
        Data_Processed2 = True
    End If

    stDocName = "NMIS_PRODUCT_INVENTORY_Report2Sum"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Report2Sum_Click:
    Exit Sub

Err_Preview_Report2Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report2Sum_Click
End Sub
```
