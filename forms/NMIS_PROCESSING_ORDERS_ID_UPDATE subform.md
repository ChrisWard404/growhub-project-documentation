# Form: NMIS_PROCESSING_ORDERS_ID_UPDATE subform

**Caption:** NMIS_PROCESSING_ORDERS subform  
**Record source:**

```sql
NMIS_ORDERS
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_CONTRACT_ITEMS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform`  
**Embedded in:** `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE`  
**Opens:** `Form:NMIS_CONTACTS`, `Form:NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form`  
**Form events with code:** BeforeUpdate  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 3.58, 0.62, 1.54, 0.20 |
| TextBox | ORDER_AMT |  | ORDER_AMT |  | AfterUpdate, DblClick, Enter | 4.10, 0.29, 0.68, 0.20 |
| TextBox | OVERRUN_AMT |  | OVERRUN_AMT |  | AfterUpdate, DblClick, Enter | 5.78, 0.29, 0.66, 0.20 |
| CheckBox | OVERRUN_ALL_Check |  | OVERRUN_ALL |  |  | 6.49, 0.33, 0.00, 0.00 |
| TextBox | SPEC_MIN | Min | SPEC_MIN |  |  | 0.83, 1.17, 0.46, 0.20 |
| TextBox | SPEC_MAX | Max | SPEC_MAX |  |  | 1.33, 1.17, 0.47, 0.20 |
| TextBox | CALIPER_MIN | Caliper | CALIPER_MIN |  |  | 1.83, 1.17, 0.54, 0.20 |
| TextBox | ROOT_PRUNE_TARGET |  | ROOT_PRUNE_TARGET |  |  | 2.41, 1.17, 0.48, 0.20 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM Contact_Phone_Number_Primary RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN) ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(Not ([NMIS_CONTACTS].[HISTORICAL])=IsNull([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![CONTACT_CN]),"*",0)) AND ((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![CLIENT_ASSOCIATE]))) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")) GROUP BY NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"), Contact_Phone_Number_Primary.PHONE_NUMBER ORDER BY [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"); | AfterUpdate | 4.46, 0.90, 2.25, 0.18 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name, Contact_Phone_Number_Primary.PHONE_NUMBER FROM Contact_Phone_Number_Primary RIGHT JOIN (NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN) ON Contact_Phone_Number_Primary.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![CLIENT_ASSOCIATE]))) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")) GROUP BY NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"), Contact_Phone_Number_Primary.PHONE_NUMBER, NMIS_CONTACTS.HISTORICAL HAVING (((NMIS_CONTACTS.HISTORICAL) Like IIf(Not ([NMIS_CONTACTS].[HISTORICAL])=IsNull([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].[Form]![secondary_CONTACT_CN]),"*",0))) ORDER BY [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"); | AfterUpdate, DblClick, Enter | 4.46, 1.15, 2.25, 0.18 |
| TextBox | DESIRED_DATE | Desired Date | DESIRED_DATE |  |  | 7.88, 1.15, 0.75, 0.18 |
| TextBox | DESTINATION_ASSOCIATE | Destination | DESTINATION_ASSOCIATE |  |  | 7.88, 0.90, 0.75, 0.18 |
| TextBox | CLIENT_NOTE | Client Comments | CLIENT_NOTE |  | DblClick | 0.96, 1.50, 3.40, 0.70 |
| TextBox | NURSERY_NOTE | Nursery Comments | NURSERY_NOTE |  | DblClick | 5.23, 1.50, 3.40, 0.70 |
| Label | ORDER_SPECIFICATIONS_Label | Order Specifications |  |  |  | 0.82, 0.57, 2.54, 0.18 |
| Label | HEIGHT_Label | Height |  |  |  | 0.82, 0.77, 0.98, 0.17 |
| Rectangle | Box107 |  |  |  |  | 0.74, 0.54, 2.70, 0.88 |
| Rectangle | Box108 |  |  |  |  | 3.50, 0.54, 3.29, 0.88 |
| Rectangle | Box109 |  |  |  |  | 6.88, 0.54, 1.83, 0.88 |
| Label | Shipping_Label | Shipping |  |  |  | 6.95, 0.60, 1.68, 0.20 |
| Rectangle | Box28 |  |  |  |  | 0.08, 1.46, 8.62, 0.79 |
| ComboBox | ACTIVITY_CODE | Order Code | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) OR (((NMIS_ACTIVITY_CODES.ACTIVITY_CODE)="lotinv")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 2.67, 0.28, 0.79, 0.21 |
| ComboBox | CLIENT_ASSOCIATE | Associate | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES; | DblClick, Enter, Exit | 0.82, 0.28, 0.96, 0.21 |
| ComboBox | CONTRACT_ITEM | Contract Item | CONTRACT_ITEM | SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_NUMBER));  |  | 0.08, 1.06, 0.62, 0.21 |
| TextBox | Text608 | Total | =Round(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0),3) |  |  | 7.07, 0.29, 0.70, 0.20 |
| TextBox | CN |  | CN |  |  | 8.71, 0.71, 0.50, 0.20 |
| TextBox | MODIFIED_DATE |  | MODIFIED_DATE |  |  | 8.11, 2.29, 0.58, 0.20 |
| TextBox | MODIFIED_BY |  | MODIFIED_BY |  |  | 6.65, 2.29, 1.39, 0.20 |
| Label | MODIFIED_BY_Label | Modified By |  |  |  | 5.83, 2.29, 0.74, 0.20 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 3.63, 2.29, 1.43, 0.20 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 5.12, 2.29, 0.58, 0.20 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 2.76, 2.28, 0.80, 0.21 |
| TextBox | FISCAL_YEAR | FY: | FISCAL_YEAR |  |  | 0.41, 0.03, 0.47, 0.20 |
| CommandButton | Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form | Click to View Order/Inventory Info |  |  | Click | 7.79, 0.04, 1.12, 0.42 |
| ComboBox | AGREEMENT_LOT_CN | Agreement Lot: | AGREEMENT_LOT_CN | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Species_Products_with_SizeSpecString.Species_Products_String_Longest FROM Species_Products_with_SizeSpecString INNER JOIN NMIS_AGREEMENT_LOTS ON Species_Products_with_SizeSpecString.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN ORDER BY NMIS_AGREEMENT_LOTS.ID; | DblClick, Enter | 1.25, 2.29, 1.46, 0.21 |
| TextBox | Contact_CN_Backup |  |  |  |  | 3.58, 0.64, 0.00, 0.00 |
| Subform | NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform |  | Form.NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform (master: AGREEMENT_LOT_CN → child: CN) |  |  | 1.30, 0.03, 5.44, 0.22 |
| TextBox | Order_Label |  | =IIf([Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![Product_Group]="NPROPAGULE","Harv BF","Amount") |  |  | 3.50, 0.29, 0.56, 0.20 |
| TextBox | Overrun_Label |  | ="O'run Amt/All" |  |  | 4.83, 0.29, 0.92, 0.20 |
| Label | Label623 | Prune Target |  |  |  | 2.41, 0.77, 0.49, 0.36 |
| TextBox | ROOT_PRUNE_MIN |  | ROOT_PRUNE_MIN |  |  | 2.91, 1.17, 0.47, 0.20 |
| Label | Label626 | Root Min  |  |  |  | 2.92, 0.77, 0.45, 0.36 |
| CheckBox | BE_AT_PACK |  | BE_AT_PACK |  |  | 6.54, 0.67, 0.00, 0.00 |
| Label | BE_AT_PACK Label | To be at Packing |  |  |  | 5.26, 0.61, 1.21, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

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

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)
    
    CLIENT_ASSOCIATE.Locked = False
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()
    
    If IsNull(CLIENT_ASSOCIATE) Then
        CLIENT_ASSOCIATE.Locked = False
    Else
        CLIENT_ASSOCIATE.Locked = True
    End If
    
