# Legacy NMIS VBA (modules of reachable screens + standard modules) (part 2 of 2)

Code-behind for reachable forms/reports plus all standard modules. Module names are Form_<form>, Report_<report> or the module name.

## Module: Form_Propagule_Billing_Report

```vb
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
```

## Module: Form_Propagule_Harvest_Priorties

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_Harvested"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Feet_To_Lift_DblClick(Cancel As Integer)

    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [Net Order] = [Net Inv]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Feet_To_Lift_Exit(Cancel As Integer)

    If ([Feet To Lift] + [LIFTED]) < [LOT_LENGTH] Then
        Partial_Lift = -1
    End If
    DoCmd.GoToControl "Priority"
    
End Sub

Private Sub Command59_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_Checklist"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Net_Note_DblClick(Cancel As Integer)
    
    Net_Note = "Destroy"
    
End Sub

Private Sub Net_Order_DblClick(Cancel As Integer)

    [Net Order] = [Net Inv]
    [Feet To Lift] = [LOT_LENGTH] - [LIFTED]
    [ft note] = "All"
    Partial_Lift = 0
    
End Sub

Private Sub Open_Specs_Click()

    DoCmd.OpenReport "Lifting_Priorties_Specs", acPreview
    
End Sub

Private Sub Command73_Click()
    
On Error GoTo Err_Command73_Click
    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_Harvested_by_Date"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview
    

Exit_Command73_Click:
    Exit Sub

Err_Command73_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command73_Click
    
End Sub



Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Min_Field_Location_mt"
    DoCmd.SetWarnings True
    
End Sub

Private Sub Harvest_Priority_Checklist_by_client_Loc_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_by_Client_loc_Checklist"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Harvest_Priority_Checklist_by_Loc_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_by_loc_Checklist"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Like_Harvest_FY_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Like_Harvest_FY_Enter()
If Val([Forms]![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].[Form]![Max_FY]) < _
    Val([Forms]![Switchboard]![FY_For_Reports]) Then
        [Lifting_Priorties_Subform].Form![Add_Current_FY_Lots].Visible = True
    Else
        [Lifting_Priorties_Subform].Form![Add_Current_FY_Lots].Visible = False
    End If
End Sub

Private Sub like_species_AfterUpdate()

    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub like_species_DblClick(Cancel As Integer)

    Like_Species = "*"
    [Lifting_Priorties_Subform].Form.Requery
    
End Sub

Private Sub Not_To_Be_Harvested_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities_no_Harvest"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Destroy_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Propagule_Destroy_Priorities"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorities"
    
    DoCmd.Requery
    If Data_Processed = False Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Lot_MT"
        DoCmd.SetWarnings True
        Data_Processed = True
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_DblClick(Cancel As Integer)

    Priority = 99
    
End Sub
Private Sub Reset_Priorities_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_Lift_Priorities_Reset_Priorities_to_99"
    
    Response = MsgBox("Are you sure you want reset ALL to priority 99?", vbYesNo)
    
    DoCmd.Requery
    If Response = vbYes Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery stDocName
        DoCmd.Requery
        DoCmd.SetWarnings True
    End If

End Sub
```

## Module: Form_Propagule_Harvest_Priorties_Data_Subform

```vb
Option Compare Database

Private Sub Client_Heads_Up_Click()

    Dim stDocName As String

    stDocName = "Processing_Client_Heads_Up"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Command50_Click()

    Dim stDocName As String

    stDocName = "TOLIFT_BY_PRIORITY"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Max_Priority_DblClick(Cancel As Integer)

    Max_Priority = 98
    
End Sub

Private Sub Min_Priority_DblClick(Cancel As Integer)

    Min_Priority = 1
    
End Sub

Private Sub Preview_Lifting_Priority_Report_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorities"
    
    DoCmd.Requery
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Priority_Exit(Cancel As Integer)

    Added = False
    
End Sub

Private Sub Add_Current_FY_Lots_Click()

    If Val([Forms]![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].[Form]![Max_FY]) < _
        Val([Forms]![Switchboard]![FY_For_Reports]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Propagule_Harvest_Priorities_Append"
        DoCmd.SetWarnings True
        DoCmd.Requery
        Forms![Propagule_Harvest_Priorties]![NMIS_PROPAGULE_HARVEST_MAX_FY].Requery
    Else
        MsgBox "The current FY's Lots have already been added", vbCritical
    End If
    
End Sub



Private Sub HARVEST_DATE_AfterUpdate()

    If Not IsNull(HARVEST_DATE) Then
        HARVEST_PRIORITY = ""
    End If
      
End Sub

Private Sub HARVEST_PRIORITY_AfterUpdate()

    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
    If Not IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = ""
    End If
    End If
   
End Sub

Private Sub HARVEST_PRIORITY_Change()

    HARVEST_METHOD.Requery
    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
        HARVEST_METHOD = Null
    End If
    
End Sub

Private Sub HARVEST_PRIORITY_Exit(Cancel As Integer)

    If Not IsNull(HARVEST_PRIORITY) Then
    If IsNull(HARVEST_METHOD) Then
        HARVEST_METHOD = "DC"
    End If
    Else
        HARVEST_METHOD = ""
    End If
   
End Sub

Private Sub Update_Click()
    
        DoCmd.Requery

End Sub
```

## Module: Form_REPORTS Form

```vb
Private Sub Form_Close()

    'Forms![Switchboard]![FY_For_Reports] = Forms![Switchboard]![NMIS_FISCAL_YEAR_Current].Form![FISCAL_YEAR_NUMBER]
    
End Sub

Private Sub FY_For_Reports_Change()

    Forms![Switchboard]![FY_For_Reports] = [FY_For_Reports]
    [Reports_Menu_Processing Subform].Form![Client_Bill_Data_Processed] = False
    
End Sub

Private Sub FY_For_Reports_Exit(Cancel As Integer)

    Forms![Switchboard]![FY_For_Reports] = [FY_For_Reports]
    
End Sub

Private Sub Sowing_Request_Reports2_Click()
On Error GoTo Err_Sowing_Request_Reports2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports2_Click:
    Exit Sub

Err_Sowing_Request_Reports2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports2_Click
    
End Sub
```

## Module: Form_Reports_Menu_Maintenance Subform

```vb
Private Sub Activity_Code_Checklist_Click()

    Dim stDocName As String

    stDocName = "NMIS_ACTIVITY_CODES_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Associate_Contact_Phone_Checklist_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Associate_Contact_Phone_SPDt_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_SPD"
    DoCmd.OpenQuery stDocName
    
End Sub

Private Sub Associate99_Contact_Phone_Checklist_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub


Private Sub Contact_Associate_Phone_Checklist_Click()
On Error GoTo Err_Contact_Associate_Phone_Checklist_Click
    Dim stDocName As String
    
    stDocName = "NMIS_CONTACT_AND_PHONE_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contact_Associate_Phone_Checklist_Click:
    Exit Sub

Err_Contact_Associate_Phone_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contact_Associate_Phone_Checklist_Click
    
End Sub

Private Sub Contacts_for_Current_fys_orders_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Field_Location_Max_Index_Checklist_Click()

    Dim stDocName As String

    stDocName = "Field_Location_Max_Index_Checklist"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Grow_Containers_Checklist_Click()

    Dim stDocName As String

    stDocName = "NMIS_Containers_type_Grow_Checklist"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Ingrowth_Pcts_Checklist_Click()

On Error GoTo Err_Ingrowth_Pcts_Checklist_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist"
    DoCmd.OpenReport stDocName, acPreview
Exit_Ingrowth_Pcts_Checklist_Click:
    Exit Sub

Err_Ingrowth_Pcts_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ingrowth_Pcts_Checklist_Click
    
End Sub

Private Sub NMIS_SPECIES_vs_NRCS_by_group_Click()

    Dim stDocName As String

    stDocName = "nmis_species_vs_nrcs_plantlist_by_group"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

End Sub

Private Sub Oyjord_Calibration_Checklist_Click()
On Error GoTo Err_Oyjord_Calibration_Checklist_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_OYJORD_Settings_Checklist"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Oyjord_Calibration_Checklist_Click:
    Exit Sub

Err_Oyjord_Calibration_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Oyjord_Calibration_Checklist_Click
    
End Sub

Private Sub Products_Checklist_Click()
On Error GoTo Err_Products_Checklist_Click

    Dim stDocName As String

    stDocName = "Products_Price_Reports"
    DoCmd.OpenFormocName , acPreview

Exit_Products_Checklist_Click:
    Exit Sub

Err_Products_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Checklist_Click
    
End Sub

Private Sub Oyjord_Calibration_Field_Checklist_Click()
On Error GoTo Err_Oyjord_Calibration_Field_Checklist_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_OYJORD_Settings_Field_Checklist"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Oyjord_Calibration_Field_Checklist_Click:
    Exit Sub

Err_Oyjord_Calibration_Field_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Oyjord_Calibration_Field_Checklist_Click
    
End Sub

Private Sub Products_Price_Reports_Click()
On Error GoTo Err_Products_Price_Reports_Click

    Dim stDocName As String

    stDocName = "Products_Price_Reports"
    DoCmd.OpenForm stDocName
Exit_Products_Price_Reports_Click:
    Exit Sub

Err_Products_Price_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Products_Price_Reports_Click
 
End Sub

Private Sub Seed_Price_Checklist_Click()
On Error GoTo Err_Seed_Price_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_Prices"
    DoCmd.OpenReport stDocName, acPreview

Exit_Seed_Price_Checklist_Click:
    Exit Sub

Err_Seed_Price_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Price_Checklist_Click
    
End Sub

Private Sub Species_Checklist_Click()
On Error GoTo Err_Species_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Species_Checklist_Click:
    Exit Sub

Err_Species_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Checklist_Click
    
End Sub
Private Sub NMIS_SPECIES_vs_NRCS_Click()
On Error GoTo Err_NMIS_SPECIES_vs_NRCS_Click

    Dim stDocName As String

    stDocName = "nmis_species_vs_nrcs_plantlist"
    DoCmd.OpenQuery stDocName, acNormal, acEdit

Exit_NMIS_SPECIES_vs_NRCS_Click:
    Exit Sub

Err_NMIS_SPECIES_vs_NRCS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SPECIES_vs_NRCS_Click
    
End Sub

Private Sub Species_Checklist_Not_Hidden_Click()

On Error GoTo Err_Species_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_CHECKLIST_Not_Hidden"
    DoCmd.OpenReport stDocName, acPreview

Exit_Species_Checklist_Click:
    Exit Sub

Err_Species_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Checklist_Click
    
End Sub

Private Sub Species_Checklist2_Click()
On Error GoTo Err_Species_Checklist2_Click

    Dim stDocName As String

    stDocName = "NMIS_SPECIES_CHECKLIST2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Species_Checklist2_Click:
    Exit Sub

Err_Species_Checklist2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Checklist2_Click
    
End Sub

Private Sub Species_Products_Checklist_Click()
On Error GoTo Err_Species_Products_Checklist_Click

    Dim stDocName As String
    
    DoCmd.OpenForm "xPlease_Be_Patient_Message"
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Species_Products_Currently_Active_in_Grow_Containers_mt"
    DoCmd.OpenQuery "Agreement_Lots_Currently_Active_in_Grow_Containers2"
    DoCmd.SetWarnings True

    stDocName = "Species_Products_Reports"
    DoCmd.OpenForm stDocName
Exit_Species_Products_Checklist_Click:
    Exit Sub

Err_Species_Products_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_Checklist_Click
    
End Sub

Private Sub NMIS_Products_Click()
On Error GoTo Err_NMIS_Products_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCTS_CHECKLIST_current"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_Products_Click:
    Exit Sub

Err_NMIS_Products_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Products_Click
    
End Sub
Private Sub LAB_LIKE_ASSOC_Click()
On Error GoTo Err_LAB_LIKE_ASSOC_Click

    Dim stDocName As String

    stDocName = "Labels MAIL_LABELS_BY_ASSOC"
    DoCmd.OpenReport stDocName, acPreview

Exit_LAB_LIKE_ASSOC_Click:
    Exit Sub

Err_LAB_LIKE_ASSOC_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_LAB_LIKE_ASSOC_Click
    
End Sub
Private Sub LAB_GRP_NAME_Click()
On Error GoTo Err_LAB_GRP_NAME_Click

    Dim stDocName As String

    stDocName = "Labels MAIL_LABELS_BY_GROUP"
    DoCmd.OpenReport stDocName, acPreview

Exit_LAB_GRP_NAME_Click:
    Exit Sub

Err_LAB_GRP_NAME_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_LAB_GRP_NAME_Click
    
End Sub
Private Sub LAB_GRP_NAME_W_Click()
On Error GoTo Err_LAB_GRP_NAME_W_Click

    Dim stDocName As String

    stDocName = "Labels MAIL_LABELS_BY_GROUP_w"
    DoCmd.OpenReport stDocName, acPreview

Exit_LAB_GRP_NAME_W_Click:
    Exit Sub

Err_LAB_GRP_NAME_W_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_LAB_GRP_NAME_W_Click
    
End Sub
Private Sub CmdSplusPhnLst_Click()
On Error GoTo Err_CmdSplusPhnLst_Click

    Dim stDocName As String

    stDocName = "NMIS_ASSOC_LIST_SURPLUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplusPhnLst_Click:
    Exit Sub

Err_CmdSplusPhnLst_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplusPhnLst_Click
    
End Sub

Private Sub Store_Containers_Checklist_Click()
On Error GoTo Err_Store_Containers_Checklist_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_Containers_type_Store_Checklist"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Store_Containers_Checklist_Click:
    Exit Sub

Err_Store_Containers_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Store_Containers_Checklist_Click
    
End Sub

Private Sub Units_Checklist_Click()

    Dim stDocName As String

    stDocName = "NMIS_Units_Checklist"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub CmdEmailSrplus_Click()
On Error GoTo Err_CmdEmailSrplus_Click

    Dim stDocName As String

    stDocName = "E-MAIL_LIST_FOR_SURPLUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdEmailSrplus_Click:
    Exit Sub

Err_CmdEmailSrplus_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdEmailSrplus_Click
    
End Sub
Private Sub CmdAssocList_Click()
On Error GoTo Err_CmdAssocList_Click

    Dim stDocName As String

    stDocName = "ASSOCIATE_LIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdAssocList_Click:
    Exit Sub

Err_CmdAssocList_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAssocList_Click
    
End Sub
```

## Module: Form_Reports_Menu_Misc Subform

```vb
Private Sub Accomplishment_Report_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "associates1 mt"
    DoCmd.OpenQuery "associates2 at"
    DoCmd.OpenQuery "ACCOMPLISHMENT mt"
    DoCmd.OpenQuery "ACCOMPLISHMENT2 at"
    DoCmd.OpenQuery "ACCOMPLISHMENT3 at"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport "ACCOMPLISHMENT_REPORT", acViewPreview
    
End Sub

Private Sub Accomplishment_Report_Region_Click()

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "associates1 mt"
    DoCmd.OpenQuery "associates2 at"
    DoCmd.OpenQuery "ACCOMPLISHMENT_region mt"
    DoCmd.OpenQuery "ACCOMPLISHMENT2_region at"
    DoCmd.OpenQuery "ACCOMPLISHMENT3_region at"
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport "ACCOMPLISHMENT_REPORT_region", acViewPreview
    
End Sub

Private Sub Annual_Report_Product_Inventory_Detailed_Click()

    Dim stDocName As String

    stDocName = "Annual_Report_Plant_Inventory_Detailed_Summary report"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Annual_Report_Product_Inventory_Summary_by_class_species_Click()
On Error GoTo Err_Annual_Report_Product_Inventory_Summary_by_class_species_Click

    Dim stDocName As String

    stDocName = "Annual_Report_Plant_Inventory_Summary_by_class_species report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Annual_Report_Product_Inventory_Summary_by_class_species_Click:
    Exit Sub

Err_Annual_Report_Product_Inventory_Summary_by_class_species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Annual_Report_Product_Inventory_Summary_by_class_species_Click
    
End Sub

Private Sub Annual_Report_Product_Inventory_Summary_Click()
On Error GoTo Err_Annual_Report_Product_Inventory_Summary_Click

    Dim stDocName As String

    stDocName = "Annual_Report_Plant_Inventory_Summary report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Annual_Report_Product_Inventory_Sum:
    Exit Sub

Err_Annual_Report_Product_Inventory_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Annual_Report_Product_Inventory_Sum
    
End Sub

Private Sub Balance_By_End_Date_no_net_Click()
On Error GoTo Err_Balance_By_End_Date_no_net_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date2_no_net"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_no_net_Click:
    Exit Sub

Err_Balance_By_End_Date_no_net_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_no_net_Click
    
End Sub

Private Sub CmdProofAll_Click()
On Error GoTo Err_CmdProofAll_Click

    stDocName = "PROOF_ALL_From_Billing_Form"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdProofAll_Click:
    Exit Sub

Err_CmdProofAll_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdProofAll_Click
    
End Sub

Private Sub CmdTreeBook_Click()
On Error GoTo Err_CmdTreeBook_Click

   '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "TREEBOOK_1 mt"
    DoCmd.OpenQuery "TREEBOOK_2 at"
    DoCmd.OpenQuery "TREEBOOK_3 at"
    DoCmd.OpenQuery "TREEBOOK_4 at"
    DoCmd.OpenQuery "TREEBOOK_SHIP at"

    Dim stDocName As String

    stDocName = "TREEBOOK"
    DoCmd.SendObject acReport, stDocName
    
    DoCmd.SetWarnings True

Exit_CmdTreeBook_Click:
    Exit Sub

Err_CmdTreeBook_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdTreeBook_Click
    
End Sub

Private Sub Contract_Payment_Click()

    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "nmis_pack_amounts_del"
    'DoCmd.OpenQuery "nmis_pack_amounts_ins"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net1"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net"
    'DoCmd.OpenQuery "nmis_pack_amounts_update"
    'DoCmd.OpenQuery "nmis_pack_payment_del"
    'DoCmd.OpenQuery "nmis_pack_payment_ins"
    'DoCmd.OpenReport "PROCESS_PAYMENT", acPreview
    'DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
    'DoCmd.OpenReport "PROCESS_PAYMENT_INCREMENTAL", acPreview
    'DoCmd.SetWarnings True
    'PROCESS_PAYMENT_ESTIMATE_INVOICE
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
  
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Click()

    Dim stDocName As String

    stDocName = "Contract_Payment_Estimate_Invoice"
    DoCmd.OpenForm stDocName
    Forms![Contract_Payment_Estimate_Invoice]![Processing_Calcs].Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Lift_Items.Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Pack_Items.Visible = True

End Sub

Private Sub Contract_Work_Order_Click()

    Dim stDocName As String

    stDocName = "Contract_Work_Order"
    DoCmd.OpenForm stDocName
  
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Category_Unit"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Click
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot_Click
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Category_Unit2"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2_Click
End Sub

Private Sub NMIS_Product_Projected_Income_by_Lot1_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_by_Lot1_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income_by_lot"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_Product_Projected_Income_by_Lot1_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_by_Lot1_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_by_Lot1_Click
    
End Sub

Private Sub NMIS_Product_Projected_Income_by_Lot2_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_by_Lot2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income_by_lot2"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_Product_Projected_Income_by_Lot2_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_by_Lot2_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_by_Lot2_Click
    
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Unit_Category"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Click
    
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot_Click
End Sub

Private Sub NMIS_PRODUCT_Projected_Charges_by_Unit_Click()
On Error GoTo Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Charges_by_Unit"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Click:
    Exit Sub

Err_NMIS_PRODUCT_Projected_Charges_by_Unit_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_PRODUCT_Projected_Charges_by_Unit_Click
End Sub

Private Sub NMIS_Product_Projected_Income_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income"
    DoCmd.OpenReport stDocName, acViewPreview
            
Exit_NMIS_Product_Projected_Income_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_Click
    
End Sub

Private Sub NMIS_Product_Projected_Income_Cont_from_BR_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_Cont_from_BR_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot"
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_NMIS_Product_Projected_Income_Cont_from_BR:
    Exit Sub

Err_NMIS_Product_Projected_Income_Cont_from_BR_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_Cont_from_BR
    
End Sub

Private Sub NMIS_Product_Projected_Income_Sum2_Click()
On Error GoTo Err_NMIS_Product_Projected_Income_Sum2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_Projected_Income2"
    DoCmd.OpenReport stDocName, acViewPreview
        
Exit_NMIS_Product_Projected_Income_Sum2_Click:
    Exit Sub

Err_NMIS_Product_Projected_Income_Sum2_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_Product_Projected_Income_Sum2_Click
    
End Sub

Private Sub Non_WCF_Billing_Report_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Non_WCF_Storage_Billing_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Plant_Inventory_Reports_Click()
On Error GoTo Err_Plant_Inventory_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "PLANT_INVENTORY_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Plant_Inventory_Reports_Click:
    Exit Sub

Err_Plant_Inventory_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Reports_Click
    
End Sub

Private Sub Plant_Quarterly_Report_Click()
    Dim stDocName As String

    stDocName = "Plant_Quarterly_Report"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Review_Double_sort_CI2_Click()

    Dim stDocName As String

    stDocName = "Review_Orders_DBSRT_Contract_Items"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Act_vs_Activity_AC_Click()

    Dim stDocName As String

    stDocName = "Review_Pack_Activities_Not_Equal_Order"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Act_vs_Transaction_Click()

    Dim stDocName As String

    stDocName = "Review_Pack_Activities_vs_ActivityCI_NE_TransactionCI"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Contract_Item2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Review_CItems"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Orders_without_Contract_Items2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Without_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Sowing_Request_Reports_Click()
On Error GoTo Err_Sowing_Request_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports_Click:
    Exit Sub

Err_Sowing_Request_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports_Click
    
End Sub

Private Sub Sowing_Request_Reports2_Click()
On Error GoTo Err_Sowing_Request_Reports2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports2_Click:
    Exit Sub

Err_Sowing_Request_Reports2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports2_Click
    
End Sub
```

## Module: Form_Reports_Menu_Processing Subform

```vb
Private Sub Command30_Click()

End Sub


Private Sub CliBilInv_Lot_Detail_Click()
On Error GoTo Err_CliBilInv_Lot_Detail_Click
    Dim stDocName As String

    stDocName = "Client_Bill_Menu"
    DoCmd.OpenForm stDocName, acNormal

Exit_CliBilInv_Lot_Detail_Click:
    Exit Sub

Err_CliBilInv_Lot_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBilInv_Lot_Detail_Click
End Sub

Private Sub CliBillwoSpcServices_Click()
On Error GoTo Err_CliBillwoSpcServices_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_w_lot_detail_no_spcsvc"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillwoSpcServices_Click:
    Exit Sub

Err_CliBillwoSpcServices_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillwoSpcServices_Click
    
End Sub

Private Sub Client_Billing_Summary_Click()

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED2"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
End Sub

Private Sub Client_Billing_Summary_Detail_Click()

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_COMBINED"
    DoCmd.OpenReport stDocName, acPreview
    
    DoCmd.SetWarnings True
    
End Sub

Private Sub CmdLftDailyContr_Daily_Sum_Click()
On Error GoTo Err_CmdLftDailyContr_Daily_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT_Daily_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Daily_Sum_Click:
    Exit Sub

Err_CmdLftDailyContr_Daily_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Daily_Sum_Click
    
End Sub

Private Sub CmdLftDailyContr_Sum_Click()
On Error GoTo Err_CmdLftDailyContr_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Sum_Click:
    Exit Sub

Err_CmdLftDailyContr_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Sum_Click
    
End Sub

Private Sub CmdLotswoExtract_Click()
On Error GoTo Err_CmdLotswoExtract_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_EXTRACTION_AMOUNTS"
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoExtract_Click:
    Exit Sub

Err_CmdLotswoExtract_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoExtract_Click
    
End Sub

Private Sub CmdLotswoLift2_Click()
On Error GoTo Err_CmdLotswoLift2_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_LIFT_AMOUNTS"
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoLift2_Click:
    Exit Sub

Err_CmdLotswoLift2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoLift2_Click
    
End Sub

Private Sub CmdOrdStat_detailed_Click()
On Error GoTo Err_CmdOrdStat_detailed_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_DETAILED"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdOrdStat_detailed_Click:
    Exit Sub

Err_CmdOrdStat_detailed_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdStat_detailed_Click
    
End Sub

Private Sub CmdOrdStatSPD_Click()
On Error GoTo Err_CmdOrdStatSPD_Click

    Dim stDocName As String

    stDocName = "Order_Status_Input_SPD"
    DoCmd.OpenForm stDocName

Exit_CmdOrdStatSPD_Click:
    Exit Sub

Err_CmdOrdStatSPD_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdStatSPD_Click
    
End Sub

Private Sub CmdPackDailyContr_Daily_Sum_Click()
On Error GoTo Err_CmdPackDailyContr_Daily_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_PACKED_DAILY_CONTRACT_Daily_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdPackDailyContr_Daily_Sum_Click:
    Exit Sub

Err_CmdPackDailyContr_Daily_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPackDailyContr_Daily_Sum_Click
    
End Sub

Private Sub CmdPackDailyStockType_Daily_Sum_Click()
On Error GoTo Err_CmdPackDailyStockType_Daily_Sum_Click

    Dim stDocName As String

    stDocName = "LOTS_PACKED_DAILY_BY_AGE_CLASS_Summary"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdPackDailyStockType_Daily_Sum_Click:
    Exit Sub

Err_CmdPackDailyStockType_Daily_Sum_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPackDailyStockType_Daily_Sum_Click
    
End Sub

Private Sub CmdXPLT_by_Client_Click()
On Error GoTo Err_mdXPLT_by_Client_Click

    Dim stDocName As String

    stDocName = "XPLT_AT_JHSN_by_Client_Sp_age_class"
    DoCmd.OpenReport stDocName, acPreview

Exit_mdXPLT_by_Client_Click:
    Exit Sub

Err_mdXPLT_by_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_mdXPLT_by_Client_Click
    
End Sub

Private Sub CmdXPLT_by_Store_Loc_Click()
On Error GoTo Err_CmdXPLT_by_Store_Loc_Click

    Dim stDocName As String

    stDocName = "XPLT_AT_JHSN_by_Store_Loc"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdXPLT_by_Store_Loc_Click:
    Exit Sub

Err_CmdXPLT_by_Store_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdXPLT_by_Store_Loc_Click
    
End Sub




Private Sub Contacts_for_Current_fys_orders_By_Contact_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Contacts_for_Current_fys_orders_By_Contact_SPD_Click()
Dim stDocName As String

    stDocName = "NMIS_ASSOC_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST_By_Contact_SPD"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Contacts_for_Current_fys_orders_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Contacts_for_Current_fys_orders2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Contacts_for_Current_fys_Propagule_orders_Click()
On Error GoTo Err_Contacts_for_Current_fys_Propagule_orders_Click

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fys_Propagule_orders_Click:
    Exit Sub

Err_Contacts_for_Current_fys_Propagule_orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fys_Propagule_orders_Click
    
End Sub

Private Sub Contacts_for_Current_fys_Propagule_orders2_Click()
On Error GoTo Err_Contacts_for_Current_fys_Propagule_orders2_Click

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_Prop_CHECKLIST"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fys_Propagule_orders2_Click:
    Exit Sub

Err_Contacts_for_Current_fys_Propagule_orders2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fys_Propagule_orders2_Click
    
End Sub

Private Sub Contract_Payment_Click()

    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "nmis_pack_amounts_del"
    'DoCmd.OpenQuery "nmis_pack_amounts_ins"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net1"
    'DoCmd.OpenQuery "nmis_pack_amount_new_net"
    'DoCmd.OpenQuery "nmis_pack_amounts_update"
    'DoCmd.OpenQuery "nmis_pack_payment_del"
    'DoCmd.OpenQuery "nmis_pack_payment_ins"
    'DoCmd.OpenReport "PROCESS_PAYMENT", acPreview
    'DoCmd.OpenQuery "PROCESSING_INCREMENTAL_TEMP_MT"
    'DoCmd.OpenReport "PROCESS_PAYMENT_INCREMENTAL", acPreview
    'DoCmd.SetWarnings True
    'PROCESS_PAYMENT_ESTIMATE_INVOICE
    
    Dim stDocName As String

    stDocName = "PROCESS_PAYMENT_ESTIMATE_INVOICE"
    DoCmd.OpenForm stDocName
  
End Sub

Private Sub Contract_Payment_Estimate_Invoice_Click()

    Dim stDocName As String

    stDocName = "Contract_Payment_Estimate_Invoice"
    
    DoCmd.OpenForm stDocName
    Forms![Contract_Payment_Estimate_Invoice]![Processing_Calcs].Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Lift_Items.Visible = True
    Forms![Contract_Payment_Estimate_Invoice]!Update_Pack_Items.Visible = True
    
End Sub

Private Sub Contract_Payment_Hourly_Review_Click()
On Error GoTo Err_Contract_Payment_Hourly_Review_Click

    Dim stDocName As String
    
    stDocName = "Processing_Review_by_Activity_Date"
    
    DoCmd.OpenForm stDocName, acNormal
    
Exit_Contract_Payment_Hourly_Review_Click:
    Exit Sub

Err_Contract_Payment_Hourly_Review_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contract_Payment_Hourly_Review_Click
    
End Sub

Private Sub Ctl99_Associate_Orders_by_id_Click()
    
    Dim stDocName As String

    stDocName = "99_Associate_Orders_by_ID"
    DoCmd.OpenQuery stDocName, acPreview
    
End Sub

Private Sub Edit__Lift_Priorities_Click()

    Dim stDocName As String

    stDocName = "Lifting_Priorties"
    DoCmd.OpenForm stDocName

End Sub

Private Sub LIFT_CONTRACT_ESTIMATE_INVOICE_Click()

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_ESTIMATE_INVOICE"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Edit__Process_Table_Priorities_Click()

    Dim stDocName As String

    stDocName = "Plant_Processing_Table_Priorties"
    DoCmd.OpenForm stDocName

End Sub

Private Sub Fall_Processing_Checklist_Click()
On Error GoTo Err_Fall_Processing_Checklist_Click

    Dim stDocName As String

    stDocName = "Agreement_lot_by_End_Season"
    DoCmd.OpenReport stDocName, acPreview

Exit_Fall_Processing_Checklist_Click:
    Exit Sub

Err_Fall_Processing_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Fall_Processing_Checklist_Click
End Sub

Private Sub Generic_Orders_Click()
On Error GoTo Err_Generic_Orders_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_Reports"
    DoCmd.OpenForm stDocName
    Forms![NMIS_ORDERS_Reports]![NMIS_ORDERS_GENERIC_CREATE].Visible = True
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist].Visible = False
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist_by_Lot_ID].Visible = False
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Summary].Visible = False
    Forms![NMIS_ORDERS_Reports]![Order_Info_Box].Visible = True
    Forms![NMIS_ORDERS_Reports]![Product_Services].Visible = True
    Forms![NMIS_ORDERS_Reports]![Root_Prune].Visible = True
    Forms![NMIS_ORDERS_Reports]![Nursery_Comment].Visible = True
    Forms![NMIS_ORDERS_Reports]![Like_Activity_Code].Visible = False
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist_LiftInNote].Visible = False
    [Forms]![NMIS_ORDERS_Reports]![Like_End_Season].Visible = False
