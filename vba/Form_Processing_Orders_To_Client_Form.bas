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