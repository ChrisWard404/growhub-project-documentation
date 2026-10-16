# Form: NMIS_PROCESSING_ORDERS_INPUT_Propagule

**Caption:** NMIS PROCESSING ORDERS INPUT - Progagule  
**Record source:**

```sql
SELECT NMIS_ORDERS.* FROM (NMIS_ORDERS INNER JOIN Agreement_lot_End_Product_Group ON NMIS_ORDERS.AGREEMENT_LOT_CN = Agreement_lot_End_Product_Group.CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN WHERE (((Agreement_lot_End_Product_Group.PRODUCT_GROUP)="propagule")) ORDER BY NMIS_ORDERS.Index;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform`, `Form.NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform`, `Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform`, `Form.*propagule_Grow_Containers_for_Orders_table subform`  
**Opens:** `Form:NMIS_CONTACTS`, `Report:Close_Form`, `Report:ORDER_FORM`, `Report:PRODUCT_STORAGE_RECORD`  
**Opened from (VBA):** `Forms_Open Module`  
**Form events with code:** AfterInsert, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ORDER_ENTRY_Label | New Processing Order Entry - Propagule |  |  |  | 2.59, 0.08, 3.98, 0.29 |
| CommandButton | cmdExit | Exit |  |  | Click | 8.01, 0.04, 0.00, 0.00 |
| CommandButton | CmdAddRec | Add Record |  |  | Click | 8.01, 0.33, 0.00, 0.00 |
| TextBox | Default_Client_Associate |  |  |  |  | 0.42, 0.21, 0.62, 0.00 |
| Label | Label170 | Default_Client_Associate |  |  |  | 0.04, 0.04, 1.26, 0.17 |
| Rectangle | Box171 |  |  |  |  | 0.00, 0.00, 1.38, 0.42 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 0.45, 1.10, 3.12, 0.18 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIATE],2)="99","990000",[Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIATE]))) OR (((NMIS_CONTACTS.CN)="1")) GROUP BY NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"); |  | 1.32, 1.35, 2.25, 0.18 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIATE],2)="99","990000",[Forms]![NMIS_PROCESSING_ORDERS_INPUT_Propagule].[Form]![CLIENT_ASSOCIATE]))); | DblClick, Enter | 1.32, 1.60, 2.25, 0.18 |
| TextBox | DESIRED_DATE | Desired Date | DESIRED_DATE |  |  | 4.78, 1.60, 0.75, 0.18 |
| TextBox | DESTINATION_ASSOCIATE | Destination | DESTINATION_ASSOCIATE |  |  | 4.79, 1.35, 0.75, 0.18 |
| TextBox | CLIENT_NOTE | Client Comments | CLIENT_NOTE |  |  | 0.93, 2.11, 3.48, 0.46 |
| TextBox | NURSERY_NOTE | Nursery Comments | NURSERY_NOTE |  |  | 5.33, 2.12, 3.48, 0.46 |
| Rectangle | Box108 |  |  |  |  | 0.36, 1.02, 3.29, 0.83 |
| Rectangle | Box109 |  |  |  |  | 3.78, 1.02, 1.83, 0.83 |
| Label | Shipping_Label | Shipping |  |  |  | 3.86, 1.09, 1.68, 0.18 |
| Rectangle | Box28 |  |  |  |  | 0.08, 2.02, 8.88, 0.65 |
| ComboBox | ACTIVITY_CODE | Activity Code: | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 1.46, 0.70, 0.79, 0.21 |
| ComboBox | AGREEMENT_LOT_CN | Nursery ID: | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_CONTACTS.CONTACT_NAME_UPPER, IIf(IsNull([NMIS_ORDERS].[CN]),"No Order","Order") AS [Has Order] FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_ORDERS RIGHT JOIN ((NMIS_AGREEMENTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN) ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((NMIS_PRODUCT_TYPES.PRODUCT_GROUP)="propagule")) ORDER BY NMIS_AGREEMENT_LOTS.ID, IIf(IsNull([NMIS_ORDERS].[CN]),"No Order","Order"), NMIS_AGREEMENT_LOTS.BEGIN_FY DESC; | Enter | 1.20, 0.07, 1.50, 0.21 |
| ComboBox | CLIENT_ASSOCIATE | Associate: | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | Exit | 1.20, 0.34, 0.80, 0.21 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 7.50, 0.21, 0.71, 0.21 |
| TextBox | CN |  | CN |  |  | 4.53, 0.30, 0.50, 0.20 |
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 5.46, 0.29, 0.79, 0.20 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 6.42, 0.29, 0.62, 0.21 |
| CheckBox | PROCESSING_ORDER |  | PROCESSING_ORDER |  |  | 8.42, 0.38, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 3.36, 0.05, 0.50, 0.00 |
| TextBox | Agreement_Lot_CN_for_Lot_Info |  |  |  |  | 2.11, 0.34, 0.00, 0.20 |
| TextBox | Text626 |  | =IIf(Not IsNull([CN]),"Order ID: " & Left$([CN],Len([CN])-7),Null) |  |  | 2.99, 0.07, 1.08, 0.21 |
| TextBox | ORDER_AMT | Bed Feet to Harvest: | ORDER_AMT |  | Enter | 3.96, 0.70, 0.79, 0.21 |
| Subform | NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform |  | Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform (master: CN → child: ORDER_CN) |  |  | 6.42, 2.74, 2.58, 2.46 |
| Subform | NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform |  | Form.NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform (master: CN → child: ORDER_CN) |  |  | 3.74, 2.74, 2.56, 2.46 |
| Subform | NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform |  | Form.NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform (master: CN → child: ORDER_CN) |  |  | 0.08, 2.74, 3.56, 2.47 |
| TextBox | OVERRUN_AMT | Bed Feet for Startup Charge: | OVERRUN_AMT |  |  | 7.04, 0.70, 0.79, 0.21 |
| TextBox | Combo638 | Fiscal Year: | FISCAL_YEAR |  |  | 5.21, 0.07, 0.54, 0.21 |
| Subform | *propagule_Grow_Containers_for_Orders_table subform |  | Form.*propagule_Grow_Containers_for_Orders_table subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 6.12, 0.05, 1.83, 0.27 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 0.75, 0.12, 0.42, 0.20 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 1.92, 0.12, 0.42, 0.20 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 3.08, 0.11, 0.42, 0.20 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 0.17, 0.04, 0.42, 0.33 |
| Label | INSERTED_DATE_Label | Inserted Date |  |  |  | 1.33, 0.04, 0.42, 0.33 |
| Label | INSERTED_INSTANCE_Label | Inserted Instance |  |  |  | 2.50, 0.04, 0.42, 0.33 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub AGREEMENT_LOT_CN_Enter()

    AGREEMENT_LOT_CN.Requery
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    If Not IsNull(CLIENT_ASSOCIATE) Then
        Default_Client_Associate = CLIENT_ASSOCIATE
        DESTINATION_ASSOCIATE = CLIENT_ASSOCIATE
        CONTACT_CN.Requery
        SECONDARY_CONTACT_CN.Requery
    End If
    