Exit_Generic_Orders_Click:
    Exit Sub

Err_Generic_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Generic_Orders_Click
End Sub

Private Sub Generic_Orders_Scheduled_Transplant_Click()
On Error GoTo Err_Generic_Orders_Scheduled_Transplant_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_Generic_Scheduled_Transplant"
    DoCmd.OpenForm stDocName
    
Exit_Generic_Orders_Scheduled_Transplant_Click:
    Exit Sub

Err_Generic_Orders_Scheduled_Transplant_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Generic_Orders_Scheduled_Transplant_Click
    
End Sub

Private Sub inventory_by_location_type_and_lot_Click()

    On Error GoTo Err_inventory_by_location_type_and_lot_Click

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location"
    DoCmd.OpenForm stDocName
    
Exit_inventory_by_location_type_and_lot_Click:
    Exit Sub

Err_inventory_by_location_type_and_lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_by_location_type_and_lot_Click
    
End Sub

Private Sub Lift_Location_Worksheet_Click()
On Error GoTo Err_Lift_Location_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lift_Location_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Lift_Location_Worksheet_Click:
    Exit Sub

Err_Lift_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lift_Location_Worksheet_Click
    
End Sub

Private Sub Map_For_Scheduled_Lifting_Click()
On Error GoTo Err_Map_For_Scheduled_Lifting_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Map Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Field_Map Form]![Current_FY_Lift] = True

Exit_Map_For_Scheduled_Lifting_Click:
    Exit Sub

Err_Map_For_Scheduled_Lifting_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Map_For_Scheduled_Lifting_Click
    
End Sub

Private Sub Multiple_ageement_checklist_Click()

    Dim stDocName As String

    stDocName = "Agreement_lot_multiple_req_amt_from_last_inv"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Open_99_Associate_Orders_by_Associate_Name_Click()
    
    Dim stDocName As String

    stDocName = "99_Associate_Orders_by_Associate"
    DoCmd.OpenQuery stDocName, acPreview

End Sub

Private Sub Open_Bag_Box_Label_Form_Click()

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_LABELS_MAIN"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Open_Drying_Tray_Tag_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Drying_Tray_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Open_QM_Checklist_form_Click()

    Dim stDocName As String

    stDocName = "Processing_QI_Daily_Checklist"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Order_Checklist_Reports_Click()
On Error GoTo Err_Order_Checklist_Reports_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_Reports"
    DoCmd.OpenForm stDocName
    Forms![NMIS_ORDERS_Reports]![NMIS_ORDERS_GENERIC_CREATE].Visible = False
    Forms![NMIS_ORDERS_Reports]![Order_Info_Box].Visible = False
    Forms![NMIS_ORDERS_Reports]![Product_Services].Visible = False
    Forms![NMIS_ORDERS_Reports]![Root_Prune].Visible = False
    Forms![NMIS_ORDERS_Reports]![Nursery_Comment].Visible = False
    Forms![NMIS_ORDERS_Reports]![XSSRPL_Orders].Visible = False
    
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist].Visible = True
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Checklist_by_Lot_ID].Visible = True
    Forms![NMIS_ORDERS_Reports]![Preview_Orders_Summary].Visible = True

    
Exit_Order_Checklist_Reports_Click:
    Exit Sub

Err_Order_Checklist_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Order_Checklist_Reports_Click
End Sub

Private Sub Order_Status_Packed_Click()
On Error GoTo Err_Order_Status_Packed_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Packed"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Status_Packed_Click:
    Exit Sub

Err_Order_Status_Packed_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Order_Status_Packed_Click
    
End Sub

Private Sub Order_Status_Packed_No_Click()
On Error GoTo Err_Order_Status_Packed_No_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Packed_No"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Status_Packed_No_Click:
    Exit Sub

Err_Order_Status_Packed_No_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Order_Status_Packed_No_Click
    
End Sub

Private Sub Order_Status_Packed_Shortage_Click()
On Error GoTo Err_Order_Status_Packed_Shortage_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS_Packed_Shortage"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Order_Status_Packed_Shortage_Click:
    Exit Sub

Err_Order_Status_Packed_Shortage_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Order_Status_Packed_Shortage_Click
    
End Sub

Private Sub Packed_for_Outplant_by_Class_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Checklist_by_Class"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Outplant_by_Class_Client_Summary_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_Class_Client"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Outplant_by_Class_Summary_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_Class"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Outplant_by_CLIENT_Click()
On Error GoTo Err_Packed_for_Outplant_by_CLIENT_Click

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Checklist_by_Class_Client"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Outplant_by_CLIENT_Click:
    Exit Sub

Err_Packed_for_Outplant_by_CLIENT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Outplant_by_CLIENT_Click
    
End Sub

Private Sub Packed_for_Outplant_by_Region_Click()
On Error GoTo Err_Packed_for_Outplant_by_Region_Click

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Outplant_by_Region_Click:
    Exit Sub

Err_Packed_for_Outplant_by_Region_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Outplant_by_Region_Click
    
End Sub

Private Sub Packed_for_Outplant_by_Species_Click()

    Dim stDocName As String

    stDocName = "Packed_for_Outplant_Summary_by_Species"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Packed_for_Surplus_Bid_List_Click()
On Error GoTo Err_Packed_for_Surplus_Bid_List_Click

    Dim stDocName As String

    stDocName = "Packed_for_Surplus_Sales_Checklist_by_Class_Bid_List"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Surplus_Bid_List_Click:
    Exit Sub

Err_Packed_for_Surplus_Bid_List_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Surplus_Bid_List_Click
    
End Sub

Private Sub Packed_for_Surplus_Sales_Donat_Click()
On Error GoTo Err_Packed_for_Surplus_Sales_Donat_Click

    Dim stDocName As String

    stDocName = "Packed_for_Surplus_Sales_Checklist_by_Class"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Packed_for_Surplus_Sales_Donat_Click:
    Exit Sub

Err_Packed_for_Surplus_Sales_Donat_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Packed_for_Surplus_Sales_Donat_Click
    
End Sub

Private Sub Plants_Destroyed_Checklist_Click()
On Error GoTo Err_Plants_Destroyed_Checklist_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Destroy_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Plants_Destroyed_Checklist_Click:
    Exit Sub

Err_Plants_Destroyed_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plants_Destroyed_Checklist_Click
    
End Sub

Private Sub Plants_Higrade_Checklist_Click()
On Error GoTo Err_Plants_Higrade_Checklist_Click

    Dim stDocName As String

    stDocName = "Agreement_Lot_Higrade_Checklist"
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Plants_Higrade_Checklist_Click:
    Exit Sub

Err_Plants_Higrade_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plants_Higrade_Checklist_Click
    
End Sub

Private Sub Precooler_Destroy_Form_Click()

    Dim stDocName As String

    stDocName = "Precooler_Destroy Form"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Precooler_Destroy_Short_Form_Click()

    Dim stDocName As String

    stDocName = "Precooler_Destroy_Short Form"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Preview_Order_Form_Propagules_Click()
    On Error GoTo Err_Preview_Order_Form_Propagules_Click
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Rollover_Propagule_Agreement_Lot_End_fy"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "Order_Pack_Form"
    
    [Forms]![Order_Pack_Form]![PRODUCT_GROUP] = "Propagule"
    
    Forms![Order_Pack_Form]![Order_Pack_form_Propagule].Visible = True
    DoCmd.GoToControl "Order_Pack_Form_Propagule"
    
    Forms![Order_Pack_Form]![Contract].Visible = False
    Forms![Order_Pack_Form]![Like_Stock_Type].Visible = False
    Forms![Order_Pack_Form]![Lift_Date].Visible = False
    Forms![Order_Pack_Form]![Order_Mod_Date].Visible = False
    Forms![Order_Pack_Form]![BorC].Visible = False
    Forms![Order_Pack_Form]![Order_Checklist].Visible = False
    Forms![Order_Pack_Form]![Order_Form].Visible = False
    Forms![Order_Pack_Form]![Order_Checklist_by_Lift_Date].Visible = False
    Forms![Order_Pack_Form]![Order_Form_By_Lift_Date].Visible = False
    Forms![Order_Pack_Form]![Processing_Quality_Inspection_Record].Visible = False
    Forms![Order_Pack_Form]!Processing_Quality_Inspection_Record_by_lift_date.Visible = False
    Forms![Order_Pack_Form]!Form_Style.Visible = False

Exit_Preview_Order_Form_Propagules_Click:
    Exit Sub

Err_Preview_Order_Form_Propagules_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Order_Form_Propagules_Click
    
End Sub

Private Sub Process_Order_spd_to_Clients_Click()
On Error GoTo Err_Process_Order_spd_to_Clients_Click

    Dim stDocName As String

    stDocName = "Processing_Orders_To_Client_Form"
    DoCmd.OpenForm stDocName

Exit_Process_Order_spd_to_Clients_Click:
    Exit Sub

Err_Process_Order_spd_to_Clients_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Process_Order_spd_to_Clients_Click
    
End Sub

Private Sub Processing_Table_Sign_Click()
On Error GoTo Err_Processing_Table_Sign_Click

    Dim stDocName As String

    stDocName = "NMIS_ORDERS_PROCESSING_TABLE_SIGN"
    DoCmd.OpenReport stDocName, acPreview

Exit_Processing_Table_Sign_Click:
    Exit Sub

Err_Processing_Table_Sign_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Processing_Table_Sign_Click
    
End Sub

Private Sub Product_Storage_Containers_Used_by_client_Click()
On Error GoTo Err_Product_Storage_Containers_Used_by_client_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Containers_Used_by_client"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Storage_Containers_Used_by_client_Click:
    Exit Sub

Err_Product_Storage_Containers_Used_by_client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Containers_Used_by_client_Click
    
End Sub

Private Sub Product_Storage_Containers_Used_by_Stocktype_Click()
On Error GoTo Err_Product_Storage_Containers_Used_by_Stocktype_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Containers_Used_Stocktype"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Storage_Containers_Used_by_Stocktype_Click:
    Exit Sub

Err_Product_Storage_Containers_Used_by_Stocktype_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Containers_Used_by_Stocktype_Click
    
End Sub

Private Sub Product_Storage_Containers_Used_Click()

On Error GoTo Err_Product_Storage_Containers_Used_Click

    Dim stDocName As String

    stDocName = "Product_Storage_Containers_Used"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Storage_Containers_Used_Click:
    Exit Sub

Err_Product_Storage_Containers_Used_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Containers_Used_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()

    stDocName = "Product_Storage_Summary"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Propagule_Harvest_Priorities_Click()

    Dim stDocName As String

    stDocName = "Propagule_Harvest_Priorties"
    DoCmd.OpenForm stDocName

End Sub

Private Sub Propagule_Harvest_Summary_Click()

    stDocName = "Native_Seed_Harvest_Summary"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Review_Double_sort_CI_Click()

    Dim stDocName As String

    stDocName = "Review_Orders_DBSRT_Contract_Items"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Double_sort_CI2_Click()

    Dim stDocName As String

    stDocName = "Review_Orders_DBSRT_Contract_Items"
    DoCmd.OpenQuery stDocName ', acPreview
End Sub

Private Sub Review_Order_Act_vs_Activity_AC_Click()

    Dim stDocName As String

    stDocName = "Review_Pack_Activities_Not_Equal_Order"
    DoCmd.OpenQuery stDocName ', acPreview
    
End Sub

Private Sub Review_Order_Contract_Item_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Review_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Order_Contract_Item2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Review_CItems"
    DoCmd.OpenQuery stDocName ', acPreview
End Sub

Private Sub Review_Orders_without_Contract_Items_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Without_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Orders_without_Contract_Items2_Click()

    Dim stDocName As String

    stDocName = "NMIS_ORDERS Without_CItems"
    DoCmd.OpenQuery stDocName ', acPreview

End Sub

Private Sub Review_Pack_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_Pack_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "Pack_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Pack_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_Pack_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Pack_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Shipped_to_Other_Than_Ordered_by_Click()
On Error GoTo Err_Shipped_to_Other_Than_Ordered_by_Click

    stDocName = "Orders_Shipped_to_other_than_Packed_For"
    DoCmd.OpenReport stDocName, acPreview


Exit_Shipped_to_Other_Than_Ordered_by_Click:
    Exit Sub

Err_Shipped_to_Other_Than_Ordered_by_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipped_to_Other_Than_Ordered_by_Click
    
End Sub

Private Sub Stock_Lifting_Worksheet_Click()
On Error GoTo Err_Stock_Lifting_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Lifting_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Lifting_Worksheet_Click:
    Exit Sub

Err_Stock_Lifting_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Lifting_Worksheet_Click
    
End Sub

Private Sub To_Be_Lifted_By_Age_Class_Click()
On Error GoTo Err_To_Be_Lifted_By_Age_Class_Click

    Dim stDocName As String

    stDocName = "TOLIFT_Summary"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_To_Be_Lifted_By_Age_Class_Click:
    Exit Sub

Err_To_Be_Lifted_By_Age_Class_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_To_Be_Lifted_By_Age_Class_Click
    
End Sub

