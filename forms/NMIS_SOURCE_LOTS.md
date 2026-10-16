# Form: NMIS_SOURCE_LOTS

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.NMIS_ID_ACTIVITIES2 Subform`, `Form.NMIS_SOURCE_LOT_INFO subform`, `Form.NMIS_ID_ACTIVITIES Subform`, `Form.NMIS_ID_LOCATIONS subform`, `Form.NMIS_SOURCE_LastTestData2 Query subform`, `Form.NMIS_SOURCE_TESTS Subform`, `Form.NMIS_ID_LOCATIONS subform`, `Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform`  
**Opens:** `Form:H_ASF_from_source`, `Form:Lot_ID_Input_Form`, `Form:Lot_ID_Input_Form2`, `Form:Lot_ID_Input_Form2b`, `Form:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE`, `Form:NMIS_SOURCE_Card_2`, `Form:NMIS_SOURCE_Card_BACK`, `Form:NMIS_SOURCE_LOTS_INPUT`, `Form:NMIS_SOURCE_LOTS_REPORT2`, `Form:NMIS_SOURCE_LOTS_TI_form`, `Form:Refresh_Close`, `Report:Lot_ID_Input_Form`, `Report:Lot_ID_Input_Form2`, `Report:Lot_ID_Input_Form2b`, `Report:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE`, `Report:NMIS_SOURCE_Card_2`, `Report:NMIS_SOURCE_Card_BACK`, `Report:NMIS_SOURCE_LOTS_INPUT`, `Report:NMIS_SOURCE_LOTS_REPORT2`, `Report:NMIS_SOURCE_LOTS_TI_form`, `Report:Refresh_Close`  
**Opened from (VBA):** `Form_NMIS_AGREEMENTS_old Subform`, `Form_NMIS_SOURCE_LOTS_TI_Form`, `Form_NMIS_SOURCE_TESTS Form`, `Form_NMIS_SOURCE_TESTS_Ship_Ticket Form`, `Form_NMIS_SOURCE_TESTS_for_Act_data Form`, `Property_Module_Form_Opening Module`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box168 |  |  |  |  | 0.00, 0.01, 10.21, 0.79 |
| TabControl | TabCtl70 |  |  |  |  | 0.00, 0.98, 10.12, 5.97 |
| Page | Activity Data |  |  |  |  | 0.09, 1.27, 9.94, 5.58 |
| Subform | NMIS_ID_ACTIVITIES2 Subform |  | Form.NMIS_ID_ACTIVITIES2 Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.09, 1.28, 9.94, 5.49 |
| Page | Lot Information |  |  |  |  | 0.08, 1.27, 9.95, 5.58 |
| Subform | NMIS_SOURCE_LOT_INFO subform |  | Form.NMIS_SOURCE_LOT_INFO subform (master: CN → child: CN) |  |  | 0.14, 1.32, 9.74, 2.24 |
| Subform | Activity |  | Form.NMIS_ID_ACTIVITIES Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.12, 3.64, 9.79, 1.74 |
| Subform | Storage |  | Form.NMIS_ID_LOCATIONS subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.20, 5.48, 4.76, 1.26 |
| Subform | NMIS_SOURCE_LastTestData2 Query subform | Last Test Data | Form.NMIS_SOURCE_LastTestData2 Query subform (master: CN → child: SOURCE_LOT_CN) |  |  | 5.29, 5.69, 2.06, 1.05 |
| Rectangle | Box130 |  |  |  |  | 0.09, 5.45, 5.08, 1.33 |
| Rectangle | Box133 |  |  |  |  | 5.23, 5.45, 2.19, 1.33 |
| Rectangle | Box136 |  |  |  |  | 0.09, 1.27, 9.86, 2.30 |
| Rectangle | Box134 |  |  |  |  | 0.08, 3.61, 9.88, 1.79 |
| CommandButton | Transactions | Transactions |  |  | Click | 8.74, 5.94, 1.21, 0.35 |
| CommandButton | NMIS_SOURCE_CARD | Source Card 2 |  |  | Click | 7.51, 5.65, 0.96, 0.29 |
| CommandButton | NMIS_SOURCE_CARD_BACK | Source Card Back |  |  | Click | 7.51, 5.96, 1.12, 0.29 |
| TextBox | INSERTED_BY | Inserted By: | INSERTED_BY |  |  | 8.39, 6.36, 1.62, 0.00 |
| TextBox | INSERTED_DATE | Inserted Date: | INSERTED_DATE |  |  | 8.39, 6.57, 1.62, 0.00 |
| CommandButton | Open_Source_TI | Source TI |  |  | Click | 8.88, 5.60, 0.88, 0.29 |
| Page | Test Data |  |  |  |  | 0.09, 1.27, 9.94, 5.58 |
| Subform | NMIS_SOURCE_TESTS Subform | NMIS SOURCE TESTS | Form.NMIS_SOURCE_TESTS Subform (master: CN → child: SOURCE_LOT_CN) |  | Enter | 0.25, 1.50, 9.67, 4.74 |
| Page | Reports |  |  |  |  | 0.09, 1.27, 9.94, 5.58 |
| CommandButton | Preview/Print Box Labels | Box Labels for selected Lot |  |  |  | 0.72, 2.09, 2.00, 0.00 |
| CommandButton | Preview_Box_Mini_Labels | Box Mini Labels... |  |  | Click | 0.72, 2.42, 2.00, 0.00 |
| Label | Label208 | Reports |  |  |  | 4.76, 1.50, 0.57, 0.20 |
| Rectangle | Box210 |  |  |  |  | 0.43, 1.88, 9.46, 3.71 |
| CommandButton | NMIS_GERM_ACTIVITY_REPORT | Lot Germ/Activity Report |  |  | Click | 2.95, 2.10, 2.00, 0.00 |
| CommandButton | ASF_from_source | Harvest ASF/ Performance |  |  | Click | 2.95, 2.42, 2.00, 0.00 |
| Page | Storage Location |  |  |  |  | 0.09, 1.27, 9.94, 5.58 |
| Subform | NMIS_ID_LOCATIONS subform1 |  | Form.NMIS_ID_LOCATIONS subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.93, 1.36, 8.37, 5.08 |
| Page | Page163 | Client Mgmt Codes |  |  |  | 0.09, 1.27, 9.94, 5.58 |
| Subform | NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform | Client Mgmt Codes for this Lot | Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform (master: CN → child: SOURCE_CN) |  |  | 3.45, 2.35, 3.19, 2.79 |
| ComboBox | Selected_Source_ID | Enter a Lot ID: |  | SELECT [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].CN, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].ID, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].[Sum Of ACTIVITY_UNITS], [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].CATEGORY_CODE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].STORED_FOR_ASSOCIATE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].STORED_AT_ASSOCIATE FROM [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE] WHERE ((([*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Stored_For] & "*") AND (([*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Species] & "*") AND ((IIf(Nz([Sum Of ACTIVITY_UNITS],0)>0,1,0)) Like IIf([Forms]![NMIS_SOURCE_LOTS]![Hide_Zero_Bal],1,"*")) AND ((IIf([STORED_AT_ASSOCIATE] Like [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],0,1)) Like IIf([Forms]![NMIS_SOURCE_LOTS]![Hide_Non_Local_Storage],0,"*"))) ORDER BY [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].ID; | AfterUpdate, Enter | 1.50, 0.47, 2.25, 0.27 |
| Label | Label147 | Source Lot Data |  |  |  | 4.99, 0.07, 1.73, 0.28 |
| TextBox | CN |  | =IIf(Not IsNull([Selected_Source_ID]),[Selected_Source_ID],[Selected_Source_Code]) |  |  | 8.62, 0.04, 0.00, 0.00 |
| CommandButton | Close | Close |  |  | Click | 9.68, 0.06, 0.47, 0.28 |
| TextBox | SOURCE_LOT_CN |  | CN |  |  | 8.12, 0.17, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 7.94, 0.12, 0.00, 0.00 |
| Line | Line137 |  |  |  |  | 0.12, 0.38, 9.75, 0.00 |
| ComboBox | Selected_Source_Code | Source: |  | SELECT [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].CN, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].ID, [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].[Sum Of ACTIVITY_UNITS] FROM [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE] WHERE ((([*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE) Is Not Null) AND ((IIf([STORED_AT_ASSOCIATE] Like [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code],0,1)) Like IIf([Forms]![NMIS_SOURCE_LOTS]![Hide_Non_Local_Storage],0,"*")) AND ((IIf(Nz([Sum Of ACTIVITY_UNITS],0)>0,1,0)) Like IIf([Forms]![NMIS_SOURCE_LOTS]![Hide_Zero_Bal],1,"*")) AND (([*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Stored_For] & "*") AND (([*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Species] & "*")) ORDER BY [*NMIS_SOURCE_DATA_MAINT_FORM_TABLE].SOURCE; | AfterUpdate, Enter | 5.04, 0.47, 5.00, 0.26 |
| Label | Label140 | OR |  |  |  | 3.86, 0.47, 0.31, 0.24 |
| Rectangle | Box142 |  |  |  |  | 0.16, 0.43, 9.93, 0.34 |
| ComboBox | Like_Stored_For | Stored For: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Species] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | AfterUpdate, Enter | 2.62, 0.12, 0.78, 0.19 |
| ComboBox | Like_Species |  |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE)) ON NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Stored_For] & "*")) GROUP BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL; | Enter | 4.04, 0.12, 0.78, 0.19 |
| Label | Label161 | Species: |  |  |  | 3.46, 0.12, 0.55, 0.19 |
| CheckBox | Hide_Zero_Bal | Hide Zero Bal |  |  | AfterUpdate | 7.71, 0.17, 0.00, 0.00 |
| TextBox | Default_Date | Default Date: |  |  |  | 0.88, 0.12, 0.50, 0.19 |
| CheckBox | Hide_Non_Local_Storage | Hide Non-Local Storage  |  |  | AfterUpdate | 9.42, 0.17, 0.00, 0.00 |
| Label | Label173 | like: |  |  |  | 1.53, 0.12, 0.30, 0.19 |
| Rectangle | Box174 |  |  |  |  | 1.49, 0.07, 3.39, 0.28 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub preview_print_seedbox_label_Click()
On Error GoTo Err_preview_print_seedbox_label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_preview_print_seedbox_label_Click:
    Exit Sub

Err_preview_print_seedbox_label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_preview_print_seedbox_label_Click
    
End Sub

Private Sub ASF_from_source_Click()
    
    DoCmd.OpenForm "H_ASF_from_source"
 
End Sub

Private Sub Form_Open(Cancel As Integer)
    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "061505" Then
        Open_Source_TI.Visible = True
    Else
        Open_Source_TI.Visible = False
    End If
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_SOURCE_DATA_MAINT_FORM_MT"
    DoCmd.SetWarnings True
    DoCmd.GoToControl "Selected_Source_ID"
    
End Sub

Private Sub Hide_Non_Local_Storage_AfterUpdate()

    Selected_Source_ID.Requery
    Selected_Source_Code.Requery
    
End Sub

Private Sub Hide_Zero_Bal_AfterUpdate()

    Selected_Source_ID.Requery
    Selected_Source_Code.Requery
    
End Sub


Private Sub like_species_AfterUpdate()

    [Selected_Source_ID].Requery
    [Selected_Source_Code].Requery
   
End Sub

Private Sub Like_Species_Enter()

    Like_Species.Requery
    
End Sub

Private Sub Like_Stored_For_AfterUpdate()

    [Selected_Source_ID].Requery
    [Selected_Source_Code].Requery
    
End Sub

Private Sub Like_Stored_For_Enter()

    Like_Stored_For.Requery
    
End Sub

Private Sub NMIS_GERM_ACTIVITY_REPORT_Click()
On Error GoTo Err_NMIS_GERM_ACTIVITY_REPORT_Click

    Dim stDocName As String

    stDocName = "NMIS_SOURCE_LOTS_REPORT2"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_GERM_ACTIVITY_REPORT_Click:
    Exit Sub

Err_NMIS_GERM_ACTIVITY_REPORT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_GERM_ACTIVITY_REPORT_Click
    
End Sub

Private Sub NMIS_ID_ACTIVITIES_Subform_Exit(Cancel As Integer)

    [NMIS_ID_ACTIVITIES Subform].Requery
    
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

    stDocName = "NMIS_SOURCE_Card_2"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_CARD_Click:
    Exit Sub

Err_NMIS_SOURCE_CARD_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_CARD_Click
    
End Sub

Private Sub NMIS_SOURCE_TESTS_Subform_Enter()

    [NMIS_SOURCE_TESTS Subform].Form![ID_ACTIVITY_CN].Requery
    
End Sub

Private Sub Open_Source_TI_Click()
On Error GoTo Err_Open_Source_TI_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
 
    stLinkCriteria = "[CN_SOURCE_LOT]=" & "'" & Me![CN] & "'"
        stDocName = "NMIS_SOURCE_LOTS_TI_form"
        DoCmd.OpenForm stDocName, , , stLinkCriteria, acFormReadOnly
    
Exit_Open_Source_TI_Click:
    Exit Sub

Err_Open_Source_TI_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_TI_Click

End Sub

Private Sub Preview_Box_Mini_Labels_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2b"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![Lot_ID_Input_Form2]![ID] = ID

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click

End Sub


Private Sub Open_Source_Lot_Input_Form_Click()
On Error GoTo Err_Open_Source_Lot_Input_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Source_Lot_Input_Form_Click:
    Exit Sub

Err_Open_Source_Lot_Input_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Source_Lot_Input_Form_Click
    
End Sub
Private Sub Open_NMIS_SOURCE_LOT_INPUT_Click()
On Error GoTo Err_Open_NMIS_SOURCE_LOT_INPUT_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS_INPUT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_NMIS_SOURCE_LOT_INPUT_Click:
    Exit Sub

Err_Open_NMIS_SOURCE_LOT_INPUT_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_NMIS_SOURCE_LOT_INPUT_Click
    
End Sub
Private Sub Close_Click()
On Error GoTo Err_Close_Click

    Dim stDocName As String

    stDocName = "Refresh_Close"
    DoCmd.RunMacro stDocName

Exit_Close_Click:
    Exit Sub

Err_Close_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Close_Click
    
End Sub
Private Sub Command243_Click()
On Error GoTo Err_Command243_Click


    DoCmd.DoMenuItem acFormBar, acRecordsMenu, 5, , acMenuVer70
    DoCmd.Close

Exit_Command243_Click:
    Exit Sub

Err_Command243_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command243_Click
    
End Sub

Private Sub Selected_Source_Code_AfterUpdate()

Selected_Source_ID = Selected_Source_Code

End Sub

Private Sub Selected_Source_Code_Enter()

    Selected_Source_ID = Null
    
End Sub

Private Sub Selected_Source_ID_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Selected_Source_ID] & "'"
    Me.Bookmark = rs.Bookmark
    Selected_Source_Code = Selected_Source_ID
    [NMIS_SOURCE_TESTS Subform].Form![ID_ACTIVITY_CN].Requery

End Sub

Private Sub Selected_Source_ID_Enter()

    Selected_Source_Code = Null
    
End Sub
Private Sub Find_Selected_Lot_Click()
On Error GoTo Err_Find_Selected_Lot_Click

    If [Selected_Source_ID] <> "" Then
        CN = Selected_Source_ID
    Else
        CN = Selected_Source_Code
    End If
    'Screen.PreviousControl.SetFocus
    'DoCmd.DoMenuItem acFormBar, acEditMenu, 10, , acMenuVer70

Exit_Find_Selected_Lot_Click:
    Exit Sub

Err_Find_Selected_Lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Find_Selected_Lot_Click
    
End Sub

Private Sub Transactions_Click()
On Error GoTo Err_Transactions_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Transactions_Click:
    Exit Sub

Err_Transactions_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Transactions_Click
    
End Sub
```
