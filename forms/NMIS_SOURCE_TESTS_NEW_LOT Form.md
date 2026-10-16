# Form: NMIS_SOURCE_TESTS_NEW_LOT Form

**Caption:** Source Test Entry Form  
**Record source:**

```sql
NMIS_SOURCE_TESTS
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_TESTS`, `NMIS_TEST_TYPES`  
**Subforms/subreports:** `Form.NMIS_SOURCE_TEST_RESULTS Subform`  
**Opens:** `Form:NMIS_SOURCE_SPP_WORKSHEET_New_Lot`  
**Opened from (VBA):** `Form_NMIS_SOURCE_LOTS_INPUT`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label46 | Enter/Edit Test Data |  |  |  | 3.97, 0.17, 2.54, 0.33 |
| Line | Line47 |  |  |  |  | 0.08, 0.62, 9.38, 0.00 |
| CommandButton | SaveAndClose | Close |  |  | Click | 8.99, 0.08, 0.47, 0.28 |
| ComboBox | Source_Lot_CN | Source Lot: | SOURCE_LOT_CN | SELECT [NMIS_SOURCE_LOTS].[CN], [NMIS_SOURCE_LOTS].[ID] FROM NMIS_SOURCE_LOTS;  |  | 1.17, 0.21, 1.85, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN | CN: | CN |  |  | 8.06, 3.52, 1.04, 0.00 |
| TextBox | ID_ACTIVITY_CN | ID Activity CN: | ID_ACTIVITY_CN |  |  | 8.06, 3.12, 1.04, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 5.21, 1.74, 0.68, 0.20 |
| CheckBox | STRATIFIED | Stratified? | STRATIFIED |  |  | 5.21, 0.58, 0.00, 0.00 |
| TextBox | GERM_PCT | Germination %: | GERM_PCT |  |  | 5.21, 0.78, 0.36, 0.20 |
| TextBox | TEST_DOCUMENT | Document #: | TEST_DOCUMENT |  |  | 1.10, 0.99, 0.71, 0.20 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 5.21, 1.02, 0.36, 0.20 |
| TextBox | MOISTURE_PCT | Moisture : | MOISTURE_PCT |  |  | 5.21, 1.26, 0.37, 0.20 |
| TextBox | FILLED_PCT | Filled %: | FILLED_PCT |  |  | 5.21, 1.50, 0.38, 0.20 |
| TextBox | TEST_DATE | Test Date: | TEST_DATE |  |  | 1.10, 0.51, 0.68, 0.20 |
| TextBox | NOTE | Note | NOTE |  |  | 0.16, 2.37, 6.51, 1.23 |
| Subform | NMIS_SOURCE_TEST_RESULTS Subform1 | NMIS SOURCE TEST RESULTS | Form.NMIS_SOURCE_TEST_RESULTS Subform (master: CN → child: SOURCE_TEST_CN) |  |  | 6.90, 0.25, 2.58, 2.75 |
| TextBox | Index |  | Index |  |  | 6.85, 3.54, 0.67, 0.00 |
| Rectangle | Box48 |  |  |  |  | 0.04, 0.08, 6.75, 3.58 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_TESTS_NEW_LOT Form]![TYPE_OF_TEST]),"*",False))); | AfterUpdate, Enter | 5.21, 0.29, 0.00, 0.20 |
| Label | Label50 | Type of Test: |  |  |  | 4.21, 0.29, 0.91, 0.20 |
| ComboBox | TESTED_BY_ASSOCIATE | Tested By: | TESTED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")"; |  | 1.10, 0.75, 2.82, 0.20 |
| CheckBox | CHECK_STRAT | Borderline Strat | CHECK_STRAT |  |  | 6.54, 0.58, 0.00, 0.00 |
| TextBox | Text68 | 1000 Seed Wt (gm): | =IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2)) |  |  | 5.21, 2.02, 0.68, 0.20 |
| CommandButton | Open_SPP_Calculator | Seed/Pound Calculator |  |  | Click | 1.29, 1.96, 1.46, 0.29 |
| ComboBox | Combo58 | Activity Date / Code: | ID_ACTIVITY_CN | SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE) In ("TEST","RETEST","XFRIN1","XFRIN2","ADDNON","Weigh","STONON","ADDNON") Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "TST*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RTS*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RETST*") AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN)=[Forms]![NMIS_SOURCE_LOTS_INPUT]![CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE DESC; |  | 1.53, 0.19, 1.65, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Open_SPP_Calculator_Click()

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET_New_Lot"
   
End Sub

Private Sub SaveAndClose_Click()
On Error GoTo Err_SaveAndClose_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    If [TYPE_OF_TEST] >= "" Or IsNull(Index) Then
        DoCmd.Close
        Else
            MsgBox "Type of Test Must Be Entered"
    End If
    End
    
    
Exit_SaveAndClose_Click:
    Exit Sub

Err_SaveAndClose_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_SaveAndClose_Click
    
End Sub

Private Sub TYPE_OF_TEST_AfterUpdate()

    TYPE_OF_TEST.Requery
    
End Sub

Private Sub TYPE_OF_TEST_Enter()

    TYPE_OF_TEST.Requery
    
End Sub
```