End Sub

Private Sub cmdExit_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    DoCmd.RunMacro stDocName

End Sub




Private Sub PrvwOrdrFrm_Click()
On Error GoTo Err_PrvwOrdrFrm_Click

    Dim stDocName As String
    
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
 
    stDocName = "ORDER_FORM"
    DoCmd.OpenReport stDocName, acPreview

Exit_PrvwOrdrFrm_Click:
    Exit Sub

Err_PrvwOrdrFrm_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwOrdrFrm_Click
    
End Sub

Private Sub PrvwStrgRcrd_Click()
On Error GoTo Err_PrvwStrgRcrd_Click

    Dim stDocName As String

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
    
    stDocName = "PRODUCT_STORAGE_RECORD"
    DoCmd.OpenReport stDocName, acPreview

Exit_PrvwStrgRcrd_Click:
    Exit Sub

Err_PrvwStrgRcrd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwStrgRcrd_Click
    
End Sub
Private Sub CmdAddRec_Click()
On Error GoTo Err_CmdAddRec_Click

    [Agreement_Lot_CN_for_Lot_Info] = Null
    DoCmd.GoToRecord , , acNewRec

Exit_CmdAddRec_Click:
    Exit Sub

Err_CmdAddRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAddRec_Click
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
On Error GoTo Err_CONTACT_CN_DblClick

    DoCmd.OpenForm "NMIS_CONTACTS"

Exit_CONTACT_CN_DblClick:
    Exit Sub

Err_CONTACT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_CONTACT_CN_DblClick
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Form_AfterInsert()
'[NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Form![ACTIVITY_CODE]
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
        [NMIS_PROCESSING_ORDERS_Propagule_INPUT_MC subform].Requery
        
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Form![Activity_Code] = "FAHVP"
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_SVCS subform].Requery
    'End If
        
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Form![GRADE_PCT] = 100
        [NMIS_PROCESSING_ORDERs_Propagule_INPUT_GRADES subform].Requery
    'End If
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub ORDER_AMT_Enter()

    If IsNull(ORDER_AMT) Then
        ORDER_AMT = Nz([*propagule_Grow_Containers_for_Orders_table subform].Form![SumOfSum_of_Activity_Units], 0)
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
On Error GoTo Err_SECONDARY_CONTACT_CN_DblClick

    DoCmd.OpenForm "NMIS_CONTACTS"

Exit_SECONDARY_CONTACT_CN_DblClick:
    Exit Sub

Err_SECONDARY_CONTACT_CN_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_SECONDARY_CONTACT_CN_DblClick
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()

    SECONDARY_CONTACT_CN.Requery
    
End Sub
```
