# Form: NMIS_PROCESSING_ORDERS_CLI subform

**Caption:** NMIS_PROCESSING_ORDERS subform  
**Record source:**

```sql
NMIS_ORDERS
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_CONTRACT_ITEMS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_CLI_SVCS Subform`, `Form.NMIS_PROCESSING_ORDERS_CLI_MC Subform`, `Form.NMIS_PROCESSING_ORDERS_CLI_GRADES Subform`, `Form.NMIS_PACK_ACTIVITIES subform`  
**Embedded in:** `Form:NMIS_PROCESSING_ORDERS_BY_CLIENT`  
**Opens:** `Form:NMIS_ORDER_ACT-TRANS-LOC`  
**Form events with code:** BeforeInsert  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 1.17, 0.00, 0.79, 0.20 |
| CheckBox | PROCESSING_ORDER_Checkbox |  | PROCESSING_ORDER |  |  | 3.29, 0.00, 0.00, 0.00 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 2.29, 0.00, 0.62, 0.21 |
| TextBox | AMT_PACKED |  | =IIf(([NMIS_PACK_ACTIVITIES subform].Form!TOTAL)=0," ",[NMIS_PACK_ACTIVITIES subform].Form!TOTAL) |  |  | 7.00, 0.00, 0.50, 0.21 |
| TextBox | CN |  | CN |  |  | 4.00, 0.00, 0.50, 0.20 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 4.54, 0.00, 0.50, 0.21 |
| TextBox | Index |  | Index |  |  | 5.42, 0.00, 0.58, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 3.38, 0.58, 3.12, 0.18 |
| TextBox | ORDER_AMT | Amount | ORDER_AMT |  |  | 6.37, 0.13, 0.58, 0.20 |
| TextBox | OVERRUN_AMT | O'run Amt/All | OVERRUN_AMT |  |  | 7.95, 0.13, 0.55, 0.20 |
| CheckBox | OVERRUN_ALL_Check |  | OVERRUN_ALL |  |  | 8.56, 0.17, 0.00, 0.00 |
| TextBox | SPEC_MIN | Min | SPEC_MIN |  |  | 1.06, 1.12, 0.46, 0.20 |
| TextBox | SPEC_MAX | Max | SPEC_MAX |  |  | 1.56, 1.12, 0.47, 0.20 |
| TextBox | CALIPER_MIN | Caliper | CALIPER_MIN |  |  | 2.06, 1.12, 0.54, 0.20 |
| TextBox | ROOT_PRUNE_TARGET | Prune Target | ROOT_PRUNE_TARGET |  |  | 2.64, 1.12, 0.50, 0.20 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN=NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left(Forms!NMIS_PROCESSING_ORDERS_BY_CLIENT![NMIS_PROCESSING_ORDERS_CLI subform].Form!CLIENT_ASSOCIATE,2)="99","990000",Forms!NMIS_PROCESSING_ORDERS_BY_CLIENT![NMIS_PROCESSING_ORDERS_CLI subform].Form!CLIENT_ASSOCIATE)));  |  | 4.25, 0.83, 2.25, 0.18 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN=NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left(Forms!NMIS_PROCESSING_ORDERS_BY_CLIENT![NMIS_PROCESSING_ORDERS_CLI subform].Form!CLIENT_ASSOCIATE,2)="99","990000",Forms!NMIS_PROCESSING_ORDERS_BY_CLIENT![NMIS_PROCESSING_ORDERS_CLI subform].Form!CLIENT_ASSOCIATE)));  |  | 4.25, 1.08, 2.25, 0.18 |
| TextBox | DESIRED_DATE | Desired Date | DESIRED_DATE |  |  | 7.67, 1.08, 0.75, 0.18 |
| TextBox | DESTINATION_ASSOCIATE | Destination | DESTINATION_ASSOCIATE |  |  | 7.67, 0.83, 0.75, 0.18 |
| TextBox | CLIENT_NOTE | Client Comments | CLIENT_NOTE |  |  | 0.96, 1.50, 3.29, 0.70 |
| TextBox | NURSERY_NOTE | Nursery Comments | NURSERY_NOTE |  |  | 5.12, 1.50, 3.29, 0.70 |
| Label | ORDER_SPECIFICATIONS_Label | Order Specifications |  |  |  | 1.04, 0.54, 2.12, 0.18 |
| Label | HEIGHT_Label | Height |  |  |  | 1.05, 0.75, 0.97, 0.16 |
| Rectangle | Box107 |  |  |  |  | 0.96, 0.50, 2.25, 0.88 |
| Rectangle | Box108 |  |  |  |  | 3.29, 0.50, 3.29, 0.83 |
| Rectangle | Box109 |  |  |  |  | 6.67, 0.50, 1.83, 0.83 |
| Label | Shipping_Label | Shipping |  |  |  | 6.74, 0.57, 1.68, 0.18 |
| Rectangle | Box28 |  |  |  |  | 0.08, 1.46, 8.42, 0.79 |
| TextBox | PACK |  | =IIf(IsNull([AGREEMENT_LOT_CN])," ",[AMT_PACKED]) |  |  | 9.04, 0.98, 0.54, 0.19 |
| Label | Label166 |  Amt Packed |  |  |  | 8.71, 0.78, 0.86, 0.19 |
| TextBox | IPACK_ID | Order ID | =IIf(IsNull([AGREEMENT_LOT_CN]),"",(Left([CN],Len([CN])-7))) |  |  | 9.00, 0.57, 0.54, 0.19 |
| ComboBox | ACTIVITY_CODE | Order Code | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE;  |  | 4.95, 0.12, 0.79, 0.21 |
| CommandButton | LP_ACT | Click Here to Input Processing Activities, Locations, and Transactions |  |  | Click | 8.62, 1.23, 0.96, 1.11 |
| ComboBox | CLIENT_ASSOCIATE | Associate | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES;  | DblClick, Enter, Exit | 3.12, 0.12, 0.96, 0.21 |
| ComboBox | CONTRACT_ITEM | Contract Item | CONTRACT_ITEM | SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_NUMBER));  |  | 0.08, 1.12, 0.62, 0.21 |
| Subform | NMIS_PROCESSING_ORDERS_CLI_SVCS Subform | Special Services | Form.NMIS_PROCESSING_ORDERS_CLI_SVCS Subform (master: CN → child: ORDER_CN) |  |  | 0.04, 2.54, 3.55, 1.54 |
| Subform | NMIS_PROCESSING_ORDERS_CLI_MC Subform | Job Codes | Form.NMIS_PROCESSING_ORDERS_CLI_MC Subform (master: CN → child: ORDER_CN) |  |  | 3.96, 2.54, 2.58, 1.54 |
| Subform | NMIS_PROCESSING_ORDERS_CLI_GRADES Subform | Product Grades | Form.NMIS_PROCESSING_ORDERS_CLI_GRADES Subform (master: CN → child: ORDER_CN) |  |  | 6.92, 2.54, 2.67, 1.54 |
| Subform | NMIS_PACK_ACTIVITIES subform |  | Form.NMIS_PACK_ACTIVITIES subform (master: CN → child: ORDERS_CN) |  |  | 1.00, 4.17, 5.31, 0.96 |
| ComboBox | AGREEMENT_LOT_CN | Nursery ID | AGREEMENT_LOT_CN | SELECT Agreement_Lots_Currently_Active2.ID, Agreement_Lots_Currently_Active2.CN FROM Agreement_Lots_Currently_Active2;  |  | 0.83, 0.12, 1.54, 0.21 |
| TextBox | Text610 | Total | =ROUND([ORDER_AMT]+[OVERRUN_AMT],3) |  |  | 9.18, 0.13, 0.58, 0.20 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MODIFIED_INSTANCE |  | MODIFIED_INSTANCE |  |  | 8.33, 0.04, 0.58, 0.20 |
| Label | MODIFIED_INSTANCE_Label | Modified Instance |  |  |  | 7.67, 0.00, 0.58, 0.33 |
| TextBox | MODIFIED_DATE |  | MODIFIED_DATE |  |  | 7.00, 0.05, 0.58, 0.20 |
| Label | MODIFIED_DATE_Label | Modified Date |  |  |  | 6.33, 0.00, 0.58, 0.33 |
| TextBox | MODIFIED_BY |  | MODIFIED_BY |  |  | 5.67, 0.06, 0.58, 0.20 |
| Label | MODIFIED_BY_Label | Modified By |  |  |  | 5.00, 0.00, 0.58, 0.33 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 1.67, 0.08, 0.58, 0.20 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 3.00, 0.07, 0.58, 0.20 |
| TextBox | INSERTED_INSTANCE |  | INSERTED_INSTANCE |  |  | 4.33, 0.07, 0.58, 0.20 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 1.00, 0.00, 0.58, 0.33 |
| Label | INSERTED_DATE_Label | Inserted Date |  |  |  | 2.33, 0.00, 0.58, 0.33 |
| Label | INSERTED_INSTANCE_Label | Inserted Instance |  |  |  | 3.67, 0.00, 0.58, 0.33 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    [CLIENT_ASSOCIATE].Locked = False
    MsgBox "Associate is now UNLOCKED for Editing."
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()

    If [CLIENT_ASSOCIATE] > "" Then
        [CLIENT_ASSOCIATE].Locked = True
    Else
        [CLIENT_ASSOCIATE].Locked = False
    End If

End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    [CLIENT_ASSOCIATE].Locked = True
        
    If Not IsNull(CLIENT_ASSOCIATE) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
    End If

End Sub


Private Sub Form_BeforeInsert(Cancel As Integer)

        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If

End Sub

Private Sub LP_ACT_Click()
On Error GoTo Err_LP_ACT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    AGREEMENT_LOT_CN = Me![AGREEMENT_LOT_CN]
    stDocName = "NMIS_ORDER_ACT-TRANS-LOC"
    DoCmd.OpenForm stDocName, , , "[CN]=" & "'" & Me![AGREEMENT_LOT_CN] & "'"
    
Exit_LP_ACT_Click:
    Exit Sub

Err_LP_ACT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_LP_ACT_Click
    
End Sub
```
