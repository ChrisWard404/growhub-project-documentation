Option Compare Database

Private Sub Begin_Date_AfterUpdate()
   
    Data_Processed = False
  
End Sub

Private Sub bill_summary_spd_Click()
On Error GoTo Err_bill_summary_spd_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_billing_summary_Spd"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenQuery stDocName ', acPreview
Exit_bill_summary_spd_Click:
    Exit Sub

Err_bill_summary_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_bill_summary_spd_Click

End Sub

Private Sub Category_Code_AfterUpdate()

    If CATEGORY_CODE = "S" Then
        Storage_bill_Date.Visible = False
        Unit_Price_Freezer.Visible = False
        Unit_Price_Cooler.Visible = False
    Else
        Storage_bill_Date.Visible = True
        Unit_Price_Freezer.Visible = True
        Unit_Price_Cooler.Visible = True
    End If
    Data_Processed = False
    
End Sub

Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "SEED_BILLING_NON_WCF_BILLING_TABLE_Edit"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Create_Extraction_Billing_Report_Click()
On Error GoTo Err_Create_Extraction_Billing_Report_Click

    Dim stDocName As String
    Dim stCreateTable As String
    
    stDocName = "Seed_Extraction_Billing"
    stCreateTable = "Extraction_Billing_By_MGMT_Code Query"
    
    DoCmd.SetWarnings off
    DoCmd.OpenQuery stCreateTable
    DoCmd.SetWarnings (WarningsOn)
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Create_Extraction_Billing_Report_Click:
    Exit Sub

Err_Create_Extraction_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Extraction_Billing_Report_Click


End Sub

Private Sub Create_Seed_Billing_non_detail_Report_Click()
On Error GoTo Err_Create_Seed_Billing_non_detail_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing3"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_non_detail_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_non_detail_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_non_detail_Report_Click

End Sub

Private Sub Create_Seed_Billing_non_detail_summary_Report_Click()
On Error GoTo Err_Create_Seed_Billing_non_detail_summary_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing3_summary"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_non_detail_summary_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_non_detail_summary_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_non_detail_summary_Report_Click
End Sub

Private Sub Create_Seed_Billing_Report_Click()
On Error GoTo Err_Create_Seed_Billing_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_Report_Click

End Sub

Private Sub Create_Seed_Billing_Species__summary_Report_Click()
On Error GoTo Err_Create_Seed_Billing_Species__summary_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing2_summary"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_Species__summary_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_Species__summary_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_Species__summary_Report_Click
End Sub

Private Sub Create_Seed_Billing_Species_Report_Click()
On Error GoTo Err_Create_Seed_Billing_Species_Report_Click

    Dim stDocName As String

    'If [CATEGORY_CODE] = "S" Or [CATEGORY_CODE] = "SWCF" Or [CATEGORY_CODE] = "WCF4" Then
        'If Not Data_Processed Then
            'DoCmd.SetWarnings False
            'DoCmd.OpenQuery "SEED_BILLING_MT QUERY"
            'DoCmd.SetWarnings True
            'Data_Processed = True
        'End If
        'stDocName = "Seed_Sales_Billing"
    'Else
        stDocName = "Seed_Non_WCF_Billing2"
        If Not Data_Processed Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "SEED_BILLING_NON_WCF_MT_QUERY"
            DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_at"
            DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing2_AT"
            DoCmd.OpenQuery "SEED_BILLING2_at QUERY"
            DoCmd.SetWarnings True
            Data_Processed = True
        End If
    'End If
    DoCmd.OpenReport stDocName, acPreview
Exit_Create_Seed_Billing_Species_Report_Click:
    Exit Sub

Err_Create_Seed_Billing_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Seed_Billing_Species_Report_Click


End Sub

Private Sub End_Date_AfterUpdate()
   
    Data_Processed = False
  
End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [BEGIN_DATE] > [END_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
        MsgBox BEGIN_DATE
        MsgBox END_DATE
        DoCmd.GoToControl "end_date"
    End If
    
End Sub
Private Sub Non_WCF_Storage_Billing_Click()
On Error GoTo Err_Non_WCF_Storage_Billing_Click

    Dim stDocName As String
    Dim stResponse As String
    
'***
    stResponse = MsgBox("Category must be for Non-WCF Seed ", vbOKCancel)
    
    If stResponse = vbOK Then
        
    stDocName = "NMIS_Source_Non-WCF_Storage_Billing_Report"
    DoCmd.OpenReport stDocName, acPreview
        
    Else
        MsgBox "Canceling Report Request"
    End If

'***

Exit_Non_WCF_Storage_Billing_Click:
    Exit Sub

Err_Non_WCF_Storage_Billing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Storage_Billing_Click
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    'Storage_bill_Date.Visible = False
    'Unit_Price_Freezer.Visible = False
    'Unit_Price_Cooler.Visible = False
        
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)
    
    Like_Client = "*"

    
End Sub

Private Sub LikeJobcode_DblClick(Cancel As Integer)

    LikeJobcode = ""
    
End Sub

Private Sub min_lot_wt_AfterUpdate()

    Data_Processed = False
    
End Sub

Private Sub min_lot_wt_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "Min_Lot_Wt"
    
End Sub

Private Sub Non_WCF_Storage_Only_AfterUpdate()

    If Non_WCF_Storage_Only Then
        WCF_Seed_Bill_Only = False
    End If
    
End Sub

Private Sub Sown_for_other_than_stored_for_Click()
On Error GoTo Err_Sown_For_Other_Than_Stored_For_Click

    Dim stDocName As String

    stDocName = "Seed_Sown_for_Other_Than_Storage_Parent"
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Sown_For_Other_Than_Stored_For_Click:
    Exit Sub

Err_Sown_For_Other_Than_Stored_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sown_For_Other_Than_Stored_For_Click
    
End Sub

Private Sub Storage_bill_Date_AfterUpdate()
   
    '[NMIS_ACCESS_USER_NURSERY subform1].Form![storge_date] = Storage_bill_Date
    Data_Processed = False
  
End Sub

Private Sub Storage_bill_Date_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "Storage_Date"
 
End Sub

Private Sub Unit_Price_Cooler_AfterUpdate()
   
    '[NMIS_ACCESS_USER_NURSERY subform1].[Form]![cooler] = Unit_Price_Cooler
    Data_Processed = False
  
End Sub

Private Sub Unit_Price_Cooler_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "cooler"
    
End Sub

Private Sub Unit_Price_Freezer_AfterUpdate()

    '[NMIS_ACCESS_USER_NURSERY subform1].[Form]![FREEZER] = Unit_Price_Freezer
    Data_Processed = False
  
End Sub

Private Sub Unit_Price_Freezer_DblClick(Cancel As Integer)

    DoCmd.OpenForm "Seed_Billing_Change_Defaults"
    DoCmd.GoToControl "freezer"
    
End Sub

Private Sub WCF_Seed_Bill_Only_AfterUpdate()

    If WCF_Seed_Bill_Only Then
        Non_WCF_Storage_Only = False
    End If
    
End Sub