Private Sub To_Be_Lifted_By_Age_Class_SPD_Click()
On Error GoTo Err_To_Be_Lifted_By_Age_Class_SPD_Click

    Dim stDocName As String

    stDocName = "TOLIFT_Summary_spd"
    
    DoCmd.OpenQuery stDocName
    
Exit_To_Be_Lifted_By_Age_Class_SPD_Click:
    Exit Sub

Err_To_Be_Lifted_By_Age_Class_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_To_Be_Lifted_By_Age_Class_SPD_Click
    
End Sub

Private Sub TOLIFT_REP_Click()

    Dim stDocName As String

    stDocName = "Lifting_Locations_Form"
    DoCmd.OpenForm stDocName

End Sub
Private Sub CmdOrdFrmLD_Click()
On Error GoTo Err_CmdOrdFrmLD_Click

    Dim stDocName As String

    stDocName = "ORDER_FORM_BY_LIFT_DATE"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdOrdFrmLD_Click:
    Exit Sub

Err_CmdOrdFrmLD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdFrmLD_Click
    
End Sub
Private Sub CmdSplusList_Click()
On Error GoTo Err_CmdSplusList_Click

    Dim stDocName As String

    stDocName = "NMIS_SPLUS_LIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplusList_Click:
    Exit Sub

Err_CmdSplusList_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplusList_Click
    
End Sub

Private Sub CmdStrRec_Click()
On Error GoTo Err_CmdStrRec_Click


    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.SetWarnings True
    
    Dim stDocName As String

    stDocName = "PRODUCT_STORAGE_RECORD"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdStrRec_Click:
    Exit Sub

Err_CmdStrRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdStrRec_Click
    
End Sub

Private Sub ORD_CONFIRM_REP_Click()
On Error GoTo Err_ORD_CONFIRM_REP_Click

    Dim stDocName As String

    'stDocName = "ORDER_CONFIRM_MT"
    stDocName = "NMIS_ORDER_COMFIRMATION_FORM"
    'DoCmd.SetWarnings False
    'DoCmd.OpenQuery "Order_Confirm_MT_Query"
    'DoCmd.OpenQuery "Order_Confirm_SS_MT_Query"
    'DoCmd.OpenQuery "Order_Confirm_MC_MT_Query"
    'DoCmd.SetWarnings True
    DoCmd.OpenForm stDocName
    'DoCmd.OpenReport stDocName, acPreview

Exit_ORD_CONFIRM_REP_Click:
    Exit Sub

Err_ORD_CONFIRM_REP_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ORD_CONFIRM_REP_Click
    
End Sub

Private Sub CmdLftDailyContr_Click()
On Error GoTo Err_CmdLftDailyContr_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Click:
    Exit Sub

Err_CmdLftDailyContr_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Click
    
End Sub
Private Sub CmdLiftDaily_Click()
On Error GoTo Err_CmdLiftDaily_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLiftDaily_Click:
    Exit Sub

Err_CmdLiftDaily_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLiftDaily_Click
    
End Sub
Private Sub CmdCIAccumLft_Click()
On Error GoTo Err_CmdCIAccumLft_Click

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_ACCUMULATED"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdCIAccumLft_Click:
    Exit Sub

Err_CmdCIAccumLft_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdCIAccumLft_Click
    
End Sub
Private Sub CmdPshiptkt_Click()
On Error GoTo Err_CmdPshiptkt_Click

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.SetWarnings True
 
    Dim stDocName As String

    stDocName = "PRODUCT_TICKET"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdPshiptkt_Click:
    Exit Sub

Err_CmdPshiptkt_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPshiptkt_Click
    
End Sub
Private Sub ToLftwoc_Click()
On Error GoTo Err_ToLftwoc_Click

    Dim stDocName As String

    stDocName = "TOLIFT_WOC"
    DoCmd.OpenReport stDocName, acPreview

Exit_ToLftwoc_Click:
    Exit Sub

Err_ToLftwoc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ToLftwoc_Click
    
End Sub
Private Sub CmdOrdStat_Click()
On Error GoTo Err_CmdOrdStat_Click

    Dim stDocName As String

    stDocName = "ORDER_STATUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdOrdStat_Click:
    Exit Sub

Err_CmdOrdStat_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdStat_Click
    
End Sub
Private Sub CmdLftWk_Click()
On Error GoTo Err_CmdLftWk_Click

    Dim stDocName As String

    stDocName = "LIFT_CONTRACT_WEEKLY"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftWk_Click:
    Exit Sub

Err_CmdLftWk_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftWk_Click
    
End Sub
Private Sub CmdSplsStat_Click()
On Error GoTo Err_CmdSplsStat_Click

    Dim stDocName As String

    stDocName = "SURPLUS_ORDER_STATUS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplsStat_Click:
    Exit Sub

Err_CmdSplsStat_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplsStat_Click
    
End Sub
Private Sub BillPvwProc_Click()
On Error GoTo Err_BillPvwProc_Click

    DoCmd.OpenForm "CLIENT_BILLING_PREVIEW_BILLING"
    '  turns warning (about to update/delete...) off
    'DoCmd.SetWarnings False

    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW delete"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_ORDERS"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_DESTROY"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_SHIP"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_XPLT"
    'DoCmd.OpenQuery "CLIENT_BILL_PREVIEW_MISSING_BILLING_CODES_APPEND"
        
    'DoCmd.SetWarnings True

    'Dim stDocName As String

    'tDocName = "CLIENT_BILL_PREVIEW_LOTS"
    'DoCmd.OpenReport stDocName, acPreview


Exit_BillPvwProc_Click:
    Exit Sub

Err_BillPvwProc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BillPvwProc_Click
    
End Sub

Private Sub CliBillInv_Click()
On Error GoTo Err_CliBillInv_Click

    '  turns warning (about to update/delete...) off
    If Client_Bill_Data_Processed = False Then
    
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    Client_Bill_Data_Processed = True
        
    DoCmd.SetWarnings True
    End If

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_wo_lot_detail"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillInv_Click:
    Exit Sub

Err_CliBillInv_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillInv_Click
    
End Sub

Private Sub CliBillwoShip_Click()
On Error GoTo Err_CliBillwoShip_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_1 at"
    DoCmd.OpenQuery "CLIENT_BILL_2 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_3-2 at"
    'DoCmd.OpenQuery "CLIENT_BILL_3-3 at"  'Bills Client for Double Sort Hourly
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    
    DoCmd.OpenQuery "CLIENT_BILL_3 dt"
    
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False

    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE_w_lot_detail"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillwoShip_Click:
    Exit Sub

Err_CliBillwoShip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillwoShip_Click
    
End Sub
Private Sub CliBillShip_Click()
On Error GoTo Err_CliBillShip_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_7 at"
    DoCmd.OpenQuery "CLIENT_BILL_4 at"
    DoCmd.OpenQuery "CLIENT_BILL_5 at"
    
    DoCmd.SetWarnings True
    
    Client_Bill_Data_Processed = False
   
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillShip_Click:
    Exit Sub

Err_CliBillShip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillShip_Click
    
End Sub
Private Sub CliBillwoXPLT_Click()
On Error GoTo Err_CliBillwoXPLT_Click

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    DoCmd.OpenQuery "CLIENT_BILL delete"
    DoCmd.OpenQuery "CLIENT_BILL_6-1 at"
    DoCmd.OpenQuery "CLIENT_BILL_6-2 at"
        
    DoCmd.SetWarnings True
    Client_Bill_Data_Processed = False
    
    Dim stDocName As String

    stDocName = "CLIENT_BILL_INVOICE"
    DoCmd.OpenReport stDocName, acPreview


Exit_CliBillwoXPLT_Click:
    Exit Sub

Err_CliBillwoXPLT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CliBillwoXPLT_Click
    
End Sub

Private Sub TOLIFT_REP_Condensed_Click()
    Dim stDocName As String

    stDocName = "TOLIFT_Condensed"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub CmdOrdFrmBulk_Click()
On Error GoTo Err_CmdOrdFrmBulk_Click
    
    DoCmd.OpenForm "Order_Pack_Form"
    
    [Forms]![Order_Pack_Form]![PRODUCT_GROUP] = "Plant"
    
    Forms![Order_Pack_Form]![Order_Form].Visible = True
    DoCmd.GoToControl "Order_Form"
    
    Forms![Order_Pack_Form]![Like_Stock_Type].Visible = True
    Forms![Order_Pack_Form]![Lift_Date].Visible = True
    Forms![Order_Pack_Form]![Order_Mod_Date].Visible = True
    Forms![Order_Pack_Form]![BorC].Visible = True
    Forms![Order_Pack_Form]![Order_Checklist].Visible = True
    Forms![Order_Pack_Form]![Order_Checklist_by_Lift_Date].Visible = True
    Forms![Order_Pack_Form]![Order_Form_By_Lift_Date].Visible = True
    Forms![Order_Pack_Form]![Order_Pack_form_Propagule].Visible = True
    Forms![Order_Pack_Form]![Order_Pack_form_Propagule].Visible = False
    Forms![Order_Pack_Form]![Processing_Quality_Inspection_Record].Visible = True
    Forms![Order_Pack_Form]![Processing_Quality_Inspection_Record_by_lift_date].Visible = True

Exit_CmdOrdFrmBulk_Click:
    Exit Sub

Err_CmdOrdFrmBulk_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdOrdFrmBulk_Click
    
End Sub
Private Sub CmdSplusLstFS_Click()
On Error GoTo Err_CmdSplusLstFS_Click

    Dim stDocName As String

    stDocName = "NMIS_SPLUS_LIST_FS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdSplusLstFS_Click:
    Exit Sub

Err_CmdSplusLstFS_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdSplusLstFS_Click
    
End Sub
Private Sub CmdPrfPk_Click()
On Error GoTo Err_CmdPrfPk_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Processing_Review_by_Activity_Date"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_CmdPrfPk_Click:
    Exit Sub

Err_CmdPrfPk_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdPrfPk_Click
    
End Sub

Private Sub CmdProofAll_Click()
On Error GoTo Err_CmdProofAll_Click

    stDocName = "PROOF_ALL"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdProofAll_Click:
    Exit Sub

Err_CmdProofAll_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdProofAll_Click
    
End Sub
Private Sub Command57_Click()
On Error GoTo Err_Command57_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_PACK_AMOUNTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command57_Click:
    Exit Sub

Err_Command57_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command57_Click
    
End Sub
Private Sub CmdLotswoPack_Click()
On Error GoTo Err_CmdLotswoPack_Click

    Dim stDocName As String
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    stDocName = "LOTS_WO_PACK_AMOUNTS"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoPack_Click:
    Exit Sub

Err_CmdLotswoPack_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoPack_Click
    
End Sub
Private Sub CmdFldCntnrDensity_Click()
On Error GoTo Err_CmdFldCntnrDensity_Click

    Dim stDocName As String

    stDocName = "LIFT_FIELD_CONTAINER_DENSITY"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdFldCntnrDensity_Click:
    Exit Sub

Err_CmdFldCntnrDensity_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdFldCntnrDensity_Click
    
End Sub
Private Sub CmdLotswoLift_Click()
On Error GoTo Err_CmdLotswoLift_Click

    Dim stDocName As String

    stDocName = "LOTS_WO_LIFT_AMOUNTS"
    
    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLotswoLift_Click:
    Exit Sub

Err_CmdLotswoLift_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLotswoLift_Click
    
End Sub
Private Sub CmdXPLT_Click()
On Error GoTo Err_CmdXPLT_Click

    Dim stDocName As String

    stDocName = "XPLT_AT_JHSN"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdXPLT_Click:
    Exit Sub

Err_CmdXPLT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdXPLT_Click
    
End Sub
```

## Module: Form_Reports_Menu_Production Subform

```vb
Private Sub Agreement_lot_Act_Tran_Balances_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE"
    DoCmd.OpenForm stDocName
 
End Sub

Private Sub Agreement_lot_Activities_Transactions_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_SELECT"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Agreement_Lot_Summary_by_Age_Class_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_by_Age_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Agreement_Lot_Summary_by_Client_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOTS_REQUEST_SUMMARY"
    
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub Agreement_Lots_FY_Summary_Click()
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_Summary_by_Age_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Agreement_Lots_Held_Over___Update_By_Product_Click()
On Error GoTo Err_Agreement_Lots_Held_Over___Update_By_Product_Click
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS_Holdover_Report_by_product"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Agreement_Lots_Held_Over___Update_By_Product_Click:
    Exit Sub

Err_Agreement_Lots_Held_Over___Update_By_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots_Held_Over___Update_By_Product_Click

End Sub

Private Sub Agreement_Lots_Held_Over___Update_Click()
On Error GoTo Err_Agreement_Lots_Held_Over___Update_Click
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENTS_Holdover_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Agreement_Lots_Held_Over___Update_Click:
    Exit Sub

Err_Agreement_Lots_Held_Over___Update_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots_Held_Over___Update_Click

End Sub

Private Sub Command44_Click()
'NMIS_SOURCE_Inventory_wtotals_and_grow_est Report
End Sub

Private Sub Agreement_Lots2_Click()
On Error GoTo Err_Agreement_Lots2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOTS_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreement_Lots2_Click:
    Exit Sub

Err_Agreement_Lots2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots2_Click
    
End Sub

Private Sub AgreementLotsBySowDateRange_Click()
On Error GoTo Err_AgreementLotsBySowDateRange_Click

    Dim stDocName As String
    
    DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
        DoCmd.SetWarnings True
        Location_Processed = True
    DoCmd.SetWarnings True

    stDocName = "AgreementLotSowingByDaterange"
    DoCmd.OpenQuery stDocName, acPreview

Exit_AgreementLotsBySowDateRange_Click:
    Exit Sub

Err_AgreementLotsBySowDateRange_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_AgreementLotsBySowDateRange_Click
    
End Sub

Private Sub Balance_By_End_Date_Click()
On Error GoTo Err_Balance_By_End_Date_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_Click:
    Exit Sub

Err_Balance_By_End_Date_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_Click
    
End Sub

Private Sub Balance_By_End_Date_no_net_Click()
On Error GoTo Err_Balance_By_End_Date_no_net_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date2_no_net"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_no_net_Click:
    Exit Sub

Err_Balance_By_End_Date_no_net_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_no_net_Click
    
End Sub

Private Sub Balance_By_End_Date_w_Lots_Click()
On Error GoTo Err_Balance_By_End_Date_w_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date_w_Lots"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date_w_Lots_Click:
    Exit Sub

Err_Balance_By_End_Date_w_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date_w_Lots_Click
    
End Sub

Private Sub Balance_By_End_Date2_Click()
On Error GoTo Err_Balance_By_End_Date2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Balances_By_Age_Class_and_End_Date2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Balance_By_End_Date2_Click:
    Exit Sub

Err_Balance_By_End_Date2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Balance_By_End_Date2_Click
    
End Sub

Private Sub BR_Grow_Location_Worksheet_Click()
On Error GoTo Err_BR_Grow_Location_Worksheet_Click

    Dim stDocName As String

    stDocName = "Field_Location_Worksheet"
    DoCmd.OpenForm stDocName

Exit_BR_Grow_Location_Worksheet_Click:
    Exit Sub

Err_BR_Grow_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BR_Grow_Location_Worksheet_Click
End Sub

Private Sub Clients_not_currently_growing_Click()
On Error GoTo Err_Clients_not_currently_growing_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Clients_Not_Currently_Growing"
    DoCmd.OpenReport stDocName, acPreview

Exit_Clients_not_currently_growing_Click:
    Exit Sub

Err_Clients_not_currently_growing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Clients_not_currently_growing_Click
    
End Sub

Private Sub Command74_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Command92_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Contacts_for_Current_fy_Sow_Req_Click()
On Error GoTo Err_Contacts_for_Current_fy_Sow_Req_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES_AND_CONTACTS_current_fy_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_fy_Sow_Req_Click:
    Exit Sub

Err_Contacts_for_Current_fy_Sow_Req_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_fy_Sow_Req_Click
    
End Sub

Private Sub Contacts_for_Current_Sow_Req_Click()
On Error GoTo Err_Contacts_for_Current_Sow_Req_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_growing_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Contacts_for_Current_Sow_Req_Click:
    Exit Sub

Err_Contacts_for_Current_Sow_Req_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Contacts_for_Current_Sow_Req_Click
    
End Sub

Private Sub Field_Form_For_Inventory_Sizing_Click()
On Error GoTo Err_Field_Form_For_Inventory_Sizing_Click

    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Plants_For_Inventory_Sizing"
    
    DoCmd.OpenForm stDocName

Exit_Field_Form_For_Inventory_Sizing_Click:
    Exit Sub

Err_Field_Form_For_Inventory_Sizing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_For_Inventory_Sizing_Click
    
End Sub

Private Sub Field_Form_Plants_Click()
On Error GoTo Err_Field_Form_Plants_Click

    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Plants"
    
    DoCmd.OpenForm stDocName

Exit_Field_Form_Plants_Click:
    Exit Sub

Err_Field_Form_Plants_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Plants_Click
    
End Sub


Private Sub Field_Form_Propagule_by_ID_Condensed_Click()
On Error GoTo Err_Field_Form_Propagule_by_ID_Condensed_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_by_ID_Condensed"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Field_Form_Propagule_by_ID_Condensed_Click:
    Exit Sub

Err_Field_Form_Propagule_by_ID_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_by_ID_Condensed_Click
    
End Sub

Private Sub Field_Form_Propagule_Click()
On Error GoTo Err_Field_Form_Propagule_Click


    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Field_Form_Propagule_Click:
    Exit Sub

Err_Field_Form_Propagule_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Click
    

End Sub

Private Sub Field_Form_Propagule_Condensed_by_Client_Click()
On Error GoTo Err_Field_Form_Propagule_Condensed_by_Client_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Condensed_by_Client"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Form_Propagule_Condensed_by_Client_Click:
    Exit Sub

Err_Field_Form_Propagule_Condensed_by_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Condensed_by_Client_Click
    
End Sub

Private Sub Field_Form_Propagule_Condensed_by_Species_Click()
On Error GoTo Err_Field_Form_Propagule_Condensed_by_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Condensed_by_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_Field_Form_Propagule_Condensed_by_Species_Click:
    Exit Sub

Err_Field_Form_Propagule_Condensed_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Condensed_by_Species_Click
    
End Sub

Private Sub Field_Form_Propagule_Condensed_Click()
On Error GoTo Err_Field_Form_Propagule_Condensed_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Condensed_w_acres"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Field_Form_Propagule_Condensed_Click:
    Exit Sub

Err_Field_Form_Propagule_Condensed_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Condensed_Click

End Sub

Private Sub Field_Form_Propagule_for_Xcel_Click()
On Error GoTo Err_Field_Form_Propagule_for_Xcel_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_for_Xcel"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_Field_Form_Propagule_for_Xcel_Click:
    Exit Sub

Err_Field_Form_Propagule_for_Xcel_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_for_Xcel_Click
End Sub

Private Sub Field_Form_Propagule_Landscape_Legal_Click()
On Error GoTo Err_Field_Form_Propagule_Landscape_Legal_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Landscape_Legal"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Field_Form_Propagule_Landscape_Legal_Click:
    Exit Sub

Err_Field_Form_Propagule_Landscape_Legal_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Landscape_Legal_Click
    
End Sub

Private Sub Field_Form_Propagule_Landscape_Letter_Click()
On Error GoTo Err_Field_Form_Propagule_Landscape_Letter_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Form_Propagule_Landscape_letter"
    
    DoCmd.OpenReport stDocName, acPreview
Exit_Field_Form_Propagule_Landscape_Letter_Click:
    Exit Sub

Err_Field_Form_Propagule_Landscape_Letter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Form_Propagule_Landscape_Letter_Click
    
End Sub

Private Sub Field_Lot_Tags_Click()
On Error GoTo Err_Field_Lot_Tags_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Tags"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Field_Lot_Tags_Click:
    Exit Sub

Err_Field_Lot_Tags_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Field_Lot_Tags_Click
    
End Sub

Private Sub Field_Map_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Field_Map Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Inventory_By_Age_Class_or_Species_Click()
On Error GoTo Err_Inventory_By_Age_Class_or_Species_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_FORM"
    DoCmd.OpenForm stDocName
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_Species_AgeClass].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_AgeClass_Species].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_No_Subtotals].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report2].Visible = False

Exit_Inventory_By_Age_Class_or_Species_Click:
    Exit Sub

Err_Inventory_By_Age_Class_or_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_By_Age_Class_or_Species_Click
    
End Sub

Private Sub inventory_by_End_FY_location_type_product_Click()
   
    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_End_FY_location_Type_and_Product_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub inventory_by_location_type_and_lot_Click()

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location"
    DoCmd.OpenForm stDocName
    
End Sub

Private Sub inventory_by_location_type_and_lot3_Click()

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type_Agreement_Lot_TP"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub inventory_by_location_type_Click()
    
    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub inventory_by_location_type_product_Click()
   
    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location_Type_and_Product_Class"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Inventory_Report_by_End_FY_Click()
    
    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Inventory_Report_by_End_FY_w_parent_Click()
    
    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report_w_parent"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Lots_for_Transplant_Checklist_by_Stocktype_Species_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_by_Stocktype_and_Species"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview

Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_Click
    
End Sub

Private Sub Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_by_Stocktype_and_Species_W_Subtotals"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview

Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_by_Stocktype_Species_wTotals_Click
    
End Sub

Private Sub Lots_for_Transplant_Checklist_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_Click

    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_for_Transplant_Checklist_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_Click
End Sub

Private Sub Lots_for_Transplant_Checklist_with_totals_Click()
On Error GoTo Err_Lots_for_Transplant_Checklist_with_totals_Click

    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_W_Subtotals"
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_for_Transplant_Checklist_with_totals_Click:
    Exit Sub

Err_Lots_for_Transplant_Checklist_with_totals_Click:
    'MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Checklist_with_totals_Click
End Sub

Private Sub Lots_for_Transplant_Spreadsheet_Click()
On Error GoTo Err_Lots_for_Transplant_Spreadsheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_Spreadsheet Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Lots_for_Transplant_Spreadsheet_Click:
    Exit Sub

Err_Lots_for_Transplant_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Spreadsheet_Click
    
End Sub

