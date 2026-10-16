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

Private Sub Bedfeet_Per_Acre_DblClick(Cancel As Integer)
    
    Refresh
    [NMIS_ACCESS_USER_NURSERY subform1].[Form]![Default4N] = Bedfeet_Per_Acre
    MsgBox "The Default Bed Feet per Acre has been changed to the current value."
    
End Sub

Private Sub Bill_Date_Change()

    Data_Processed = False
    
End Sub

Private Sub Client_Bill_Table_Edit_Click()
On Error GoTo Err_Client_Bill_Table_Edit_Click

    Dim stDocName As String

    stDocName = "Propagule_Billing_Table_Edit"
    
    DoCmd.OpenQuery stDocName
    
Exit_Client_Bill_Table_Edit_Click:
    Exit Sub

Err_Client_Bill_Table_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Client_Bill_Table_Edit_Click
    
End Sub

Private Sub Non_Product_WCF_Storage_Billing_Click()

    Dim stDocName As String
    
    stDocName = "NMIS_Non-WCF_Storage_Billing_Report_P"
 
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

Private Sub Open_NMIS_Order_Review_Form_Click()
On Error GoTo Err_Open_NMIS_Order_Review_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Open_NMIS_PROCESSING_ORDERS_Review"
    
    Client_Bill_Data_Processed = False
    DoCmd.RunMacro stDocName
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![PRODUCT_GROUP] = "NPROPAGULE"
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![ORDER_CN].Requery

Exit_Open_NMIS_Order_Review_Form_Click:
    Exit Sub

Err_Open_NMIS_Order_Review_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Order_Review_Form_Click
   
End Sub

Private Sub Open_NMIS_Product_Charges_Form_Click()
On Error GoTo Err_Open_NMIS_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES2"
    
    Client_Bill_Data_Processed = False
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![NMIS_PRODUCT_CHARGES2]![Filter_for_Product_Type] = "N"

Exit_Open_NMIS_Product_Charges_Form_Click:
    Exit Sub

Err_Open_NMIS_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Product_Charges_Form_Click
    
End Sub

Private Sub Propagule_Billing_Click()
On Error GoTo Err_Propagule_Billing_Click

    Dim stDocName As String

    stDocName = "Propagule_Billing"
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Billing_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Propagule_Billing_Click:
    Exit Sub

Err_Propagule_Billing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Propagule_Billing_Click
    
End Sub

Private Sub Unit_Price_Change()

    Data_Processed = False
End Sub

Private Sub Propagule_Billing_summary_Click()
On Error GoTo Err_Propagule_Billing_summary_Click

    Dim stDocName As String

    stDocName = "Propagule_Billing_summary"
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Billing_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Propagule_Billing_summary_Click:
    Exit Sub

Err_Propagule_Billing_summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Propagule_Billing_summary_Click
    
End Sub

Private Sub Propagule_Billing_summary_SPD_Click()
On Error GoTo Err_Propagule_Billing_summary_SPD_Click

    Dim stDocName As String
    
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Billing_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If

    stDocName = "Propagule_Billing_summary_SPD"
    DoCmd.OpenQuery stDocName
Exit_Propagule_Billing_summary_SPD_Click:
    Exit Sub

Err_Propagule_Billing_summary_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Propagule_Billing_summary_SPD_Click
    
End Sub

Private Sub PropaguleOrderSizeReview_Click()
On Error GoTo Err_PropaguleOrderSizeReview_Click

    Dim stDocName As String

    stDocName = "Propagule_Order_Size_Review"
    DoCmd.OpenQuery stDocName, acPreview

Exit_PropaguleOrderSizeReview_Click:
    Exit Sub

Err_PropaguleOrderSizeReview_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PropaguleOrderSizeReview_Click
    
End Sub