End Sub

Private Sub CLIENT_ASSOCIATE_Exit(Cancel As Integer)

    CLIENT_ASSOCIATE.Locked = True
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE = "Seedlings MUST have healthy terminal bud, foliage, and at least the minimum root length!"
    
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
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub Contact_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    CONTACT_CN.Requery
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
    Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![order_form_data_processed] = False
 
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE = "Destroy any remaining seedlings after meeting client's request.  BE SURE TO ADJUST GROSS!"
    
End Sub

Private Sub ORDER_AMT_AfterUpdate()

    DoCmd.Requery

        If [NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS] < 0 Then
            [OVERRUN_AMT] = Abs([NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS])
            [ORDER_AMT] = [ORDER_AMT] + [NMIS_PROCESSING_ORDERS_ID_INFO_REVIEW_Orders subform].Form![LOT_SURPLUS]
            DoCmd.Requery
        End If
        
    DoCmd.GoToControl "OVERRUN_AMT"
    
End Sub

Private Sub ORDER_AMT_DblClick(Cancel As Integer)

    ORDER_AMT.Locked = False
    
End Sub

Private Sub ORDER_AMT_Enter()
    
    If IsNull(ORDER_AMT) Then
        ORDER_AMT.Locked = False
    Else
        ORDER_AMT.Locked = True
    End If
    
End Sub

Private Sub OVERRUN_AMT_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub OVERRUN_AMT_DblClick(Cancel As Integer)

    OVERRUN_AMT.Locked = False
    
End Sub

Private Sub OVERRUN_AMT_Enter()
    
    If IsNull(OVERRUN_AMT) Then
        OVERRUN_AMT.Locked = False
    Else
        OVERRUN_AMT.Locked = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_AfterUpdate()
    
    Dim Response As String
    
    If Not IsNull(Contact_CN_Backup) Then
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
          Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = False
          Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = False
          Forms![NMIS_CONTACTS]!Hide_99s.Visible = False
          Forms![NMIS_CONTACTS]!Hide_Historical.Visible = False
          Forms![NMIS_CONTACTS]!Unfilter.Visible = True
    End If
    
End Sub

Private Sub SECONDARY_CONTACT_CN_Enter()

    Contact_CN_Backup = CONTACT_CN
    SECONDARY_CONTACT_CN.Requery
    
End Sub
Private Sub Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click()
On Error GoTo Err_Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form"
    If Not IsNull([AGREEMENT_LOT_CN]) Then
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        MsgBox "Must Select An Order First", vbInformation
    End If

Exit_Open_NMIS_PROCESSING_ORDERS_ID_INFO:
    Exit Sub

Err_Open_NMIS_PROCESSING_ORDERS_ID_INFO_Review_Orders_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_PROCESSING_ORDERS_ID_INFO
    
End Sub
```