Private Sub Lots_for_Transplant_Spreadsheet_for_Field_Click()
On Error GoTo Err_Lots_for_Transplant_Spreadsheet_for_Field_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Transplant_Checklist_Spreadsheet_fieldform Query"
    DoCmd.OpenQuery stDocName ', acPreview

Exit_Lots_for_Transplant_Spreadsheet_for_Field_Click:
    Exit Sub

Err_Lots_for_Transplant_Spreadsheet_for_Field_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_for_Transplant_Spreadsheet_for_Field_Click
    
End Sub

Private Sub Lots_without_sow_xplt_or_xfer_act_Click()
On Error GoTo Err_Lots_without_sow_xplt_or_xfer_act_Click

    Dim stDocName As String
    
    stDocName = "NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_without_sow_xplt_or_xfer_act_Click:
    Exit Sub

Err_Lots_without_sow_xplt_or_xfer_act_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_without_sow_xplt_or_xfer_act_Click
    
End Sub

Private Sub Lots_without_sow_xplt_or_xfer_act2_Click()
On Error GoTo Err_Lots_without_sow_xplt_or_xfer_act2_Click

    Dim stDocName As String
    
    stDocName = "NMIS_AGREEMENTS_wo_sow_xplt_xfer_Report"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Lots_without_sow_xplt_or_xfer_act2_Click:
    Exit Sub

Err_Lots_without_sow_xplt_or_xfer_act2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lots_without_sow_xplt_or_xfer_act2_Click
    
End Sub

Private Sub NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check"
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check_Click
    
End Sub

Private Sub Open_Plant_Inventory_Worksheet_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Plant_Inventory_Worksheets Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Product_Inv_with_grow_est_Click()

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Click:
    Exit Sub

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

Private Sub Product_Inventory_Age_Class_Client_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Client_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_INVENTORY_Client_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Client_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Client_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Client_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Detailed_Report_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Detailed_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Detailed_Report_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Detailed_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Detailed_Report_Click
 
End Sub

Private Sub Product_Inventory_Age_Class_Detailed_Report2_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Detailed_Report2_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Detailed_Report2_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Detailed_Report2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Detailed_Report2_Click
 
End Sub

Private Sub Product_Inventory_Age_Class_Lot_ID_Report_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report"
    DoCmd.OpenReport stDocName, acPreview
  
End Sub

Private Sub Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Lot_ID_Report_wClient_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click()
On Error GoTo Err_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click:
    Exit Sub

Err_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Age_Class_Lot_ID_Report_wContact_Click
    
End Sub

Private Sub Product_Inventory_Age_Class_Report_Click()

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Report"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Product_Inventory_Age_Class_Summary_Report_Click()
    
    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click()
On Error GoTo Err_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click:
    Exit Sub

Err_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Parent_and_Age_Class_Detailed_Report_Click
 
End Sub

Private Sub Product_Inventory_Spreadsheet_Click()
On Error GoTo Err_Product_Inventory_Spreadsheet_Click

    Dim stDocName As String

    stDocName = "BeginFY_EndFY_Associate_Species_Input_Inv_SPD"
    DoCmd.OpenForm stDocName
Exit_Product_Inventory_Spreadsheet_Click:
    Exit Sub

Err_Product_Inventory_Spreadsheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Spreadsheet_Click
    
End Sub

Private Sub Product_Size_Distribution_Report_Click()
On Error GoTo Err_Product_Size_Distribution_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_MATRIX"
    
    DoCmd.OpenForm stDocName
    
Exit_Product_Size_Distribution_Report_Click:
    Exit Sub

Err_Product_Size_Distribution_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Size_Distribution_Report_Click
    
End Sub

Private Sub Request_Checklist_by_Age_Class_End_Year_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_by_Age_Class_End_Year"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Request_Checklist_by_Age_Class_End_Year_Summary_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Request_Checklist_by_Age_Class_End_Year_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub


Private Sub Review_Inv_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_Inv_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "Inv_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Inv_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_Inv_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Inv_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Review_SowTrans_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_SowTrans_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "SowTrans_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_SowTrans_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_SowTrans_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_SowTrans_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Source_Lot_Work_Order_Click()
On Error GoTo Err_Source_Lot_Work_Order_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Source_Material_Work_Order_By_Lot_ID_Range"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Work_Order_Click:
    Exit Sub

Err_Source_Lot_Work_Order_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Work_Order_Click
    
End Sub
Private Sub Agreement_Lots_Click()
On Error GoTo Err_Agreement_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_AGREEMENT_LOTS_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Agreement_Lots_Click:
    Exit Sub

Err_Agreement_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Agreement_Lots_Click
    
End Sub
Private Sub Foreign_Source_Request_Click()
On Error GoTo Err_Foreign_Source_Request_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "foreign_Source_Request"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Foreign_Source_Request_Click:
    Exit Sub

Err_Foreign_Source_Request_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Foreign_Source_Request_Click
    
End Sub
Private Sub Plant_Inventory_Worksheet_Blank_Click()
On Error GoTo Err_Plant_Inventory_Worksheet_Blank_Click

    Dim stDocName As String

    stDocName = "Plant_Inventory_Worksheet_Blank"
    DoCmd.OpenReport stDocName, acPreview

Exit_Plant_Inventory_Worksheet_Blank_Cli:
    Exit Sub

Err_Plant_Inventory_Worksheet_Blank_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Plant_Inventory_Worksheet_Blank_Cli
    
End Sub
Private Sub Open_Daily_Checklist_Form_Click()
On Error GoTo Err_Open_Daily_Checklist_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Product_Inventory_Daily_Checklist"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Daily_Checklist_Form_Click:
    Exit Sub

Err_Open_Daily_Checklist_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Daily_Checklist_Form_Click
    
End Sub
Private Sub Product_Inventory_Click()
On Error GoTo Err_Product_Inventory_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_FORM"
    DoCmd.OpenForm stDocName
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_Species_AgeClass].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_AgeClass_Species].Visible = False
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report_No_Subtotals].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report].Visible = True
    Forms![NMIS_PRODUCT_INVENTORY_FORM]![Preview_Report2].Visible = True

Exit_Product_Inventory_Click:
    Exit Sub

Err_Product_Inventory_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Inventory_Click
    
End Sub
Private Sub Preview_Production_inventory_Summary_Report_Click()
On Error GoTo Err_Preview_Production_inventory_Summary_Report_Click

    Dim stDocName As String

    stDocName = "**NMIS_Source_Non-WCF_Storage_Billing_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Production_inventory_Summar:
    Exit Sub

Err_Preview_Production_inventory_Summary_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Production_inventory_Summar
    
End Sub
Private Sub Preview_Product_Inventory_Summary_Click()
On Error GoTo Err_Preview_Product_Inventory_Summary_Click

    Dim stDocName As String

    stDocName = "NMIS_PRODUCT_INVENTORY_Summary_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Product_Inventory_Summary_C:
    Exit Sub

Err_Preview_Product_Inventory_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Product_Inventory_Summary_C
    
End Sub

Private Sub Source_Lot_Work_Order_list_Click()
On Error GoTo Err_Source_Lot_Work_Order_list_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Source_Material_Work_List"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Work_Order_list_Click:
    Exit Sub

Err_Source_Lot_Work_Order_list_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Work_Order_list_Click
    
End Sub

Private Sub Sowing_Request_Reports_Click()
On Error GoTo Err_Sowing_Request_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "SOW_REQUEST_REPORTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Sowing_Request_Reports_Click:
    Exit Sub

Err_Sowing_Request_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sowing_Request_Reports_Click
    
End Sub

Private Sub Stock_Location_Worksheet_Click()
On Error GoTo Err_Stock_Location_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Location_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Location_Worksheet_Click:
    Exit Sub

Err_Stock_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Location_Worksheet_Click
    
End Sub

Private Sub Stock_Location_Worksheet_Container_Click()
On Error GoTo Err_Stock_Location_Worksheet_Container_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Location_Worksheet_Container"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Location_Worksheet_Container_Click:
    Exit Sub

Err_Stock_Location_Worksheet_Container_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Location_Worksheet_Container_Click
    
End Sub

Private Sub Stock_Location_Worksheet_id_change_Click()
On Error GoTo Err_Stock_Location_Worksheet_id_change_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Stock_Location_Worksheet_id_change"
    DoCmd.OpenReport stDocName, acPreview

Exit_Stock_Location_Worksheet_id_change_Click:
    Exit Sub

Err_Stock_Location_Worksheet_id_change_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Stock_Location_Worksheet_id_change_Click
    
End Sub

Private Sub Transplant_Tags_Client_Owned_Click()
On Error GoTo Err_Transplant_Tags_Client_Owned_Click

    Dim stDocName As String

    stDocName = "Field_tag_pairs_TP_BRCO"
    DoCmd.OpenReport stDocName, acPreview

Exit_Transplant_Tags_Client_Owned_Click:
    Exit Sub

Err_Transplant_Tags_Client_Owned_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transplant_Tags_Client_Owned_Click
    
End Sub

Private Sub Transplant_Tags_Nursery_Owned_Click()
On Error GoTo Err_Transplant_Tags_Nursery_Owned_Click


    Dim stDocName As String

    stDocName = "Field_tag_pairs_TP_BR"
    DoCmd.OpenReport stDocName, acPreview

Exit_Transplant_Tags_Nursery_Owned_Click:
    Exit Sub

Err_Transplant_Tags_Nursery_Owned_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transplant_Tags_Nursery_Owned_Click
    
End Sub
```

## Module: Form_Reports_Menu_Shipping Subform

```vb
Private Sub CmdProdShpTkt_Click()

    Dim stDocName As String

    stDocName = "PRODUCT_ticket2b"
   
    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.SetWarnings True
    
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub inventory_by_location_type_and_lot_Click()
On Error GoTo Err_inventory_by_location_type_and_lot_Click

    Dim stLinkCriteria As String

    stDocName = "transaction_Totals_by_location"
    DoCmd.OpenForm stDocName
    
Exit_inventory_by_location_type_and_lot_Click:
    Exit Sub

Err_inventory_by_location_type_and_lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_by_location_type_and_lot_Click
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Processing_and_Shipping_Record_for_TP_Report_Click()

    Dim stDocName As String

    stDocName = "Processing_and_Shipping_Record_for_TP_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Processing_and_Shipping_Record_Report_Click()

    Dim stDocName As String

    stDocName = "Processing_and_Shipping_Record_Report"
    DoCmd.OpenReport stDocName, acPreview
    
End Sub

Private Sub Prod_Ship_Ticket_List_by_Categ_Click()
    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Category"
    DoCmd.OpenReport stDocName, acPreview
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_Click()
    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No"
    DoCmd.OpenReport stDocName, acPreview
End Sub

Private Sub Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click()
On Error GoTo Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click

    Dim stDocName As String

    stDocName = "Ship_Ticket_Summary_by_Ticket_No_TSO"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    Exit Sub

Err_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Prod_Ship_Ticket_list_by_Tkt_No_TSO_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()

    stDocName = "Product_Storage_Summary"
    
    DoCmd.OpenForm stDocName
 
End Sub

Private Sub Review_Destroy_Act_vs_Trans_totals_Click()
On Error GoTo Err_Review_Destroy_Act_vs_Trans_totals_Click

    Dim stDocName As String
    
    stDocName = "Destroy_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Destroy_Act_vs_Trans_totals_Click:
    Exit Sub

Err_Review_Destroy_Act_vs_Trans_totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Destroy_Act_vs_Trans_totals_Click
    
End Sub

Private Sub Review_Pack_Act_vs_Trans_totals_Ship_Click()
On Error GoTo Err_Review_Pack_Act_vs_Trans_totals_Ship_Click

    Dim stDocName As String
    
    stDocName = "Ship_act_tot_vs_trans_total_checklist"
    
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Review_Pack_Act_vs_Trans_totals_Ship_Click:
    Exit Sub

Err_Review_Pack_Act_vs_Trans_totals_Ship_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Review_Pack_Act_vs_Trans_totals_Ship_Click
    
End Sub

Private Sub Shipping_Summary_By_Parent_Associate_Click()

    DoCmd.OpenReport "Shipping_Summary_By_Parent_Associate", acViewPreview
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Shipping_Summary_By_Stocktype"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_Click
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_SPD_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_SPD_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Agreement_Lot_Ship_Totals_by_FY"
    DoCmd.OpenQuery stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_SPD_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_SPD_Click
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_Species_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Shipping_Summary_By_Stocktype"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_Species_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_Species_Click
    
End Sub

Private Sub Shipping_Summary_By_Stocktype_Species2_Click()
On Error GoTo Err_Shipping_Summary_By_Stocktype_Species2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Shipping_Summary_By_Stocktype_Species2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Shipping_Summary_By_Stocktype_Species2_Click:
    Exit Sub

Err_Shipping_Summary_By_Stocktype_Species2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Summary_By_Stocktype_Species2_Click

End Sub
```

## Module: Form_Reports_Menu_Source Subform

```vb
Private Sub Activity_by_Species_Click()
On Error GoTo Err_ctivity_by_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_QR_Activity_Breakdown Query"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_ctivity_by_Species_Click:
    Exit Sub

Err_ctivity_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ctivity_by_Species_Click
    
End Sub

Private Sub Activity_by_Species_Lot_Click()
On Error GoTo Err_Activity_by_Species_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_QR_Activity_Breakdown_by_lot Query"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_Activity_by_Species_Lot_Click:
    Exit Sub

Err_Activity_by_Species_Lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Activity_by_Species_Lot_Click
    
End Sub



Private Sub ConeStorageSpd_Click()
On Error GoTo Err_ConeStorageSpd_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "ConeStorageSPD"
    DoCmd.OpenQuery stDocName

Exit_ConeStorageSpd_Click:
    Exit Sub

Err_ConeStorageSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ConeStorageSpd_Click
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        [Source_Needs_Reports].Visible = True
    Else
        [Source_Needs_Reports].Visible = False
    End If
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()
On Error GoTo Err_Mailing_Labels_Intermec_Click


    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Mailing_Labels_Intermec_Click:
    Exit Sub

Err_Mailing_Labels_Intermec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Mailing_Labels_Intermec_Click
    
End Sub

Private Sub Negative_Balance_Lots_Click()
On Error GoTo Err_Negative_Balance_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seedlots_with_negative_balance"
    DoCmd.OpenQuery stDocName ', acViewPreview

Exit_Negative_Balance_Lots_Click:
    Exit Sub

Err_Negative_Balance_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Negative_Balance_Lots_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID2_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID2_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID2_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID3_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID3_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report3"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID3_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID3_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID3_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID3b_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID3b_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report3b"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID3b_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID3b_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID3b_Click
End Sub

Private Sub NMIS_SOURCE_Location_by_Loc_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_Loc_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_Loc_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_Location_by_Loc_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_Loc_Click
    
End Sub

Private Sub Non_WCF_Billing_Report_Click()
On Error GoTo Err_Non_WCF_Billing_Report_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Non_WCF_Billing_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Non_WCF_Billing_Report_Click:
    Exit Sub

Err_Non_WCF_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Billing_Report_Click
    
End Sub

Private Sub Preview_Seed_Ticket_Checklist2_Click()
On Error GoTo Err_Preview_Seed_Ticket_Checklist2_Click

    Dim stDocName As String

    stDocName = "NMIS_SEED_TICKETS_CHECKLIST2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Ticket_Checklist2_Click:
    Exit Sub

Err_Preview_Seed_Ticket_Checklist2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Ticket_Checklist2_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()
On Error GoTo Err_Product_Storage_Summary_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Product_Storage_Summary"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Product_Storage_Summary_Click:
    Exit Sub

Err_Product_Storage_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Summary_Click
    
End Sub

Private Sub Seed_Box_Mini_Labels_Click()
On Error GoTo Err_Seed_Box_Mini_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2d"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Seed_Box_Mini_Labels_Click:
    Exit Sub

Err_Seed_Box_Mini_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Labels_Click
    
End Sub

Private Sub Seed_Inventory_Report_Click()
On Error GoTo Err_Seed_Inventory_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Inventory_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Seed_Inventory_Report_Click:
    Exit Sub

Err_Seed_Inventory_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Inventory_Report_Click
    
End Sub
Private Sub seed_Quarterly_Report_Click()
On Error GoTo Err_seed_Quarterly_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Quarterly_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_seed_Quarterly_Report_Click:
    Exit Sub

Err_seed_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_seed_Quarterly_Report_Click
    
End Sub
Private Sub Seed_Box_Labels_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click
    
End Sub
Private Sub Source_Lot_Report_Click()
On Error GoTo Err_Source_Lot_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOT_SELECT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Report_Click:
    Exit Sub

Err_Source_Lot_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Report_Click
    
End Sub
Private Sub Preview_Seed_Ticket_Checklist_Click()
On Error GoTo Err_Preview_Seed_Ticket_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SEED_TICKETS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Ticket_Checklist_Click:
    Exit Sub

Err_Preview_Seed_Ticket_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Ticket_Checklist_Click
    
End Sub

Private Sub Source_Needs_Reports_Click()
On Error GoTo Err_Source_Needs_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Needs_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Needs_Reports_Click:
    Exit Sub

Err_Source_Needs_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Needs_Reports_Click
End Sub

Private Sub Sow_For_Other_Than_Stored_For_Click()
On Error GoTo Err_Sow_For_Other_Than_Stored_For_Click

    Dim stDocName As String

    stDocName = "Seed_Sown_for_Other_Than_Storage_Parent"
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Sow_For_Other_Than_Stored_For_Click:
    Exit Sub

Err_Sow_For_Other_Than_Stored_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sow_For_Other_Than_Stored_For_Click
    
End Sub

Private Sub Two_Lots_per_Seed_Box_Label_Click()
On Error GoTo Err_Two_Lots_per_Seed_Box_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2e"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Two_Lots_per_Seed_Box_Label_Click:
    Exit Sub

Err_Two_Lots_per_Seed_Box_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Two_Lots_per_Seed_Box_Label_Click
    
End Sub

Private Sub Zero_Balance_Report_by_Crop_Yr_Stor_For_Click()
On Error GoTo Err_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click:
    Exit Sub

Err_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click
    
End Sub

Private Sub Zero_Balance_Report_Click()
On Error GoTo Err_Zero_Balance_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Zero_Balance_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Zero_Balance_Report_Click:
    Exit Sub

Err_Zero_Balance_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Zero_Balance_Report_Click
    
End Sub
```

## Module: Form_SOW_REQUEST_REPORTS

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Diverse_AfterUpdate()

    Plntmstr_Symbol = "*"
    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Diverse_DblClick(Cancel As Integer)

    DIVERSE = "*"
    
End Sub

Private Sub Like_Client_AfterUpdate()

    CONTACT_CN = Null
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

Like_Client = "*"
CONTACT_CN = Null

End Sub

Private Sub OutYears_Report_Detailed_by_Forest_Click()
On Error GoTo Err_OutYears_Report_Detailed_by_Forest_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Detailed_by_Forest"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Detailed_by_Forest_Click:
    Exit Sub

Err_OutYears_Report_Detailed_by_Forest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Detailed_by_Forest_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Forest_Dist_species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Forest_Dist_Species_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forest_Dist_Species_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Forestt_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Forestt_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Forest_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Forestt_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Forestt_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_by_Species_Click()
On Error GoTo Err_OutYears_Report_Summary_by_Species_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Species"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_by_Species_Click:
    Exit Sub

Err_OutYears_Report_Summary_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_by_Species_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product_SPD_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product_SPD_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_SPD_Query"
    DoCmd.OpenQuery stDocName

Exit_OutYears_Report_Summary_Grand_by_Product_SPD_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product_SPD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product_SPD_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_by_Product2_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_by_Product2_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_by_Product2"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_by_Product2_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_by_Product2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_by_Product2_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Client_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Client_Sub_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_Forest_Sub"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Client_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Client_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Client_Sub_Click
    
End Sub

Private Sub OutYears_Report_Summary_Grand_Species_Sub_Click()
On Error GoTo Err_OutYears_Report_Summary_Grand_Species_Sub_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_grand_Species_Sub"
    DoCmd.OpenReport stDocName, acPreview

Exit_OutYears_Report_Summary_Grand_Species_Sub_Click:
    Exit Sub

Err_OutYears_Report_Summary_Grand_Species_Sub_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_OutYears_Report_Summary_Grand_Species_Sub_Click
    
End Sub

Private Sub Regional_Summary_Click()
On Error GoTo Err_Regional_Summary_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_Grand_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_Click:
    Exit Sub

Err_Regional_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_Click
    
End Sub

Private Sub Regional_Summary_With_Forest_Level_Detail_Click()
On Error GoTo Err_Regional_Summary_With_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region"
    DoCmd.OpenReport stDocName, acPreview

Exit_Regional_Summary_With_Forest_Level_Detail_Click:
    Exit Sub

Err_Regional_Summary_With_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Regional_Summary_With_Forest_Level_Detail_Click
    
End Sub

Private Sub Regional_Summary_Without_Forest_Level_Detail_Click()
On Error GoTo Err_egional_Summary_Without_Forest_Level_Detail_Click

    Dim stDocName As String

    stDocName = "OutYears_Report_Summary_by_Region2"
    DoCmd.OpenReport stDocName, acPreview

Exit_egional_Summary_Without_Forest_Level_Detail_Click:
    Exit Sub

Err_egional_Summary_Without_Forest_Level_Detail_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_egional_Summary_Without_Forest_Level_Detail_Click
    
End Sub
```

## Module: Form_Sample_Input_JHSN

