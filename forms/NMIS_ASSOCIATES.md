# Form: NMIS_ASSOCIATES

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_COUNTRIES`, `NMIS_STATES`  
**Subforms/subreports:** `Form.NMIS_ASSOCIATES_99S subform`, `Form.NMIS_PHONE_NUMBERS_ASSOCIATE subform`, `Form.NMIS_ASSOCIATES_CONTACTS subform`, `Form.NMIS_PHONE_NUMBERS_CONTACTS subform`, `Form.NMIS_CONTACT_NAME_SELECTED subform`, `Form.NMIS_ASSOCIATES_CONTACT_INFO Subform`, `Form.NMIS_ASSOCIATE_GROUPS subform`, `Form.NMIS_ASSOCIATES subform1`  
**Opens:** `Form:NMIS_CONTACTS`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_NMIS_AGREEMENTS`, `Form_NMIS_AGREEMENTS_bu`, `Form_NMIS_CONTRACTS`, `Form_NMIS_PROCESSING_ORDERS_INPUT`, `Form_NMIS_PROCESSING_ORDERS_INPUT_LotIdLookup`, `Form_NMIS_PROCESSING_ORDERS_INPUTbu`, `Form_NMIS_SOURCE_LOTS_INPUT`, `Form_Seed_Shipping_Ticket Subform`, `Form_xLookup_Tables_Menu`  
**Form events with code:** AfterInsert, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box252 |  |  |  |  | 0.02, 0.03, 4.28, 0.85 |
| CommandButton | Unfilter | Click to Find an Associate |  |  | Click | 0.10, 0.32, 1.62, 0.23 |
| Subform | NMIS_ASSOCIATES_99S subform |  | Form.NMIS_ASSOCIATES_99S subform |  |  | 7.88, 0.25, 0.97, 0.28 |
| Label | Label62 | NMIS Associates |  |  |  | 4.42, 0.08, 1.87, 0.31 |
| Label | Label231 | Next "99XXXX" Client Number: |  |  |  | 7.64, 0.04, 1.67, 0.17 |
| CommandButton | New_99_Client | Click to Add a Non-Gov Associate |  |  | Click | 7.83, 0.04, 1.08, 0.46 |
| CommandButton | New_Record | Click to Add a  Gov Associate |  |  | Click | 6.69, 0.04, 1.08, 0.46 |
| ComboBox | ASSOCIATE_Lookup |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department])) AS name FROM NMIS_ASSOCIATES WHERE ((([ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department]))) Like [Forms]![NMIS_ASSOCIATES]![LikeAssociate])) ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | AfterUpdate, Enter | 3.20, 0.57, 1.04, 0.24 |
| Label | Associate_lookup_Label | Find Associate by Name                                 by Code    |  |  |  | 0.10, 0.34, 4.12, 0.21 |
| ComboBox | ASSOCIATE_Lookup_by_Name |  |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department])) AS name, NMIS_ASSOCIATES.ASSOCIATE FROM NMIS_ASSOCIATES WHERE ((([ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department]))) Like [Forms]![NMIS_ASSOCIATES]![LikeAssociate])) ORDER BY [ASSOCIATE_NAME] & IIf([historical]," (Historical)" & " ",IIf(Not IsNull([DEPARTMENT])," - " & [department])); | AfterUpdate, Enter | 0.10, 0.57, 3.05, 0.24 |
| TextBox | LikeAssociate | Like Name: |  |  | AfterUpdate, DblClick | 1.03, 0.08, 2.14, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ASSOCIATE | Associate: | ASSOCIATE |  | DblClick, Enter, Exit | 0.94, 0.04, 1.00, 0.20 |
| TextBox | ASSOCIATE_NAME | Name: | ASSOCIATE_NAME |  | DblClick, Enter, Exit | 0.94, 0.28, 3.16, 0.20 |
| TextBox | DEPARTMENT | Dept/Attn: | DEPARTMENT |  |  | 0.94, 0.53, 3.16, 0.20 |
| TextBox | EMAIL_ADDRESS | Email: | EMAIL_ADDR |  |  | 0.94, 0.78, 3.16, 0.20 |
| TextBox | SQLNET_ADDR | SQLNET Addr: | SQLNET_ADDR |  |  | 8.50, 0.76, 0.83, 0.20 |
| TextBox | LAST_SQLNET_FETCH | Last SQLNET Fetch: | LAST_SQLNET_FETCH |  |  | 8.50, 0.52, 0.83, 0.20 |
| CheckBox | NMIS_NETWORK | Nmis Network: | NMIS_NETWORK |  |  | 6.70, 0.81, 0.00, 0.00 |
| CheckBox | NURSERY | Nursery? | NURSERY |  |  | 5.17, 0.57, 0.00, 0.00 |
| CheckBox | ON_LOCAL_CELL | On Local Cell: | ON_LOCAL_CELL |  |  | 5.17, 0.81, 0.00, 0.00 |
| TextBox | RNS_HOME_ASSOCIATE | RNS Home Associate: | RNS_HOME_ASSOCIATE |  |  | 8.50, 0.28, 0.84, 0.20 |
| TabControl | TabCtl115 |  |  |  |  | 0.05, 1.26, 9.36, 4.54 |
| Page | Address/Phone |  |  |  |  | 0.15, 1.55, 9.18, 4.16 |
| TextBox | MAIL_ADDR | P.O. Box: | MAIL_ADDR |  |  | 1.33, 1.96, 3.56, 0.20 |
| TextBox | STREET_ADDR | Street: | STREET_ADDR |  |  | 1.33, 2.20, 3.56, 0.20 |
| TextBox | CITY | City: | CITY |  |  | 1.33, 2.44, 2.40, 0.20 |
| ComboBox | STATE | State: | STATE | SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME FROM NMIS_STATES; |  | 1.33, 2.68, 0.60, 0.21 |
| TextBox | ZIPCODE | Zip: | ZIPCODE |  |  | 2.41, 2.69, 0.76, 0.20 |
| ComboBox | COUNTRY | Country: | COUNTRY | SELECT NMIS_COUNTRIES.COUNTRY_CODE, NMIS_COUNTRIES.COUNTRY_NAME FROM NMIS_COUNTRIES;  |  | 3.95, 2.70, 0.00, 0.20 |
| TextBox | FOREIGN_STATE | Foreign State: | FOREIGN_STATE |  |  | 1.33, 3.01, 3.55, 0.20 |
| TextBox | SHIP_ADDR | Street: | SHIP_ADDR |  | DblClick | 1.33, 3.73, 3.46, 0.20 |
| TextBox | SHIP_CITY | City: | SHIP_CITY |  |  | 1.33, 3.97, 3.46, 0.20 |
| ComboBox | SHIP_STATE | State: | SHIP_STATE | SELECT NMIS_STATES.STATE_CODE, NMIS_STATES.STATE_NAME FROM NMIS_STATES; |  | 1.33, 4.22, 0.62, 0.20 |
| Label | Label188 | Mailing Address: |  |  |  | 2.22, 1.70, 1.14, 0.20 |
| Label | Label189 | Shipping Address: |  |  |  | 2.23, 3.47, 1.26, 0.20 |
| Rectangle | Box190 |  |  |  |  | 0.46, 1.64, 4.59, 1.73 |
| Rectangle | Box191 |  |  |  |  | 0.47, 3.42, 4.58, 1.73 |
| TextBox | SHIP_ZIPCODE | Zip: | SHIP_ZIPCODE |  |  | 2.41, 4.22, 0.76, 0.20 |
| ComboBox | SHIP_COUNTRY | Country: | SHIP_COUNTRY | SELECT NMIS_COUNTRIES.COUNTRY_CODE, NMIS_COUNTRIES.COUNTRY_NAME FROM NMIS_COUNTRIES;  |  | 3.95, 4.22, 0.92, 0.19 |
| TextBox | SHIP_FOREIGN_STATE | Foreign State: | SHIP_FOREIGN_STATE |  |  | 1.33, 4.51, 3.46, 0.20 |
| TextBox | SHIP_MILES | Miles: | SHIP_MILES |  |  | 1.33, 4.88, 1.20, 0.20 |
| TextBox | NOTE | Note: | NOTE |  |  | 0.97, 5.20, 4.07, 0.46 |
| Subform | Child213 | Main Phone Numbers: | Form.NMIS_PHONE_NUMBERS_ASSOCIATE subform (master: ASSOCIATE → child: ASSOCIATE) |  |  | 5.74, 1.98, 3.54, 3.71 |
| Page | Page126 | Contacts |  |  |  | 0.15, 1.55, 9.18, 4.16 |
| Subform | NMIS_ASSOCIATES_CONTACTS  subform | Contacts | Form.NMIS_ASSOCIATES_CONTACTS subform (master: ASSOCIATE → child: LINK_ASSOCIATE) |  |  | 0.25, 1.84, 2.56, 3.78 |
| Rectangle | Box205 |  |  |  |  | 0.19, 1.56, 2.70, 4.11 |
| Subform | NMIS_PHONE_NUMBERS_CONTACTS subform |  | Form.NMIS_PHONE_NUMBERS_CONTACTS subform (master: EMAIL_ADDR → child: CONTACT_CN) |  |  | 5.91, 2.19, 3.36, 3.44 |
| Rectangle | Box222 |  |  |  |  | 2.96, 1.56, 6.36, 4.11 |
| Subform | NMIS_CONTACT_NAME_SELECTED subform |  | Form.NMIS_CONTACT_NAME_SELECTED subform (master: EMAIL_ADDR → child: CN) |  |  | 5.03, 1.60, 2.82, 0.51 |
| Subform | NMIS_ASSOCIATES_CONTACT_INFO Subform |  | Form.NMIS_ASSOCIATES_CONTACT_INFO Subform (master: EMAIL_ADDR → child: CN) |  |  | 3.04, 2.19, 2.80, 3.43 |
| Page | Groups | Groups |  |  |  | 0.15, 1.55, 9.18, 4.16 |
| Subform | Child119 |  | Form.NMIS_ASSOCIATE_GROUPS subform (master: ASSOCIATE → child: ASSOCIATE) |  |  | 0.46, 1.57, 3.60, 4.14 |
| Page | Associate_Listing | All Associates Listing |  |  |  | 0.15, 1.55, 9.18, 4.16 |
| Subform | NMIS_ASSOCIATES subform1 |  | Form.NMIS_ASSOCIATES subform1 |  | Exit | 0.33, 1.55, 8.77, 4.16 |
| ComboBox | SOURCE_CODE_TYPE | Source Code Type: | SOURCE_CODE_TYPE | R1;R2;R4;R5;R6;R6d;R9;BLM |  | 3.75, 0.04, 0.57, 0.20 |
| TextBox | ASSOCIATE_NAME_UPPER | Associate Name Upper: | ASSOCIATE_NAME_UPPER |  |  | 1.73, 1.03, 4.07, 0.20 |
| TextBox | EMAIL_ADDR |  | =[NMIS_ASSOCIATES_CONTACTS  subform].Form!CONTACT_CN |  |  | 6.79, 0.83, 1.11, 0.00 |
| Label | Label224 | Links Contacts Subforms using the EMAIL_ADDR field name (Actual field was  Renamed EMAIL_ADDRESS) |  |  |  | 4.96, 1.12, 1.50, 0.79 |
| ComboBox | PARENT_ASSOCIATE | Parent: | PARENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  | NotInList | 5.17, 0.04, 1.16, 0.20 |
| CheckBox | PRINT_LABEL | Label? | PRINT_LABEL |  |  | 6.70, 0.54, 0.00, 0.00 |
| ComboBox | Combo235 |  | =[PARENT_ASSOCIATE] | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES;  |  | 6.36, 0.04, 3.03, 0.20 |
| ComboBox | STORAGE_ASSOCIATE | Storage: | STORAGE_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.NURSERY)=-1));  |  | 5.17, 0.28, 1.16, 0.20 |
| TextBox | Entered_By | By: | Entered_By |  |  | 8.60, 1.06, 0.74, 0.00 |
| TextBox | Entered_Date | Date Entered: | Entered_Date |  |  | 7.74, 1.06, 0.51, 0.00 |
| CheckBox | HISTORICAL | Historical: | HISTORICAL |  |  | 6.70, 1.06, 0.00, 0.00 |
| TextBox | Text205 |  | =IIf([Historical],"HISTORICAL") |  |  | 5.55, 1.22, 1.58, 0.25 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ASSOCIATE_DblClick(Cancel As Integer)

            [Associate].Locked = False
            MsgBox "Associate unlocked for editing."

