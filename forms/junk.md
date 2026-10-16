# Form: junk

**Caption:** NMIS_PROCESSING_ORDERS_INPUT  
**Record source:**

```sql
NMIS_ORDERS
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_CONTRACT_ITEMS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERs_INPUT_SVCS subform`, `Form.NMIS_PROCESSING_ORDERs_INPUT_GRADES subform`, `Form.NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform`, `Form.NMIS_PROCESSING_ORDERS_INPUT_MC subform`  
**Opens:** `Report:ORDER_FORM_FROM_ORDERS`, `Report:PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM`  
**Form events with code:** AfterInsert  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ORDER_ENTRY_Label | New Processing Order Entry |  |  |  | 3.58, 0.25, 1.69, 0.19 |
| CommandButton | cmdExit | Exit |  |  | Click | 8.71, 0.04, 0.00, 0.00 |
| CommandButton | CmdAddRec | Add Record |  |  | Click | 8.71, 0.33, 0.00, 0.00 |
| TextBox | Default_Client_Associate |  |  |  |  | 7.35, 0.23, 0.62, 0.19 |
| Label | Label170 | Default_Client_Associate |  |  |  | 6.95, 0.06, 1.49, 0.19 |
| Rectangle | Box171 |  |  |  |  | 6.92, 0.04, 1.38, 0.75 |
| ComboBox | Default_Order_Activity_Code | Default Order Act Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 2.47, 0.04, 0.66, 0.19 |
| ComboBox | Default_Special_Service_Activity_Code | Default Special Service Act Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 2.47, 0.28, 0.66, 0.19 |
| TextBox | Default_Job_Code | Default Job Code: |  |  |  | 2.47, 0.52, 0.66, 0.19 |
| TextBox | Default_Contact_CN |  |  |  |  | 7.34, 0.58, 0.62, 0.19 |
| Label | Default_Contact_CN_Label | Default_Contact |  |  |  | 7.19, 0.40, 0.96, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 2.67, 1.74, 1.18, 0.19 |
| TextBox | ORDER_AMT |   Amount | ORDER_AMT |  | DblClick, Exit | 1.12, 1.32, 0.49, 0.19 |
| TextBox | OVERRUN_AMT | O'run Amt | OVERRUN_AMT |  |  | 1.75, 1.32, 0.46, 0.19 |
| CheckBox | OVERRUN_ALL_Check |  | OVERRUN_ALL |  |  | 2.54, 1.35, 0.00, 0.00 |
| TextBox | SPEC_MIN | Min | SPEC_MIN |  |  | 0.30, 2.28, 0.38, 0.19 |
| TextBox | SPEC_MAX | Max | SPEC_MAX |  |  | 0.81, 2.28, 0.37, 0.19 |
| TextBox | CALIPER_MIN | Caliper | CALIPER_MIN |  |  | 1.31, 2.28, 0.44, 0.19 |
| TextBox | ROOT_PRUNE_TARGET | Prune Target | ROOT_PRUNE_TARGET |  |  | 1.89, 2.28, 0.42, 0.19 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN=NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left(Forms!NMIS_PROCESSING_ORDERS_INPUT.Form!CLIENT_ASSOCIATE,2)="99","990000",Forms!NMIS_PROCESSING_ORDERS_INPUT.Form!CLIENT_ASSOCIATE))) Or (((NMIS_CONTACTS.CN)="1")) GROUP BY NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER;  | AfterUpdate | 3.54, 1.99, 1.88, 0.19 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN=NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left(Forms!NMIS_PROCESSING_ORDERS_INPUT.Form!CLIENT_ASSOCIATE,2)="99","990000",Forms!NMIS_PROCESSING_ORDERS_INPUT.Form!CLIENT_ASSOCIATE)));  |  | 3.54, 2.24, 1.88, 0.19 |
| TextBox | DESIRED_DATE | Desired Date | DESIRED_DATE |  |  | 7.00, 2.24, 0.62, 0.19 |
| TextBox | DESTINATION_ASSOCIATE | Destination | DESTINATION_ASSOCIATE |  |  | 7.01, 1.99, 0.62, 0.19 |
| TextBox | CLIENT_NOTE | Client Comments | CLIENT_NOTE |  |  | 1.04, 2.62, 3.23, 0.48 |
| TextBox | NURSERY_NOTE | Nursery Comments | NURSERY_NOTE |  |  | 5.75, 2.62, 3.23, 0.48 |
| Label | ORDER_SPECIFICATIONS_Label | Order Specifications |  |  |  | 0.30, 1.70, 1.23, 0.19 |
| Label | HEIGHT_Label | Height |  |  |  | 0.30, 1.90, 0.43, 0.19 |
| Rectangle | Box107 |  |  |  |  | 0.21, 1.66, 2.25, 0.88 |
| Rectangle | Box108 |  |  |  |  | 2.58, 1.66, 3.29, 0.83 |
| Rectangle | Box109 |  |  |  |  | 6.00, 1.66, 1.83, 0.83 |
| Label | Shipping_Label | Shipping |  |  |  | 6.08, 1.73, 0.56, 0.19 |
| Rectangle | Box28 |  |  |  |  | 0.21, 2.58, 9.50, 0.54 |
| ComboBox | ACTIVITY_CODE | Activity Code | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 0.28, 1.31, 0.66, 0.19 |
| ComboBox | AGREEMENT_LOT_CN | Nursery ID: | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS WHERE (((NMIS_AGREEMENT_LOTS.END_FY)>=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_AGREEMENT_LOTS.ID; |  | 0.96, 0.06, 1.25, 0.19 |
| ComboBox | CLIENT_ASSOCIATE | Associate: | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | Exit | 0.96, 0.33, 0.67, 0.19 |
| Subform | NMIS_PROCESSING_ORDERs_INPUT_SVCS subform | Special Services | Form.NMIS_PROCESSING_ORDERs_INPUT_SVCS subform (master: CN → child: ORDER_CN) |  | Enter | 0.21, 3.41, 3.55, 1.54 |
| Subform | NMIS_PROCESSING_ORDERs_INPUT_GRADES subform | Product Grades | Form.NMIS_PROCESSING_ORDERs_INPUT_GRADES subform (master: CN → child: ORDER_CN) |  | Enter | 7.09, 3.41, 2.62, 1.54 |
| Subform | NMIS_PROCESSING_ORDERS_ID_INFO subform |  | Form.NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform (master: Agreement_Lot_CN_for_Lot_Info → child: AGREEMENT_LOT_CN) |  |  | 4.96, 0.25, 4.75, 1.33 |
| TextBox | AMT_SURPLUS |  | =IIf(IsNull([CN])," ",NZ([NMIS_PROCESSING_ORDERS_ID_INFO subform].[Form]![SURPLUS],"")) |  |  | 3.96, 0.54, 0.69, 0.19 |
| Label | Surplus_Label | Available Surplus |  |  |  | 3.96, 0.08, 0.60, 0.33 |
| Label | ORAll_Label | All O'run |  |  |  | 2.33, 0.90, 0.55, 0.19 |
| Rectangle | Box612 |  |  |  |  | 0.21, 0.61, 3.33, 0.96 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.08, 0.46, 0.59, 0.19 |
| TextBox | CN |  | CN |  |  | 3.12, 0.29, 0.42, 0.19 |
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 4.45, 1.46, 0.66, 0.19 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 4.49, 1.21, 0.52, 0.19 |
| CommandButton | PrvwOrdrFrm | Preview Order Form |  |  | Click | 8.29, 1.78, 1.43, 0.00 |
| CommandButton | PrvwStrgRcrd | Preview Storage Record |  |  | Click | 8.29, 2.11, 1.43, 0.00 |
| Subform | NMIS_PROCESSING_ORDERS_INPUT_MC subform | Job Codes | Form.NMIS_PROCESSING_ORDERS_INPUT_MC subform (master: CN → child: ORDER_CN) |  | Enter | 4.25, 3.41, 2.50, 1.54 |
| CheckBox | PROCESSING_ORDER |  | PROCESSING_ORDER |  |  | 4.74, 1.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 3.12, 0.04, 0.42, 0.19 |
| ComboBox | CONTRACT_ITEM | Contract Item | CONTRACT_ITEM | SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER])) ORDER BY NMIS_CONTRACT_ITEMS.CONTRACT_ITEM; |  | 3.90, 1.32, 0.62, 0.19 |
| TextBox | Total_Order |      Total | =Round([ORDER_AMT]+NZ([OVERRUN_AMT],0),3) |  |  | 2.92, 1.32, 0.46, 0.19 |
| Label | Label613 | Order |  |  |  | 0.29, 0.69, 0.40, 0.19 |
| TextBox | Agreement_Lot_CN_for_Lot_Info |  |  |  |  | 1.88, 0.33, 0.83, 0.19 |
| TextBox | Text626 |  | =IIf(Not IsNull([CN]),"Order ID: " & Left$([CN],Len([CN])-7),Null) |  |  | 2.75, 0.06, 0.90, 0.19 |
| Label | Label641 | Agreement Lot Info |  |  |  | 4.95, 0.04, 1.19, 0.19 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 0.96, 0.04, 0.62, 0.19 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 2.81, 0.04, 0.45, 0.19 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 3.71, 0.04, 0.35, 0.19 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 0.12, 0.04, 0.72, 0.19 |
| Label | INSERTED_DATE_Label | Inserted Date |  |  |  | 1.84, 0.04, 0.83, 0.19 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    Default_Client_Associate = CLIENT_ASSOCIATE
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    
    [Activity_Code] = [Default_Order_Activity_Code]
    
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        '[NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code] = [Default_Special_Service_Activity_Code]
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        '[NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
    'End If
    