```vb
Option Compare Database

Private Sub Counts_Click()

    Counts = Counts + 1
  
End Sub

Private Sub Counts_DblClick(Cancel As Integer)

    Counts = Counts + 1
    
End Sub

Private Sub Count_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Counts_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
  
End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)
    
    'If Not IsNull(SAMPLE_STATION) Then
        'Default_Station = [SAMPLE_STATION]
    'End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)
    
    If Not IsNull(SAMPLE_STATION) Then
        Default_Station = [SAMPLE_STATION]
    End If
 
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
On Error GoTo Err_Form_Error

Exit_Form_Error:
    Exit Sub

Err_Form_Error:
    MsgBox "You must complete the entry or press ESC!", vbCritical
    Resume Exit_Form_Error
    
End Sub

Private Sub Mechanical_Damage_Click()

    Mechanical_Damage = Mechanical_Damage + 1
  
End Sub

Private Sub Mechanical_Damage_DblClick(Cancel As Integer)

    Mechanical_Damage = Mechanical_Damage + 1
    
End Sub

Private Sub Mechanical_Damage_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Pest_Damage_Click()

    Pest_Damage = Pest_Damage + 1
   
End Sub

Private Sub Pest_Damage_DblClick(Cancel As Integer)

    Pest_Damage = Pest_Damage + 1
    
End Sub

Private Sub Pest_Damage_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Roots_Click()
    
    Roots = Roots + 1
    
End Sub

Private Sub Roots_DblClick(Cancel As Integer)
    
    Roots = Roots + 1
    
End Sub

Private Sub Roots_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub SAMPLE_MODE_Enter()

    If IsNull(SAMPLE_MODE) And Not IsNull(Default_Mode) Then
        SAMPLE_MODE = Default_Mode
    End If
   
End Sub

Private Sub SAMPLE_MODE_Exit(Cancel As Integer)

    Default_Mode = SAMPLE_MODE
    
End Sub

Private Sub SAMPLE_SIZE_DblClick(Cancel As Integer)

    If SAMPLE_SIZE < 50 Then
        SAMPLE_SIZE = SAMPLE_SIZE + 25
        Else
        If SAMPLE_SIZE < 100 Then
            SAMPLE_SIZE = SAMPLE_SIZE + 50
            Else
            If SAMPLE_SIZE < 200 Then
                SAMPLE_SIZE = SAMPLE_SIZE + 100
            End If
        End If
    End If
                
    Default_Sample_Size = SAMPLE_SIZE

End Sub

Private Sub SAMPLE_SIZE_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
   
End Sub

Private Sub SAMPLE_SIZE_Exit(Cancel As Integer)

    If SAMPLE_SIZE <> 0 Then
        Default_Sample_Size = SAMPLE_SIZE
    End If
    
End Sub

Private Sub SAMPLE_STATION_BeforeUpdate(Cancel As Integer)

    If Not IsNull(SAMPLE_STATION) Then
        Default_Station = [SAMPLE_STATION]
    End If
   
End Sub

Private Sub SAMPLE_STATION_DblClick(Cancel As Integer)

End Sub

Private Sub SAMPLE_STATION_Exit(Cancel As Integer)

    If Not IsNull(SAMPLE_STATION) Then
        'Default_Station = [SAMPLE_STATION]
    End If
    
End Sub

Private Sub Shelf_Enter()

    If Shelf = 0 Then
        Shelf = Last_Shelf + 1
    End If
    
End Sub

Private Sub Shelf_Exit(Cancel As Integer)

    Last_Shelf = Shelf
    
End Sub

Private Sub Top_Size_Click()

    Top_Size = Top_Size + 1
    
End Sub

Private Sub Top_Size_DblClick(Cancel As Integer)

    Top_Size = Top_Size + 1
    
End Sub

Private Sub Top_Size_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub

Private Sub Vigor_Click()

    Vigor = Vigor + 1
    
End Sub

Private Sub Vigor_DblClick(Cancel As Integer)

    Vigor = Vigor + 1
    
End Sub

Private Sub Vigor_Enter()

    If (IsNull(SAMPLE_SIZE) Or SAMPLE_SIZE = 0) And Not IsNull(Default_Sample_Size) Then
        SAMPLE_SIZE = Default_Sample_Size
    End If
    
    If Not IsNull(Default_Station) Then
        If IsNull(SAMPLE_STATION) Then
            SAMPLE_STATION = Default_Station
        End If
    End If
    
End Sub
```

## Module: Form_Seed_Billing_Change_Defaults

```vb
Option Compare Database

Private Sub Freezer_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Unit_Price_Freezer] = FREEZER
    
End Sub

Private Sub cooler_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Unit_Price_Cooler] = cooler
    
End Sub

Private Sub Storage_Date_AfterUpdate()

    Forms![Seed_Non_WCF_Billing_Report]![Storage_bill_Date] = Left$(Storage_Date, 6) & Right$([Forms]![Switchboard]![FY_For_Reports], 2)
    
End Sub
```

## Module: Form_Seed_Inventory_Report

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Command17_Click()

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_Inventory_wtotals_pn_Report"
    Else
        stDocName = "NMIS_SOURCE_Inventory_wtotals_wnotes_Report"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Create_Inventory_Xcel_Format_w_loc_Click()
On Error GoTo Err_Create_Inventory_Xcel_Format_w_loc_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_Inventory_Report_PN_xcel"
    Else
        stDocName = "NMIS_SOURCE_Inventory_Report_xcel_w_loc"
    End If
    
    DoCmd.OpenQuery stDocName ', acPreview
    'MsgBox "Use File/Export to save Spreadsheet in desired folder"
    'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"

Exit_Create_Inventory_Xcel_Format_w_loc_Click:
    Exit Sub

Err_Create_Inventory_Xcel_Format_w_loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Inventory_Xcel_Format_w_loc_Click
  
End Sub

Private Sub inventory_for_germ_retest_all_tests_Click()
On Error GoTo Err_inventory_for_germ_retest_all_tests_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Report_by_species_test_date_all_tests"
    DoCmd.OpenReport stDocName, acPreview

Exit_inventory_for_germ_retest_all_tests_Click:
    Exit Sub

Err_inventory_for_germ_retest_all_tests_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_all_tests_Click
    
End Sub

Private Sub inventory_for_germ_retest_Click()
On Error GoTo Err_inventory_for_germ_retest_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Report_by_species_test_date"
    DoCmd.OpenReport stDocName, acPreview

Exit_inventory_for_germ_retest_Click:
    Exit Sub

Err_inventory_for_germ_retest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_Click
    
End Sub

Private Sub inventory_for_germ_retest_spd_Click()
On Error GoTo Err_inventory_for_germ_retest_spd_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_INVENTORY_FOR_RETEST_SPD"
    DoCmd.OpenQuery stDocName
    
Exit_inventory_for_germ_retest_spd_Click:
    Exit Sub

Err_inventory_for_germ_retest_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_spd_Click
    
End Sub

Private Sub Inventory_with_grow_estimates_Click()


    Dim stDocName As String

    'stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report"
    
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report_040207"
    Else
        stDocName = "NMIS_SOURCE_Inventory_wtotals_and_grow_est Report"
    End If
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Inventory_XS_SP_Click()
On Error GoTo Err_Inventory_XS_SP_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_wtotals_pn_Report"
    Else
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_wtotals_Report"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Inventory_XS_SP_Click:
    Exit Sub

Err_Inventory_XS_SP_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_XS_SP_Click
    
End Sub

Private Sub Inventory_XS_SP_spd_Click()
On Error GoTo Err_Inventory_XS_SP_spd_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_pn_xcel"
    Else
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_xcel"
    End If
    
    DoCmd.OpenQuery stDocName

Exit_Inventory_XS_SP_spd_Click:
    Exit Sub

Err_Inventory_XS_SP_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_XS_SP_spd_Click
    
End Sub

Private Sub Inventory_XS_SP_spd_wLotBal_Click()
On Error GoTo Err_Inventory_XS_SP_spd_wLotBal_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_pn_wLotBal_xcel"
    Else
        stDocName = "NMIS_SOURCE_XS_SP_Inventory_Report_wLotBal_xcel"
    End If
    
    DoCmd.OpenQuery stDocName ', acPreview
    'MsgBox "Use File/Export to save Spreadsheet in desired folder"
    'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"


Exit_Inventory_XS_SP_spd_wLotBal_Click:
    Exit Sub

Err_Inventory_XS_SP_spd_wLotBal_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_XS_SP_spd_wLotBal_Click
    
End Sub

Private Sub Preview_Client_Checklist_Click()
On Error GoTo Err_Preview_Client_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Client_Checklist_Report"
       
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Client_Checklist_Click:
    Exit Sub

Err_Preview_Client_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Client_Checklist_Click
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Inventory_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub
Private Sub Inventory_With_Totals_Click()
On Error GoTo Err_Inventory_With_Totals_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        stDocName = "NMIS_SOURCE_Inventory_wtotals_pn_Report"
    Else
        stDocName = "NMIS_SOURCE_Inventory_wtotals_Report"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Inventory_With_Totals_Click:
    Exit Sub

Err_Inventory_With_Totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_With_Totals_Click
    
End Sub
Private Sub Create_Inventory_Xcel_Format_Click()
On Error GoTo Err_Create_Inventory_Xcel_Format_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
            stDocName = "NMIS_SOURCE_Inventory_Report_PN_xcel"
    Else
        If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
            stDocName = "NMIS_SOURCE_Inventory_Report_xcel_040207"
    Else
        stDocName = "NMIS_SOURCE_Inventory_Report_xcel"
    End If
    End If
    
    DoCmd.OpenQuery stDocName ', acPreview
    'MsgBox "Use File/Export to save Spreadsheet in desired folder"
    'MsgBox "Use Tools > Office Links > Analyze it with Microsoft Excel to save Spreadsheet in desired folder"

Exit_Create_Inventory_Xcel_Format_Click:
    Exit Sub

Err_Create_Inventory_Xcel_Format_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Inventory_Xcel_Format_Click
    
End Sub
```

## Module: Form_Seed_Needs_Report

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub



Private Sub inventory_for_germ_retest_all_tests_Click()
On Error GoTo Err_inventory_for_germ_retest_all_tests_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1b_PN_xcel"
    DoCmd.OpenQuery stDocName, acPreview

Exit_inventory_for_germ_retest_all_tests_Click:
    Exit Sub

Err_inventory_for_germ_retest_all_tests_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_all_tests_Click
    
End Sub

Private Sub inventory_for_germ_retest_Click()
On Error GoTo Err_inventory_for_germ_retest_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1_PN_xcel"
    DoCmd.OpenQuery stDocName, acPreview

Exit_inventory_for_germ_retest_Click:
    Exit Sub

Err_inventory_for_germ_retest_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_inventory_for_germ_retest_Click
    
End Sub



Private Sub Inventory_with_grow_estimates_Click()


    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1c_PN_xcel"
    DoCmd.OpenQuery stDocName, acPreview

End Sub


Private Sub Inventory_With_Totals_Click()
On Error GoTo Err_Inventory_With_Totals_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Needs_Inv_Report1d_PN_xcel"
    
    DoCmd.OpenQuery stDocName, acPreview

Exit_Inventory_With_Totals_Click:
    Exit Sub

Err_Inventory_With_Totals_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Inventory_With_Totals_Click
    
End Sub
```

## Module: Form_Seed_Non_WCF_Billing_Report

```vb
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
```

## Module: Form_Seed_Quarterly_Report

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub Preview_Quarterly_Checklist_by_for_Report_Click()
On Error GoTo Err_Preview_Quarterly_Checklist_by_for_Report_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_Quarterly_Report_by_forest_Checklist"
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date"
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date"
        DoCmd.GoToControl "End_Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If
    End If

Exit_Preview_Quarterly_Checklist_by_for_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Checklist_by_for_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Checklist_by_for_Report_Click
    
End Sub

Private Sub Preview_Quarterly_Checklist_by_for_Species_Report_Click()
On Error GoTo Err_Preview_Quarterly_Checklist_by_for_Species_Report_Click

    Dim stDocName As String
    
    stDocName = "NMIS_SOURCE_Quarterly_Report_by_species_Checklist"
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    DoCmd.OpenReport stDocName, acPreview
    End If
    End If

Exit_Preview_Quarterly_Checklist_by_for_Species_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Checklist_by_for_Species_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Checklist_by_for_Species_Report_Click
    
End Sub

Private Sub Preview_Quarterly_Report_Click()
On Error GoTo Err_Preview_Quarterly_Report_Click

    Dim stDocName As String
    
    Select Case [SPECIES_GROUP]
    Case 1
        stDocName = "Seed_Quarterly_Report"
    Case 2
        stDocName = "Seed_Quarterly_Report_NON_Diverse"
    Case 3
        stDocName = "Seed_Quarterly_Report_Diverse"
    End Select
    
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    If Not IsNull([CATEGORY_CODE]) Then
        DoCmd.OpenReport stDocName, acPreview
    Else
        MsgBox "Please Enter a Category Code", vbExclamation
        DoCmd.GoToControl "[Category_Code]"
    End If
    End If
    End If

Exit_Preview_Quarterly_Report_Click:
    Exit Sub

Err_Preview_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Quarterly_Report_Click
    
End Sub

Private Sub Spreadsheet_Report_Click()
On Error GoTo Err_Spreadsheet_Report_Click

    Dim stDocName As String
    
    Select Case [SPECIES_GROUP]
    Case 1
        stDocName = "Seed_Quarterly_Report Query"
    Case 2
        stDocName = "Seed_Quarterly_Report_NON_Diverse Query"
    Case 3
        stDocName = "Seed_Quarterly_Report_Diverse Query"
    End Select
    If IsNull(BEGIN_DATE) Then
        MsgBox "Must enter a Begin Date", vbExclamation
        DoCmd.GoToControl "begin_Date"
    Else
    If IsNull(END_DATE) Then
        MsgBox "Must enter an End Date", vbExclamation
        DoCmd.GoToControl "End_Date"
    Else
    
    If Not IsNull([CATEGORY_CODE]) Then
        DoCmd.OpenQuery stDocName, acPreview
    Else
        MsgBox "Please Enter a Category Code", vbExclamation
        DoCmd.GoToControl "[Category_Code]"
    End If
    End If
    End If

Exit_Spreadsheet_Report_Click:
    Exit Sub

Err_Spreadsheet_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Spreadsheet_Report_Click
    
End Sub
```

## Module: Form_Seed_Ship_Ticket_ID_ACTIVITIES subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    
End Sub

Private Sub ACTIVITY_UNITS_Click()

End Sub

Private Sub ACTIVITY_UNITS_DblClick(Cancel As Integer)

    If Forms![SEED_SHIPPING_TICKET Subform]![Seed_Balance2_ subform].Form![Sum Of ACTIVITY_UNITS] > 0 Then
        ACTIVITY_UNITS = Forms![SEED_SHIPPING_TICKET Subform]![Seed_Balance2_ subform].Form![Sum Of ACTIVITY_UNITS]
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()
        
    ACTIVITY_DATE = Forms![SEED_SHIPPING_TICKET Subform]![DESIRED_DATE]

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If

End Sub

Private Sub Form_AfterInsert()

    'Sets the CN on the calling form to the INDEX on the calling form + User_Nursery_Code from the NMIS_ACCESS_SET_USER_NURSERY subform on the switchboard
    [CN] = [Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code

    Dim stDocName As String
    Dim stLinkCriteria As String


    stDocName = "NMIS_ID_MGMT_CODES_Ship_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"

    DoCmd.RunCommand acCmdRefreshPage
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Form_Current()

    If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        [Activity_Code] = "TSTTZ" Or [Activity_Code] = "TSTGER" Or _
       [Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       [Activity_Code] = "ADDNON" Or [Activity_Code] = "WEIGH" Or _
       [Activity_Code] Like "TST*" Or [Activity_Code] Like "RTS*" Or _
       [Activity_Code] Like "RETST*" Then
        [open_source_test_entry_form].Visible = True
    Else
        [open_source_test_entry_form].Visible = False
    End If
    
End Sub

Private Sub Open_Jobcode_Form_Click()
On Error GoTo Err_Open_Jobcode_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_MGMT_CODES_Ship_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Jobcode_Form_Click:
    Exit Sub

Err_Open_Jobcode_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Jobcode_Form_Click
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub open_source_test_entry_form_Click()

On Error GoTo Err_open_source_test_entry_form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    'If [Activity_Code] = "TEST" Or [Activity_Code] = "RETEST" Or _
        '[Activity_Code] = "TSTTZ" Or [Activity_Code] = "TSTGER" Or _
       '[Activity_Code] = "XFRIN1" Or [Activity_Code] = "XFRIN2" Or _
       '[Activity_Code] = "ADDNON" Or [Activity_Code] = "WEIGH" Then
       stLinkCriteria = "[ID_ACTIVITY_CN]=" & "'" & Me![CN] & "'"
        DoCmd.RunCommand acCmdRefreshPage
        stDocName = "NMIS_SOURCE_TESTS_Ship_Ticket Form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    'Else
        'MsgBox "Activity must be '226/TEST', '235/ADDNON', '252/RETEST', '253/XFRIN1' OR '254/XFRIN2'."
    'End If

Exit_open_source_test_entry_form_Click:
    Exit Sub

Err_open_source_test_entry_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_open_source_test_entry_form_Click

End Sub

Private Sub Open_Storage_Location_Form_Click()
On Error GoTo Err_Open_Storage_Location_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_for_Source_Withdrawal subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Storage_Location_Form_Click:
    Exit Sub

Err_Open_Storage_Location_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Storage_Location_Form_Click
    
End Sub

Private Sub Print_Lot_Label_Click()
On Error GoTo Err_Print_Lot_Label_Click

    Dim stDocName As String

     If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        stDocName = "seed_shipping_lot_label_040207"
    Else
        stDocName = "seed_shipping_lot_label"
    End If
    
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Print_Lot_Label_Click:
    Exit Sub

Err_Print_Lot_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Lot_Label_Click
    
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    SOURCE_LOT_CN.Locked = False
    MsgBox "Source Lot ID unlocked for edting"
    
End Sub

Private Sub SOURCE_LOT_CN_Enter()

    If IsNull(SOURCE_LOT_CN) Then
        SOURCE_LOT_CN.Locked = False
    Else
        SOURCE_LOT_CN.Locked = True
    End If

End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(SOURCE_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        If IsNull([NOTE]) Then
            If Not IsNull(Forms![SEED_SHIPPING_TICKET Subform].Form![NOTE]) Then
                NOTE = Forms![SEED_SHIPPING_TICKET Subform].Form![NOTE]
            End If
        End If
        If (Not IsNull(Forms![SEED_SHIPPING_TICKET Subform]![Default_Activity_Code]) And _
            IsNull(Activity_Code)) Then
            Activity_Code = Forms![SEED_SHIPPING_TICKET Subform]![Default_Activity_Code]
        End If
        If IsNull([DESTINATION_ASSOCIATE]) Then
            [DESTINATION_ASSOCIATE] = Forms![SEED_SHIPPING_TICKET Subform]![DELIVERED_TO_ASSOCIATE]
        End If
    End If
    
    SOURCE_LOT_CN.Locked = True
    
End Sub


Private Sub TICKET_CN_AfterUpdate()

    Requery
    
End Sub

Private Sub TICKET_CN_DblClick(Cancel As Integer)
    
    TICKET_CN.Locked = False
    MsgBox "Ticket ID now Unlocked for Editing"
    
End Sub

Private Sub TICKET_CN_Exit(Cancel As Integer)

    TICKET_CN.Locked = True
    
End Sub
```

## Module: Form_Seed_Shipping_Ticket Subform

