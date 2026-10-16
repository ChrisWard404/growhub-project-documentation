# Form: NMIS_CONTACTS

**Caption:** NMIS CONTACTS  
**Record source:**

```sql
SELECT NMIS_CONTACTS.* FROM NMIS_CONTACTS WHERE (((IIf([HOME_ASSOCIATE] Like "99*","99","non99")) Like IIf([Forms]![NMIS_CONTACTS]![Hide_99s],"non99","*")) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf([Forms]![NMIS_CONTACTS]![Hide_Historical],0,"*"))) ORDER BY NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`  
**Subforms/subreports:** `Form.NMIS_PHONE_NUMBERS subform1`, `Form.NMIS_ASSOCIATES subform`, `Form.NMIS_CONTACTS_LIST`  
**Opens:** `Form:NMIS_CONTACTS_LIST`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_NMIS_AGREEMENTS`, `Form_NMIS_AGREEMENTS_bu`, `Form_NMIS_ASSOCIATES`, `Form_NMIS_ASSOCIATES_CONTACTS subform`, `Form_NMIS_PROCESSING_ORDERS_ID_UPDATE subform`, `Form_NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform`, `Form_NMIS_PROCESSING_ORDERS_INPUT`, `Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`, `Form_NMIS_PROCESSING_ORDERS_INPUT_Propagule`, `Form_NMIS_PROCESSING_ORDERS_INPUTbu`, `Form_NMIS_SHIPPING_TICKET subform`, `Form_Seed_Shipping_Ticket Subform`, `Form_xLookup_Tables_Menu`  
**Form events with code:** Close, Current, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box104 |  |  |  |  | 0.03, 0.02, 8.71, 0.71 |
| ComboBox | CONTACT_Lookup |  |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME]) & IIf([nmis_Contacts].[historical]," (Historical)") AS NAME, [HOME_ASSOCIATE] & " - " & [ASSOCIATE_NAME] & IIf([NMIS_ASSOCIATES].[historical]," (Historical)") AS Home FROM NMIS_CONTACTS LEFT JOIN NMIS_ASSOCIATES ON NMIS_CONTACTS.HOME_ASSOCIATE = NMIS_ASSOCIATES.ASSOCIATE WHERE (((NMIS_CONTACTS.HISTORICAL) Like IIf([Forms]![NMIS_CONTACTS]![Hide_Historical],0,"*")) AND ((IIf([HOME_ASSOCIATE] Like "99*","99","non99")) Like IIf([Forms]![NMIS_CONTACTS]![Hide_99s],"non99","*")) AND ((NMIS_CONTACTS.HOME_ASSOCIATE) Like [Forms]![NMIS_CONTACTS]![Home_Associate_Filter] & "*")) ORDER BY [LAST_NAME] & IIf(Not IsNull([FIRST_NAME]),", " & [FIRST_NAME]) & IIf([nmis_Contacts].[historical]," (Historical)"); | AfterUpdate, Enter | 0.64, 0.42, 3.00, 0.25 |
| CommandButton | Unfilter | Click to Find a Contact |  |  | Click | 0.71, 0.43, 1.50, 0.23 |
| Label | Label33 | NMIS Contacts |  |  |  | 3.82, 0.09, 1.65, 0.31 |
| TextBox | CN |  | CN |  |  | 6.04, 0.03, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 2.73, 0.45, 0.00, 0.00 |
| Label | Find_Label | Find: |  |  |  | 0.11, 0.42, 0.48, 0.25 |
| Label | Home_Associate_Filter_Label | Filter for Home Associate: |  |  |  | 0.10, 0.11, 2.11, 0.25 |
| TextBox | Home_Associate_Filter |  |  |  | AfterUpdate, DblClick | 2.26, 0.11, 1.05, 0.25 |
| CheckBox | Hide_99s | Hide "99" Contacts |  |  | AfterUpdate | 6.08, 0.44, 0.00, 0.00 |
| CheckBox | Hide_Historical | Hide Historical |  |  | AfterUpdate | 6.08, 0.17, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LAST_NAME | Last Name | LAST_NAME |  | DblClick, Enter, Exit | 0.67, 0.33, 1.77, 0.20 |
| TextBox | FIRST_NAME | First Name | FIRST_NAME |  | DblClick, Enter, Exit | 2.57, 0.33, 1.91, 0.20 |
| TextBox | MIDDLE_INITIAL | MI | MIDDLE_INITIAL |  | Exit | 4.58, 0.33, 0.25, 0.20 |
| TextBox | CONTACT_DESC | Contact Descripton: | CONTACT_DESC |  |  | 1.96, 0.87, 2.33, 0.20 |
| TextBox | EMAIL_ADDR | E-Mail Address: | EMAIL_ADDR |  |  | 1.96, 1.11, 4.25, 0.20 |
| TextBox | NOTE | Note: | NOTE |  |  | 1.96, 1.57, 6.21, 0.36 |
| Line | Line36 |  |  |  |  | 0.00, 0.57, 8.48, 0.00 |
| TabControl | TabCtl38 |  |  |  |  | 0.00, 2.06, 8.73, 3.72 |
| Page | Phone Numbers and  Associates |  |  |  |  | 0.08, 2.35, 8.55, 3.33 |
| Label | Label42 | PHONE Numbers |  |  |  | 0.21, 2.47, 1.45, 0.24 |
| Subform | Child49 |  | Form.NMIS_PHONE_NUMBERS subform1 (master: CN → child: CONTACT_CN) |  |  | 0.11, 2.72, 3.64, 2.88 |
| Subform | NMIS_ASSOCIATES subform | NMIS Associates | Form.NMIS_ASSOCIATES subform (master: CN → child: CONTACT_CN) |  |  | 3.93, 2.77, 4.61, 2.83 |
| Rectangle | Box61 |  |  |  |  | 3.88, 2.35, 4.75, 3.32 |
| Rectangle | Box98 |  |  |  |  | 0.08, 2.35, 3.74, 3.32 |
| Page | Contacts Lookup List |  |  |  |  | 0.09, 2.35, 8.54, 3.33 |
| Subform | NMIS_CONTACTS_LIST | CONTACTS LOOKUP LIST | Form.NMIS_CONTACTS_LIST |  |  | 2.00, 2.55, 4.72, 2.88 |
| ComboBox | HOME_ASSOCIATE | Home Associate: | HOME_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | DblClick, Enter | 1.96, 0.62, 1.35, 0.20 |
| TextBox | CONTACT_NAME_UPPER | Contact Name Upper: | CONTACT_NAME_UPPER |  |  | 1.96, 1.34, 2.58, 0.20 |
| ComboBox | ASSOCIATE_NAME |  | HOME_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)") AS name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)"); |  | 3.44, 0.62, 4.19, 0.20 |
| CheckBox | HISTORICAL | HISTORICAL: | HISTORICAL |  |  | 6.51, 0.29, 0.00, 0.00 |
| TextBox | Text205 |  | =IIf([Historical],"HISTORICAL") |  |  | 6.88, 0.17, 1.58, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Open_Contact_Listing_Click()
On Error GoTo Err_Open_Contact_Listing_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS_LIST"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Contact_Listing_Click:
    Exit Sub

Err_Open_Contact_Listing_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Contact_Listing_Click
    
End Sub

Private Sub CONTACT_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![CONTACT_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
   
End Sub

Private Sub CONTACT_Lookup_Enter()

    Unfilter.Visible = False
    CONTACT_Lookup.Requery
    
End Sub

Private Sub FIRST_NAME_DblClick(Cancel As Integer)

    If Not IsNull(FIRST_NAME) Then
        [FIRST_NAME].Locked = False
        'MsgBox "First Name unlocked for editing."
    End If
    
End Sub

Private Sub FIRST_NAME_Enter()

    If Not IsNull([FIRST_NAME]) Then
        [FIRST_NAME].Locked = True
    Else
        [FIRST_NAME].Locked = False
    End If
    
End Sub

Private Sub FIRST_NAME_Exit(Cancel As Integer)
    
    If Not IsNull(LAST_NAME) Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    End If
    
End Sub

Private Sub Form_Close()
    'Dim strFormName As String
    
    'strFormName = "NMIS_AGREEMENTS"
    
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_AGREEMENTS") <> 0 Then
        Forms![NMIS_AGREEMENTS]![CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "SEED_SHIPPING_TICKET Subform") <> 0 Then
        Forms![SEED_SHIPPING_TICKET Subform]![Client_Contact_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_SHIPPING_TICKET Subform") <> 0 Then
        Forms![NMIS_SHIPPING_TICKET Subform]![Client_Contact_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE") <> 0 Then
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].Form![CONTACT_CN].Requery
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE]![NMIS_PROCESSING_ORDERS_ID_UPDATE subform].Form![SECONDARY_CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESSING_ORDERS_INPUT") <> 0 Then
        Forms![NMIS_PROCESSING_ORDERS_INPUT]![CONTACT_CN].Requery
        Forms![NMIS_PROCESSING_ORDERS_INPUT]![SECONDARY_CONTACT_CN].Requery
    End If
    If SysCmd(acSysCmdGetObjectState, acForm, "NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2") <> 0 Then
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].Form![CONTACT_CN].Requery
        Forms![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].Form![SECONDARY_CONTACT_CN].Requery
    End If

End Sub

Private Sub Form_Current()

    CONTACT_Lookup = CN
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Unfilter.Visible = False
    CONTACT_Lookup.Visible = True
    Home_Associate_Filter.Visible = True
    Find_Label.Visible = True
    DoCmd.GoToControl "contact_lookup"
    
End Sub

Private Sub Hide_99s_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Hide_Historical_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub HOME_ASSOCIATE_DblClick(Cancel As Integer)

    HOME_ASSOCIATE.Locked = False
    
End Sub

Private Sub HOME_ASSOCIATE_Enter()
    
    If Not IsNull([HOME_ASSOCIATE]) Then
        [HOME_ASSOCIATE].Locked = True
    Else
        [HOME_ASSOCIATE].Locked = False
    End If
    
End Sub

Private Sub Home_Associate_Filter_AfterUpdate()

    CONTACT_Lookup.Requery
    
End Sub

Private Sub Home_Associate_Filter_DblClick(Cancel As Integer)
    
    Home_Associate_Filter = "*"
    
End Sub

Private Sub LAST_NAME_DblClick(Cancel As Integer)

    If Not IsNull(LAST_NAME) Then
        [LAST_NAME].Locked = False
        'MsgBox "Last Name unlocked for editing."
    End If
    
End Sub

Private Sub LAST_NAME_Enter()

    If Not IsNull([LAST_NAME]) Then
        [LAST_NAME].Locked = True
    Else
        [LAST_NAME].Locked = False
    End If
    
End Sub

Private Sub LAST_NAME_Exit(Cancel As Integer)
    
    If Not IsNull(LAST_NAME) Then
        [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    End If
    
End Sub

Private Sub MIDDLE_INITIAL_Exit(Cancel As Integer)

    [CONTACT_NAME_UPPER] = UCase([LAST_NAME] & IIf(Not IsNull(FIRST_NAME), ", " & [FIRST_NAME], "") & IIf(Not IsNull(MIDDLE_INITIAL), " " & [MIDDLE_INITIAL], ""))
    
End Sub

Private Sub Unfilter_Click()
On Error GoTo Err_Unfilter_Click


    'Screen.PreviousControl.SetFocus
    DoCmd.ShowAllRecords
    CONTACT_Lookup.Visible = True
    Find_Label.Visible = True
    Forms![NMIS_CONTACTS]!Home_Associate_Filter.Visible = True
    Forms![NMIS_CONTACTS]!Home_Associate_Filter_Label.Visible = True
    Forms![NMIS_CONTACTS]!Hide_99s.Visible = True
    Forms![NMIS_CONTACTS]!Hide_Historical.Visible = True
    DoCmd.GoToControl "CONTACT_Lookup"
Exit_Unfilter_Click:
    Exit Sub

Err_Unfilter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Unfilter_Click
    
End Sub
```
