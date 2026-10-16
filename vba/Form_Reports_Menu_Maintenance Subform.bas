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