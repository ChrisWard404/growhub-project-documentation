# Form: NMIS_PROCESSING_ORDERS_INPUTbu

**Caption:** NMIS_PROCESSING_ORDERS_INPUT  
**Record source:**

```sql
SELECT NMIS_ORDERS.* FROM NMIS_ORDERS ORDER BY NMIS_ORDERS.Index;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_CONTRACT_ITEMS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERs_INPUT_SVCS subform`, `Form.NMIS_PROCESSING_ORDERs_INPUT_GRADES subform`, `Form.NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform`, `Form.NMIS_PROCESSING_ORDERS_INPUT_MC subform`  
**Opens:** `Form:NMIS_ASSOCIATES`, `Form:NMIS_CONTACTS`, `Form:ORDER_FORM mt_050357`, `Form:PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM`, `Form:order_form mt`, `Report:NMIS_CONTACTS`, `Report:ORDER_FORM mt_050357`, `Report:PRODUCT_STORAGE_RECORD_FROM_ORDER_INPUT_FORM`, `Report:order_form mt`  
**Form events with code:** AfterInsert, AfterUpdate, Current  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ORDER_ENTRY_Label | New Processing Order Entry |  |  |  | 3.58, 0.25, 2.83, 0.29 |
| CommandButton | cmdExit | Exit |  |  | Click | 8.71, 0.04, 0.00, 0.00 |
| CommandButton | CmdAddRec | Add Record |  |  | Click | 8.71, 0.33, 0.00, 0.00 |
| TextBox | Default_Client_Associate |  |  |  |  | 7.35, 0.23, 0.62, 0.00 |
| Label | Label170 | Default_Client_Associate |  |  |  | 6.95, 0.06, 1.31, 0.18 |
| Rectangle | Box171 |  |  |  |  | 6.92, 0.04, 1.38, 0.75 |
| ComboBox | Default_Order_Activity_Code | Default Order Act Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 2.47, 0.04, 0.79, 0.21 |
| ComboBox | Default_Special_Service_Activity_Code | Default Special Service Act Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 2.47, 0.28, 0.79, 0.21 |
| TextBox | Default_Job_Code | Default Job Code: |  |  | Exit | 2.47, 0.52, 0.79, 0.21 |
| TextBox | Default_Contact_CN |  |  |  |  | 7.04, 0.58, 0.62, 0.00 |
| Label | Default_Contact_CN_Label | Default_Contacst |  |  |  | 7.16, 0.40, 0.92, 0.18 |
| TextBox | Last_Contract_Item |  |  |  |  | 5.83, 0.62, 0.92, 0.19 |
| Label | Label644 | Last_Contract_Item: |  |  |  | 4.72, 0.62, 1.05, 0.18 |
| TextBox | Default_Contact2_CN |  |  |  |  | 7.67, 0.58, 0.58, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 2.67, 1.74, 3.12, 0.18 |
| TextBox | ORDER_AMT |   Amount | ORDER_AMT |  | Change, DblClick, Enter, Exit | 1.12, 1.32, 0.58, 0.20 |
| TextBox | OVERRUN_AMT | O'run Amt | OVERRUN_AMT |  |  | 1.75, 1.32, 0.55, 0.20 |
| CheckBox | OVERRUN_ALL_Check |  | OVERRUN_ALL |  | Exit | 2.47, 1.35, 0.00, 0.00 |
| TextBox | SPEC_MIN | Min | SPEC_MIN |  |  | 0.30, 2.28, 0.46, 0.20 |
| TextBox | SPEC_MAX | Max | SPEC_MAX |  |  | 0.81, 2.28, 0.45, 0.20 |
| TextBox | CALIPER_MIN | Caliper | CALIPER_MIN |  |  | 1.31, 2.28, 0.53, 0.20 |
| TextBox | ROOT_PRUNE_TARGET | Prune Target | ROOT_PRUNE_TARGET |  |  | 1.89, 2.28, 0.50, 0.20 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_INPUT].[Form]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESSING_ORDERS_INPUT].[Form]![CLIENT_ASSOCIATE]))) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")) GROUP BY NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER ORDER BY NMIS_CONTACTS.CONTACT_NAME_UPPER; | AfterUpdate | 3.54, 1.99, 2.25, 0.18 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_INPUT].[Form]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESSING_ORDERS_INPUT].[Form]![CLIENT_ASSOCIATE]))) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")) GROUP BY NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER ORDER BY NMIS_CONTACTS.CONTACT_NAME_UPPER; | AfterUpdate, DblClick, Enter | 3.54, 2.24, 2.25, 0.18 |
| TextBox | DESIRED_DATE | Desired Date | DESIRED_DATE |  |  | 7.00, 2.24, 0.75, 0.18 |
| TextBox | DESTINATION_ASSOCIATE | Destination | DESTINATION_ASSOCIATE |  |  | 7.01, 1.99, 0.75, 0.18 |
| TextBox | CLIENT_NOTE | Client Comments | CLIENT_NOTE |  |  | 1.04, 2.62, 3.88, 0.46 |
| TextBox | NURSERY_NOTE | Nursery Comments | NURSERY_NOTE |  |  | 5.75, 2.62, 3.88, 0.46 |
| Label | ORDER_SPECIFICATIONS_Label | Order Specifications |  |  |  | 0.30, 1.70, 2.10, 0.18 |
| Label | HEIGHT_Label | Height |  |  |  | 0.30, 1.90, 0.97, 0.16 |
| Rectangle | Box107 |  |  |  |  | 0.21, 1.66, 2.25, 0.88 |
| Rectangle | Box108 |  |  |  |  | 2.58, 1.66, 3.29, 0.83 |
| Rectangle | Box109 |  |  |  |  | 6.00, 1.66, 1.83, 0.83 |
| Label | Shipping_Label | Shipping |  |  |  | 6.08, 1.73, 1.68, 0.18 |
| Rectangle | Box28 |  |  |  |  | 0.21, 2.58, 9.50, 0.54 |
| ComboBox | ACTIVITY_CODE | Activity Code | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 0.28, 1.31, 0.79, 0.21 |
| ComboBox | AGREEMENT_LOT_CN | Nursery ID: | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.Species_Products_String_Longest, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS INNER JOIN Species_Products_with_SizeSpecString ON NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN = Species_Products_with_SizeSpecString.CN GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.Species_Products_String_Longest, NMIS_AGREEMENT_LOTS.END_FY HAVING (((NMIS_AGREEMENT_LOTS.END_FY)>=[Forms]![NMIS_PROCESSING_ORDERS_INPUT]![FISCAL_YEAR])) ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick, Enter | 0.96, 0.07, 1.50, 0.21 |
| ComboBox | CLIENT_ASSOCIATE | Associate: | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | AfterUpdate, DblClick, Enter, Exit | 0.96, 0.33, 0.80, 0.21 |
| Subform | NMIS_PROCESSING_ORDERs_INPUT_SVCS subform | Special Services | Form.NMIS_PROCESSING_ORDERs_INPUT_SVCS subform (master: CN → child: ORDER_CN) |  | Enter | 0.21, 3.41, 3.55, 1.54 |
| Subform | NMIS_PROCESSING_ORDERs_INPUT_GRADES subform | Product Grades | Form.NMIS_PROCESSING_ORDERs_INPUT_GRADES subform (master: CN → child: ORDER_CN) |  | Enter | 7.09, 3.41, 2.62, 1.54 |
| Subform | NMIS_PROCESSING_ORDERS_ID_INFO subform |  | Form.NMIS_PROCESSING_ORDERS_ID_INFO_New_Orders subform (master: Agreement_Lot_CN → child: CN) |  |  | 5.62, 0.25, 4.08, 1.33 |
| TextBox | AMT_SURPLUS |  | =IIf(IsNull([CN])," ",NZ([NMIS_PROCESSING_ORDERS_ID_INFO subform].[Form]![SURPLUS],"")) |  |  | 4.64, 1.25, 0.83, 0.25 |
| Label | Surplus_Label | Available Surplus |  |  |  | 4.64, 0.79, 0.83, 0.38 |
| Label | ORAll_Label | All O'run |  |  |  | 2.33, 0.90, 0.47, 0.38 |
| Rectangle | Box612 |  |  |  |  | 0.21, 0.61, 3.33, 0.96 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.08, 0.46, 0.71, 0.21 |
| TextBox | CN |  | CN |  |  | 4.00, 0.62, 0.50, 0.20 |
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 4.45, 1.46, 0.79, 0.20 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 3.24, 0.07, 0.54, 0.21 |
| CommandButton | PrvwOrdrFrm | Preview Order Form |  |  | Click | 8.29, 1.78, 1.43, 0.00 |
| CommandButton | PrvwStrgRcrd | Preview Storage Record |  |  | Click | 8.29, 2.11, 1.43, 0.00 |
| Subform | NMIS_PROCESSING_ORDERS_INPUT_MC subform | Job Codes | Form.NMIS_PROCESSING_ORDERS_INPUT_MC subform (master: CN → child: ORDER_CN) |  | Enter | 4.25, 3.41, 2.50, 1.54 |
| CheckBox | PROCESSING_ORDER |  | PROCESSING_ORDER |  |  | 5.29, 0.04, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 3.54, 0.71, 0.50, 0.00 |
| ComboBox | CONTRACT_ITEM | Pack Contract Item | CONTRACT_ITEM | SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_CONTRACT_ITEMS.CONTRACT_ITEM; |  | 3.67, 1.31, 0.75, 0.21 |
| TextBox | Total_Order |    Total | =Round([ORDER_AMT]+NZ([OVERRUN_AMT],0),3) |  |  | 2.83, 1.31, 0.64, 0.20 |
| Label | Label613 | Order |  |  |  | 0.29, 0.69, 3.17, 0.18 |
| TextBox | Agreement_Lot_CN_for_Lot_Info |  |  |  |  | 4.50, 0.54, 0.00, 0.20 |
| TextBox | OrderID |  | =IIf(Not IsNull([CN]),Left$([CN],Len([CN])-7),Null) |  |  | 4.58, 0.08, 0.54, 0.21 |
| Label | Label641 | Agreement Lot Info |  |  |  | 5.61, 0.04, 4.09, 0.19 |
| Label | Label645 | Order FY: |  |  |  | 2.51, 0.07, 0.69, 0.21 |
| Label | Label646 | Order ID: |  |  |  | 3.83, 0.08, 0.69, 0.21 |
| Rectangle | Box647 |  |  |  |  | 4.58, 0.77, 0.96, 0.80 |
| ComboBox | Client_Associate_Name |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER, NMIS_ASSOCIATES.ASSOCIATE FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER; | AfterUpdate, DblClick, Enter | 1.75, 0.33, 3.40, 0.21 |
| CheckBox | Dont_Change_Order_On_Exit | Don't Change Order Amt on Exit |  |  |  | 0.46, 0.56, 0.00, 0.00 |
| TextBox | Contact_CN_Backup |  |  |  |  | 2.67, 1.73, 0.00, 0.00 |
| TextBox | ASSOCIATE_backup |  |  |  |  | 0.03, 0.33, 0.00, 0.00 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 6.59, 0.04, 0.75, 0.21 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 8.44, 0.04, 0.54, 0.21 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 9.34, 0.04, 0.42, 0.21 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 5.75, 0.04, 0.80, 0.21 |
| Label | INSERTED_DATE_Label | Inserted Date |  |  |  | 7.47, 0.04, 0.85, 0.20 |
| TextBox | MODIFIED_DATE | Modified Date: | MODIFIED_DATE |  |  | 4.08, 0.04, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Agreement_Lot_CN_AfterUpdate()

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    '[Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub AGREEMENT_LOT_CN_DblClick(Cancel As Integer)

    AGREEMENT_LOT_CN.Locked = False
    