```vb
Option Compare Database

Private Sub Client_Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    DoCmd.GoToControl "NURSERY_CONTACT_CN"
    DoCmd.GoToControl "Client_CONTACT_CN"
    If IsNull(Client_Contact_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [Client_Contact_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Create_Combo_Ticket_Click()
On Error GoTo Err_Create_Combo_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_combo_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Combo_Ticket_Click:
    Exit Sub

Err_Create_Combo_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Combo_Ticket_Click
    
End Sub

Private Sub Create_Receive_Ticket_Click()
On Error GoTo Err_Create_Receive_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_receiving_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Receive_Ticket_Click:
    Exit Sub

Err_Create_Receive_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Receive_Ticket_Click
    
End Sub

Private Sub Create_Withdrawal_form2_Click()
On Error GoTo Err_Create_Withdrawal_form2_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Ship_list_by_Loc"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form2_Click:
    Exit Sub

Err_Create_Withdrawal_form2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form2_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_AfterUpdate()
 
    If Not IsNull(DELIVERED_TO_ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the DELIVERED TO ASSOCIATE CODE?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [DELIVERED_TO_ASSOCIATE] = DELIVERED_TO_ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_AfterUpdate()
    
    If Not IsNull(DELIVERED_TO_ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the DELIVERED TO ASSOCIATE NAME?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [DELIVERED_TO_ASSOCIATE_Name] = DELIVERED_TO_ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_DblClick(Cancel As Integer)

    DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![SEED_SHIPPING_TICKET Subform]![DELIVERED_TO_ASSOCIATE] & "'"
    DoCmd.GoToControl "ASSOCIATE"
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
    Forms![NMIS_Associates]!Unfilter.Visible = True
        
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_Enter()
    
    If Not IsNull(DELIVERED_TO_ASSOCIATE_Name) Then
        DELIVERED_TO_ASSOCIATE_backup = DELIVERED_TO_ASSOCIATE_Name
        DELIVERED_TO_ASSOCIATE_Name.Requery
    End If
    
End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_shipping_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub Create_Shipping_Ticket_with_test_data_Click()
On Error GoTo Err_Create_Shipping_Ticket_with_test_data_Click

    Dim stDocName As String

    stDocName = "seed_shipping_ticket_with_Test_Data"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_with_test_data_Click:
    Exit Sub

Err_Create_Shipping_Ticket_with_test_data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_with_test_data_Click
    
End Sub

Private Sub Create_Withdrawal_form_Click()
On Error GoTo Err_Create_Withdrawal_form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Ship_list"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form_Click:
    Exit Sub

Err_Create_Withdrawal_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)

        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![SEED_SHIPPING_TICKET Subform]![DELIVERED_TO_ASSOCIATE] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
        Forms![NMIS_Associates]!Unfilter.Visible = True
        
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Enter()

    If Not IsNull(DELIVERED_TO_ASSOCIATE) Then
        DELIVERED_TO_ASSOCIATE_backup = DELIVERED_TO_ASSOCIATE
        DELIVERED_TO_ASSOCIATE.Requery
    End If
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_Exit(Cancel As Integer)

        If Not IsNull(DELIVERED_TO_ASSOCIATE_Name) Then
            DELIVERED_TO_ASSOCIATE_backup = DELIVERED_TO_ASSOCIATE_Name
            DELIVERED_TO_ASSOCIATE_Name.Requery
        End If
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_Name_GotFocus()

    DELIVERED_TO_ASSOCIATE_Name.Requery
    
End Sub

Private Sub DESIRED_DATE_DblClick(Cancel As Integer)

    [DESIRED_DATE].Locked = False
    MsgBox "Activity Date is now UNLOCKED for Editing."
    
End Sub

Private Sub DESIRED_DATE_Enter()

    If IsNull(DESIRED_DATE) Then
        DESIRED_DATE.Locked = False
    Else
        DESIRED_DATE.Locked = True
    End If
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[TKT_NO] = '" & Me![Find_Ticket] & "'"
    Me.Bookmark = rs.Bookmark
                     
End Sub

Private Sub Find_Ticket_Enter()

    Find_Ticket.Requery
    
End Sub

Private Sub FY_DblClick(Cancel As Integer)

    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
    
End Sub


Private Sub FY_Enter()

    If IsNull(FY) Then
        FY.Locked = False
    Else
        FY.Locked = True
    End If
    
End Sub


Private Sub Lot_Labels_by_Ticket_Click()
On Error GoTo Err_Lot_Labels_by_Ticket_Click

    Dim stDocName As String

     If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
        stDocName = "seed_shipping_lot_label_040207"
    Else
        stDocName = "seed_shipping_lot_label_by_Ticket"
    End If
    
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Lot_Labels_by_Ticket_Click:
    Exit Sub

Err_Lot_Labels_by_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lot_Labels_by_Ticket_Click
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()
On Error GoTo Err_Mailing_Labels_Intermec_Click


    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Mailing_Labels_Intermec_Click:
    Exit Sub

Err_Mailing_Labels_Intermec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Mailing_Labels_Intermec_Click
    
End Sub

Private Sub New_Ticket_Click()

    DoCmd.GoToRecord , , acNewRec
    Find_Ticket = ""
    TKT_NO.SetFocus
    
End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_2_TKT_S"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub NURSERY_CONTACT_CN_Enter()

    NURSERY_CONTACT_CN.Requery
    
End Sub

Private Sub Receive_Form_Click()
On Error GoTo Err_Receive_Form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Receiving_Work_List"
    DoCmd.OpenReport stDocName, acPreview

Exit_Receive_Form_Click:
    Exit Sub

Err_Receive_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Receive_Form_Click
    
End Sub

Private Sub Seed_Box_Label_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2]![ID] = [Seed_Ship_Ticked_ID_ACTIVITIES subform].Form![ID]

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click

End Sub

Private Sub Seed_Box_Mini_Label_Click()
On Error GoTo Err_Seed_Box_Mini_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2c"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2c]![ID1] = [Seed_Ship_Ticked_ID_ACTIVITIES subform].Form![ID]

Exit_Seed_Box_Mini_Label_Click:
    Exit Sub

Err_Seed_Box_Mini_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Label_Click
End Sub

Private Sub Seed_Ship_Ticked_ID_ACTIVITIES_subform_Enter()

    If IsNull(Forms![SEED_SHIPPING_TICKET Subform]![TKT_NO]) Then
        MsgBox "Must enter Ticket ID First"
        Forms![SEED_SHIPPING_TICKET Subform]![TKT_NO].SetFocus
    End If
    
End Sub

Private Sub Shipping_Bag_Tags_Click()
On Error GoTo Err_Shipping_Bag_Tags_Click

    Dim stDocName As String

    stDocName = "seed_shipping_bag_tags"
    DoCmd.OpenReport stDocName, acPreview

Exit_Shipping_Bag_Tags_Click:
    Exit Sub

Err_Shipping_Bag_Tags_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Shipping_Bag_Tags_Click
    
End Sub

Private Sub TKT_NO_DblClick(Cancel As Integer)

    [TKT_NO].Locked = False
    MsgBox "Ticket ID is now UNLOCKED for Editing."
    
End Sub

Private Sub TKT_NO_Enter()

    If IsNull(TKT_NO) Then
        TKT_NO.Locked = False
    Else
        TKT_NO.Locked = True
    End If
    
End Sub

Private Sub TKT_NO_Exit(Cancel As Integer)
    
    If Not IsNull(TKT_NO) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_Ticket.Requery
    FY.Requery
    
End Sub

Private Sub View_Lot_AfterUpdate()

    [Seed_Ship_Ticked_ID_ACTIVITIES subform].Requery
  
End Sub

Private Sub View_Lot_DblClick(Cancel As Integer)

    View_Lot = ""
    View_Lot.Requery
    
End Sub

Private Sub View_Lot_Enter()

    View_Lot.Requery
  
End Sub
```

## Module: Form_Seed_Sow_Withdrawal_Ticket Subform

```vb
Option Compare Database

Private Sub Click_to_View_Stratification_Record_Form_Click()
On Error GoTo Err_Click_to_View_Stratification_Record_Form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Stratification_Record"
    DoCmd.OpenReport stDocName, acPreview

Exit_Click_to_View_Stratification_Record_Form_Click:
    Exit Sub

Err_Click_to_View_Stratification_Record_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Click_to_View_Stratification_Record_Form_Click
    
End Sub

Private Sub Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "seed_sow_withdrawal_ticket"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub Create_Shipping_Ticket_with_test_data_Click()
On Error GoTo Err_Create_Shipping_Ticket_with_test_data_Click

    Dim stDocName As String

    stDocName = "seed_sow_withdrawal_ticket_with_Test_Data"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Shipping_Ticket_with_test_data_Click:
    Exit Sub

Err_Create_Shipping_Ticket_with_test_data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_with_test_data_Click
    
End Sub

Private Sub Create_Withdrawal_form_Click()
On Error GoTo Err_Create_Withdrawal_form_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Sow_list"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form_Click:
    Exit Sub

Err_Create_Withdrawal_form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form_Click
    
End Sub

Private Sub Create_Withdrawal_form2_Click()
On Error GoTo Err_Create_Withdrawal_form2_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Sow_list2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Create_Withdrawal_form2_Click:
    Exit Sub

Err_Create_Withdrawal_form2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Withdrawal_form2_Click
    
End Sub

Private Sub DESIRED_DATE_DblClick(Cancel As Integer)

    [DESIRED_DATE].Locked = False
    'MsgBox "Activity Date is now UNLOCKED for Editing."
    
End Sub

Private Sub DESIRED_DATE_Enter()

    If IsNull(DESIRED_DATE) Then
        DESIRED_DATE.Locked = False
    Else
        DESIRED_DATE.Locked = True
    End If
    
End Sub

Private Sub Desired_Date2_DblClick(Cancel As Integer)

    Desired_Date2.Locked = False
    
End Sub

Private Sub Desired_Date2_Enter()

    If IsNull(Desired_Date2) Then
        Desired_Date2.Locked = False
    Else
        Desired_Date2.Locked = True
    End If
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    View_Lot = Null
    
    Set rs = Me.Recordset.Clone
    rs.FindFirst "[TKT_NO] = '" & Me![Find_Ticket] & "'"
    Me.Bookmark = rs.Bookmark
                     
End Sub

Private Sub Find_Ticket_Enter()

    Find_Ticket.Requery
    
End Sub

Private Sub FY_DblClick(Cancel As Integer)

    [FY].Locked = False
    MsgBox "FY is now UNLOCKED for Editing."
    
End Sub

Private Sub FY_Enter()
    
    If IsNull(FY) Then
        FY.Locked = False
    Else
        FY.Locked = True
    End If
    
End Sub

Private Sub New_Ticket_Click()

    DoCmd.GoToRecord , , acNewRec
    Find_Ticket = ""

End Sub

Private Sub NMIS_SOURCE_CARD_BACK_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_BACK_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_BACK"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_BACK_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_BACK_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_BACK_Click
    
End Sub

Private Sub NMIS_SOURCE_CARD_Click()
On Error GoTo Err_NMIS_SOURCE_CARD_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_Card_2_TKT_SW"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub NURSERY_CONTACT_CN_Enter()

    NURSERY_CONTACT_CN.Requery

End Sub

Private Sub Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES_subform_Enter()

    If IsNull([TKT_NO]) Then
        MsgBox "Must enter Ticket ID first"
        TKT_NO.SetFocus
    End If
    
End Sub



Private Sub Ticket_Type_DblClick(Cancel As Integer)

    TICKET_TYPE.Locked = False
    
End Sub

Private Sub Ticket_Type_Enter()

    TICKET_TYPE.Locked = True
    
End Sub

Private Sub Ticket_Type_Exit(Cancel As Integer)

    TICKET_TYPE.Locked = True
    
End Sub

Private Sub TKT_NO_DblClick(Cancel As Integer)

    [TKT_NO].Locked = False
    MsgBox "Ticket ID is now UNLOCKED for Editing."
    
End Sub

Private Sub TKT_NO_Enter()

    If IsNull(TKT_NO) Then
        TKT_NO.Locked = False
    Else
        TKT_NO.Locked = True
    End If
    
End Sub

Private Sub TKT_NO_Exit(Cancel As Integer)

    If Not IsNull(TKT_NO) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "set_cn2"
        End If
    End If

End Sub

Private Sub VIEW_FY_AfterUpdate()

    Find_Ticket.Requery
    
End Sub

Private Sub View_Lot_AfterUpdate()

    [Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].Requery
    
End Sub

Private Sub View_Lot_DblClick(Cancel As Integer)

    View_Lot = ""
    View_Lot.Requery
    
End Sub

Private Sub View_Lot_Enter()

    View_Lot.Requery
    
End Sub
```

## Module: Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub ACTIVITY_CODE_Enter()

    Activity_Code.Requery
    
End Sub

Private Sub ACTIVITY_UNITS_Enter()

    If IsNull(Activity_Code) Then
        MsgBox "Please enter and ACTIVITY CODE first", vbCritical
        Activity_Code.SetFocus
    End If
    
End Sub

Private Sub ACTIVITY_UNITS_Exit(Cancel As Integer)
    
    Dim stBalance_Effect As String
    Dim lnNegBalance As Double
    
    If Not IsNull([BALANCE_EFFECT]) And Not IsNull([ACTIVITY_UNITS]) Then
    stBalance_Effect = [BALANCE_EFFECT]
    Select Case stBalance_Effect
        Case Is = "REMOVE"
            If [ACTIVITY_UNITS] > 0 Then
                'Response = MsgBox("Units should be Less than Zero. Change to Minus?", vbYesNo)
                'If Response = vbYes Then
                    lnNegBalance = [ACTIVITY_UNITS] * -1
                    [ACTIVITY_UNITS] = lnNegBalance
                'End If
            End If
        Case Is = "ADD"
            If [ACTIVITY_UNITS] < 0 Then
                MsgBox ("Units must be GREATER than Zero for Activity Code " & [Activity_Code])
                lnNegBalance = [ACTIVITY_UNITS] * -1
                [ACTIVITY_UNITS] = lnNegBalance
            End If
    End Select
    End If

End Sub

Private Sub Agreement_Lot_CN_AfterUpdate()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    Dim stDocName As String
    Dim stLinkCriteria As String
    Dim rs As Object
    
    LastAgreementCN = AGREEMENT_LOT_CN
    
    If (Not IsNull([AGREEMENT_LOT_CN]) Or [AGREEMENT_LOT_CN] = "") Then
        DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , _
            "[CN] = Forms![Seed_Sow_Withdrawal_Ticket Subform]![Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].Form![AGREEMENT_LOT_CN] ", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
        DoCmd.GoToControl "ID"
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![Like_Agreement_Lots Label].Visible = False
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
    End If
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub Enter_Strat_Activity_Click()

    LastActivityCN = CN
 
    If Activity_Code <> "STRAT" Then
    If IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Strat_Date]) Then
        MsgBox "Please enter a Default Strat Date"
    Else
        DoCmd.SetWarnings False
        Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code] = "STRAT"
        DoCmd.OpenQuery "StratAddActivityEnter"
        DoCmd.OpenQuery "StratAddUpdateCN"
        DoCmd.Requery
        Set rs = Me.Recordset.Clone
        rs.FindFirst "[CN] = '" & Me![LastActivityCN] & "'"
        Me.Bookmark = rs.Bookmark
        DoCmd.SetWarnings True
    End If
    Else
        MsgBox "Already a Strat Activity"
    End If
    
End Sub

Private Sub Form_AfterInsert()

    'Sets the CN on the calling form to the INDEX on the calling form + User_Nursery_Code from the NMIS_ACCESS_SET_USER_NURSERY subform on the switchboard
    [CN] = [Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code

    Dim stDocName As String
    Dim stLinkCriteria As String


    stDocName = "NMIS_ID_MGMT_CODES_Ship_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"

    DoCmd.RunCommand acCmdRefreshPage
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    If IsNull(ACTIVITY_DATE) Then
        ACTIVITY_DATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DESIRED_DATE]
    End If
    
End Sub

Private Sub Open_More_Info_Form_Click()
On Error GoTo Err_Open_More_Info_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_MORE_INFO_Ship_Tkt_FORM"
    stLinkCriteria = "[SOURCE_LOT_CN]=" & "'" & Me![SOURCE_LOT_CN] & "'"
   
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_More_Info_Form_Click:
    Exit Sub

Err_Open_More_Info_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_More_Info_Form_Click
    
End Sub

Private Sub Print_Lot_Label_Click()
On Error GoTo Err_Print_Lot_Label_Click

    Dim stDocName As String

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "040207" Then
            stDocName = "seed_shipping_lot_label_sw_040207"
    Else
        stDocName = "seed_shipping_lot_label_SW"
    End If
    DoCmd.OpenReport stDocName, acViewPreview
    
Exit_Print_Lot_Label_Click:
    Exit Sub

Err_Print_Lot_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Lot_Label_Click
    
End Sub

Private Sub Source_LOT_CN_DblClick(Cancel As Integer)

    SOURCE_LOT_CN.Locked = False
    MsgBox "Source ID Unlocked for editing"
    
End Sub

Private Sub SOURCE_LOT_CN_Enter()

    If IsNull(SOURCE_LOT_CN) Then
        SOURCE_LOT_CN.Locked = False
    Else
        SOURCE_LOT_CN.Locked = True
    End If
    
End Sub

Private Sub SOURCE_LOT_CN_Exit(Cancel As Integer)

    If Not IsNull(SOURCE_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        If IsNull([NOTE]) Then
            If Not IsNull([Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]) Then
                NOTE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![NOTE]
            End If
        End If
        If IsNull(DESTINATION_ASSOCIATE) Then
            DESTINATION_ASSOCIATE = [Forms]![Seed_Sow_Withdrawal_Ticket Subform].[Form]![DELIVERED_TO_ASSOCIATE]
        End If
        If (Not IsNull(Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code]) And _
            IsNull(Activity_Code)) Then
            Activity_Code = Forms![Seed_Sow_Withdrawal_Ticket Subform]![Default_Activity_Code]
        End If
    End If
    SOURCE_LOT_CN.Locked = True

End Sub

Private Sub TICKET_CN_AfterUpdate()

    Requery
    
End Sub
Private Sub TICKET_CN_DblClick(Cancel As Integer)
    
    TICKET_CN.Locked = False
    MsgBox "Ticket ID now Unlocked for Editing"
    
End Sub

Private Sub TICKET_CN_Exit(Cancel As Integer)

    TICKET_CN.Locked = True
    
End Sub
Private Sub Open_Jobcode_Form_Click()
On Error GoTo Err_Open_Jobcode_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_MGMT_CODES_Sow_Withdrawal_Ticket subform"
    
    stLinkCriteria = "[ACTIVITY_ID_CN]=" & "'" & Me![CN] & "'"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Jobcode_Form_Click:
    Exit Sub

Err_Open_Jobcode_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Jobcode_Form_Click
    
End Sub
Private Sub Open_Storage_Location_Form_Click()
On Error GoTo Err_Open_Storage_Location_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_LOCATIONS_for_Sow_Withdrawal subform"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Storage_Location_Form_Click:
    Exit Sub

Err_Open_Storage_Location_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Storage_Location_Form_Click
    
End Sub
```

## Module: Form_Source_Material_Work_List

```vb
Option Compare Database

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Begin_ID_Change()
    
    End_ID = Null
    
End Sub

Private Sub Begin_ID_Enter()

    Begin_ID.Requery
    
End Sub

Private Sub End_ID_Enter()

    End_ID.Requery
    
End Sub

Private Sub Plntmstr_Symbol_Enter()

    Plntmstr_Symbol.Requery
    
End Sub

Private Sub Plntmstr_Symbol_Exit(Cancel As Integer)

    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
End Sub

Private Sub Print_Work_Orders_Checklist_Click()
On Error GoTo Err_Print_Work_Orders_Checklist_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_Checklist"
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
        DoCmd.OpenReport stDocName, acViewPreview

Exit_Print_Work_Orders_Checklist_Click:
    Exit Sub

Err_Print_Work_Orders_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Checklist_Click
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_list"
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    If IsNull(Plntmstr_Symbol) Then
        Plntmstr_Symbol = "*"
    End If
    
        DoCmd.OpenReport stDocName, acViewPreview

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub

Private Sub PRODUCT_CLASS_Enter()

    PRODUCT_CLASS.Requery
    
End Sub

Private Sub Product_Class_Exit(Cancel As Integer)
    
    If IsNull(PRODUCT_CLASS) Then
        PRODUCT_CLASS = "*"
    End If
    
End Sub
```

## Module: Form_Source_Material_Work_Order_By_Lot_ID_Range

```vb
Option Compare Database

Private Sub Preview_Offsite_Source_Order_Form_Click()
On Error GoTo Err_Preview_Offsite_Source_Order_Form_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_FROM_OFFSITE_STORAGE"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Offsite_Source_Order_Form_C:
    Exit Sub

Err_Preview_Offsite_Source_Order_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Offsite_Source_Order_Form_C
    
End Sub

Private Sub Begin_ID_Change()
    
    End_ID = Null
    
End Sub

Private Sub Begin_ID_Enter()

    Begin_ID.Requery
    
End Sub

Private Sub End_ID_Enter()

    End_ID.Requery
    
End Sub

Private Sub Print_Work_Orders_Click()
On Error GoTo Err_Print_Work_Orders_Click

    Dim stDocName As String

    stDocName = "Seed_Bank_Work_Order_by_ID_Range"
    
    If Not IsNull(Begin_ID) Then
    If Begin_ID > End_ID Then
        MsgBox "END Entry Order MUST be Greater than Begin Entry Order", vbExclamation
    Else
        If IsNull(End_ID) Then
            End_ID = Begin_ID
        End If
    
        DoCmd.OpenReport stDocName, acViewPreview
    End If
    Else
        MsgBox "Must Enter a BEGIN ID", vbExclamation
    End If

Exit_Print_Work_Orders_Click:
    Exit Sub

Err_Print_Work_Orders_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Work_Orders_Click
    
End Sub
```

## Module: Form_Species_Products_Reports

```vb
Option Compare Database

Private Sub Filter_For_Product_Change()

    Filter_for_Species = "*"
    
End Sub

Private Sub Filter_For_Product_Enter()
    
    Filter_For_Product.Requery
    
End Sub

Private Sub Filter_for_Product_Type_Change()

    Filter_For_Product = "*"
    
End Sub

Private Sub Filter_for_Species_Enter()

    Filter_for_Species.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

End Sub

Private Sub Species_Products_Click()
On Error GoTo Err_Species_Products_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_Click:
    Exit Sub

Err_Species_Products_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_Click
    
End Sub

Private Sub Species_Products_With_Cycles_Click()
On Error GoTo Err_Species_Products_With_Cycles_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_CYCLES"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Cycles_Click:
    Exit Sub

Err_Species_Products_With_Cycles_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Cycles_Click
    
End Sub

Private Sub Species_Products_With_Cycles_Current_Crop_Click()
On Error GoTo Err_Species_Products_With_Cycles_Current_Crop_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_CYCLES_Current_Crop"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Cycles_Current_Crop_Click:
    Exit Sub

Err_Species_Products_With_Cycles_Current_Crop_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Cycles_Current_Crop_Click
    
End Sub

Private Sub Species_Products_With_Sow_Factors_Click()
On Error GoTo Err_Species_Products_With_Sow_Factors_Click

     Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES_PRODUCTS_AND_FACTORS"
    DoCmd.OpenReport stDocName, acPreview
Exit_Species_Products_With_Sow_Factors_Click:
    Exit Sub

Err_Species_Products_With_Sow_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Species_Products_With_Sow_Factors_Click
    
End Sub

Private Sub Species_Type_AfterUpdate()

    Filter_for_Species = Null
    
End Sub

Private Sub Wildcard_Tip_Click()
On Error GoTo Err_Wildcard_Tip_Click

    Dim stDocName As String

    MsgBox "Wildcards" & Chr(13) & Chr(10) & Chr(10) & _
        "* Matches any number of characters. It can be used as the first or last character in the character string. wh* finds what, white, and why" & Chr(13) & Chr(10) & Chr(10) & _
        "? Matches any single alphabetic character. B?ll finds ball, bell, and bill" & Chr(13) & Chr(10) & Chr(10) & _
        "[ ] Matches any single character within the brackets. B[ae]ll finds ball and bell but not bill" & Chr(13) & Chr(10) & Chr(10) & _
        "! Matches any character not in the brackets. b[!ae]ll finds bill and bull but not ball or bell" & Chr(13) & Chr(10) & Chr(10) & _
        "- Matches any one of a range of characters. You must specify the range in ascending order (A to Z, not Z to A). b[a-c]d finds bad, bbd, and bcd" & Chr(13) & Chr(10) & Chr(10) & _
        "# Matches any single numeric character. 1#3 finds 103, 113, 123", vbInformation

Exit_Wildcard_Tip_Click:
    Exit Sub

Err_Wildcard_Tip_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Wildcard_Tip_Click
    
