# Form: NMIS_AGREEMENT_LOTS_Report

**Caption:** Agreements  Report  
**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Opens:** `Form:Agreement_Lot_Holdover_Spreadsheet`, `Form:Agreement_Lot_Source_Calcs_Review`, `Form:Agreement_Lot_Sow_Order_Oyjord_Report`, `Form:Agreement_Lot_Sow_Order_Report`, `Form:Agreement_Lot_Sow_Order_Sow_Group_Summary`, `Form:Agreement_Lot_Sow_Order_Spreadsheet`, `Form:Agreement_Lot_Sow_Order_Spreadsheet_qp_ms`, `Form:Agreement_Lot_Sow_Order_Spreadsheet_qp_ss`, `Form:NMIS_AGREEMENTS_Report`, `Form:NMIS_AGREEMENTS_Report_by_stocktype`, `Form:NMIS_AGREEMENTS_Report_by_stocktype_hold`, `Form:NMIS_AGREEMENTS_Report_w_cost_est`, `Form:NMIS_AGREEMENTS_Summary_Report`, `Form:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2`, `Form:NMIS_PLANT_INVENTORY_Report`, `Form:NMIS_SOWING_ORDER`, `Report:Agreement_Lot_Holdover_Spreadsheet`, `Report:Agreement_Lot_Source_Calcs_Review`, `Report:Agreement_Lot_Sow_Order_Oyjord_Report`, `Report:Agreement_Lot_Sow_Order_Report`, `Report:Agreement_Lot_Sow_Order_Sow_Group_Summary`, `Report:Agreement_Lot_Sow_Order_Spreadsheet`, `Report:Agreement_Lot_Sow_Order_Spreadsheet_qp_ms`, `Report:Agreement_Lot_Sow_Order_Spreadsheet_qp_ss`, `Report:NMIS_AGREEMENTS_Report`, `Report:NMIS_AGREEMENTS_Report_by_stocktype`, `Report:NMIS_AGREEMENTS_Report_by_stocktype_hold`, `Report:NMIS_AGREEMENTS_Report_w_cost_est`, `Report:NMIS_AGREEMENTS_Summary_Report`, `Report:NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2`, `Report:NMIS_PLANT_INVENTORY_Report`, `Report:NMIS_SOWING_ORDER`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Agreement Lots Reports |  |  |  | 1.67, 0.08, 2.41, 0.28 |
| CommandButton | Preview_Quarterly_Report | Confirmation Report |  |  | Click | 0.38, 3.18, 1.59, 0.30 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 5.34, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 0.69, 5.26, 2.28 |
| ComboBox | Begin_FY | Like Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; |  | 1.45, 1.57, 0.68, 0.20 |
| ComboBox | End_FY |  Like End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.45, 1.83, 0.68, 0.20 |
| CommandButton | Run Agreement_Lots_Sow_Order Report | Sowing Order Report |  |  | Click | 2.02, 3.50, 1.59, 0.30 |
| ComboBox | End_Product | End Product: |  | Plant;Propagule |  | 2.17, 1.03, 1.25, 0.20 |
| TextBox | Like_Sowing_Group | Like Sowing Group: |  |  | DblClick | 3.67, 2.15, 0.63, 0.20 |
| CommandButton | Run Agreement_Lots_Sow_Group_Summary Report | Sow Group Summary |  |  | Click | 3.64, 3.18, 1.59, 0.30 |
| CommandButton | Open_Sowing_Order_Form | Edit Sow/Transplant Group Order... |  |  | Click | 2.81, 4.88, 2.26, 0.29 |
| ComboBox | Plntmstr_Symbol | Like Species Code: |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY WHERE (((NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.DIVERSE) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![Diverse])); | DblClick | 3.67, 2.41, 0.80, 0.21 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 2.17, 1.28, 2.00, 0.21 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_AGREEMENTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_AGREEMENTS.CLIENT_ASSOCIATE) WHERE (((NMIS_AGREEMENTS.BEGIN_FY) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![Begin_FY] & "*") AND ((NMIS_AGREEMENTS.END_FY) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![End_FY] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | AfterUpdate, DblClick | 3.67, 1.57, 0.79, 0.21 |
| ComboBox | Begin_Product | Begin Product: |  | S;Seed;SD;Plant;*;Seed and Plant |  | 2.17, 0.78, 1.25, 0.20 |
| ComboBox | Diverse | Traditional/Non-Traditonal Species |  | 0;Traditional;-1;Non-Traditional;*;All | AfterUpdate, DblClick | 3.67, 2.67, 1.12, 0.21 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_CONTACTS INNER JOIN NMIS_AGREEMENTS ON NMIS_CONTACTS.CN = NMIS_AGREEMENTS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_AGREEMENTS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_AGREEMENT_LOTS_Report]![Like_Client] & "*")) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | DblClick, Enter | 3.67, 1.83, 1.60, 0.21 |
| CommandButton | Contacts_for_Current_fy_Sow_Req | Contacts for Current Begin FY... |  |  | Click | 0.47, 4.88, 2.26, 0.29 |
| CommandButton | Run Agreement_Lots_Sow_Order_Spreadsheet | Sowing Spreadsheet |  |  | Click | 2.02, 3.82, 1.59, 0.30 |
| CommandButton | Comfirmation_Summary | Confirmation Summary |  |  | Click | 0.38, 3.50, 1.59, 0.30 |
| CommandButton | Source_Calc_Review | Source Calc Review |  |  | Click | 2.02, 4.15, 1.59, 0.30 |
| CommandButton | Run Agreement_Lots_Oyjord_Sow_Order Report | Oyjord Sowing Report |  |  | Click | 2.02, 3.18, 1.59, 0.30 |
| CommandButton | Run Agreement_Lots_Sow_Order_Spreadsheet_qp |  SS QPlug Spreadsheet |  |  | Click | 3.64, 3.82, 1.59, 0.30 |
| CommandButton | Run Agreement_Lots_Sow_Order_Spreadsheet_qp_ss | MS QPlug Spreadsheet |  |  | Click | 3.64, 4.14, 1.59, 0.30 |
| CommandButton | Holdover_Spreadsheet | Holdover Spreadsheet |  |  | Click | 3.64, 3.50, 1.59, 0.30 |
| CommandButton | Comfirmation_by_stocktype | Confirm by Stocktype |  |  | Click | 0.38, 3.82, 1.59, 0.30 |
| CommandButton | Comfirmation_holdover | Confirm Hold and US TP |  |  | Click | 0.38, 4.15, 1.59, 0.30 |
| CommandButton | Confirmation_Report_with_Charges | Confirm Report-Charges |  |  | Click | 0.38, 4.47, 1.59, 0.30 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Comfirmation_by_stocktype_Click()
On Error GoTo Err_Comfirmation_by_stocktype_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report_by_stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Comfirmation_by_stocktype_Click:
    Exit Sub