End Sub

Private Sub ASSOCIATE_Enter()

    If Not IsNull([Associate]) Then
        [Associate].Locked = True
    Else
        [Associate].Locked = False
    End If

End Sub

Private Sub ASSOCIATE_Exit(Cancel As Integer)

    If Not IsNull([Associate]) Then
        [Associate].Locked = True
    Else
        MsgBox "ASSOCIATE CODE MUST BE ENTERED"
    End If
    
End Sub

Private Sub ASSOCIATE_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & Me![ASSOCIATE_Lookup] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub ASSOCIATE_Lookup_by_Name_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & Me![ASSOCIATE_Lookup_by_Name] & "'"
    Me.Bookmark = rs.Bookmark

End Sub

Private Sub ASSOCIATE_Lookup_by_Name_Enter()

    ASSOCIATE_Lookup = Null
    
End Sub

Private Sub ASSOCIATE_Lookup_Enter()

    ASSOCIATE_Lookup_by_Name = Null
    
End Sub

Private Sub ASSOCIATE_NAME_DblClick(Cancel As Integer)

            [ASSOCIATE_NAME].Locked = False
            MsgBox "Associate Name unlocked for editing."
            
End Sub

Private Sub ASSOCIATE_NAME_Enter()

    If IsNull(ASSOCIATE_NAME) Then
        ASSOCIATE_NAME.Locked = False
    End If
    
