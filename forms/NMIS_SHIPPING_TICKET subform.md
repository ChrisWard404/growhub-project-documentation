# Form: NMIS_SHIPPING_TICKET subform

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_FISCAL_YEARS`, `NMIS_TICKETS`  
**Subforms/subreports:** `Form.NMIS_CLIENT_MGMT_CODES_prod_ship subform`, `Form.NMIS_Product_ship Ticket_multiple_orders subform`, `Form.NMIS_SHIPPING_ID_ACTIVITIES subform`, `Form.NMIS_SHIPPING_TRANSACTIONS_subform`, `Form.NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform`, `Form.NMIS_SHIPPING_TICKET_LOT_BALANCES subform`  
**Embedded in:** `Form:NMIS_SHIPPING_TICKET`  
**Opens:** `Form:Close_Form`, `Form:NMIS_ASSOCIATES_Ship_Miles_st`, `Form:NMIS_CONTACTS`, `Form:NMIS_TICKETS_charge_per_ticket2`, `Form:NMIS_TICKET_NOTE_FORM`, `Form:PRODUCT_PULL_ticket`, `Form:PRODUCT_ticket`, `Form:Ship_Ticket_Product_spd`, `Form:Ship_Ticket_Product_spd2`, `Form:Ticket_Container_Summary`, `Report:Close_Form`, `Report:NMIS_ASSOCIATES_Ship_Miles_st`, `Report:NMIS_CONTACTS`, `Report:NMIS_TICKETS_charge_per_ticket2`, `Report:PRODUCT_PULL_ticket`, `Report:PRODUCT_ticket`, `Report:Ship_Ticket_Product_spd`, `Report:Ship_Ticket_Product_spd2`, `Report:Ticket_Container_Summary`  
**Opened from (VBA):** `Form_Client_Bill_Menu`, `Forms_Open Module`, `Property_Module_Form_Opening Module`  
**Form events with code:** Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Product Shipping Ticket |  |  |  | 2.41, 0.06, 2.49, 0.28 |
| CommandButton | Refresh_Close | Close |  |  | Click | 8.77, 0.07, 0.47, 0.28 |
| CommandButton | Create Shipping Ticket | Click to Preview Shipping Ticket |  |  | Click | 7.28, 0.06, 1.17, 0.37 |
| Line | Line31 |  |  |  |  | 0.06, 0.47, 8.76, 0.00 |
| TextBox | CN |  | CN |  |  | 2.21, 0.12, 1.38, 0.20 |
| OptionGroup | View_by |  |  |  | AfterUpdate | 0.10, 0.04, 1.84, 0.41 |
| OptionButton | Option45 | Order ID/Lot ID |  |  |  | 0.80, 0.10, 0.00, 0.00 |
| OptionButton | Option47 | Lot ID/Order ID |  |  |  | 0.80, 0.27, 0.00, 0.00 |
| Label | Label43 | View by: |  |  |  | 0.19, 0.15, 0.55, 0.19 |
| CommandButton | Ship_Ticket_Product_spd | Tkt SPD |  |  | Click | 5.00, 0.06, 0.51, 0.36 |
| CommandButton | Create Pull Ticket | Click to Preview Pull Checklist |  |  | Click | 6.09, 0.06, 1.17, 0.37 |
| CommandButton | Ship_Ticket_Product_spd2 | Tkt SPD Detailed  |  |  | Click | 5.53, 0.06, 0.54, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_CLIENT_MGMT_CODES_prod_ship subform |  | Form.NMIS_CLIENT_MGMT_CODES_prod_ship subform (master: TextLink1 → child: ACTIVITY_ID_CN) |  |  | 0.09, 1.08, 3.17, 0.42 |
| Subform | NMIS_ORDERS subform |  | Form.NMIS_Product_ship Ticket_multiple_orders subform (master: ORDER_CN → child: CN) |  |  | 0.06, 5.94, 5.44, 0.19 |
| Rectangle | Box24 |  |  |  |  | 5.72, 4.70, 2.70, 1.15 |
| Subform | NMIS_SHIPPING_ID_ACTIVITIES subform |  | Form.NMIS_SHIPPING_ID_ACTIVITIES subform (master: CN → child: TICKET_CN) |  | Enter | 0.06, 1.52, 9.24, 2.48 |
| TextBox | NOTE |  | NOTE |  | DblClick | 0.59, 1.04, 8.69, 0.42 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  | Enter | 0.97, 0.30, 0.71, 0.20 |
| TextBox | CHARGE_PER_TICKET |  | CHARGE_PER_TICKET |  |  | 4.41, 0.54, 0.83, 0.21 |
| TextBox | GBL_PCT |  | GBL_PCT |  |  | 4.41, 0.29, 0.46, 0.21 |
| ComboBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Hist)") AS AN, NMIS_ASSOCIATES.NOTE FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![DELIVERED_BY_ASSOCIATE]),"*",False))) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Hist)"); | DblClick | 2.52, 0.29, 0.87, 0.21 |
| ComboBox | DELIVERED_BY_ASSOCIATE |  | DELIVERED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Hist)") AS AN FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.HISTORICAL) Like IIf(Not ([NMIS_ASSOCIATES].[HISTORICAL])=IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![DELIVERED_BY_ASSOCIATE]),"*",False))) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Hist)"); |  | 2.52, 0.54, 0.87, 0.21 |
| TextBox | TKT_NO |  | TKT_NO |  | DblClick, Enter, Exit | 0.97, 0.55, 0.60, 0.20 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 4.41, 0.04, 1.33, 0.21 |
| Label | DESIRED_DATE_Label | Ticket Date: |  |  |  | 0.09, 0.29, 0.83, 0.21 |
| Label | TKT_NO_Label | Ticket No.: |  |  |  | 0.09, 0.54, 0.83, 0.21 |
| TextBox | FISCAL_YEAR | Fiscal Year: | FY |  | DblClick, Enter | 0.97, 0.04, 0.58, 0.21 |
| Label | DELIVERED_TO_ASSOCIATE_Label | Del. To: |  |  |  | 1.92, 0.29, 0.56, 0.20 |
| Label | DELIVERED_BY_ASSOCIATE_Label | Del. By: |  |  |  | 1.91, 0.54, 0.57, 0.20 |
| Label | EXT_DOC_REF_Label | Ref (TSO) #: |  |  |  | 3.50, 0.04, 0.86, 0.20 |
| Label | NOTE_Label | Note: |  |  |  | 0.13, 1.04, 0.42, 0.38 |
| Label | CHARGE_PER_TICKET_Label | Ticket Cost: |  |  |  | 3.52, 0.54, 0.84, 0.20 |
| Label | GBL_PCT_Label | Ref (TSO) %: |  |  |  | 3.44, 0.29, 0.92, 0.20 |
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 5.67, 1.21, 0.58, 0.21 |
| ComboBox | DFLT_ACT | Act. Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP")); |  | 2.52, 0.04, 0.88, 0.21 |
| TextBox | TICKET_TYPE |  | TICKET_TYPE |  |  | 6.30, 1.21, 0.50, 0.21 |
| TextBox | Index |  | Index |  |  | 5.17, 1.21, 0.46, 0.20 |
| ComboBox | NURSERY_CONTACT_CN | Nursery Contact: | NURSERY_CONTACT_CN | SELECT NMIS_CONTACT_LINKS.CONTACT_CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(Not (NMIS_CONTACTS.HISTORICAL)=IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![NURSERY_CONTACT_CN]),"*",False)) AND ((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) ORDER BY [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"); | Enter | 1.31, 0.79, 2.20, 0.21 |
| TextBox | TextLink1 |  | =[NMIS_SHIPPING_ID_ACTIVITIES subform].Form!CN |  |  | 0.59, 1.21, 0.62, 0.21 |
| TextBox | TextLink2 |  | =[NMIS_SHIPPING_ID_ACTIVITIES subform].Form!ORDER_CN |  |  | 6.97, 1.21, 0.62, 0.21 |
| TextBox | New_CN |  | =[Index] & Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery_Code |  |  | 3.26, 1.16, 1.08, 0.21 |
| TextBox | MAX_TKT_USED |  | =Max([NEXT_NO]) |  |  | 1.51, 0.54, 0.38, 0.00 |
| Label | Label8 | Client Contact (Optional) |  |  |  | 6.33, 0.11, 1.68, 0.20 |
| Rectangle | Box9 |  |  |  |  | 6.09, 0.06, 2.40, 0.64 |
| Subform | NMIS_SHIPPING_TRANSACTIONS_subform |  | Form.NMIS_SHIPPING_TRANSACTIONS_subform (master: TextLink1 → child: ID_ACTIVITY_CN) |  | Enter | 0.06, 4.03, 5.43, 1.88 |
| TextBox | SUM_OF_TRANSACTIONS |  | =IIf(Not IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form!ORDER_CN),IIf([NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form!Product_Units="M",ROUND(Abs(NMIS_SHIPPING_TRANSACTIONS_subform.Form!TRANSACTIONS_SUM/1000),3),ROUND(Abs(NMIS_SHIPPING_TRANSACTIONS_subform.Form!TRANSACTIONS_SUM),3)),"") |  | DblClick | 5.71, 4.41, 1.08, 0.25 |
| Label | UNIT_CODE_Label | Total for Selected Order |  |  |  | 5.71, 4.04, 1.08, 0.33 |
| Subform | NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform |  | Form.NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform (master: TEXTLINK2 → child: CN) |  |  | 8.12, 4.67, 0.68, 0.40 |
| ComboBox | Find_Ticket | Find Ticket: |  | SELECT NMIS_TICKETS.TKT_NO, IIf(Not ([Forms]![NMIS_SHIPPING_TICKET subform]![By_TSO]),[TKT_NO] & " (FY" & Right$([FY],2) & ")",[EXT_DOC_REF]) AS [Ticket #/FY], IIf([Forms]![NMIS_SHIPPING_TICKET subform]![By_TSO],[TKT_NO] & " (FY" & Right$([FY],2) & ")",[EXT_DOC_REF] & IIf(Not IsNull([EXT_DOC_REF])," " & [GBL_PCT] & "%")) AS TSO, [CHARGE_PER_TICKET]*1 AS [TSO $], "(" & [DELIVERED_TO_ASSOCIATE] & ") " & [ASSOCIATE_NAME] AS [Delivered To], [DELIVERED_BY_ASSOCIATE] & " " AS [Del by], [DESIRED_DATE] & " " AS [Date], NMIS_TICKETS.NOTE FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE WHERE (((NMIS_TICKETS.FY) Like [View_FY] & "*") AND ((NMIS_TICKETS.TICKET_TYPE)="P") AND ((NMIS_TICKETS.DELIVERED_TO_ASSOCIATE) Like [Forms]![NMIS_SHIPPING_TICKET subform]![Like_Client] & "*")) ORDER BY NMIS_TICKETS.FY DESC , NMIS_TICKETS.DESIRED_DATE DESC , IIf(Not ([Forms]![NMIS_SHIPPING_TICKET subform]![By_TSO]),Val(Right$([TKT_NO],Len([TKT_NO])-2)),[EXT_DOC_REF]) DESC , Val(Right$([TKT_NO],Len([TKT_NO])-2)) DESC; | AfterUpdate, Enter | 6.86, 5.04, 1.31, 0.24 |
| CommandButton | New_Ticket | Click Here for a New Ticket |  |  | Click | 5.82, 4.74, 2.27, 0.28 |
| CommandButton | Update_ID_Activity_Units | Ship |  |  | Click | 6.84, 4.41, 0.46, 0.26 |
| ComboBox | View_FY | Like View FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR DESC; | Exit | 6.86, 5.33, 0.58, 0.20 |
| Label | Bill_To_Label | Bill To: |  |  |  | 3.85, 0.79, 0.51, 0.20 |
| ComboBox | Bill_To |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME;  |  | 4.41, 0.79, 0.80, 0.20 |
| Subform | NMIS_SHIPPING_TICKET_LOT_BALANCES subform |  | Form.NMIS_SHIPPING_TICKET_LOT_BALANCES subform |  |  | 3.06, 1.55, 6.22, 2.43 |
| TextBox | MGMT_CODE |  |  |  |  | 6.08, 0.78, 0.74, 0.21 |
| Label | Label41 | Job Code: |  |  |  | 5.28, 0.79, 0.72, 0.20 |
| CheckBox | Hide_Zero_Bal_Trans |  |  |  | Click | 8.81, 4.15, 0.00, 0.00 |
| Label | Label54 | Hide Zero Balances: |  |  |  | 7.39, 4.11, 1.39, 0.21 |
| CheckBox | By_TSO | By TSO: |  |  | Click | 8.21, 5.38, 0.00, 0.00 |
| CommandButton | Ticket_Info_By_TSO |  Click to Enter Info by TSO... |  |  | Click | 6.71, 5.88, 2.02, 0.26 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES RIGHT JOIN NMIS_TICKETS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_TICKETS.DELIVERED_TO_ASSOCIATE WHERE (((NMIS_TICKETS.FY) Like [Forms]![NMIS_SHIPPING_TICKET subform]![View_FY] & "*")) GROUP BY NMIS_TICKETS.DELIVERED_TO_ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME, NMIS_TICKETS.DELIVERED_TO_ASSOCIATE ORDER BY NMIS_TICKETS.DELIVERED_TO_ASSOCIATE; | AfterUpdate | 6.86, 5.58, 0.80, 0.20 |
| CommandButton | Ticket_Container_Summary | Tkt/TSO Unit Sum |  |  | Click | 5.58, 5.88, 1.09, 0.26 |
| TextBox | Order_CN |  | =[NMIS_SHIPPING_ID_ACTIVITIES subform].[Form]![ORDER_CN] |  |  | 5.17, 5.79, 0.46, 0.21 |
| CheckBox | Show_Activity_note | Show Activity Note: |  |  |  | 8.81, 4.41, 0.00, 0.00 |
| ComboBox | Client_Contact_CN |  | CONTACT_CN | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)") AS Name FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf(IsNull([Forms]![NMIS_SHIPPING_TICKET subform]![Client_Contact_CN]),"0","*"))) ORDER BY [LAST_NAME] & ", " & [FIRST_NAME] & IIf([historical]," (hist)"); | DblClick | 6.34, 0.41, 2.04, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub By_TSO_Click()
    
    Find_Ticket.Requery
    
End Sub

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

Private Sub Create_Pull_Ticket_Click()
On Error GoTo Err_Create_Pull_Ticket_Click

    Dim stDocName As String

    stDocName = "PRODUCT_PULL_ticket"
    
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Requery
    [NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    If Not IsNull(TKT_NO) Then
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
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If

Exit_Create_Pull_Ticket_Click:
    Exit Sub

Err_Create_Pull_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Pull_Ticket_Click
    
End Sub

Private Sub Create_Shipping_Ticket_Click()
On Error GoTo Err_Create_Shipping_Ticket_Click

    Dim stDocName As String

    stDocName = "PRODUCT_ticket"
    
    DoCmd.RunMacro "Refresh"
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Requery
    [NMIS_SHIPPING_TRANSACTIONS_subform].Requery
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    If Not IsNull(TKT_NO) Then
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
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If

Exit_Create_Shipping_Ticket_Click:
    Exit Sub

Err_Create_Shipping_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Create_Shipping_Ticket_Click
    
End Sub

Private Sub DELIVERED_TO_ASSOCIATE_DblClick(Cancel As Integer)
On Error GoTo Err_DELIVERED_TO_ASSOCIATE_DblClick

    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_Ship_Miles_st"
    DoCmd.OpenForm stDocName, , , , acFormEdit
    
Exit_DELIVERED_TO_ASSOCIATE_DblClick:
    Exit Sub

Err_DELIVERED_TO_ASSOCIATE_DblClick:
    MsgBox Err.DESCRIPTION
    Resume Exit_DELIVERED_TO_ASSOCIATE_DblClick
    
End Sub

Private Sub DESIRED_DATE_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
End Sub

Private Sub Find_Ticket_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[TKT_NO] = '" & Me![Find_Ticket] & "'"
    Me.Bookmark = rs.Bookmark
    
    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
    Client_Contact_Name = Null
    Client_Contact_Phone = Null
    Bill_To = Null
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Like_Client] = "*"
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
                     
End Sub

Private Sub Find_Ticket_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket.Requery
    
End Sub

Private Sub FISCAL_YEAR_DblClick(Cancel As Integer)

    FISCAL_YEAR.Locked = False
    
End Sub

Private Sub FISCAL_YEAR_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    If IsNull(FISCAL_YEAR) Then
        FISCAL_YEAR.Locked = False
    Else
        FISCAL_YEAR.Locked = True
    End If
    
End Sub

Private Sub Form_Current()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket = TKT_NO  'update the find record box match record selected
    
    Client_Contact_Name = Null
    Client_Contact_Phone = Null
    Bill_To = Null
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    DoCmd.GoToRecord , , acNewRec
    
End Sub

Private Sub FY_Current_Only_Click()

    [NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    
End Sub



Private Sub Hide_Zero_Bal_Trans_Click()

    [NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub Like_Client_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub NMIS_SHIPPING_ID_ACTIVITIES_subform_Enter()

    If IsNull([TKT_NO]) Then
        MsgBox "Must enter Ticket ID first!"
        [TKT_NO].SetFocus
    Else
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    End If
  
End Sub

Private Sub NMIS_SHIPPING_TRANSACTIONS_subform_Enter()

    If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![CN]) Then
        MsgBox "Must enter Order ID first!"
        [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
    Else
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = True
        [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Requery
    End If
    
End Sub

Private Sub NOTE_DblClick(Cancel As Integer)
    
    If Not IsNull([DELIVERED_TO_ASSOCIATE]) Then
        DoCmd.Hourglass hourglasson
        DoCmd.RunCommand acCmdRefresh
        DoCmd.OpenForm "NMIS_TICKET_NOTE_FORM"
    Else
        MsgBox "Must enter 'Del. To' Associate first"
    End If
End Sub

Private Sub Note_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    
End Sub

Private Sub NURSERY_CONTACT_CN_Enter()

    NURSERY_CONTACT_CN.Requery
    
End Sub

Private Sub Refresh_Close_Click()

    Dim stDocName As String

    stDocName = "Close_Form"
    
    DoCmd.RunMacro stDocName

End Sub

Private Sub Ship_Ticket_Product_spd2_Click()
On Error GoTo Err_Ship_Ticket_Product_spd2_Click

    If Not IsNull(TKT_NO) Then
        Dim stDocName As String

        stDocName = "Ship_Ticket_Product_spd2"
        DoCmd.OpenQuery stDocName ', acViewPreview
        'MsgBox "Use Export to Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If
Exit_Ship_Ticket_Product_spd2_Click:
    Exit Sub

Err_Ship_Ticket_Product_spd2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Ticket_Product_spd2_Click
    
End Sub

Private Sub SUM_OF_TRANSACTIONS_DblClick(Cancel As Integer)

    If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
        [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
    End If
    
End Sub

Private Sub TKT_NO_DblClick(Cancel As Integer)

    TKT_NO.Locked = False
    MsgBox "Ticket ID now unlocked for editing"
    
End Sub

Private Sub TKT_NO_Enter()

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    If IsNull(TKT_NO) Then
        TKT_NO = "P-" & MAX_TKT_USED
    End If
    TKT_NO.Locked = True

End Sub

Private Sub TKT_NO_Exit(Cancel As Integer)
    
    If Not IsNull(TKT_NO) Then
        If IsNull(CN) Then
            DoCmd.RunMacro "Set_CN2"
        End If
        TKT_NO.Locked = True
    End If
    
End Sub

Private Sub New_Ticket_Click()
On Error GoTo Err_New_Ticket_Click

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False

    DoCmd.GoToRecord , , acNewRec

Exit_New_Ticket_Click:
    Exit Sub

Err_New_Ticket_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Ticket_Click
    
End Sub
Private Sub Update_ID_Activity_Units_Click()

    If [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![Activity_Code] <> "REPACK" Then
        If SUM_OF_TRANSACTIONS > 0 Then
            If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
                [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
                [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
                DoCmd.GoToControl "ORDER_CN"
                DoCmd.GoToRecord , , acNewRec
            Else
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
                [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
                [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
            End If
        Else
            MsgBox "Nothing to ship!"
        End If
    Else
        If IsNull([NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS]) Then
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
            [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
            [NMIS_SHIPPING_ID_ACTIVITIES subform].SetFocus
            DoCmd.GoToControl "ORDER_CN"
            DoCmd.GoToRecord , , acNewRec
        Else
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ACTIVITY_UNITS] = SUM_OF_TRANSACTIONS
            [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![UNIT_CODE] = _
            [NMIS_SHIPPING_TICKET_ORDER_AGREEMENT_LOT_CN subform].Form![Product_Units]
        End If
    End If
    
End Sub

Private Sub View_by_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    [NMIS_SHIPPING_ID_ACTIVITIES subform].Form![ORDER_CN].Requery
  
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    [Forms]![NMIS_SHIPPING_TICKET Subform].[Form]![NMIS_SHIPPING_TICKET_LOT_BALANCES subform].Visible = False
    Find_Ticket.Requery
    
End Sub
Private Sub Ship_Ticket_Product_spd_Click()
On Error GoTo Err_Ship_Ticket_Product_spd_Click

    If Not IsNull(TKT_NO) Then
        Dim stDocName As String

        stDocName = "Ship_Ticket_Product_spd"
        DoCmd.OpenQuery stDocName ', acViewPreview
        'MsgBox "Use Export to Excel to save Spreadsheet in desired folder"
    Else
        MsgBox "Select a Ticket to Print", vbInformation
    End If
Exit_Ship_Ticket_Product_spd_Click:
    Exit Sub

Err_Ship_Ticket_Product_spd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ship_Ticket_Product_spd_Click
    
End Sub
Private Sub Ticket_Info_By_TSO_Click()
On Error GoTo Err_Ticket_Info_By_TSO_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_TICKETS_charge_per_ticket2"
    If Not IsNull([EXT_DOC_REF]) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Product_Ship_Ticket_Total_Containers_mt"
        DoCmd.SetWarnings True
    
        DoCmd.OpenForm stDocName, , , stLinkCriteria
        Forms![NMIS_TICKETS_charge_per_ticket2]![View_FY] = View_FY
        Forms![NMIS_TICKETS_charge_per_ticket2]![Find_TSO] = EXT_DOC_REF
        Forms![NMIS_TICKETS_charge_per_ticket2]![Find_TSO].Visible = False
        Forms![NMIS_TICKETS_charge_per_ticket2]![View_FY].Visible = False
        Forms![NMIS_TICKETS_charge_per_ticket2]![Green_Background_Box].Visible = False
    Else
        MsgBox "Must have a TSO on Ticket"
    End If
    
Exit_Ticket_Info_By_TSO_Click:
    Exit Sub

Err_Ticket_Info_By_TSO_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ticket_Info_By_TSO_Click
    
End Sub
Private Sub Ticket_Container_Summary_Click()
On Error GoTo Err_Ticket_Container_Summary_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Ticket_Container_Summary"
    If Not IsNull(TKT_NO) Then
        DoCmd.OpenForm stDocName, , , stLinkCriteria
    Else
        MsgBox "Please choose a Ticket", vbInformation
    End If

Exit_Ticket_Container_Summary_Click:
    Exit Sub

Err_Ticket_Container_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Ticket_Container_Summary_Click
    
End Sub
```