End Sub
```

## Module: Form_Switchboard

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)
' Minimize the database window and initialize the form.

    ' Move to the switchboard page that is marked as the default.
    Me.Filter = "[ItemNumber] = 0 AND [Argument] = 'Default' "
    Me.FilterOn = True
    
    ' Set Current_User_Name
    Current_User_Name = CurrentUserName
   
End Sub

Private Sub Form_Current()
' Update the caption and fill in the list of options.

    Me.Caption = Nz(Me![ItemText], "")
    FillOptions
    
End Sub

Private Sub FillOptions()
' Fill in the options for this switchboard page.

    ' The number of buttons on the form.
    Const conNumButtons = 8
    
    Dim con As Object
    Dim rs As Object
    Dim stSql As String
    Dim intOption As Integer
    
    ' Set the focus to the first button on the form,
    ' and then hide all of the buttons on the form
    ' but the first.  You can't hide the field with the focus.
    Me![Option1].SetFocus
    For intOption = 2 To conNumButtons
        Me("Option" & intOption).Visible = False
        Me("OptionLabel" & intOption).Visible = False
    Next intOption
    
    ' Open the table of Switchboard Items, and find
    ' the first item for this Switchboard Page.
    Set con = Application.CurrentProject.Connection
    stSql = "SELECT * FROM [Switchboard Items]"
    stSql = stSql & " WHERE [ItemNumber] > 0 AND [SwitchboardID]=" & Me![SwitchboardID]
    stSql = stSql & " ORDER BY [ItemNumber];"
    Set rs = CreateObject("ADODB.Recordset")
    rs.Open stSql, con, 1   ' 1 = adOpenKeyset
    
    ' If there are no options for this Switchboard Page,
    ' display a message.  Otherwise, fill the page with the items.
    If (rs.EOF) Then
        Me![OptionLabel1].Caption = "There are no items for this switchboard page"
    Else
        While (Not (rs.EOF))
            Me("Option" & rs![ItemNumber]).Visible = True
            Me("OptionLabel" & rs![ItemNumber]).Visible = True
            Me("OptionLabel" & rs![ItemNumber]).Caption = rs![ItemText]
            rs.MoveNext
        Wend
    End If

    ' Close the recordset and the database.
    rs.Close
    Set rs = Nothing
    Set con = Nothing

End Sub

Private Function HandleButtonClick(intBtn As Integer)
' This function is called when a button is clicked.
' intBtn indicates which button was clicked.

    ' Constants for the commands that can be executed.
    Const conCmdGotoSwitchboard = 1
    Const conCmdOpenFormAdd = 2
    Const conCmdOpenFormBrowse = 3
    Const conCmdOpenReport = 4
    Const conCmdCustomizeSwitchboard = 5
    Const conCmdExitApplication = 6
    Const conCmdRunMacro = 7
    Const conCmdRunCode = 8
    Const conCmdOpenPage = 9

    ' An error that is special cased.
    Const conErrDoCmdCancelled = 2501
    
    Dim con As Object
    Dim rs As Object
    Dim stSql As String

On Error GoTo HandleButtonClick_Err

    ' Find the item in the Switchboard Items table
    ' that corresponds to the button that was clicked.
    Set con = Application.CurrentProject.Connection
    Set rs = CreateObject("ADODB.Recordset")
    stSql = "SELECT * FROM [Switchboard Items] "
    stSql = stSql & "WHERE [SwitchboardID]=" & Me![SwitchboardID] & " AND [ItemNumber]=" & intBtn
    rs.Open stSql, con, 1    ' 1 = adOpenKeyset
    
    ' If no item matches, report the error and exit the function.
    If (rs.EOF) Then
        MsgBox "There was an error reading the Switchboard Items table."
        rs.Close
        Set rs = Nothing
        Set con = Nothing
        Exit Function
    End If
    
    Select Case rs![Command]
        
        ' Go to another switchboard.
        Case conCmdGotoSwitchboard
            Me.Filter = "[ItemNumber] = 0 AND [SwitchboardID]=" & rs![Argument]
            
        ' Open a form in Add mode.
        Case conCmdOpenFormAdd
            DoCmd.OpenForm rs![Argument], , , , acAdd

        ' Open a form.
        Case conCmdOpenFormBrowse
            DoCmd.OpenForm rs![Argument]

        ' Open a report.
        Case conCmdOpenReport
            DoCmd.OpenReport rs![Argument], acPreview

        ' Customize the Switchboard.
        Case conCmdCustomizeSwitchboard
            ' Handle the case where the Switchboard Manager
            ' is not installed (e.g. Minimal Install).
            On Error Resume Next
            Application.Run "ACWZMAIN.sbm_Entry"
            If (Err <> 0) Then MsgBox "Command not available."
            On Error GoTo 0
            ' Update the form.
            Me.Filter = "[ItemNumber] = 0 AND [Argument] = 'Default' "
            Me.Caption = Nz(Me![ItemText], "")
            FillOptions

        ' Exit the application.
        Case conCmdExitApplication
            CloseCurrentDatabase

        ' Run a macro.
        Case conCmdRunMacro
            DoCmd.RunMacro rs![Argument]

        ' Run code.
        Case conCmdRunCode
            Application.Run rs![Argument]

        ' Open a Data Access Page
        Case conCmdOpenPage
            DoCmd.OpenDataAccessPage rs![Argument]

        ' Any other command is unrecognized.
        Case Else
            MsgBox "Unknown option."
    
    End Select

    ' Close the recordset and the database.
    rs.Close
    
HandleButtonClick_Exit:
On Error Resume Next
    Set rs = Nothing
    Set con = Nothing
    Exit Function

HandleButtonClick_Err:
    ' If the action was cancelled by the user for
    ' some reason, don't display an error message.
    ' Instead, resume on the next line.
    If (Err = conErrDoCmdCancelled) Then
        Resume Next
    Else
        MsgBox "There was an error executing the command.", vbCritical
        Resume HandleButtonClick_Exit
    End If
    
End Function

Private Sub Open_Main_Menu_Click()
On Error GoTo Err_Open_Main_Menu_Click

    Dim stDocName As String

    stDocName = "Open_Swichboard"
    DoCmd.RunMacro stDocName

Exit_Open_Main_Menu_Click:
    Exit Sub

Err_Open_Main_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Main_Menu_Click
    
End Sub
Private Sub Go_To_Main_Menu_Click()
On Error GoTo Err_Go_To_Main_Menu_Click

    Dim stDocName As String

    stDocName = "Open_Swichboard"
    DoCmd.RunMacro stDocName

Exit_Go_To_Main_Menu_Click:
    Exit Sub

Err_Go_To_Main_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Go_To_Main_Menu_Click
    
End Sub
```

## Module: Form_Ticket_Container_Summary

```vb
Option Compare Database

Private Sub Print_Ticket_Container_Summary_Form_Click()
On Error GoTo Err_Print_Ticket_Container_Summary_Form_Click

    Dim stDocName As String
    Dim MyForm As Form

    stDocName = "Ticket_Container_Summary"
    Set MyForm = Screen.ActiveForm
    DoCmd.SelectObject acForm, stDocName, True
    DoCmd.PrintOut
    DoCmd.SelectObject acForm, MyForm.Name, False

Exit_Print_Ticket_Container_Summary_Form:
    Exit Sub

Err_Print_Ticket_Container_Summary_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Ticket_Container_Summary_Form
    
End Sub
```

## Module: Form_Transaction_Totals_By_Location_and_amt_per_unit1a subform

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Like_Unit_Type_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Net_M_DblClick(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS] = Net_M
    Else
        MsgBox "Cannot Replace existing Activity Units by Double-Clicking!", vbExclamation
    End If
    
End Sub

Private Sub Sum_Net_M_DblClick(Cancel As Integer)

    If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS]) Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ACTIVITY_UNITS] = Sum_Net_M
    Else
        MsgBox "Cannot Replace existing Activity Units by Double-Clicking!", vbExclamation
    End If
   
End Sub

Private Sub Zero_Click()

    If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
    End If
        If IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Or _
            Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] = 0 Then
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
            = ID_LOCATION_CN
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
            = Sum_Of_ACTIVITY_UNITS * -1
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
            = Net_Density
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
            = Gross_Density
        'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Requery
        Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        'Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![Update_Inv_Info].Visible = True
        DoCmd.GoToRecord , , acNewRec
        End If
    
End Sub
```

## Module: Form_Transaction_Totals_For_Product_Inventory subform

```vb
Option Compare Database

Private Sub Zero_Click()

    If Not IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
    End If
    
        If IsNull(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS]) Then
        ID_LOCATION_CN_T = ID_LOCATION_CN
        SUM_OF_ACTIVITY_UNITS_T = Sum_Of_ACTIVITY_UNITS
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
            = ID_LOCATION_CN
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
            = Sum_Of_ACTIVITY_UNITS * -1
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
            = Net_Density
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
            = Gross_Density
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![ID_LOCATION_CN] _
            = ID_LOCATION_CN_T
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![NUMBER_OF_ACTIVITY_UNITS] _
            = SUM_OF_ACTIVITY_UNITS_T
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT] _
            = Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Net_Per_Unit], 0)
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Form![AMT_PER_UNIT_INV_GROSS] _
            = Nz(Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_PRODUCT_INVENTORIES subform1].Form![Gross_Per_Unit])
        'Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].Requery
        Forms![NMIS_PRODUCT_INVENTORIES]![NMIS_ID_ACTIVITIES_TRANSACTIONS_subform].SetFocus
        DoCmd.GoToRecord , , acNewRec
        End If
        
End Sub
```

## Module: Form_xLabel_Click_Error

```vb
Option Compare Database

Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click


    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
```

## Module: Form_xLookup_Tables_Menu

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)
' Minimize the database window and initialize the form.

    ' Move to the switchboard page that is marked as the default.
    Me.Filter = "[ItemNumber] = 0 AND [Argument] = 'Default' "
    Me.FilterOn = True
    
End Sub

Private Sub Form_Current()
' Update the caption and fill in the list of options.

    Me.Caption = Nz(Me![ItemText], "")
    FillOptions
    
End Sub

Private Sub FillOptions()
' Fill in the options for this switchboard page.

    ' The number of buttons on the form.
    Const conNumButtons = 8
    
    Dim con As Object
    Dim rs As Object
    Dim stSql As String
    Dim intOption As Integer
    
    ' Set the focus to the first button on the form,
    ' and then hide all of the buttons on the form
    ' but the first.  You can't hide the field with the focus.
    Me![Option1].SetFocus
    For intOption = 2 To conNumButtons
        Me("Option" & intOption).Visible = False
        Me("OptionLabel" & intOption).Visible = False
    Next intOption
    
    ' Open the table of Switchboard Items, and find
    ' the first item for this Switchboard Page.
    Set con = Application.CurrentProject.Connection
    stSql = "SELECT * FROM [Switchboard Items]"
    stSql = stSql & " WHERE [ItemNumber] > 0 AND [SwitchboardID]=" & Me![SwitchboardID]
    stSql = stSql & " ORDER BY [ItemNumber];"
    Set rs = CreateObject("ADODB.Recordset")
    rs.Open stSql, con, 1   ' 1 = adOpenKeyset
    
    ' If there are no options for this Switchboard Page,
    ' display a message.  Otherwise, fill the page with the items.
    If (rs.EOF) Then
        Me![OptionLabel1].Caption = "There are no items for this switchboard page"
    Else
        While (Not (rs.EOF))
            Me("Option" & rs![ItemNumber]).Visible = True
            Me("OptionLabel" & rs![ItemNumber]).Visible = True
            Me("OptionLabel" & rs![ItemNumber]).Caption = rs![ItemText]
            rs.MoveNext
        Wend
    End If

    ' Close the recordset and the database.
    rs.Close
    Set rs = Nothing
    Set con = Nothing

End Sub

Private Function HandleButtonClick(intBtn As Integer)
' This function is called when a button is clicked.
' intBtn indicates which button was clicked.

    ' Constants for the commands that can be executed.
    Const conCmdGotoSwitchboard = 1
    Const conCmdOpenFormAdd = 2
    Const conCmdOpenFormBrowse = 3
    Const conCmdOpenReport = 4
    Const conCmdCustomizeSwitchboard = 5
    Const conCmdExitApplication = 6
    Const conCmdRunMacro = 7
    Const conCmdRunCode = 8
    Const conCmdOpenPage = 9

    ' An error that is special cased.
    Const conErrDoCmdCancelled = 2501
    
    Dim con As Object
    Dim rs As Object
    Dim stSql As String

On Error GoTo HandleButtonClick_Err

    ' Find the item in the Switchboard Items table
    ' that corresponds to the button that was clicked.
    Set con = Application.CurrentProject.Connection
    Set rs = CreateObject("ADODB.Recordset")
    stSql = "SELECT * FROM [Switchboard Items] "
    stSql = stSql & "WHERE [SwitchboardID]=" & Me![SwitchboardID] & " AND [ItemNumber]=" & intBtn
    rs.Open stSql, con, 1    ' 1 = adOpenKeyset
    
    ' If no item matches, report the error and exit the function.
    If (rs.EOF) Then
        MsgBox "There was an error reading the Switchboard Items table."
        rs.Close
        Set rs = Nothing
        Set con = Nothing
        Exit Function
    End If
    
    Select Case rs![Command]
        
        ' Go to another switchboard.
        Case conCmdGotoSwitchboard
            Me.Filter = "[ItemNumber] = 0 AND [SwitchboardID]=" & rs![Argument]
            
        ' Open a form in Add mode.
        Case conCmdOpenFormAdd
            DoCmd.OpenForm rs![Argument], , , , acAdd

        ' Open a form.
        Case conCmdOpenFormBrowse
            DoCmd.OpenForm rs![Argument]

        ' Open a report.
        Case conCmdOpenReport
            DoCmd.OpenReport rs![Argument], acPreview

        ' Customize the Switchboard.
        Case conCmdCustomizeSwitchboard
            ' Handle the case where the Switchboard Manager
            ' is not installed (e.g. Minimal Install).
            On Error Resume Next
            Application.Run "ACWZMAIN.sbm_Entry"
            If (Err <> 0) Then MsgBox "Command not available."
            On Error GoTo 0
            ' Update the form.
            Me.Filter = "[ItemNumber] = 0 AND [Argument] = 'Default' "
            Me.Caption = Nz(Me![ItemText], "")
            FillOptions

        ' Exit the application.
        Case conCmdExitApplication
            CloseCurrentDatabase

        ' Run a macro.
        Case conCmdRunMacro
            DoCmd.RunMacro rs![Argument]

        ' Run code.
        Case conCmdRunCode
            Application.Run rs![Argument]

        ' Open a Data Access Page
        Case conCmdOpenPage
            DoCmd.OpenDataAccessPage rs![Argument]

        ' Any other command is unrecognized.
        Case Else
            MsgBox "Unknown option."
    
    End Select

    ' Close the recordset and the database.
    rs.Close
    
HandleButtonClick_Exit:
On Error Resume Next
    Set rs = Nothing
    Set con = Nothing
    Exit Function

HandleButtonClick_Err:
    ' If the action was cancelled by the user for
    ' some reason, don't display an error message.
    ' Instead, resume on the next line.
    If (Err = conErrDoCmdCancelled) Then
        Resume Next
    Else
        MsgBox "There was an error executing the command.", vbCritical
        Resume HandleButtonClick_Exit
    End If
    
End Function

Private Sub Open_Main_Menu_Click()
On Error GoTo Err_Open_Main_Menu_Click

    Dim stDocName As String

    stDocName = "Open_Swichboard"
    DoCmd.RunMacro stDocName

Exit_Open_Main_Menu_Click:
    Exit Sub

Err_Open_Main_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Main_Menu_Click
    
End Sub
Private Sub Go_To_Main_Menu_Click()
On Error GoTo Err_Go_To_Main_Menu_Click

    Dim stDocName As String

    stDocName = "Open_Swichboard"
    DoCmd.RunMacro stDocName

Exit_Go_To_Main_Menu_Click:
    Exit Sub

Err_Go_To_Main_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Go_To_Main_Menu_Click
    
End Sub

Private Sub Open_Location_Type_Form_Click()

End Sub

Private Sub Open_NMIS_Associates_Menu_Click()
On Error GoTo Err_Open_NMIS_Associates_Menu_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ASSOCIATES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Associates_Menu_Click:
    Exit Sub

Err_Open_NMIS_Associates_Menu_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Associates_Menu_Click
    
End Sub
Private Sub Open_Main_Switchboard_Click()
On Error GoTo Err_Open_Main_Switchboard_Click

    Dim stDocName As String

    stDocName = "Switchboard"
    DoCmd.Close
    DoCmd.OpenForm stDocName
    DoCmd.Close
    DoCmd.OpenForm stDocName

Exit_Open_Main_Switchboard_Click:
    Exit Sub

Err_Open_Main_Switchboard_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Main_Switchboard_Click
    
End Sub
Private Sub Open_Contacts_Form_Click()
On Error GoTo Err_Open_Contacts_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contacts_Form_Click:
    Exit Sub

Err_Open_Contacts_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contacts_Form_Click
    
End Sub
Private Sub Close_Lookup_Table_Window_Click()
On Error GoTo Err_Close_Lookup_Table_Window_Click


    DoCmd.Close

Exit_Close_Lookup_Table_Window_Click:
    Exit Sub

Err_Close_Lookup_Table_Window_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Lookup_Table_Window_Click
    
End Sub
Private Sub Open_Activity_Charges_Form_Click()
On Error GoTo Err_Open_Activity_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CHARGES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Activity_Charges_Form_Click:
    Exit Sub

Err_Open_Activity_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Activity_Charges_Form_Click
    
End Sub
Private Sub Open_Activity_Code_Form_Click()
On Error GoTo Err_Open_Activity_Code_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Activity_Code_Form_Click:
    Exit Sub

Err_Open_Activity_Code_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Activity_Code_Form_Click
    
End Sub

Private Sub Open_NMIS_FISCAL_YEARS_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_FISCAL_YEARS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Open_NMIS_Product_Charges_Form_Click()
On Error GoTo Err_Open_NMIS_Product_Charges_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCT_CHARGES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Product_Charges_Form_Click:
    Exit Sub

Err_Open_NMIS_Product_Charges_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Product_Charges_Form_Click
    
End Sub

Private Sub Open_Source_Price_Base_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_PRICE_RATES_BASE"
    DoCmd.OpenForm stDocName, , , stLinkCriteria


End Sub

Private Sub Open_Source_Price_Rates_Form_Click()
    
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_PRICE_RATES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

End Sub

Private Sub Open_Source_Proc_Rates_Form_Click()
On Error GoTo Err_Open_Source_Proc_Rates_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_PROCESSING_RATES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Proc_Rates_Form_Click:
    Exit Sub

Err_Open_Source_Proc_Rates_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Proc_Rates_Form_Click
    
End Sub

Private Sub Open_Species_Form_Click()
On Error GoTo Err_Open_Species_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SPECIES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Species_Form_Click:
    Exit Sub

Err_Open_Species_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Species_Form_Click
    
End Sub
Private Sub Open_Groups_Form_Click()
On Error GoTo Err_Open_Groups_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_GROUPS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Groups_Form_Click:
    Exit Sub

Err_Open_Groups_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Groups_Form_Click
    
End Sub
Private Sub Open_Catagories_Form_Click()
On Error GoTo Err_Open_Catagories_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CATEGORIES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Catagories_Form_Click:
    Exit Sub

Err_Open_Catagories_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Catagories_Form_Click
    
End Sub
Private Sub Open_NMIS_Products_Form_Click()
On Error GoTo Err_Open_NMIS_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PRODUCTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_Products_Form_Click:
    Exit Sub

Err_Open_NMIS_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_Products_Form_Click
    
End Sub
Private Sub Open_Contract_Items_Form_Click()
On Error GoTo Err_Open_Contract_Items_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTRACTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contract_Items_Form_Click:
    Exit Sub

Err_Open_Contract_Items_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contract_Items_Form_Click
    
End Sub
Private Sub Command49_Click()
On Error GoTo Err_Command49_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_LOCATION_TYPES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command49_Click:
    Exit Sub

Err_Command49_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command49_Click
    
End Sub
Private Sub Open_Seasons_Form_Click()
On Error GoTo Err_Open_Seasons_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SEASONS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Seasons_Form_Click:
    Exit Sub

Err_Open_Seasons_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Seasons_Form_Click
    
End Sub

Private Sub Open_Source_Form_Click()

End Sub

Private Sub Open_Unit_Codes_Subform_Click()
On Error GoTo Err_Open_Unit_Codes_Subform_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_UNITS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Unit_Codes_Subform_Click:
    Exit Sub

Err_Open_Unit_Codes_Subform_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Unit_Codes_Subform_Click
    
End Sub
Private Sub Open_Location_Types_Form_Click()
On Error GoTo Err_Open_Location_Types_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_LOCATION_TYPES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Location_Types_Form_Click:
    Exit Sub

Err_Open_Location_Types_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Location_Types_Form_Click
    
End Sub
Private Sub Open_Factor_Codes_Form_Click()
On Error GoTo Err_Open_Factor_Codes_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_FACTOR_CODES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Factor_Codes_Form_Click:
    Exit Sub

Err_Open_Factor_Codes_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Factor_Codes_Form_Click
    
End Sub
Private Sub Open_Ojyord_Form_Click()
On Error GoTo Err_Open_Ojyord_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_OYJORD_SETTINGS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Ojyord_Form_Click:
    Exit Sub

Err_Open_Ojyord_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Ojyord_Form_Click
    
End Sub
Private Sub Open_Treatment_Products_Form_Click()
On Error GoTo Err_Open_Treatment_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TREATMENT_PRODUCTS"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Treatment_Products_Form_Click:
    Exit Sub

Err_Open_Treatment_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Treatment_Products_Form_Click
    
End Sub
Private Sub Open_Test_Types_Form_Click()
On Error GoTo Err_Open_Test_Types_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TEST_TYPES"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Test_Types_Form_Click:
    Exit Sub

Err_Open_Test_Types_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Test_Types_Form_Click
    
End Sub
Private Sub Open_Species_Products_Form_Click()
On Error GoTo Err_Open_Species_Products_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    DoCmd.OpenForm "xPlease_Be_Patient_Message"
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Species_Products_Currently_Active_in_Grow_Containers_mt"
    DoCmd.SetWarnings True

    stDocName = "NMIS_SPECIES_PRODUCTS Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Species_Products_Form_Click:
    Exit Sub

Err_Open_Species_Products_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Species_Products_Form_Click
    
End Sub
```

## Module: Form_xOyjord_Calibration_Error

```vb
Option Compare Database

Private Sub Close_Form_Click()
On Error GoTo Err_Close_Form_Click


    DoCmd.Close

Exit_Close_Form_Click:
    Exit Sub

Err_Close_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Form_Click
    
End Sub
```