End Sub

Private Sub cmdExit_Click()
On Error GoTo Err_cmdExit_Click

    DoCmd.Close

Exit_cmdExit_Click:
    Exit Sub

Err_cmdExit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_cmdExit_Click
    
End Sub

Private Sub CONTACT_CN_AfterUpdate()
    
    Default_Contact_CN = CONTACT_CN
    
End Sub

Private Sub Form_AfterInsert()
    
    'If IsNull([NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE]) Then
        [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![CLIENT_ASSOCIATE] = CLIENT_ASSOCIATE
        If Not IsNull([Default_Job_Code]) Then
            [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = [Default_Job_Code]
        Else
            [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Form![MGMT_CODE] = CLIENT_ASSOCIATE
        End If
        [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
        
    'End If
    
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code]) Then
        [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Form![Activity_Code] = [Default_Special_Service_Activity_Code]
        [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    'End If
        
    'If IsNull([NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE]) Then
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![PRODUCT_GRADE] = "STANDARD"
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Form![GRADE_PCT] = 100
        [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    'End If
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_GRADES_subform_Enter()

    [NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_INPUT_MC_subform_Enter()

    [NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_SVCS_subform_Enter()

    [NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    
End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    If Not IsNull(AMT_SURPLUS) Then
        ORDER_AMT = AMT_SURPLUS
    End If
    
End Sub

Private Sub ORDER_AMT_Exit(Cancel As Integer)

    If Not IsNull(ORDER_AMT) Then
        If ORDER_AMT > AMT_SURPLUS And IsNull(OVERRUN_AMT) Then
            OVERRUN_AMT = Round(ORDER_AMT - AMT_SURPLUS, 3)
            ORDER_AMT = Round(AMT_SURPLUS, 3)
        End If
    End If
        
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
 
    stDocName = "ORDER_FORM_FROM_ORDERS"
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
    
    stDocName = "PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM"
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
    DoCmd.GoToControl "AGREEMENT_LOT_CN"

Exit_CmdAddRec_Click:
    Exit Sub

Err_CmdAddRec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdAddRec_Click
    
End Sub
```