End Sub

Private Sub AGREEMENT_LOT_CN_Enter()

    If IsNull(AGREEMENT_LOT_CN) Then
        AGREEMENT_LOT_CN.Locked = False
    Else
        AGREEMENT_LOT_CN.Locked = True
    End If
    
End Sub

Private Sub Agreement_Lot_CN_Exit(Cancel As Integer)

    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_AfterUpdate()

    Dim Response As String
    
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Code?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CLIENT_ASSOCIATE] = ASSOCIATE_backup
        End If
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)
    
    DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_PROCESSING_ORDERS_INPUT]![CLIENT_ASSOCIATE] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
            
End Sub


Private Sub CLIENT_ASSOCIATE_Enter()
    
    ASSOCIATE_backup = CLIENT_ASSOCIATE
    
End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    Default_Client_Associate = CLIENT_ASSOCIATE
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull([Activity_Code]) Then
            Activity_Code = [Default_Order_Activity_Code]
        End If
        If IsNull(SPEC_MIN) Then
            SPEC_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MIN]
        End If
        If IsNull(SPEC_MAX) Then
            SPEC_MAX = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MAX]
        End If
        If IsNull(CALIPER_MIN) Then
            CALIPER_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![CALIPER_MIN]
        End If
        If IsNull(ORDER_AMT) And Not IsNull(NET_INV) Then
            ORDER_AMT = [AMT_SURPLUS]
        End If
    End If
    
