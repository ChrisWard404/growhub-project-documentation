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