## Module: Form_xnot_implemented

```vb
Option Compare Database

Private Sub Open_Switchboard_Click()
On Error GoTo Err_Open_Switchboard_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Switchboard"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Switchboard_Click:
    Exit Sub

Err_Open_Switchboard_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Switchboard_Click
    
End Sub
```

## Module: Forms_Open Module

```vb
Option Compare Database

Sub Open_Agreement_Lots_Form_From_Switchboard()
On Error GoTo open_agreement_lots_form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
    DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, "", "", , acNormal
        Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = True
        Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = True
open_agreement_lots_form_Exit:
    Exit Sub

open_agreement_lots_form_Err:
    MsgBox Error$
    Resume open_agreement_lots_form_Exit

End Sub

Sub Open_Agreements_Form_From_Switchboard()
On Error GoTo open_agreements_form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
    DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_AGREEMENTS", acNormal, , , , acWindowNormal

open_agreements_form_Exit:
    Exit Sub

open_agreements_form_Err:
    MsgBox Error$
    Resume open_agreements_form_Exit

End Sub
    
Sub Open_NMIS_TICKETS_charge_per_ticket1_Form_From_Switchboard()

On Error GoTo Open_NMIS_TICKETS_charge_per_ticket1_Form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_TICKETS_charge_per_ticket1", , , stLinkCriteria
    
Open_NMIS_TICKETS_charge_per_ticket1_Form_Exit:
    Exit Sub

Open_NMIS_TICKETS_charge_per_ticket1_Form_Err:
    MsgBox Error$
    Resume Open_NMIS_TICKETS_charge_per_ticket1_Form_Exit
    
End Sub
Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Err
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "XPLTN"
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Est_Counter = True
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_From_Switchboard_Exit
    
End Sub

Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Err
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "XPLTP"
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Trans_Cont_From_Switchboard_Exit
    
End Sub
Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Total_Containers_Grow_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "LOCCHG"
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_LOCCHG_From_Switchboard_Exit
    
End Sub
Sub Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard()

On Error GoTo Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Err
    
    DoCmd.OpenForm "NMIS_ID_LOCATIONS_FORM_Husky", , , stLinkCriteria
    Forms!NMIS_ID_LOCATIONS_FORM_Husky.Default_Activity_Code = "SOW"
    
Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Exit:
    Exit Sub

Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_NMIS_ID_LOCATIONS_FORM_Husky_for_Sow_From_Switchboard_Exit
    
End Sub
Sub Open_Propagule_Orders_New_Form_From_Switchboard()
On Error GoTo Open_Propagule_Orders_New_Form_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Transaction_Totals_Prop_Grow_Cont_At_Time_of_Order_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_PROCESSING_ORDERS_INPUT_Propagule", acNormal, "", "", , acNormal

Open_Propagule_Orders_New_Form_Exit:
    Exit Sub

Open_Propagule_Orders_New_Form_Err:
    MsgBox Error$
    Resume Open_Propagule_Orders_New_Form_Exit

End Sub
Sub Open_Product_Ship_ticket_Form_From_Switchboard()
On Error GoTo Open_Product_Ship_ticket_Form_From_Switchboard_Err

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
    DoCmd.OpenQuery "NMIS_Product_ship Ticket_multiple_orders_mt"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "NMIS_SHIPPING_TICKET subform", acNormal
    
Open_Product_Ship_ticket_Form_From_Switchboard_Exit:
    Exit Sub

Open_Product_Ship_ticket_Form_From_Switchboard_Err:
    MsgBox Error$
    Resume Open_Product_Ship_ticket_Form_From_Switchboard_Exit

End Sub
```

## Module: Global_Code

```vb
Option Compare Database

'Declare Function GetUserName Lib "advapi32.dll" _
    'Alias "GetUserNameA" ( _
        'ByVal lpBuffer As String, _
        'nSize As Long _
    ') As Long

Function CurrentUserName() As String
    'Dim sBuffer As String * 25, lReturn As Long
    'lReturn = GetUserName(sBuffer, 25)
    Dim wshNet As Object
    Set wshNet = CreateObject("WScript.Network")
    CurrentUserName = wshNet.username 'Left$(sBuffer, InStr(sBuffer, Chr(0)) - 1)
    'Forms!Switchboard!Current_User_Name = CurrentUserName
End Function

Sub GetCurrentUserName()
    Dim sUserName As String
    sUserName = CurrentUserName
    If Len(sUserName) Then
        Debug.Print "User Not Logged on."
    End If
    
End Sub

Function IsLoaded(ByVal strFormName As String) As Integer
 ' Returns True if the specified form is open in Form view or Datasheet view.
    
    Const conObjStateClosed = 0
    Const conDesignView = 0
    
    If SysCmd(acSysCmdGetObjectState, acForm, strFormName) <> conObjStateClosed Then
        If Forms(strFormName).CurrentView <> conDesignView Then
            IsLoaded = True
        End If
    End If
    
End Function

Function IsLoadedRpt(ByVal strReportName As String) As Integer
 ' Returns True if the specified Report is open in Form view or Datasheet view.
    
    Const conObjStateClosed = 0
    Const conDesignView = 0
    
    If SysCmd(acSysCmdGetObjectState, acReport, strReportName) <> conObjStateClosed Then
        If Forms(strReportName).CurrentView <> conDesignView Then
            IsLoadedRpt = True
        End If
    End If
    IsLoadedRpt = True
End Function

Function Update_Source_Performance()
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Nmis_Source_Performance_Update_AT"
    DoCmd.SetWarnings True
    
    MsgBox "Update Complete"
    
End Function
```

## Module: Property_Module_Form_Opening Module

```vb
Option Compare Database

Public Function Property_Module_Form_Open(Property_Module, ID_ACTIVITY_CN, AGREEMENT_LOT_CN, ORDER_CN, Ticket_ID)

    If Not IsNull(Property_Module) Then
    
        Select Case [Property_Module]
        
            Case Is = "@SOW"

                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
                DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
                DoCmd.SetWarnings True

                stLinkCriteria = "[CN]=" & "'" & [AGREEMENT_LOT_CN] & "'"
                DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , stLinkCriteria, , acNormal
                DoCmd.GoToControl "[ID]"
                
                Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
                
                Case Is = "@PROC"

                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_SOURCE_LastTestData_MT Query", acViewNormal, acEdit
                DoCmd.OpenQuery "Seed_Balance_MT Query", acViewNormal, acEdit
                DoCmd.SetWarnings True

                stLinkCriteria = "[CN]=" & "'" & [AGREEMENT_LOT_CN] & "'"
                DoCmd.OpenForm "NMIS_AGREEMENT_LOTS", acNormal, , stLinkCriteria, , acNormal
                DoCmd.GoToControl "[ID]"
                
                Forms![NMIS_AGREEMENT_LOTS]![Screen_For_Begin_FY].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Find_Lot].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Sort_By_Entry_Order].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].Form![Open_NMIS_Agreements Form].Visible = False
                Forms![NMIS_AGREEMENT_LOTS]![Green_Background_Box].Visible = False
                
            Case Is = "@Plant_Inventory"
                DoCmd.OpenForm "NMIS_PRODUCT_INVENTORIES2", acNormal, "", "", , acNormal
    
            Case Is = "PROC"
                If Not IsNull(Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_ACTIVITIES_subform].Form![ORDER_CN]) Then
                    DoCmd.OpenForm "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2", acNormal, , stLinkCriteria, , acNormal
                Else
                    MsgBox "Must have an ORDER NO. to view Properties with this activity"
                End If
            Case Is = "SHIP"
            
                DoCmd.SetWarnings False
                DoCmd.OpenQuery "NMIS_ORDER_LOT_BALANCES MT query"
                DoCmd.OpenQuery "NMIS_Product_ship Ticket_multiple_orders_mt"
                DoCmd.SetWarnings True
                
                stLinkCriteria = "[cn]=" & "'" & [Ticket_ID] & "'"
                If Not IsNull(Ticket_ID) Then
                    DoCmd.OpenForm "NMIS_SHIPPING_TICKET subform", acNormal, , stLinkCriteria, , acNormal
                    DoCmd.Requery
                Else
                    MsgBox "Must have a Ticket ID Entered"
                End If
            Case Is = "@SOURCE"
                
                If Not IsNull(Ticket_ID) Then
                    DoCmd.OpenForm "NMIS_SOURCE_LOTS", acNormal, , stLinkCriteria, , acNormal
                    Forms![NMIS_SOURCE_LOTS]![Selected_Source_ID] = Forms![NMIS_ID_ACTIVITY_TRANSACTIONS_FORM]![NMIS_ID_ACTIVITIES_Parent_and_Properties_Module_Subform].Form![SOURCE_LOT_CN]
                    DoCmd.Requery
                    
                Else
                    MsgBox "Must have a Ticket ID Entered"
                End If
            Case Else
                MsgBox "No Properties module with this activity"
                
        End Select
        
    End If
End Function
```

## Module: Report_Agreement_Lot_Destroy_Checklist

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Destroy_Checklist_Subreport_MT"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Agreement_Lot_Higrade_Checklist

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Higrade_Checklist_Subreport_MT"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Annual_Report_Plant_Inventory_Detailed_Summary report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_Annual_Report_Plant_Inventory_Summary report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_Annual_Report_Plant_Inventory_Summary_by_class_species report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_AGREEMENTS_Holdover_Report

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
    
    DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.OpenQuery "Transaction_Totals_By_Location_and_amt_per_unit_Grow_by_sublot2"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_NMIS_AGREEMENTS_Holdover_Report_by_product

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
    
    DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.OpenQuery "Transaction_Totals_By_Location_and_amt_per_unit_Grow_by_sublot2"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_NMIS_AGREEMENT_LOT_VS_AGEEMENT_totals_check

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
    
    DoCmd.SetWarnings False
    'DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.OpenQuery "Transaction_Totals_By_Location_and_amt_per_unit_Grow_by_sublot2"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Associate_Mail_Label_Input"
    
End Sub

Private Sub Report_Open(Cancel As Integer)

    'DoCmd.OpenForm "Associate_Input"
        'If Not IsLoaded("Associate_Input") Then
       'Cancel = True
    'End If
    
    DoCmd.OpenForm "Associate_Mail_Label_Input", , , , , acDialog, "Enter a Client Code"
    
    If Not IsLoaded("Associate_Mail_Label_Input") Then
        Cancel = True
    End If
End Sub
```

## Module: Report_NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Associate_Mail_Label_Input_shipping"
    
End Sub

Private Sub Report_Open(Cancel As Integer)

    'DoCmd.OpenForm "Associate_Input"
        'If Not IsLoaded("Associate_Input") Then
       'Cancel = True
    'End If
    
    DoCmd.OpenForm "Associate_Mail_Label_Input_shipping", , , , , acDialog, "Enter a Client Code"
    
    If Not IsLoaded("Associate_Mail_Label_Input_shipping") Then
        Cancel = True
    End If
End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_AgeClass_Species_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Checklist

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Checklist_w_Contacts2

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Client_Summary_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, "Client Billings by Project"
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_No_Subtotals_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Report2

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Report2Sum

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Species_AgeClass_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)
 
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, ""
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_Summary_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog, "Client Billings by Project"
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_byAgeClassLongSumByParent_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate2_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wDate_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_Loc

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Detailed_wclient_contact

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_PRODUCT_INVENTORY_LOCATION_MT"
    DoCmd.SetWarnings True
    
    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Long_Summary_Report2

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_Age_Class_Summary_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog  'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_INVENTORY_by_end_fy_Summary_Report

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit2

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Charges_by_Category_Unit_Lot

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Charges_by_Unit

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Charges_by_Unit_Category

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Charges_by_Unit_Category_Lot

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Container_Income_from_Bareroot_by_lot

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Income

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Income2

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Income_by_lot

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_NMIS_PRODUCT_Projected_Income_by_lot2

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "BeginFY_EndFY_Associate_Species_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "BeginFY_EndFY_Associate_Species_Input", , , , , acDialog 'acHidden
    If Not IsLoaded("BeginFY_EndFY_Associate_Species_Input") Then
        Cancel = True
    End If

End Sub
```

## Module: Report_ORDER_STATUS

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Order_Status_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    
    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "Order_Status_Input", , , , , acDialog, ""
    If Not IsLoaded("Order_Status_Input") Then
        Cancel = True
    End If
    
End Sub
```

## Module: Report_ORDER_STATUS_DETAILED

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Order_Status_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    
    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "Order_Status_Input", , , , , acDialog, ""
    If Not IsLoaded("Order_Status_Input") Then
        Cancel = True
    End If
    
End Sub
```

## Module: Report_ORDER_STATUS_Packed

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Order_Status_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    
    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "Order_Status_Input", , , , , acDialog, ""
    If Not IsLoaded("Order_Status_Input") Then
        Cancel = True
    End If
    
End Sub
```

## Module: Report_ORDER_STATUS_Packed_Shortage

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "Order_Status_Input"

End Sub

Private Sub Report_NoData(Cancel As Integer)

    
    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "Order_Status_Input", , , , , acDialog, ""
    If Not IsLoaded("Order_Status_Input") Then
        Cancel = True
    End If
    
End Sub
```

## Module: Report_PROCESS_PAYMENT

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

        DoCmd.Close acReport, "Processing_Contract_Processed_not_in_pmt_temp"

End Sub
```

## Module: Report_PROCESS_PAYMENT_INCREMENTAL

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

        DoCmd.Close acReport, "Processing_Contract_Processed_not_in_pmt_temp"

End Sub
```

## Module: Report_PROCESS_PAYMENT_w_Incremental

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

        DoCmd.Close acReport, "Processing_Contract_Processed_not_in_pmt_temp"

End Sub
```

## Module: Report_PROOF_ALL

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
On Error GoTo Err_Report_Open

    Dim stDocName As String

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"

    DoCmd.SetWarnings True
    
Exit_Report_Open:
    Exit Sub

Err_Report_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Report_Open

End Sub
```

## Module: Report_PROOF_ALL_From_Billing_Form

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)
On Error GoTo Err_Report_Open

    Dim stDocName As String

    '  turns warning (about to update/delete...) off
    DoCmd.SetWarnings False
    
    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    
    DoCmd.OpenQuery "PROOF_ALL_AGR Query"
    DoCmd.OpenQuery "PROOF_ALL Query"
    DoCmd.OpenQuery "PROOF_ALL_LFT Query"
    'DoCmd.OpenQuery "PROOF_ALL_CPR Query"
    DoCmd.OpenQuery "PROOF_ALL_ORD Query"
    DoCmd.OpenQuery "PROOF_ALL_SOW Query"
    DoCmd.OpenQuery "PROOF_ALL_LCT Query"
    DoCmd.OpenQuery "PROOF_ALL_PC Query"

    DoCmd.SetWarnings True
    
Exit_Report_Open:
    Exit Sub

Err_Report_Open:
    MsgBox Err.DESCRIPTION
    Resume Exit_Report_Open

End Sub
```

## Module: Report_Plant_Inventory_Worksheet

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT2"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Plant_Inventory_Worksheet_w_matrix

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT2"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Plant_Inventory_matrix

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT2"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Processing_Contract_No_Quality_Samples

```vb
Option Compare Database


Private Sub Report_Close()
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            MsgBox "Processing Complete. Click on any button for a report"
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
End Sub
```

## Module: Report_Processing_Contract_No_Quality_Samples_no_data

```vb
Option Compare Database


Private Sub Report_Close()
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            MsgBox "Processing Complete. Click on any button for a report"
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
End Sub

Private Sub Report_NoData(Cancel As Integer)

    Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
    MsgBox "No Orders without Quality. Processing Complete. Click on any button for a report"
    
End Sub
```

## Module: Report_Processing_Contract_Processed_not_in_pmt_temp

```vb
Option Compare Database


Private Sub Report_Close()
    
    If Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = False Then
        Response = MsgBox("Is The Data OK?", vbYesNo)
        If Response = vbYes Then
            'Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
            DoCmd.OpenReport "Processing_Contract_No_Quality_Samples", acViewPreview
        Else
            MsgBox "Correct the Data and try again"
            Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Data Processed] = False
        End If
    End If
    
End Sub

Private Sub Report_NoData(Cancel As Integer)

        'Forms![PROCESS_PAYMENT_ESTIMATE_INVOICE]![Pack_Data_OK] = True
        DoCmd.OpenReport "Processing_Contract_No_Quality_Samples_no_data", acViewPreview
        
End Sub
```

## Module: Report_Product_Storage_Detailed_Summary

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PRODUCT_STORAGE_SUMMARY_SUBREPORT_MT"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Product_Storage_Detailed_Summary_with_notes

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PRODUCT_STORAGE_SUMMARY_SUBREPORT_MT"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Product_Storage_Lot_Index

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "PRODUCT_STORAGE_SUMMARY_SUBREPORT_MT"
    DoCmd.SetWarnings True
    
End Sub
```

## Module: Report_Seed_Bank_Work_Order_Checklist

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    If Forms![Source_Material_Work_List]![Hide Withdrawn Lots] = False Then
        ACTIVITY_UNITS.Visible = True
    Else
        ACTIVITY_UNITS.Visible = False
    End If
    
End Sub
```

## Module: Report_Seed_Bank_Work_Order_list

```vb
Option Compare Database

Private Sub Report_Open(Cancel As Integer)

    If Forms![Source_Material_Work_List]![Hide Withdrawn Lots] = False Then
        ACTIVITY_UNITS.Visible = True
    Else
        ACTIVITY_UNITS.Visible = False
    End If
    
End Sub
```

## Module: Rollover_Charges_module

```vb
Option Compare Database

'------------------------------------------------------------
' Rollover Charges, prices and MGMT Codes
'
'------------------------------------------------------------
Function Rollover_Product_Charges()
On Error GoTo Rollover_Product_Charges_Err

    DoCmd.OpenForm "NMIS_PRODUCT_CHARGES_ROLL_OVER"
    Forms![NMIS_PRODUCT_CHARGES_ROLL_OVER].Visible = False
    If Forms![NMIS_PRODUCT_CHARGES_ROLL_OVER]![Product_Charges_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Rollover_Product_Charges", acViewNormal, acEdit
        DoCmd.OpenQuery "Rollover_PRODUCT_MGMT_CODES", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Product Charge Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Product Charges have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_PRODUCT_CHARGES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Product_Charges_Exit:
    Exit Function

Rollover_Product_Charges_Err:
    MsgBox Error$
    Resume Rollover_Product_Charges_Exit

End Function

Function Rollover_Activity_Charges()
On Error GoTo Rollover_Activity_Charges_Err

    DoCmd.OpenForm "NMIS_ACTIVITY_CHARGES_ROLL_OVER"
    Forms![NMIS_ACTIVITY_CHARGES_ROLL_OVER].Visible = False
    If Forms![NMIS_ACTIVITY_CHARGES_ROLL_OVER]![Activity_Charges_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_ACTIVITY_CHARGES_Rollover", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Activity Charge Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Activity Charges have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_ACTIVITY_CHARGES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Activity_Charges_Exit:
    Exit Function

Rollover_Activity_Charges_Err:
    MsgBox Error$
    Resume Rollover_Activity_Charges_Exit

End Function
Function Rollover_Source_Prices()
On Error GoTo Rollover_Source_Prices_Err

    DoCmd.OpenForm "NMIS_SOURCE_PRICES_ROLL_OVER"
    Forms![NMIS_SOURCE_PRICES_ROLL_OVER].Visible = False
    If Forms![NMIS_SOURCE_PRICES_ROLL_OVER]![NMIS_SOURCE_PRICES_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SOURCE_PRICE_RATES_BASE_Rollover", acViewNormal, acEdit
        DoCmd.OpenQuery "NMIS_SOURCE_PRICE_RATES_Rollover", acViewNormal, acEdit
        DoCmd.OpenQuery "NMIS_SOURCE_PRICE_LINKS_Rollover", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Source Price Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Source Prices have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_SOURCE_PRICES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Source_Prices_Exit:
    Exit Function

Rollover_Source_Prices_Err:
    MsgBox Error$
    Resume Rollover_Source_Prices_Exit

End Function

Function Rollover_Source_Processing_Prices()
On Error GoTo Rollover_Source_Processing_Prices_Err

    DoCmd.OpenForm "NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER"
    Forms![NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER].Visible = False
    If Forms![NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER]![NMIS_SOURCE_PROCESSING_PRICES_Current] = "NO" Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "NMIS_SOURCE_PROCESSING_RATES_Rollover", acViewNormal, acEdit
        DoCmd.OpenQuery "NMIS_SOURCE_PROCESSING_LINKS_Rollover", acViewNormal, acEdit
        DoCmd.SetWarnings True
        MsgBox "Source Processing Prices Rollover Complete", vbInformation, ""
    Else
        Beep
        MsgBox "It appears that the Source Processing Prices have already been Rolled Over", vbCritical
    End If
    Forms![NMIS_SOURCE_PROCESSING_PRICES_ROLL_OVER].Visible = True
    DoCmd.Close
Rollover_Source_Processing_Prices_Exit:
    Exit Function

Rollover_Source_Processing_Prices_Err:
    MsgBox Error$
    Resume Rollover_Source_Processing_Prices_Exit

End Function
```

## Module: Set_CN

```vb
Option Compare Database

'------------------------------------------------------------
' Set_CN
'
'------------------------------------------------------------
Function Set_CN()
On Error GoTo Set_CN_Err

    With CodeContextObject
        ' Sets the CN on the calling form to the INDEX on the calling form + User_Nursery_Code from the NMIS_ACCESS_SET_USER_NURSERY subform on the switchboard
        .CN = .Index & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code
    End With


Set_CN_Exit:
    Exit Function

Set_CN_Err:
    MsgBox Error$
    Resume Set_CN_Exit

End Function
```

## Module: Yearly_Rollover

```vb
Option Compare Database

'------------------------------------------------------------
' Yearly Rollover
'
'------------------------------------------------------------
Function Yearly_Rollover()
On Error GoTo Yearly_Rollover_Err

    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    MsgBox "here"
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    'DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    'DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit


Yearly_Rollover_Exit:
    Exit Function

Yearly_Rollover_Err:
    MsgBox Error$
    Resume Yearly_Rollover_Exit

End Function
```
