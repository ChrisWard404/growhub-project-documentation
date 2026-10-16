# Form: Seed_Sow_Withdrawal_Ticket Subform

**Caption:** Seed Sowing Withdrawal Ticket  
**Record source:**

```sql
NMIS_TICKETS
```

**Order by:** `NMIS_TICKETS.TKT_NO`  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_TICKETS`  
**Subforms/subreports:** `Form.Seed_Balance2 Query subform`, `Form.Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform`  
**Embedded in:** `Form:Seed_Sow_Withdrawal_Ticket`  
**Opens:** `Report:Close_Form`, `Report:NMIS_SOURCE_Card_2_TKT_SW`, `Report:NMIS_SOURCE_Card_BACK`, `Report:Seed_Bank_Stratification_Record`, `Report:Seed_Bank_Work_Order_Sow_list`, `Report:Seed_Bank_Work_Order_Sow_list2`, `Report:seed_sow_withdrawal_ticket`, `Report:seed_sow_withdrawal_ticket_with_Test_Data`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box72 |  |  |  |  | 0.03, 0.03, 3.54, 0.58 |
| ComboBox | Find_Ticket | Find Ticket: |  | SELECT NMIS_TICKETS.TKT_NO, NMIS_TICKETS.NOTE FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE WHERE (((NMIS_TICKETS.TICKET_TYPE)="sw") AND ((NMIS_TICKETS.FY)=[View_FY])) ORDER BY NMIS_TICKETS.TKT_NO DESC; | AfterUpdate, Enter | 1.14, 0.32, 1.08, 0.23 |
| ComboBox | View_FY |  View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC;  |  | 0.81, 0.09, 0.58, 0.20 |
| Label | Label18 | Source Sowing Withdraw Ticket |  |  |  | 4.00, 0.15, 3.12, 0.28 |
| CommandButton | New_Ticket | New Ticket |  |  | Click | 2.32, 0.31, 1.01, 0.26 |
| CommandButton | Close | Close |  |  | Click | 10.45, 0.08, 0.47, 0.28 |
| Subform | Seed_Balance2_ subform |  | Form.Seed_Balance2 Query subform (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 7.61, 0.03, 2.24, 0.52 |
| TextBox | Source_Lot_CN |  | =[Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN] |  |  | 9.36, 0.41, 0.00, 0.00 |
| Line | Line49 |  |  |  |  | 0.07, 0.64, 10.10, 0.00 |
| ComboBox | View_Lot |  View Lot: |  | SELECT NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE FROM NMIS_SOURCE_LOTS INNER JOIN NMIS_ID_ACTIVITIES ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN GROUP BY NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE, NMIS_ID_ACTIVITIES.TICKET_CN HAVING (((NMIS_ID_ACTIVITIES.TICKET_CN)=[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![CN])); | AfterUpdate, DblClick, Enter | 2.21, 0.08, 1.31, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | DESIRED_DATE | Act. Date: | DESIRED_DATE |  | DblClick, Enter | 3.17, 0.04, 0.68, 0.21 |
| TextBox | CHARGE_PER_TICKET | Charge Per Ticket | CHARGE_PER_TICKET |  |  | 5.80, 0.91, 1.26, 0.21 |
| TextBox | GBL_PCT | GBL % | GBL_PCT |  |  | 7.11, 0.91, 0.52, 0.21 |
| ComboBox | DELIVERED_TO_ASSOCIATE | To Code | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 0.88, 0.91, 0.73, 0.21 |
| ComboBox | DELIVERED_BY_ASSOCIATE | Delivered By Associate | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 4.18, 0.91, 1.54, 0.21 |
| TextBox | NOTE | Note | NOTE |  |  | 0.06, 0.93, 10.97, 0.20 |
| ComboBox | NURSERY_ASSOCIATE | Nursery Associate | NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.NURSERY FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes));  |  | 7.68, 0.91, 1.27, 0.21 |
| Subform | Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform |  | Form.Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform (master: CN → child: TICKET_CN) |  | Enter | 0.05, 1.16, 10.99, 3.59 |
| TextBox | Index |  | Index |  |  | 1.36, 0.09, 0.00, 0.14 |
| TextBox | CN |  | CN |  |  | 0.26, 0.09, 1.08, 0.14 |
| TextBox | FY | FY: | FY |  | DblClick, Enter | 0.38, 0.03, 0.46, 0.20 |
| TextBox | TKT_NO | Ticket ID: | TKT_NO |  | DblClick, Enter, Exit | 1.61, 0.03, 0.73, 0.20 |
| TextBox | EXT_DOC_REF | Ship Ref: | EXT_DOC_REF |  |  | 4.65, 0.03, 1.42, 0.20 |
| ComboBox | NURSERY_CONTACT_CN | Nursery Contact: | NURSERY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![Seed_Sow_Withdrawal_Ticket Subform]![NURSERY_CONTACT_CN]),"0","*"))) ORDER BY [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)"); | Enter | 7.35, 0.03, 1.67, 0.20 |
| CommandButton | Create Shipping Ticket | Withdraw Ticket |  |  | Click | 0.06, 4.77, 0.73, 0.33 |
| ComboBox | Default_Activity_Code |  |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.NOTE FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) In ("CONE","SDEXTR","SDTRAN","SDTRMT"))) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 8.20, 4.90, 0.88, 0.20 |
| Label | Default_Activity_Code Label | Activity Code: |  |  |  | 7.16, 4.90, 0.97, 0.20 |
| Label | Default_No_Boxes Label | No. Ctrs: |  |  |  | 7.48, 5.15, 0.65, 0.20 |
| TextBox | Default_No_Boxes |  |  |  |  | 8.19, 5.15, 0.29, 0.21 |
| ComboBox | Default_Payee |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 9.96, 4.90, 0.86, 0.20 |
| Label | Default Payee Label | Payee: |  |  |  | 9.41, 4.90, 0.49, 0.20 |
| Label | Label40 | Job Code: |  |  |  | 9.18, 5.15, 0.72, 0.20 |
| TextBox | Default_Mgmt_Code |  |  |  |  | 9.97, 5.15, 0.84, 0.20 |
| Rectangle | Box43 |  |  |  |  | 4.46, 4.85, 6.46, 0.52 |
| Label | Defaults Label | Defaults: |  |  |  | 4.51, 4.89, 0.72, 0.23 |
| ComboBox | Combo45 |  Sow Associate Name | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 1.67, 0.91, 2.44, 0.21 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 0.27, 0.85, 1.08, 0.21 |
| CommandButton | Create Shipping Ticket_with_test_data | Withdraw Ticket With Test Data |  |  | Click | 0.85, 4.77, 1.52, 0.33 |
| CommandButton | Click_to_View_Stratification_Record_Form | Stratification Record Form |  |  | Click | 0.86, 5.13, 1.51, 0.33 |
| CheckBox | Show_All_Activities | Show All Activities |  |  |  | 9.75, 0.50, 0.00, 0.00 |
| Rectangle | Box71 |  |  |  |  | 9.53, 0.05, 0.62, 0.62 |
| CommandButton | Create_Withdrawal_form | Withdrawal Form |  |  | Click | 2.44, 4.77, 0.73, 0.33 |
| ComboBox | Ticket_Type |  | TICKET_TYPE | S;Ship/Retest/Etc;SW;Sow Withdrawal | DblClick, Enter, Exit | 9.06, 0.06, 0.42, 0.00 |
| TextBox | Desired_Date2 | Date | DESIRED_DATE |  | DblClick, Enter | 0.06, 0.46, 0.68, 0.21 |
| TextBox | Text62 | Charge Per Ticket | CHARGE_PER_TICKET |  |  | 7.27, 0.46, 1.23, 0.21 |
| TextBox | Text64 | GBL % | GBL_PCT |  |  | 8.58, 0.46, 0.52, 0.21 |
| ComboBox | Combo66 | Code | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 0.79, 0.46, 0.84, 0.21 |
| ComboBox | Combo68 | Delivered By  | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 4.83, 0.46, 0.95, 0.21 |
| ComboBox | Combo70 | Nursery Associate | NURSERY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=Yes)) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 5.84, 0.46, 1.37, 0.22 |
| ComboBox | DELIVERED_TO_ASSOCIATE_Name |  Associate Name | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_ASSOCIATES.DEPARTMENT FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 1.66, 0.46, 3.15, 0.21 |
| CommandButton | NMIS_SOURCE_CARD | Source Card 2 |  |  | Click | 3.66, 4.77, 0.56, 0.33 |
| CommandButton | NMIS_SOURCE_CARD_BACK | Source Card Back |  |  | Click | 3.66, 5.11, 0.73, 0.33 |
| Label | Label74 | Strat Date: |  |  |  | 5.53, 5.14, 0.77, 0.21 |
| TextBox | Default_Strat_Date |  |  |  |  | 6.36, 5.14, 0.68, 0.20 |
| TextBox | Default_Activity_Date | Activity Date: |  |  |  | 6.36, 4.89, 0.68, 0.20 |
| CommandButton | Create_Withdrawal_form2 | Withdrawal Form 2 |  |  | Click | 2.44, 5.13, 0.73, 0.33 |

## Code-behind (VBA)

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
