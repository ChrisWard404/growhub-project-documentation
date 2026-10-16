# Form: NMIS_SOURCE_TESTS_for_Act_data Form

**Caption:** Source Test Entry Form  
**Record source:**

```sql
NMIS_SOURCE_TESTS
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_TESTS`, `NMIS_TEST_TYPES`  
**Subforms/subreports:** `Form.NMIS_SOURCE_TEST_RESULTS Subform`  
**Opens:** `Form:NMIS_SOURCE_LOTS`, `Form:NMIS_SOURCE_SPP_WORKSHEET`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label46 | Enter/Edit Test Data |  |  |  | 3.78, 0.17, 2.54, 0.33 |
| Line | Line47 |  |  |  |  | 0.08, 0.62, 9.38, 0.00 |
| CommandButton | SaveAndClose | Close |  |  | Click | 8.88, 0.08, 0.47, 0.28 |
| ComboBox | Combo55 | Source Lot: | SOURCE_LOT_CN | SELECT NMIS_SOURCE_LOTS.CN, NMIS_SOURCE_LOTS.ID FROM NMIS_SOURCE_LOTS;  |  | 1.21, 0.20, 1.58, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CN | CN: | CN |  |  | 8.06, 3.54, 1.04, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 5.27, 1.74, 0.68, 0.20 |
| CheckBox | STRATIFIED | Stratified? | STRATIFIED |  |  | 5.27, 0.58, 0.00, 0.00 |
| TextBox | GERM_PCT | Germination %: | GERM_PCT |  |  | 5.27, 0.78, 0.36, 0.20 |
| TextBox | TEST_DOCUMENT | Document #: | TEST_DOCUMENT |  |  | 1.07, 1.00, 0.91, 0.20 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 5.27, 1.02, 0.36, 0.20 |
| TextBox | MOISTURE_PCT | Moisture : | MOISTURE_PCT |  |  | 5.27, 1.26, 0.37, 0.20 |
| TextBox | FILLED_PCT | Filled %: | FILLED_PCT |  |  | 5.27, 1.50, 0.38, 0.20 |
| TextBox | TEST_DATE | Test Date: | TEST_DATE |  |  | 1.07, 0.52, 0.68, 0.20 |
| TextBox | NOTE | Note | NOTE |  |  | 0.16, 2.32, 6.55, 1.23 |
| Subform | NMIS_SOURCE_TEST_RESULTS Subform1 | NMIS SOURCE TEST RESULTS | Form.NMIS_SOURCE_TEST_RESULTS Subform (master: CN → child: SOURCE_TEST_CN) |  |  | 6.92, 0.25, 2.58, 2.75 |
| TextBox | Index |  | Index |  |  | 6.84, 3.54, 0.67, 0.00 |
| Rectangle | Box48 |  |  |  |  | 0.04, 0.08, 6.79, 3.58 |
| ComboBox | TYPE_OF_TEST |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_TESTS_for_act_data Form]![TYPE_OF_TEST]),"*",False))); | AfterUpdate, Enter | 5.27, 0.29, 0.00, 0.20 |
| Label | Label50 | Type of Test: |  |  |  | 4.30, 0.29, 0.91, 0.20 |
| ComboBox | TESTED_BY_ASSOCIATE | Tested By: | TESTED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")"; |  | 1.07, 0.76, 2.97, 0.20 |
| CheckBox | CHECK_STRAT | Borderline Strat | CHECK_STRAT |  |  | 6.63, 0.58, 0.00, 0.00 |
| CommandButton | Open_SPP_Calculator | Seed/Pound Calculator |  |  | Click | 1.29, 1.96, 1.46, 0.29 |
| ComboBox | ID_ACTIVITY_CN | Activity Date / Code: | ID_ACTIVITY_CN | SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE) In ("TEST","RETEST","XFRIN1","XFRIN2","ADDNON","Weigh","STONON","ADDNON") Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "TST*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RTS*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RETST*") AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN)=[Forms]![NMIS_SOURCE_LOTS]![CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE DESC; | DblClick, Enter | 1.51, 0.17, 1.65, 0.21 |
| TextBox | Text68 | 1000 Seed Wt (gm): | =IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2)) |  |  | 5.27, 2.02, 0.68, 0.20 |

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

    DoCmd.OpenForm "NMIS_SOURCE_SPP_WORKSHEET"
    
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

Private Sub TYPE_OF_TEST_AfterUpdate()

    TYPE_OF_TEST.Requery
    
End Sub

Private Sub TYPE_OF_TEST_Enter()

    TYPE_OF_TEST.Requery
    
End Sub
```
