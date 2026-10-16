# Form: Reports_Menu_Maintenance Subform

**Caption:** Reports_Menu_Maintenance Subform  
**Record source:**

```sql
NMIS_FISCAL_YEARS
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Embedded in:** `Form:REPORTS Form`  
**Opens:** `Form:ASSOCIATE_LIST`, `Form:E-MAIL_LIST_FOR_SURPLUS`, `Form:Field_Location_Max_Index_Checklist`, `Form:Labels MAIL_LABELS_BY_ASSOC`, `Form:Labels MAIL_LABELS_BY_GROUP`, `Form:Labels MAIL_LABELS_BY_GROUP_w`, `Form:NMIS_ACTIVITY_CODES_CHECKLIST`, `Form:NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST`, `Form:NMIS_ASSOCIATES_AND_PHONE_CHECKLIST`, `Form:NMIS_ASSOCIATES_AND_PHONE_SPD`, `Form:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST`, `Form:NMIS_ASSOC_LIST_SURPLUS`, `Form:NMIS_CONTACT_AND_PHONE_CHECKLIST`, `Form:NMIS_Containers_type_Grow_Checklist`, `Form:NMIS_Containers_type_Store_Checklist`, `Form:NMIS_OYJORD_Settings_Checklist`, `Form:NMIS_OYJORD_Settings_Field_Checklist`, `Form:NMIS_PRODUCTS_CHECKLIST_current`, `Form:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist`, `Form:NMIS_SPECIES_CHECKLIST`, `Form:NMIS_SPECIES_CHECKLIST2`, `Form:NMIS_SPECIES_CHECKLIST_Not_Hidden`, `Form:NMIS_SPECIES_Prices`, `Form:NMIS_Units_Checklist`, `Form:Products_Price_Reports`, `Form:Species_Products_Reports`, `Form:nmis_species_vs_nrcs_plantlist`, `Form:nmis_species_vs_nrcs_plantlist_by_group`, `Form:xPlease_Be_Patient_Message`, `Report:ASSOCIATE_LIST`, `Report:E-MAIL_LIST_FOR_SURPLUS`, `Report:Field_Location_Max_Index_Checklist`, `Report:Labels MAIL_LABELS_BY_ASSOC`, `Report:Labels MAIL_LABELS_BY_GROUP`, `Report:Labels MAIL_LABELS_BY_GROUP_w`, `Report:NMIS_ACTIVITY_CODES_CHECKLIST`, `Report:NMIS_ASSOCIATES99_AND_PHONE_CHECKLIST`, `Report:NMIS_ASSOCIATES_AND_PHONE_CHECKLIST`, `Report:NMIS_ASSOCIATES_AND_PHONE_SPD`, `Report:NMIS_ASSOCIATES_AND_PHONE_W_CURRENT_ORDERS_CHECKLIST`, `Report:NMIS_ASSOC_LIST_SURPLUS`, `Report:NMIS_CONTACT_AND_PHONE_CHECKLIST`, `Report:NMIS_Containers_type_Grow_Checklist`, `Report:NMIS_Containers_type_Store_Checklist`, `Report:NMIS_OYJORD_Settings_Checklist`, `Report:NMIS_OYJORD_Settings_Field_Checklist`, `Report:NMIS_PRODUCTS_CHECKLIST_current`, `Report:NMIS_PRODUCT_INVENTORY_INGROWTH_PCTs_Checklist`, `Report:NMIS_SPECIES_CHECKLIST`, `Report:NMIS_SPECIES_CHECKLIST2`, `Report:NMIS_SPECIES_CHECKLIST_Not_Hidden`, `Report:NMIS_SPECIES_Prices`, `Report:NMIS_Units_Checklist`, `Report:Products_Price_Reports`, `Report:Species_Products_Reports`, `Report:nmis_species_vs_nrcs_plantlist`, `Report:nmis_species_vs_nrcs_plantlist_by_group`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl2 |  |  |  |  | 0.16, 0.08, 8.47, 5.39 |
| Page | Lookup Tab | Lookup Tables |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | Species_Products_Checklist | Species Products Reports... |  |  | Click | 0.26, 2.09, 2.00, 0.00 |
| CommandButton | Species_Checklist | All Species Checklist |  |  | Click | 0.26, 0.46, 2.00, 0.00 |
| CommandButton | NMIS_Products | Products- Current |  |  | Click | 0.26, 1.55, 2.00, 0.00 |
| CommandButton | Activity_Code_Checklist | Activity Code Checklist... |  |  | Click | 0.26, 2.36, 2.00, 0.00 |
| CommandButton | Associate_Contact_Phone_Checklist | Gov. Assoc. with Contacts... |  |  | Click | 2.32, 0.46, 2.00, 0.00 |
| CommandButton | Associate99_Contact_Phone_Checklist | 99 Assoc. Contacts, Phone #'s |  |  | Click | 2.32, 1.55, 2.00, 0.00 |
| CommandButton | Units_Checklist | Units Checklist |  |  | Click | 0.26, 2.63, 2.00, 0.00 |
| CommandButton | Grow_Containers_Checklist | Grow Containers Checklist |  |  | Click | 0.26, 2.91, 2.00, 0.00 |
| CommandButton | Contacts_for_Current_fys_orders | Contacts for Current FY's Orders |  |  | Click | 2.32, 1.28, 2.00, 0.00 |
| CommandButton | Field_Location_Max_Index_Checklist | Field Loc Max Index Checklist... |  |  | Click | 0.26, 3.45, 2.00, 0.00 |
| CommandButton | Species_Checklist_Not_Hidden | Show Species Checklist |  |  | Click | 0.26, 1.01, 2.00, 0.00 |
| CommandButton | Ingrowth_Pcts_Checklist | Inv Ingowth Percents Checklist |  |  | Click | 0.26, 3.72, 1.99, 0.28 |
| CommandButton | Oyjord_Calibration_Checklist | Oyjord Calibration Checklist |  |  | Click | 0.26, 4.02, 1.99, 0.28 |
| CommandButton | Store_Containers_Checklist | Storage Containers Checklist |  |  | Click | 0.26, 3.18, 2.00, 0.00 |
| CommandButton | Products_Price_Reports | Product Charges Reports... |  |  | Click | 0.26, 1.82, 2.00, 0.00 |
| CommandButton | Contact_Associate_Phone_Checklist | Gov. Contacts and Associates... |  |  | Click | 2.32, 1.01, 2.00, 0.00 |
| CommandButton | Oyjord_Calibration_Field_Checklist | Oyjord Calibration Field Checklist |  |  | Click | 0.26, 4.32, 1.99, 0.28 |
| CommandButton | Seed_Price_Checklist | Seed Price Checklist |  |  | Click | 0.26, 1.28, 2.00, 0.00 |
| CommandButton | Associate_Contact_Phone_SPDt | Gov. Assoc. with Contacts SPD... |  |  | Click | 2.32, 0.73, 2.00, 0.00 |
| CommandButton | Species_Checklist2 | All Species Checklist2 |  |  | Click | 0.26, 0.73, 2.00, 0.00 |
| Page | Labels Tab | Labels |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | LAB_LIKE_ASSOC | Labels by Client Associate |  |  | Click | 0.27, 0.46, 2.00, 0.00 |
| CommandButton | LAB_GRP_NAME | Labels by Group Name |  |  | Click | 0.27, 0.73, 2.00, 0.00 |
| CommandButton | LAB_GRP_NAME_W | Labels by Group Name with # |  |  | Click | 0.27, 1.00, 2.00, 0.00 |
| Page | Misc | Misc |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | NMIS_SPECIES_vs_NRCS | NMIS Species vs. NRCS List  |  |  | Click | 0.28, 0.46, 2.00, 0.00 |
| CommandButton | CmdSplusPhnLst | Surplus Clients' Phone List |  |  | Click | 2.32, 0.46, 2.00, 0.00 |
| CommandButton | NMIS_SPECIES_vs_NRCS_by_group | NMIS Species vs. NRCS by Group |  |  | Click | 0.28, 0.73, 2.00, 0.28 |
| CommandButton | CmdAssocList | Surplus/Donation List by Group |  |  | Click | 2.32, 1.03, 2.00, 0.28 |
| CommandButton | CmdEmailSrplus | e-mail List for Surplus Clients |  |  | Click | 2.32, 0.72, 2.00, 0.28 |

## Code-behind (VBA)

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
