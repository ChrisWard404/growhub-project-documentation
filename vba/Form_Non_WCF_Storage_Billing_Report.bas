Option Compare Database

Private Sub Create_Extraction_Billing_Report_Click()

    Dim stDocName As String
    Dim stCreateTable As String
    
    stDocName = "Seed_Extraction_Billing"
    stCreateTable = "Extraction_Billing_By_MGMT_Code Query"
    
    DoCmd.SetWarnings off
    DoCmd.OpenQuery stCreateTable
    DoCmd.OpenReport stDocName, acPreview
    DoCmd.SetWarnings (WarningsOn)

End Sub

Private Sub Create_Seed_Billing_Report_Click()

    Dim stDocName As String

    stDocName = "Seed_Sales_Billing"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Bill_Date_Change()

    Data_Processed = False
    
End Sub


Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "SEED_BILLING_NON_WCF_BILLING_TABLE_Edit2"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Min_Bill_Amt_AfterUpdate()
            
    Data_Processed = False
    
End Sub

Private Sub Min_Bill_Amt_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![Client_min_bill_amt] = Min_Bill_Amt
    DoCmd.GoToControl "Min_Bill_Amt"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub min_lot_wt_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub min_lot_wt_DblClick(Cancel As Integer)
       
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![min_lot_wt] = min_lot_wt
    DoCmd.GoToControl "min_lot_wt"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub Non_Product_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_P"
 
    DoCmd.OpenReport stDocName, acPreview
 
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S"
        
    DoCmd.OpenReport stDocName, acPreview
 
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Freezer_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Freezer_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_Freezer"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Freezer_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Freezer_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Freezer_Click
    
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Freezer_Summary_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_Freezer_summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Freezer_Summary_Click
    
End Sub

Private Sub Non_Source_WCF_Storage_Billing_Non_Freezer_Click()
On Error GoTo Err_Non_Source_WCF_Storage_Billing_Non_Freezer_Click

    Dim stDocName As String

    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_S_not_freezer"
    DoCmd.OpenReport stDocName, acPreview

Exit_Non_Source_WCF_Storage_Billing_Non_Freezer_Click:
    Exit Sub

Err_Non_Source_WCF_Storage_Billing_Non_Freezer_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_Source_WCF_Storage_Billing_Non_Freezer_Click
    
End Sub

Private Sub Non_Traditional_Click()

    If Non_Traditional Then
        traditional = False
    End If
    
End Sub

Private Sub Non_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
End Sub

Private Sub Unit_Price_Change()

    Data_Processed = False
    
End Sub

Private Sub Non_WCF_Storage_Billing_Summary_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Summary_Report"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
End Sub

Private Sub Non_WCF_Storage_Billing_Summary_SPD_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non_WCF_Storage_Billing_Summary_SPD"
    
        If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenQuery stDocName
          
End Sub

Private Sub Non_WCF_Storage_Billing_w_lots_Click()
On Error GoTo Err_Non_WCF_Storage_Billing_w_lots_Click
    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_w_lots_Report"
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Non_WCF_Source_Storage_Billing_MT"
        DoCmd.OpenQuery "Non_WCF_Product_Storage_Billing_AT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview
          
Exit_Non_WCF_Storage_Billing_w_lots_Click:
    Exit Sub

Err_Non_WCF_Storage_Billing_w_lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Storage_Billing_w_lots_Click
    
End Sub

Private Sub Storage_bill_Date_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Storage_bill_Date_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Unit_Price_Cooler"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![storge_date] = Storage_bill_Date
    DoCmd.GoToControl "Storage_bill_Date"
    MsgBox "The Default has been set to the Current Value"

    
    
End Sub

Private Sub traditional_Click()
    
    If traditional Then
        Non_Traditional = False
    End If
    
End Sub

Private Sub Unit_Price_Cooler_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Unit_Price_Cooler_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![cooler] = Unit_Price_Cooler
    DoCmd.GoToControl "Unit_Price_Cooler"
    MsgBox "The Default has been set to the Current Value"

End Sub

Private Sub Unit_Price_Freezer_AfterUpdate()
        
    Data_Processed = False
    
End Sub

Private Sub Unit_Price_Freezer_DblClick(Cancel As Integer)
   
    DoCmd.GoToControl "Storage_bill_Date"
    [NMIS_ACCESS_USER_NURSERY subform1].Form![FREEZER] = Unit_Price_Freezer
    DoCmd.GoToControl "Unit_Price_Freezer"
    MsgBox "The Default has been set to the Current Value"

End Sub