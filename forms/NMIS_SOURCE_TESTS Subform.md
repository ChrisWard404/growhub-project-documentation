# Form: NMIS_SOURCE_TESTS Subform

**Caption:** NMIS_SOURCE_TESTS Subform  
**Record source:**

```sql
SELECT NMIS_SOURCE_TESTS.* FROM NMIS_SOURCE_TESTS ORDER BY NMIS_SOURCE_TESTS.TEST_DATE DESC;
```

**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_ID_ACTIVITIES`, `NMIS_SOURCE_LOTS`, `NMIS_SOURCE_TESTS`, `NMIS_TEST_TYPES`  
**Subforms/subreports:** `Form.NMIS_SOURCE_TEST_RESULTS Subform`  
**Embedded in:** `Form:NMIS_SOURCE_LOTS`, `Form:NMIS_SOURCE_LOTS2`, `Form:NMIS_SOURCE_LOTS_bu`  
**Opens:** `Form:NMIS_SOURCE_SPP_WORKSHEET`  
**Form events with code:** Error  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_SOURCE_TEST_RESULTS Subform1 | TEST RESULTS | Form.NMIS_SOURCE_TEST_RESULTS Subform (master: CN → child: SOURCE_TEST_CN) |  | Enter | 6.46, 0.25, 2.58, 3.46 |
| TextBox | CN | CN: | CN |  |  | 2.14, 1.42, 1.04, 0.00 |
| TextBox | SOURCE_LOT_CN | Source Lot CN: | SOURCE_LOT_CN |  |  | 2.14, 1.22, 1.04, 0.00 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross/Unit: | GROSS_SOURCE_PER_UNIT |  |  | 5.39, 1.74, 0.68, 0.20 |
| CheckBox | STRATIFIED | Stratified? | STRATIFIED |  |  | 5.39, 0.58, 0.00, 0.00 |
| TextBox | GERM_PCT | Germination %: | GERM_PCT |  |  | 5.39, 0.78, 0.36, 0.20 |
| TextBox | TEST_DOCUMENT | Document #: | TEST_DOCUMENT |  |  | 1.06, 0.86, 0.93, 0.20 |
| TextBox | PURITY_PCT | Purity %: | PURITY_PCT |  |  | 5.39, 1.02, 0.36, 0.20 |
| TextBox | MOISTURE_PCT | Moisture : | MOISTURE_PCT |  |  | 5.39, 1.26, 0.37, 0.20 |
| TextBox | FILLED_PCT | Filled %: | FILLED_PCT |  |  | 5.39, 1.50, 0.38, 0.20 |
| TextBox | TEST_DATE | Test Date: | TEST_DATE |  |  | 1.06, 0.38, 0.68, 0.20 |
| TextBox | NOTE | Note | NOTE |  |  | 0.04, 2.46, 5.96, 1.23 |
| TextBox | Index |  | Index |  |  | 0.55, 1.44, 0.00, 0.00 |
| ComboBox | Combo46 |  | TYPE_OF_TEST | SELECT NMIS_TEST_TYPES.TYPE_OF_TEST, NMIS_TEST_TYPES.TYPE_OF_TEST_DESC FROM NMIS_TEST_TYPES WHERE (((NMIS_TEST_TYPES.HIDE) Like IIf(Not ([hide])=IsNull([Forms]![NMIS_SOURCE_LOTS]![NMIS_SOURCE_TESTS Subform].[Form]![TYPE_OF_TEST]),"*",False))); | AfterUpdate, Enter | 5.39, 0.29, 0.00, 0.20 |
| Label | Label48 | Test Type: |  |  |  | 4.55, 0.29, 0.74, 0.20 |
| ComboBox | Tested_By_Associate | Tested By: | TESTED_BY_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE_NAME] & " (" & [associate] & ")" AS Name FROM NMIS_ASSOCIATES ORDER BY [ASSOCIATE_NAME] & " (" & [associate] & ")"; |  | 1.06, 0.62, 3.02, 0.20 |
| CheckBox | CHECK_STRAT | Ck Strat | CHECK_STRAT |  |  | 6.26, 0.58, 0.00, 0.00 |
| CommandButton | Open_SPP_Calculator | Seed/Pound Calculator |  |  | Click | 1.58, 1.83, 1.46, 0.29 |
| ComboBox | ID_ACTIVITY_CN | Activity Date / Code: | ID_ACTIVITY_CN | SELECT NMIS_ID_ACTIVITIES.CN, [ACTIVITY_DATE] & " / " & [ACTIVITY_CODE] AS Date_Code, NMIS_ID_ACTIVITIES.ACTIVITY_CODE FROM NMIS_ID_ACTIVITIES WHERE (((NMIS_ID_ACTIVITIES.ACTIVITY_CODE) In ("TEST","RETEST","XFRIN1","XFRIN2","ADDNON","Weigh","STONON","ADDNON") Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "tst*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "rts*" Or (NMIS_ID_ACTIVITIES.ACTIVITY_CODE) Like "RETST*") AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN)=[Forms]![NMIS_SOURCE_LOTS]![CN])) ORDER BY NMIS_ID_ACTIVITIES.ACTIVITY_DATE DESC; |  | 1.54, 0.05, 1.61, 0.21 |
| TextBox | Text68 | 1000 Seed Wt (gm): | =IIf([GROSS_SOURCE_PER_UNIT]>0,Round(453600/[GROSS_SOURCE_PER_UNIT],2)) |  |  | 5.39, 2.02, 0.68, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Combo66_Enter()

    [ID_ACTIVITY_CN].Requery

End Sub

Private Sub Combo46_AfterUpdate()

    Combo46.Requery
    
End Sub

Private Sub Combo46_Enter()

    Combo46.Requery
    
End Sub

Private Sub Form_Error(DataErr As Integer, Response As Integer)
    MsgBox "There Is No Test Data For This Lot"
    Response = acDataErrContinue
End Sub

Private Sub NMIS_SOURCE_TEST_RESULTS_Subform1_Enter()

    Last_Day = 0
    
End Sub
Private Sub Open_SPP_Calculator_Click()
On Error GoTo Err_Open_SPP_Calculator_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_SPP_WORKSHEET"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_SPP_Calculator_Click:
    Exit Sub

Err_Open_SPP_Calculator_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_SPP_Calculator_Click
    
End Sub
```
