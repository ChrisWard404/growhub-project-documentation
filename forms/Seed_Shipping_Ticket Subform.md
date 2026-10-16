# Form: Seed_Shipping_Ticket Subform

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_TICKETS`  
**Subforms/subreports:** `Form.Seed_Balance2 Query subform`, `Form.Seed_Ship_Ticket_ID_ACTIVITIES subform`  
**Embedded in:** `Form:Seed_Shipping_Ticket`  
**Opens:** `Form:Close_Form`, `Form:Lot_ID_Input_Form2`, `Form:Lot_ID_Input_Form2c`, `Form:NMIS_ASSOCIATES`, `Form:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping`, `Form:NMIS_CONTACTS`, `Form:NMIS_SOURCE_Card_2_TKT_S`, `Form:NMIS_SOURCE_Card_BACK`, `Form:Seed_Bank_Receiving_Work_List`, `Form:Seed_Bank_Work_Order_Ship_list`, `Form:Seed_Bank_Work_Order_Ship_list_by_Loc`, `Form:seed_combo_ticket`, `Form:seed_receiving_ticket`, `Form:seed_shipping_bag_tags`, `Form:seed_shipping_lot_label_040207`, `Form:seed_shipping_lot_label_by_Ticket`, `Form:seed_shipping_ticket`, `Form:seed_shipping_ticket_with_Test_Data`, `Report:Close_Form`, `Report:Lot_ID_Input_Form2`, `Report:Lot_ID_Input_Form2c`, `Report:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC_shipping`, `Report:NMIS_CONTACTS`, `Report:NMIS_SOURCE_Card_2_TKT_S`, `Report:NMIS_SOURCE_Card_BACK`, `Report:Seed_Bank_Receiving_Work_List`, `Report:Seed_Bank_Work_Order_Ship_list`, `Report:Seed_Bank_Work_Order_Ship_list_by_Loc`, `Report:seed_combo_ticket`, `Report:seed_receiving_ticket`, `Report:seed_shipping_bag_tags`, `Report:seed_shipping_lot_label_040207`, `Report:seed_shipping_lot_label_by_Ticket`, `Report:seed_shipping_ticket`, `Report:seed_shipping_ticket_with_Test_Data`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box72 |  |  |  |  | 0.02, 0.03, 3.57, 0.59 |
| ComboBox | Find_Ticket | Find Ticket: |  | SELECT NMIS_TICKETS.TKT_NO, NMIS_TICKETS.DESIRED_DATE, "(" & [DELIVERED_TO_ASSOCIATE] & ") " & [ASSOCIATE_NAME] & IIf([Historical],"  *Historical*") AS [TO], NMIS_TICKETS.EXT_DOC_REF, NMIS_TICKETS.NOTE FROM NMIS_TICKETS LEFT JOIN NMIS_ASSOCIATES ON NMIS_TICKETS.DELIVERED_TO_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_TICKETS.TICKET_TYPE)="s") AND ((NMIS_TICKETS.FY)=[View_FY])) ORDER BY NMIS_TICKETS.DESIRED_DATE DESC , NMIS_TICKETS.TKT_NO DESC; | AfterUpdate, Enter | 1.13, 0.33, 1.10, 0.23 |
| ComboBox | View_FY |  View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;  |  | 0.80, 0.07, 0.58, 0.20 |
| Label | Label18 | Source Ship/Retest/Receive Ticket |  |  |  | 3.85, 0.04, 2.73, 0.58 |
| CommandButton | New_Ticket | New Ticket |  |  | Click | 2.49, 0.33, 0.00, 0.26 |
| CommandButton | Close | Close |  |  | Click | 9.71, 0.08, 0.47, 0.28 |
| TextBox | DELIVERED_TO_ASSOCIATE_backup |  |  |  |  | 3.50, 0.04, 0.00, 0.00 |
| Subform | Seed_Balance2_ subform |  | Form.Seed_Balance2 Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 6.79, 0.04, 2.33, 0.53 |
| TextBox | Source_Lot_CN |  | =[Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN] |  |  | 8.74, 0.42, 0.00, 0.00 |
| ComboBox | View_Lot |  View Lot: |  | SELECT NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.TICKET_CN FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN GROUP BY NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_ID_ACTIVITIES.ACTIVITY_UNITS, NMIS_ID_ACTIVITIES.TICKET_CN HAVING (((NMIS_ID_ACTIVITIES.TICKET_CN)=[Forms]![Seed_Shipping_Ticket Subform]![CN])); | AfterUpdate, DblClick, Enter | 2.24, 0.08, 1.30, 0.20 |
| Line | Line49 |  |  |  |  | 0.04, 0.66, 9.84, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | DESIRED_DATE | Date | DESIRED_DATE |  | DblClick, Enter | 0.05, 0.49, 0.68, 0.21 |
| TextBox | CHARGE_PER_TICKET | Charge Per Ticket | CHARGE_PER_TICKET |  |  | 7.22, 0.49, 1.23, 0.21 |
| TextBox | GBL_PCT | GBL % | GBL_PCT |  |  | 8.53, 0.49, 0.52, 0.21 |
| ComboBox | DELIVERED_TO_ASSOCIATE | Code | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," *Historical*") AS AN, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]),"*",False))) ORDER BY NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," *Historical*"); | AfterUpdate, DblClick, Enter | 0.78, 0.49, 0.84, 0.21 |
| ComboBox | DELIVERED_BY_ASSOCIATE | Delivered By  | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 4.82, 0.49, 0.95, 0.21 |
| TextBox | NOTE | Note | NOTE |  |  | 0.06, 0.93, 8.99, 0.21 |
| ComboBox | NURSERY_ASSOCIATE | Nursery Associate | NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 5.82, 0.48, 1.37, 0.22 |
| Subform | Seed_Ship_Ticked_ID_ACTIVITIES subform |  | Form.Seed_Ship_Ticket_ID_ACTIVITIES subform (master: CN → child: TICKET_CN) |  | Enter | 0.03, 1.17, 10.25, 3.56 |
| TextBox | Index |  | Index |  |  | 1.24, 0.03, 0.00, 0.14 |
| TextBox | CN |  | CN |  |  | 0.13, 0.03, 1.08, 0.14 |
| TextBox | FY | FY: | FY |  | DblClick, Enter | 0.38, 0.03, 0.46, 0.20 |
| TextBox | TKT_NO | Ticket ID: | TKT_NO |  | DblClick, Enter, Exit | 1.65, 0.03, 0.75, 0.20 |
| TextBox | EXT_DOC_REF | Ship Ref: | EXT_DOC_REF |  |  | 3.21, 0.03, 1.42, 0.20 |
| ComboBox | NURSERY_CONTACT_CN | Nursery Contact: | NURSERY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![Seed_Shipping_Ticket Subform]![NURSERY_CONTACT_CN]),"0","*")) AND ((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)"); | Enter | 5.88, 0.03, 1.67, 0.20 |
| CommandButton | Create Shipping Ticket | Ship Ticket |  |  | Click | 0.08, 4.76, 0.54, 0.33 |
| ComboBox | Default_Activity_Code |  |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 7.72, 4.91, 0.88, 0.20 |
| Label | Default_Activity_Code Label | Activity Code: |  |  |  | 6.69, 4.90, 0.97, 0.20 |
| Label | Default_No_Boxes Label | No. Ctrs: |  |  |  | 7.01, 5.15, 0.65, 0.20 |
| TextBox | Default_No_Boxes |  |  |  |  | 7.72, 5.16, 0.29, 0.21 |
| ComboBox | Default_Payee |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 9.35, 4.90, 0.86, 0.20 |
| Label | Default Payee Label | Payee: |  |  |  | 8.81, 4.91, 0.49, 0.20 |
| Label | Label40 | Job Code: |  |  |  | 8.57, 5.16, 0.72, 0.20 |
| TextBox | Default_Mgmt_Code |  |  |  |  | 9.35, 5.15, 0.84, 0.20 |
| Rectangle | Box43 |  |  |  |  | 5.82, 4.82, 4.44, 0.57 |
| Label | Defaults Label | Defaults: |  |  |  | 5.88, 4.86, 0.75, 0.24 |
| ComboBox | DELIVERED_TO_ASSOCIATE_Name |  Associate Name | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," *Historical*") AS AN, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![Seed_Shipping_Ticket Subform]![DELIVERED_TO_ASSOCIATE]),"*",False))) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," *Historical*"); | AfterUpdate, DblClick, Enter, Exit, GotFocus | 1.65, 0.49, 3.15, 0.21 |
| TextBox | Text50 | Text50: | TKT_NO |  |  | 5.71, 2.26, 0.00, 0.00 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 2.77, 0.06, 1.08, 0.21 |
| CommandButton | Create_Shipping_Ticket_with_Test_Data | Ship Ticket with Test Data |  |  |  | 0.66, 4.76, 0.93, 0.33 |
| CommandButton | Create_Withdrawal_form | Withdrawal Form |  |  | Click | 1.60, 4.76, 0.71, 0.33 |
| CommandButton | Shipping_Bag_Tags | Shipping Bag Tags |  |  | Click | 3.60, 5.12, 0.68, 0.33 |
| CheckBox | Show_All_Activities | Show All Activities |  |  |  | 9.90, 0.92, 0.00, 0.00 |
| Rectangle | Box71 |  |  |  |  | 9.64, 0.31, 0.62, 0.81 |
| ComboBox | Combo73 |  | TICKET_TYPE | S;Ship/Retest/Etc;SW;Sow Withdrawal |  | 9.12, 0.33, 0.42, 0.00 |
| CommandButton | Mailing_Labels_Intermec | Mailing Label (Intermec) |  |  | Click | 0.08, 5.12, 0.89, 0.33 |
| CommandButton | NMIS_SOURCE_CARD | Source Card 2 |  |  | Click | 5.10, 4.76, 0.65, 0.33 |
| CommandButton | NMIS_SOURCE_CARD_BACK | Source Card Back |  |  | Click | 5.10, 5.12, 0.65, 0.33 |
| CommandButton | Create Combo Ticket | Combo Ticket |  |  | Click | 2.34, 4.76, 0.60, 0.33 |
| CommandButton | Create_Receive_Ticket | Receive Ticket |  |  | Click | 2.98, 4.76, 0.60, 0.33 |
| CommandButton | Seed_Box_Label | Seed Box Label |  |  | Click | 4.39, 4.76, 0.69, 0.33 |
| CommandButton | Seed_Box_Mini_Label | Seed Box Mini-Label |  |  | Click | 4.40, 5.12, 0.68, 0.33 |
| ComboBox | Client_Contact_CN | Client Contact: | CONTACT_CN | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![Seed_Shipping_Ticket Subform]![NURSERY_CONTACT_CN]),"0","*"))) ORDER BY [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)"); | DblClick | 8.61, 0.03, 1.67, 0.20 |
| CommandButton | Create_Withdrawal_form2 | Withdrawal Form2 |  |  | Click | 1.60, 5.12, 0.71, 0.33 |
| CommandButton | Receive_Form | Receive Form |  |  | Click | 2.34, 5.12, 0.60, 0.33 |
| CommandButton | Lot_Labels_by_Ticket | Lot Labels |  |  | Click | 3.67, 4.76, 0.60, 0.33 |

## Code-behind (VBA)

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
