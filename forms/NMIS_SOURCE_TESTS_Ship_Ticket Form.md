# Form: NMIS_SOURCE_TESTS_Ship_Ticket Form

**Caption:** Source Test Entry Form  
**Record source:**

```sql
NMIS_SOURCE_TESTS
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_TESTS`, `NMIS_TEST_TYPES`  
**Subforms/subreports:** `Form.NMIS_SOURCE_TEST_RESULTS Subform`, `Form.NMIS_SOURCE_LastTestData2c Query subform`  
**Opens:** `Form:NMIS_SOURCE_LOTS`, `Form:NMIS_SOURCE_SPP_WORKSHEET_ticket`  
**Opened from (VBA):** `Form_Seed_Ship_Ticket_ID_ACTIVITIES subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label46 | Enter/Edit Test Data |  |  |  | 3.23, 0.17, 2.54, 0.33 |
| Line | Line47 |  |  |  |  | 0.08, 0.62, 8.71, 0.00 |
| CommandButton | SaveAndClose | Close |  |  | Click | 8.33, 0.08, 0.47, 0.28 |
| ComboBox | SOURCE_LOT_CN | Source Lot: | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;  |  | 1.19, 0.20, 1.60, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN | CN: | CN |  |  | 7.51, 3.54, 1.04, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 4.66, 1.74, 0.68, 0.20 |
| CheckBox | STRATIFIED | Stratified? | STRATIFIED |  |  | 4.66, 0.58, 0.00, 0.00 |
| TextBox | GERM_PCT | Germination %: | GERM_PCT |  |  | 4.66, 0.78, 0.36, 0.20 |
| TextBox | TEST_DOCUMENT | Document #: | TEST_DOCUMENT |  |  | 1.07, 1.00, 0.91, 0.20 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 4.66, 1.02, 0.36, 0.20 |
| TextBox | MOISTURE_PCT | Moisture : | MOISTURE_PCT |  |  | 4.66, 1.26, 0.37, 0.20 |
| TextBox | FILLED_PCT | Filled %: | FILLED_PCT |  |  | 4.66, 1.50, 0.38, 0.20 |
| TextBox | TEST_DATE | Test Date: | TEST_DATE |  |  | 1.07, 0.52, 0.68, 0.20 |
| TextBox | NOTE | Note | NOTE |  |  | 0.16, 2.27, 5.96, 1.23 |
| Subform | NMIS_SOURCE_TEST_RESULTS Subform1 | NMIS SOURCE TEST RESULTS | Form.NMIS_SOURCE_TEST_RESULTS Subform (master: CN → child: SOURCE_TEST_CN) |  |  | 6.33, 0.25, 2.58, 2.75 |
| TextBox | Index |  | Index |  |  | 6.29, 3.54, 0.67, 0.00 |
| Rectangle | Box48 |  |  |  |  | 0.04, 0.08, 6.17, 3.58 |
| Label | Label50 | Type of Test: |  |  |  | 3.66, 0.29, 0.91, 0.21 |
| ComboBox | TESTED_BY_ASSOCIATE | Tested By: | TESTED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")"; |  | 1.07, 0.76, 2.30, 0.20 |
| CheckBox | CHECK_STRAT | Borderline Strat | CHECK_STRAT |  |  | 6.03, 0.58, 0.00, 0.00 |
| CommandButton | Open_SPP_Calculator | Seed/Pound Calculator |  |  | Click | 1.90, 1.72, 1.46, 0.29 |
| ComboBox | ID_ACTIVITY_CN | Activity Date / Code: | ID_ACTIVITY_CN | SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="TEST" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="RETEST" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="XFRIN1" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="XFRIN2" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE)="ADDNON" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "TST*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RTS*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RETST*") AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN)=[Forms]![Seed_Shipping_Ticket Subform]![Seed_Ship_Ticked_ID_ACTIVITIES subform].[Form]![SOURCE_LOT_CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE DESC; | DblClick, Enter | 1.56, 0.17, 1.65, 0.21 |
| Subform | NMIS_SOURCE_LastTestData2c Query subform |  | Form.NMIS_SOURCE_LastTestData2c Query subform |  |  | 3.92, 2.42, 2.10, 1.05 |
| ComboBox | Combo60 |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_TESTS_Ship_Ticket Form]![TYPE_OF_TEST]),"*",False))); |  | 4.65, 0.29, 0.00, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ID_ACTIVITY_CN_DblClick(Cancel As Integer)

    ID_ACTIVITY_CN.Locked = False
    
End Sub

Private Sub ID_ACTIVITY_CN_Enter()
    
    If IsNull(ID_ACTIVITY_CN) Then
        ID_ACTIVITY_CN.Locked = False
    Else
        ID_ACTIVITY_CN.Locked = True
    End If
    
End Sub

Private Sub Open_SPP_Calculator_Click()

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET_ticket"
    
End Sub

Private Sub SaveAndClose_Click()
On Error GoTo Err_SaveAndClose_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOTS"
    DoCmd.RunMacro ""
    'DoCmd.Save
    DoCmd.Close
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_SaveAndClose_Click:
    Exit Sub

Err_SaveAndClose_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_SaveAndClose_Click
    
End Sub
```