End Sub

Private Sub ASSOCIATE_NAME_Exit(Cancel As Integer)

    If Not IsNull([ASSOCIATE_NAME]) Then
        [ASSOCIATE_NAME].Locked = True
        [ASSOCIATE_NAME_UPPER] = UCase([ASSOCIATE_NAME])
    End If

End Sub

Private Sub Form_AfterInsert()

    DoCmd.RunMacro "refresh"

End Sub

Private Sub Form_Open(Cancel As Integer)
    
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = True
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = True
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = True
    Forms![NMIS_Associates]![LikeAssociate].Visible = True
    DoCmd.GoToControl "ASSOCIATE_Lookup_by_Name"
    
End Sub

Private Sub LikeAssociate_AfterUpdate()
    ASSOCIATE_Lookup_by_Name.Requery
    ASSOCIATE_Lookup.Requery
End Sub

Private Sub LikeAssociate_DblClick(Cancel As Integer)
    LikeAssociate = "*"
    ASSOCIATE_Lookup_by_Name.Requery
    ASSOCIATE_Lookup.Requery
End Sub

Private Sub New_99_Client_Click()

    DoCmd.GoToRecord , , acNewRec
    [Associate] = Forms![NMIS_Associates]![NMIS_ASSOCIATES_99S subform]![NEXT_SURPLUS_ASSOCIATE]
    PARENT_ASSOCIATE = "990000"

