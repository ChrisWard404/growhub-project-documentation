# Form: NMIS_ACTIVITY_CODES_LIST

**Caption:** NMIS Activity Code List  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`  
**Opened from (VBA):** `Form_NMIS_ACTIVITY_CODES`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box21 |  |  |  |  | 0.09, 0.43, 6.75, 0.55 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  | Click | 0.07, 1.05, 0.66, 0.37 |
| Label | ACTIVITY_NAME_Label | Activity Name |  |  | Click | 1.33, 1.05, 2.14, 0.37 |
| Label | BILL_ORDER_Label | Bill Order |  |  |  | 4.36, 1.05, 0.42, 0.37 |
| Label | BALANCE_EFFECT_Label | Balance Effect |  |  | Click | 3.52, 1.05, 0.80, 0.37 |
| Label | ACTIVITY_CODE_NO_Label | Activity No. |  |  | Click | 0.77, 1.05, 0.53, 0.37 |
| Label | NOTE_Label | Note |  |  |  | 7.11, 1.04, 3.23, 0.38 |
| Label | PROPERTIES_MODULE_Label | Properties Module |  |  | Click | 5.59, 1.05, 0.81, 0.37 |
| Label | PARENT_ACTIVITY_CODE_Label | Parent Activity Code |  |  | Click | 4.83, 1.05, 0.72, 0.37 |
| Label | Label16 | NMIS Activity Codes |  |  |  | 4.08, 0.04, 2.26, 0.31 |
| Line | Line17 |  |  |  |  | 0.04, 0.98, 10.25, 0.00 |
| Label | Label18 | Contract Item |  |  |  | 6.43, 1.05, 0.64, 0.37 |
| TextBox | Sort_By | Sorted By: |  |  |  | 8.55, 0.61, 1.24, 0.21 |
| CommandButton | Tip_on_Sorting | Tip |  |  | Click | 7.36, 0.59, 0.31, 0.24 |
| ComboBox | Select_For_Parent_Activity | Parent Activity: |  | SELECT NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 INNER JOIN NMIS_ACTIVITY_CODES ON NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE = NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE GROUP BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME ORDER BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE; | AfterUpdate, Enter | 2.12, 0.48, 0.97, 0.21 |
| ComboBox | Select_For_Properties_Module | Properties Module: |  | SELECT NMIS_ACTIVITY_CODES.PROPERTIES_MODULE FROM NMIS_ACTIVITY_CODES GROUP BY NMIS_ACTIVITY_CODES.PROPERTIES_MODULE ORDER BY NMIS_ACTIVITY_CODES.PROPERTIES_MODULE; | AfterUpdate, Enter | 4.49, 0.48, 1.59, 0.21 |
| Label | Label66 | Select For (Blank for All) |  |  |  | 0.17, 0.48, 0.82, 0.44 |
| ComboBox | Select_For_Activity_Code | Activity Code: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES GROUP BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; | AfterUpdate, Enter | 2.12, 0.71, 0.97, 0.21 |
| CommandButton | View_All | View All |  |  | Click | 6.14, 0.56, 0.61, 0.28 |
| ComboBox | Select_Balance_Effect | Balance Effect: |  | SELECT NMIS_ACTIVITY_CODES.BALANCE_EFFECT FROM NMIS_ACTIVITY_CODES GROUP BY NMIS_ACTIVITY_CODES.BALANCE_EFFECT ORDER BY NMIS_ACTIVITY_CODES.BALANCE_EFFECT; | AfterUpdate, Enter | 4.48, 0.71, 0.95, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.07, 0.04, 0.66, 0.20 |
| TextBox | ACTIVITY_NAME |  | ACTIVITY_NAME |  |  | 1.33, 0.04, 2.14, 0.20 |
| CheckBox | BILL_ORDER |  | BILL_ORDER |  |  | 4.54, 0.07, 0.10, 0.00 |
| TextBox | ACTIVITY_CODE_NO |  | ACTIVITY_CODE_NO |  |  | 0.77, 0.04, 0.53, 0.20 |
| TextBox | PARENT_ACTIVITY_CODE |  | PARENT_ACTIVITY_CODE |  |  | 4.83, 0.04, 0.72, 0.20 |
| TextBox | BALANCE_EFFECT |  | BALANCE_EFFECT |  |  | 3.52, 0.04, 0.80, 0.20 |
| TextBox | PROPERTIES_MODULE |  | PROPERTIES_MODULE |  |  | 5.59, 0.04, 0.81, 0.20 |
| TextBox | NOTE |  | NOTE |  |  | 7.11, 0.04, 3.23, 0.38 |
| TextBox | DEFAULT_CONTRACT_ITEM |  | DEFAULT_CONTRACT_ITEM |  |  | 6.43, 0.04, 0.64, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_Label_Click()
On Error GoTo Err_ACTIVITY_CODE_Label_Click


    Sort_By = "Activity Code"
    DoCmd.Requery

Exit_ACTIVITY_CODE_Label_Click:
    Exit Sub

Err_ACTIVITY_CODE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_Label_Click
    
End Sub

Private Sub ACTIVITY_CODE_NO_Label_Click()
On Error GoTo Err_ACTIVITY_CODE_NO_Label_Click


    Sort_By = "Activity No"
    DoCmd.Requery

Exit_ACTIVITY_CODE_NO_Label_Click:
    Exit Sub

Err_ACTIVITY_CODE_NO_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_NO_Label_Click
    
End Sub

Private Sub ACTIVITY_NAME_Label_Click()
On Error GoTo Err_ACTIVITY_NAME_Label_Click


    Sort_By = "Activity Name"
    DoCmd.Requery

Exit_ACTIVITY_NAME_Label_Click:
    Exit Sub

Err_ACTIVITY_NAME_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_NAME_Label_Click
    
End Sub

Private Sub BALANCE_EFFECT_Label_Click()
On Error GoTo Err_BALANCE_EFFECT_Label_Click


    Sort_By = "Balance Effect"
    DoCmd.Requery

Exit_BALANCE_EFFECT_Label_Click:
    Exit Sub

Err_BALANCE_EFFECT_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_BALANCE_EFFECT_Label_Click
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_Label_Click()
On Error GoTo Err_PARENT_ACTIVITY_CODE_Label_Click


    Sort_By = "Parent Activity"
    DoCmd.Requery

Exit_PARENT_ACTIVITY_CODE_Label_Click:
    Exit Sub

Err_PARENT_ACTIVITY_CODE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PARENT_ACTIVITY_CODE_Label_Click
    
End Sub

Private Sub PROPERTIES_MODULE_Label_Click()
On Error GoTo Err_PROPERTIES_MODULE_Label_Click


    Sort_By = "Properties Module"
    DoCmd.Requery

Exit_PROPERTIES_MODULE_Label_Click:
    Exit Sub

Err_PROPERTIES_MODULE_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_PROPERTIES_MODULE_Label_Click
    
End Sub

Private Sub Select_Balance_Effect_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_Balance_Effect_Enter()

    Select_For_Activity_Code = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Activity_Code_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Activity_Code_Enter()

    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Parent_Activity_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Parent_Activity_Enter()

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Properties_Module = Null
    
End Sub

Private Sub Select_For_Properties_Module_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Select_For_Properties_Module_Enter()

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null

End Sub

Private Sub Tip_on_Sorting_Click()

        MsgBox "Click on one of the following Column Headings to sort by that Column." _
        & vbCrLf & "" _
        & vbCrLf & "Activity Code" _
        & vbCrLf & "Activity No." _
        & vbCrLf & "Activity Name" _
        & vbCrLf & "Ballance Effect" _
        & vbCrLf & "Parent Activity" _
        & vbCrLf & "Properties Module", vbInformation
        
End Sub

Private Sub View_All_Click()
On Error GoTo Err_View_All_Click

    Select_For_Activity_Code = Null
    Select_Balance_Effect = Null
    Select_For_Parent_Activity = Null
    Select_For_Properties_Module = Null
    DoCmd.Requery

Exit_View_All_Click:
    Exit Sub

Err_View_All_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_View_All_Click
    
End Sub
```