End Sub

Private Sub Client_Associate_Name_AfterUpdate()
    
    Dim Response As String
   
    If Not IsNull(ASSOCIATE_backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Client Name?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [Client_Associate_Name] = ASSOCIATE_backup
        End If
    End If
End Sub

Private Sub Client_Associate_Name_DblClick(Cancel As Integer)
    
        DoCmd.OpenForm "NMIS_ASSOCIATES", , , "[ASSOCIATE] = '" & Forms![NMIS_PROCESSING_ORDERS_INPUT]![Client_Associate_Name] & "'"
        DoCmd.GoToControl "ASSOCIATE"
        Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = False
        Forms![NMIS_Associates]![Associate_lookup_Label].Visible = False
        Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = False
    
End Sub

Private Sub Client_Associate_Name_Enter()

    ASSOCIATE_backup = Client_Associate_Name
    
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
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
        Response = MsgBox("Are you Sure you Want to Change the Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [CONTACT_CN] = Contact_CN_Backup
        End If
    End If
        
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
       Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()
    
    Contact_CN_Backup = CONTACT_CN
    
End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

    Last_Contract_Item = CONTRACT_ITEM
    
End Sub

Private Sub Default_Job_Code_Exit(Cancel As Integer)
    
    DoCmd.GoToControl "AGREEMENT_LOT_CN"
    
End Sub

Private Sub Form_AfterInsert()
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
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
    End If
    
End Sub

Private Sub Form_AfterUpdate()

End Sub

Private Sub Form_Current()

    [Agreement_Lot_CN_for_Lot_Info] = AGREEMENT_LOT_CN
    FISCAL_YEAR.Requery
    AGREEMENT_LOT_CN.Requery
    CONTACT_CN.Requery
    SECONDARY_CONTACT_CN.Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_GRADES_subform_Enter()

    '[NMIS_PROCESSING_ORDERs_INPUT_GRADES subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERS_INPUT_MC_subform_Enter()

    '[NMIS_PROCESSING_ORDERS_INPUT_MC subform].Requery
    
End Sub

Private Sub NMIS_PROCESSING_ORDERs_INPUT_SVCS_subform_Enter()

    '[NMIS_PROCESSING_ORDERs_INPUT_SVCS subform].Requery
    
End Sub

Private Sub ORDER_AMT_Change()

    Dont_Change_Order_On_Exit = False

End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    'If Not IsNull(AMT_SURPLUS) Then
        'ORDER_AMT = AMT_SURPLUS
    'End If
    ORDER_AMT.Locked = False
    
End Sub

Private Sub ORDER_AMT_Enter()

    If Not IsNull(ORDER_AMT) Then
        ORDER_AMT.Locked = True
        Dont_Change_Order_On_Exit = True
    Else
        Dont_Change_Order_On_Exit = False
    End If
    
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull([Activity_Code]) Then
            [Activity_Code] = [Default_Order_Activity_Code]
        End If
        If IsNull(ORDER_AMT) Then
            If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061019" Then
                ORDER_AMT = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![TOTAL_REQUEST]
            Else
                ORDER_AMT = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![NET_INV]
            End If
        End If
    End If
    
End Sub

Private Sub ORDER_AMT_Exit(Cancel As Integer)

    If Dont_Change_Order_On_Exit = False Then
    If Not IsNull(ORDER_AMT) Then
        If ORDER_AMT > AMT_SURPLUS And IsNull(OVERRUN_AMT) Then
            OVERRUN_AMT = Round(ORDER_AMT - AMT_SURPLUS, 3)
            ORDER_AMT = Round(AMT_SURPLUS, 3)
        End If
    End If
        
    If Not IsNull(AGREEMENT_LOT_CN) Then
        If IsNull(SPEC_MIN) Then
            SPEC_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MIN]
        End If
        If IsNull(SPEC_MAX) Then
            SPEC_MAX = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![SPEC_MAX]
        End If
        If IsNull(CALIPER_MIN) Then
            CALIPER_MIN = [NMIS_PROCESSING_ORDERS_ID_INFO subform].Form![CALIPER_MIN]
        End If
    End If
        
    End If
    
End Sub

Private Sub OVERRUN_ALL_Check_Exit(Cancel As Integer)

    If OVERRUN_ALL = True Then
        OVERRUN_AMT = Null
    End If
    
End Sub

Private Sub PrvwOrdrFrm_Click()
On Error GoTo Err_PrvwOrdrFrm_Click


    If Not IsNull(CN) Then
    
    Dim stDocName As String
    
    DoCmd.RunCommand acCmdRefresh

    ' turns warning (about to update/delete...) off
    DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
    DoCmd.OpenQuery "ORDER_FORM_MT_FROM_ORDER_INPUT Query"
    DoCmd.OpenQuery "Order_Form_Lot_LEN mt Query"
    DoCmd.OpenQuery "Order_Form_LOC mt Query"
    DoCmd.OpenQuery "NMIS_Lot_Inventory mt Query"
    DoCmd.OpenQuery "Order_Form_QI mt Query"
    DoCmd.OpenQuery "Lot_Lift_Ft mt Query"
    DoCmd.OpenQuery "Lot_Lift_CNTNR mt Query"
    DoCmd.OpenQuery "Order_Form_Specs mt Query"
    DoCmd.OpenQuery "Order_Form_MCODES mt Query"
    DoCmd.OpenQuery "Order_form_Contacts mt Query"
    DoCmd.OpenQuery "Order_form_Contacts at Query"
    DoCmd.OpenQuery "Order_Form_PKC mt Query"
    DoCmd.OpenQuery "Order_Form_PKT mt Query"
    DoCmd.OpenQuery "Field_Location_Inv_Subform_MT"
    
    DoCmd.SetWarnings True
    
    Select Case Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code]
        
    Case Is = "050357"
        stDocName = "ORDER_FORM mt_050357"
    Case Else
        stDocName = "order_form mt"
    End Select
    
    DoCmd.OpenReport stDocName, acPreview
    
    Else
        MsgBox "Must Enter and Order First"
    End If

Exit_PrvwOrdrFrm_Click:
    Exit Sub

Err_PrvwOrdrFrm_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PrvwOrdrFrm_Click
    
End Sub

Private Sub PrvwStrgRcrd_Click()
On Error GoTo Err_PrvwStrgRcrd_Click


    If Not IsNull(CN) Then
    
    Dim stDocName As String
    
    DoCmd.RunCommand acCmdRefresh

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
    
    Else
        MsgBox "Must Enter Order First"
    End If

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

Private Sub SECONDARY_CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) And Not IsNull(SECONDARY_CONTACT_CN) Then
        Response = MsgBox("Are you Sure you Want to Change the Secondary Contact?", vbYesNo)

        If Response = vbYes Then
            'Make It So
        Else
            [SECONDARY_CONTACT_CN] = Contact_CN_Backup
        End If
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
       Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
          DoCmd.GoToControl "Last_Name"
          Forms![NMIS_CONTACTS]![CONTACT_Lookup].Visible = False
          Forms![NMIS_CONTACTS]!Find_Label.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()
    
    Default_Contact2_CN = SECONDARY_CONTACT_CN
    SECONDARY_CONTACT_CN.Requery
    
End Sub
```