End Sub

Private Sub Open_Contact_Form_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
        MsgBox [NMIS_ASSOCIATES_CONTACTS  subform].Form![CONTACT_NAME]
    If IsNull([NMIS_ASSOCIATES_CONTACTS  subform].Form![CONTACT_NAME]) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([LAST_NAME]=" & "'" & Forms![NMIS_Associates]![NMIS_CONTACT_NAME_SELECTED subform].Form![LAST_NAME] & _
                        "'AND " & "[FIRST_NAME] = " & " '" & Forms![NMIS_Associates]![NMIS_CONTACT_NAME_SELECTED subform].Form![FIRST_NAME] & "')", acFormEdit
    End If

End Sub


Private Sub NMIS_ASSOCIATES_subform1_Exit(Cancel As Integer)

    'Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ASSOCIATE] = '" & [NMIS_ASSOCIATES subform1].Form![Associate] & "'"
    Me.Bookmark = rs.Bookmark
    
End Sub

Private Sub PARENT_ASSOCIATE_NotInList(NewData As String, Response As Integer)

        MsgBox "PARENT NOT CURRENTLY AN ASSOCIATE. TO USE THIS PARENT, ADD AS AN ASSOCIATE."
        
End Sub

Private Sub New_Record_Click()
On Error GoTo Err_New_Record_Click

    Dim stDocName As String

    DoCmd.GoToRecord , , acNewRec

Exit_New_Record_Click:
    Exit Sub

Err_New_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Record_Click
    
End Sub

Private Sub SHIP_ADDR_DblClick(Cancel As Integer)

    If IsNull(SHIP_ADDR) Then
        SHIP_ADDR = STREET_ADDR
    End If
    If IsNull(SHIP_CITY) Then
        SHIP_CITY = CITY
    End If
    If IsNull(SHIP_STATE) Then
        SHIP_STATE = STATE
    End If
    If IsNull(SHIP_ZIPCODE) Then
        SHIP_ZIPCODE = ZIPCODE
    End If
    If IsNull(SHIP_COUNTRY) Then
        SHIP_COUNTRY = COUNTRY
    End If
    
End Sub

Private Sub Unfilter_Click()
On Error GoTo Err_Unfilter_Click


    Screen.PreviousControl.SetFocus
    DoCmd.ShowAllRecords
        
    Forms![NMIS_Associates]![ASSOCIATE_Lookup].Visible = True
    Forms![NMIS_Associates]![Associate_lookup_Label].Visible = True
    Forms![NMIS_Associates]![ASSOCIATE_Lookup_by_Name].Visible = True
    Forms![NMIS_Associates]![LikeAssociate].Visible = True
    DoCmd.GoToControl "ASSOCIATE_Lookup_by_Name"
    
Exit_Unfilter_Click:
    Exit Sub

Err_Unfilter_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Unfilter_Click
End Sub
```
