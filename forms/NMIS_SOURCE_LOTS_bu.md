# Form: NMIS_SOURCE_LOTS_bu

**Caption:** NMIS SOURCE LOTS  
**Record source:**

```sql
NMIS_SOURCE_LOTS
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Form.NMIS_SOURCE_LOT_INFO subform`, `Form.NMIS_ID_ACTIVITIES Subform`, `Form.NMIS_ID_LOCATIONS subform`, `Form.NMIS_SOURCE_LastTestData2 Query subform`, `Form.NMIS_SOURCE_TESTS Subform`, `Form.NMIS_ID_ACTIVITIES2 Subform`, `Form.NMIS_ID_LOCATIONS subform`, `Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform`  
**Opens:** `Form:Lot_ID_Input_Form`, `Form:Lot_ID_Input_Form2b`, `Form:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE`, `Form:NMIS_SOURCE_Card_2`, `Form:NMIS_SOURCE_Card_BACK`, `Form:NMIS_SOURCE_LOTS_INPUT`, `Form:NMIS_SOURCE_LOTS_REPORT2`, `Form:Refresh_Close`, `Form:Seedbox_Labels2`, `Report:Lot_ID_Input_Form`, `Report:Lot_ID_Input_Form2b`, `Report:NMIS_ID_ACTIVITIES_TRANSACTIONS_SOURCE`, `Report:NMIS_SOURCE_Card_2`, `Report:NMIS_SOURCE_Card_BACK`, `Report:NMIS_SOURCE_LOTS_INPUT`, `Report:NMIS_SOURCE_LOTS_REPORT2`, `Report:Refresh_Close`, `Report:Seedbox_Labels2`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl70 |  |  |  |  | 0.00, 0.79, 10.07, 5.64 |
| Page | Lot Information |  |  |  |  | 0.05, 1.08, 9.93, 5.25 |
| Subform | NMIS_SOURCE_LOT_INFO subform |  | Form.NMIS_SOURCE_LOT_INFO subform (master: CN → child: CN) |  |  | 0.10, 1.14, 9.74, 1.96 |
| Subform | Activity |  | Form.NMIS_ID_ACTIVITIES Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.09, 3.19, 9.79, 1.74 |
| Subform | Storage |  | Form.NMIS_ID_LOCATIONS subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.17, 5.03, 4.76, 1.26 |
| Subform | NMIS_SOURCE_LastTestData2 Query subform | Last Test Data | Form.NMIS_SOURCE_LastTestData2 Query subform (master: CN → child: SOURCE_LOT_CN) |  |  | 5.29, 5.24, 1.98, 1.05 |
| Rectangle | Box130 |  |  |  |  | 0.06, 5.00, 5.08, 1.33 |
| Rectangle | Box133 |  |  |  |  | 5.20, 5.00, 2.19, 1.33 |
| Rectangle | Box136 |  |  |  |  | 0.06, 1.08, 9.86, 2.04 |
| Rectangle | Box134 |  |  |  |  | 0.05, 3.17, 9.88, 1.79 |
| CommandButton | Transactions | Transactions |  |  | Click | 8.71, 5.09, 1.21, 0.35 |
| CommandButton | NMIS_SOURCE_CARD | Source Card 2 |  |  | Click | 7.48, 5.20, 0.96, 0.29 |
| CommandButton | NMIS_SOURCE_CARD_BACK | Source Card Back |  |  | Click | 7.48, 5.51, 1.12, 0.29 |
| TextBox | INSERTED_BY | Inserted By: | INSERTED_BY |  |  | 8.86, 5.92, 0.90, 0.00 |
| TextBox | INSERTED_DATE | Inserted Date: | INSERTED_DATE |  |  | 8.86, 6.12, 0.90, 0.00 |
| Page | Test Data |  |  |  |  | 0.09, 1.08, 9.89, 5.25 |
| Subform | NMIS_SOURCE_TESTS Subform | NMIS SOURCE TESTS | Form.NMIS_SOURCE_TESTS Subform (master: CN → child: SOURCE_LOT_CN) |  | Enter | 0.49, 1.31, 9.22, 4.74 |
| Page | Reports |  |  |  |  | 0.09, 1.08, 9.89, 5.25 |
| CommandButton | Preview/Print Box Labels | Box Labels for selected Lot |  |  |  | 0.69, 1.90, 2.00, 0.00 |
| CommandButton | Preview_Box_Mini_Labels | Box Mini Labels... |  |  | Click | 0.69, 2.23, 2.00, 0.00 |
| Label | Label208 | Reports |  |  |  | 4.72, 1.32, 0.57, 0.20 |
| Rectangle | Box210 |  |  |  |  | 0.40, 1.69, 9.46, 3.71 |
| CommandButton | NMIS_GERM_ACTIVITY_REPORT | Lot Germ/Activity Report |  |  | Click | 2.92, 1.92, 2.00, 0.00 |
| Page | Activity Data |  |  |  |  | 0.09, 1.08, 9.89, 5.25 |
| Subform | NMIS_ID_ACTIVITIES2 Subform |  | Form.NMIS_ID_ACTIVITIES2 Subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.19, 1.09, 9.79, 5.23 |
| Page | Storage Location |  |  |  |  | 0.09, 1.08, 9.89, 5.25 |
| Subform | NMIS_ID_LOCATIONS subform1 |  | Form.NMIS_ID_LOCATIONS subform (master: CN → child: SOURCE_LOT_CN) |  |  | 0.90, 1.18, 8.37, 5.08 |
| Page | Page163 | Client Mgmt Codes |  |  |  | 0.09, 1.08, 9.89, 5.25 |
| Subform | NMIS_CLIENT_MGMT_CODES_Source_Lot_Subform | Client Mgmt Codes for this Lot | Form.NMIS_CLIENT_MGMT_CODES_Source_Lots_Subform (master: CN → child: SOURCE_CN) |  |  | 3.42, 2.17, 3.19, 2.79 |
| ComboBox | Selected_Source_ID | Enter a Lot ID: |  | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID, Source_Lot_ID_and_Source_string.SOURCE, [Seed_Balance Query].[Sum Of ACTIVITY_UNITS], NMIS_SOURCE_LOTS.CATEGORY_CODE FROM [Seed_Balance Query] RIGHT JOIN (NMIS_SOURCE_LOTS INNER JOIN Source_Lot_ID_and_Source_string ON NMIS_SOURCE_LOTS.CN = Source_Lot_ID_and_Source_string.CN) ON [Seed_Balance Query].SOURCE_LOT_CN = NMIS_SOURCE_LOTS.CN WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Stored_For] & "*") AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Species] & "*")) ORDER BY NMIS_SOURCE_LOTS.ID; | AfterUpdate, Enter | 1.50, 0.47, 2.00, 0.27 |
| Label | Label147 | NMIS Source Lots Data Maintenance |  |  |  | 4.96, 0.06, 3.57, 0.28 |
| TextBox | CN |  | =IIf(Not IsNull([Selected_Source_ID]),[Selected_Source_ID],[Selected_Source_Code]) |  |  | 8.29, 0.04, 0.00, 0.00 |
| CommandButton | Close | Close |  |  | Click | 9.51, 0.04, 0.47, 0.28 |
| TextBox | SOURCE_LOT_CN |  | CN |  |  | 6.67, 0.12, 0.00, 0.00 |
| TextBox | Index |  | Index |  |  | 7.79, 0.12, 0.00, 0.00 |
| Line | Line137 |  |  |  |  | 0.12, 0.38, 9.75, 0.00 |
| ComboBox | Selected_Source_Code | Source: |  | NMIS_SOURCE_DATA_FORM_MT | Enter | 4.83, 0.47, 5.00, 0.26 |
| Label | Label140 | OR |  |  |  | 3.65, 0.47, 0.31, 0.24 |
| Rectangle | Box142 |  |  |  |  | 0.16, 0.43, 9.73, 0.34 |
| ComboBox | Like_Stored_For | Like Stored For: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Species] & "*")) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; | AfterUpdate, Enter | 1.46, 0.08, 0.00, 0.27 |
| ComboBox | Like_Species |  |  | SELECT NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR FROM NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY INNER JOIN (NMIS_ASSOCIATES INNER JOIN NMIS_SOURCE_LOTS ON (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) AND (NMIS_ASSOCIATES.ASSOCIATE = NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE)) ON NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL = NMIS_SOURCE_LOTS.PLNTMSTR_SYMBOL WHERE (((NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code]) AND ((NMIS_SOURCE_LOTS.STORED_FOR_ASSOCIATE) Like [Forms]![NMIS_SOURCE_LOTS]![Like_Stored_For] & "*")) GROUP BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_NO, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.SPECIES_ABBREVIATION, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.Scientific_Name, NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.VERNACULAR ORDER BY NMIS_SPECIES_PLNTMSTR_SYMBOL_DROPDOWN_QUERY.PLNTMSTR_SYMBOL; | Enter | 3.30, 0.08, 0.00, 0.27 |
| Label | Label161 | Species: |  |  |  | 2.50, 0.10, 0.76, 0.25 |

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

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "Selected_Source_ID"
    
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

Private Sub Preview_Box_Mini_Labels_Click()

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2b"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
End Sub

Private Sub Preview_Print_Box_Labels_Click()
On Error GoTo Err_Preview_Print_Box_Labels_Click

    Dim stDocName As String

    stDocName = "Seedbox_Labels2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Print_Box_Labels_Click:
    Exit Sub

Err_Preview_Print_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Print_Box_Labels_Click
    
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

Private Sub Selected_Source_Code_Enter()


    Selected_Source_ID = Null
    
End Sub

Private Sub Selected_Source_ID_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[CN] = '" & Me![Selected_Source_ID] & "'"
    Me.Bookmark = rs.Bookmark
    
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