Err_Comfirmation_by_stocktype_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Comfirmation_by_stocktype_Click
    
End Sub

Private Sub Comfirmation_holdover_Click()
On Error GoTo Err_Comfirmation_holdover_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report_by_stocktype_hold"
    DoCmd.OpenReport stDocName, acPreview

Exit_Comfirmation_holdover_Click:
    Exit Sub

Err_Comfirmation_holdover_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Comfirmation_holdover_Click
    
End Sub

Private Sub Comfirmation_Summary_Click()
On Error GoTo Err_Comfirmation_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Comfirmation_Summary_Click:
    Exit Sub

Err_Comfirmation_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Comfirmation_Summary_Click
   
End Sub

Private Sub Confirmation_Report_with_Charges_Click()
On Error GoTo Err_Confirmation_Report_with_Charges_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report_w_cost_est"
    DoCmd.OpenReport stDocName, acPreview

Exit_Confirmation_Report_with_Charges_Click:
    Exit Sub

Err_Confirmation_Report_with_Charges_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Confirmation_Report_with_Charges_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Contacts_for_Current_fy_Sow_Req_Click()
On Error GoTo Err_Contacts_for_Current_fy_Sow_Req_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fy_Sow_Req_Click:
    Exit Sub

Err_Contacts_for_Current_fy_Sow_Req_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fy_Sow_Req_Click
    
End Sub



Private Sub Diverse_AfterUpdate()

    Plntmstr_Symbol = "*"
    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Form_Open(Cancel As Integer)
    
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp_ss].Visible = True
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp].Visible = True
    Else
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp_ss].Visible = False
        [Run Agreement_Lots_Sow_Order_Spreadsheet_qp].Visible = False
    End If

End Sub

Private Sub Holdover_Spreadsheet_Click()
On Error GoTo Err_Holdover_Spreadsheet_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Holdover_Spreadsheet"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Holdover_Spreadsheet_Click:
    Exit Sub

Err_Holdover_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Holdover_Spreadsheet_Click
    
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

Like_Client = "*"
CONTACT_CN = Null

End Sub

Private Sub Like_Sowing_Group_DblClick(Cancel As Integer)

    Like_Sowing_Group = "*"
    
End Sub

Private Sub Plntmstr_Symbol_DblClick(Cancel As Integer)
    
    Plntmstr_Symbol = "*"
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENTS_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub

Private Sub Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click()
On Error GoTo Err_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Oyjord_Report"
    
    'if [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    'Else
        'MsgBox "End Product Must Be Plant"
    'End If

Exit_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click:
    Exit Sub

Err_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Oyjord_Sow_Order_Report_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Group_Summary_Report_Click()

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Sow_Group_Summary"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "End Product Must Be Plant"
    End If

End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Report_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Report_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Report"
    
    'If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    'Else
        'MsgBox "End Product Must Be Plant"
    'End If

Exit_Run_Agreement_Lots_Sow_Order_Report:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Report
    
End Sub
Private Sub Plant_Inventory_Report_Click()
On Error GoTo Err_Plant_Inventory_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PLANT_INVENTORY_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Plant_Inventory_Report_Click:
    Exit Sub

Err_Plant_Inventory_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Report_Click
    
End Sub
Private Sub Open_Sowing_Order_Form_Click()
On Error GoTo Err_Open_Sowing_Order_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOWING_ORDER"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Sowing_Order_Form_Click:
    Exit Sub

Err_Open_Sowing_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Sowing_Order_Form_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Spreadsheet_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Spreadsheet"
    stDocName2 = "Agreement_Lot_Sow_Order_Prop_Spreadsheet"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        DoCmd.OpenQuery stDocName2 ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    End If

Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Spreadsheet_qp_ss"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_Click
    
End Sub

Private Sub Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click()
On Error GoTo Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Sow_Order_Spreadsheet_qp_ms"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenQuery stDocName ', acPreview
        'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click:
    Exit Sub

Err_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Run_Agreement_Lots_Sow_Order_Spreadsheet_qp_ss_Click
End Sub

Private Sub Source_Calc_Review_Click()
On Error GoTo Err_Source_Calc_Review_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Source_Calcs_Review"
    
    If [End_Product] = "Plant" Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "End Product Must Be Plant"
    End If

Exit_Source_Calc_Review_Click:
    Exit Sub

Err_Source_Calc_Review_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Calc_Review_Click
    
End Sub
```
