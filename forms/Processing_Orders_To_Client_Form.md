# Form: Processing_Orders_To_Client_Form

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`, `NMIS_SEASONS`  
**Opens:** `Form:xPlease_Be_Patient_First_Report_Message`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Harvest/Processing Order Spreadsheet to Client |  |  |  | 0.25, 0.08, 4.71, 0.28 |
| CommandButton | Preview_Report | Click to Preview Client Report |  |  | Click | 2.00, 3.00, 1.17, 0.62 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.05, 1.11, 5.07, 1.47 |
| ComboBox | Begin_FY | Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.15, 1.67, 0.68, 0.20 |
| ComboBox | End_FY | End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.15, 1.93, 0.68, 0.20 |
| TextBox | Parent_Associate | Parent Associate: |  |  |  | 3.36, 1.23, 0.79, 0.20 |
| ComboBox | Plntmstr_Symbol | Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY; |  | 3.48, 2.20, 0.80, 0.21 |
| CommandButton | Processing_Orders_to_Client_checklist | Client Checklist |  |  | Click | 0.38, 3.14, 1.11, 0.31 |
| CheckBox | Data_Processed | Data Processed |  |  |  | 2.12, 2.60, 0.83, 0.33 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;BR;Bareroot;C;Container |  | 1.15, 1.22, 1.75, 0.21 |
| CommandButton | Processing_Orders_to_Client_Lot_checklist | Lot Checklist |  |  | Click | 3.62, 3.14, 1.11, 0.31 |
| ComboBox | Product_Group | Group: |  | PLANT;"Plant";PROPAGULE;"Propagule" | AfterUpdate | 2.24, 0.79, 1.50, 0.25 |
| CheckBox | Excel_Message_Viewed | Excel Message |  |  |  | 0.58, 2.65, 0.83, 0.33 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![Processing_Orders_To_Client_Form]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | DblClick | 3.48, 1.93, 1.60, 0.21 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) Not Like "99*")) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | AfterUpdate | 3.48, 1.67, 0.97, 0.21 |
| CommandButton | Preview_Report_w_altspec | Click to Preview Client Report with Alt Net |  |  | Click | 2.00, 3.71, 1.17, 0.62 |
| ComboBox | Like_End_Season | Like End Sea: |  | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS; | AfterUpdate, DblClick | 1.15, 2.18, 1.09, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub End_FY_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    BorC.Visible = True
    BEGIN_FY.Visible = True
    END_FY.Visible = True
    Processing_Orders_to_Client_checklist.Visible = True
    Processing_Orders_to_Client_Lot_checklist.Visible = True
        
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_End_Season_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub Like_End_Season_DblClick(Cancel As Integer)

    Like_End_Season = "*"
    
End Sub

Private Sub Preview_Report_Click()
On Error GoTo Err_Preview_Report_Click

    If PRODUCT_GROUP = "PROPAGULE" Then
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    Else
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Processing_Order_To_Client_Report_mt"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Processing_Order_To_Client_Report" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    End If
    
Exit_Preview_Report_Click:
    Exit Sub

Err_Preview_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_Click
    
End Sub

Private Sub Preview_Report_w_altspec_Click()
On Error GoTo Err_Preview_Report_w_altspec_Click

    If PRODUCT_GROUP = "PROPAGULE" Then
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    Else
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Processing_Order_To_Client_Report_mt"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
        DoCmd.OpenQuery "Processing_Order_To_Client_Report_w_AltNet" ', acPreview
        If Not Excel_Message_Viewed Then
            'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
            Excel_Message_Viewed = True
        End If
    End If
        
Exit_Preview_Report_w_altspec_Click:
    Exit Sub

Err_Preview_Report_w_altspec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Report_w_altspec_Click
End Sub

Private Sub Processing_Orders_to_Client_checklist_Click()
On Error GoTo Err_Processing_Orders_to_Client_checklist_Click

    Dim stDocName As String

    If PRODUCT_GROUP = "PROPAGULE" Then
        stDocName = "Processing_Propagule_Order_To_Client_Checklist_Report"
        If Not (Data_Processed) Then
            DoCmd.OpenForm "xPlease_Be_Patient_First_Report_Message"
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "Propagule_for_Harvest_Order_to_Client_MT"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    Else
        stDocName = "Processing_Order_To_Client_Checklist_Report"
    End If
    
    DoCmd.OpenQuery stDocName, acNormal, acEdit


Exit_Processing_Orders_to_Client_checklist_Click:
    Exit Sub

Err_Processing_Orders_to_Client_checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Orders_to_Client_checklist_Click
    
End Sub

Private Sub Processing_Orders_to_Client_Lot_checklist_Click()
On Error GoTo Err_Processing_Orders_to_Client_Lot_checklist_Click

    If Not (Data_Processed) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Processing_Order_To_Client_Report_mt"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenQuery "Processing_Order_To_Client_Lot_Checklist" ', acPreview
Exit_Processing_Orders_to_Client_Lot_checklist_Click:
    Exit Sub

Err_Processing_Orders_to_Client_Lot_checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Orders_to_Client_Lot_checklist_Click
End Sub

Private Sub Product_Group_AfterUpdate()

    Data_Processed = False
    If PRODUCT_GROUP = "Propagule" Then
        BorC.Visible = False
        BEGIN_FY.Visible = False
        END_FY.Visible = False
        Like_End_Season.Visible = False
        'Processing_Orders_to_Client_checklist.Visible = False
        Processing_Orders_to_Client_Lot_checklist.Visible = False
    Else
        BorC.Visible = True
        BEGIN_FY.Visible = True
        END_FY.Visible = True
        Like_End_Season.Visible = True
        'Processing_Orders_to_Client_checklist.Visible = True
        Processing_Orders_to_Client_Lot_checklist.Visible = True
    End If
  
End Sub
```
