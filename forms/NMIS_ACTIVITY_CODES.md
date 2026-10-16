# Form: NMIS_ACTIVITY_CODES

**Caption:** NMIS ACTIVITY CODES  
**Record source:**

```sql
NMIS_ACTIVITY_CODES
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER`, `NMIS_CONTRACT_ITEMS`  
**Opens:** `Form:NMIS_ACTIVITY_CODES_LIST`  
**Opened from (VBA):** `Form_Contract_Payment_Estimate_Invoice subform2`, `Form_Lookup_Tables_Menu Subform`, `Form_NMIS_ID_ACTIVITIES Subform`, `Form_NMIS_ID_ACTIVITIES2 Subform`, `Form_NMIS_ID_ACTIVITIES_NEW_LOTS Subform`, `Form_Seed_Ship_Ticket_ID_ACTIVITIES subform`, `Form_Seed_Sow_Withdrawal_Ticket_ID_ACTIVITIES subform`, `Form_xLookup_Tables_Menu`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box24 |  |  |  |  | 0.04, 0.04, 6.72, 0.79 |
| Label | Label16 | Activity Codes |  |  |  | 2.61, 0.09, 1.45, 0.28 |
| ComboBox | ACTIVITY_CODE_Lookup |  |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, IIf(Not IsNull([NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE]),"(" & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_CODE] & ") " & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_NAME]) AS [Parent Activity] FROM (NMIS_ACTIVITY_CODES LEFT JOIN NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER ON NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE = NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER.PARENT_ACTIVITY_CODE) LEFT JOIN NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 ON NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE = NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Like [Forms]![NMIS_ACTIVITY_CODES]![Select_For_Parent_Activity] & "*" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Is Null)) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER.PARENT_ACTIVITY_SORT_ORDER, NMIS_ACTIVITY_CODES.ACTIVITY_NAME; | AfterUpdate, Enter | 1.95, 0.53, 1.02, 0.25 |
| Label | Label84 | Find Activity by Code: |  |  |  | 0.09, 0.53, 1.81, 0.25 |
| ComboBox | Select_For_Parent_Activity | Parent Activity: |  | SELECT NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 INNER JOIN NMIS_ACTIVITY_CODES ON NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE = NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE GROUP BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE, NMIS_ACTIVITY_CODES_1.ACTIVITY_NAME ORDER BY NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE; | AfterUpdate | 1.20, 0.26, 0.97, 0.21 |
| CommandButton | View_All | All |  |  | Click | 2.20, 0.26, 0.26, 0.21 |
| ComboBox | ACTIVITY_NAME_Lookup |  |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_CODE_NO, IIf(Not IsNull([NMIS_ACTIVITY_CODES].[PARENT_ACTIVITY_CODE]),"(" & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_CODE] & ") " & [NMIS_ACTIVITY_CODES_1].[ACTIVITY_NAME]) AS [Parent Activity] FROM (NMIS_ACTIVITY_CODES LEFT JOIN NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER ON NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE = NMIS_ACTIVITY_CODE_PARENT_ACTIVITY_SORT_ORDER.PARENT_ACTIVITY_CODE) LEFT JOIN NMIS_ACTIVITY_CODES AS NMIS_ACTIVITY_CODES_1 ON NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE = NMIS_ACTIVITY_CODES_1.ACTIVITY_CODE WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Like [Forms]![NMIS_ACTIVITY_CODES]![Select_For_Parent_Activity] & "*" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE) Is Null)) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_NAME, NMIS_ACTIVITY_CODES.ACTIVITY_CODE; | AfterUpdate, Enter | 3.88, 0.53, 2.84, 0.25 |
| Label | Label22 | By Name: |  |  |  | 3.01, 0.53, 0.83, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ACTIVITY_CODE | Activity Code: | ACTIVITY_CODE |  | DblClick, Enter | 1.29, 0.50, 0.90, 0.21 |
| TextBox | ACTIVITY_NAME | Activity Name: | ACTIVITY_NAME |  |  | 1.29, 1.05, 2.26, 0.21 |
| CheckBox | BILL_ORDER | Bill Order: | BILL_ORDER |  |  | 5.19, 1.37, 0.21, 0.21 |
| ComboBox | BALANCE_EFFECT | Balance Effect: | BALANCE_EFFECT | "NOEFFECT";"REMOVE";"ADD";"ADJUST";"XFER" |  | 1.29, 1.33, 1.04, 0.21 |
| TextBox | ACTIVITY_CODE_NO | Activity Code #: | ACTIVITY_CODE_NO |  |  | 1.29, 0.78, 0.82, 0.21 |
| TextBox | NOTE | Note: | NOTE |  |  | 0.13, 1.79, 6.55, 1.17 |
| TextBox | PROPERTIES_MODULE | Properties Module: | PROPERTIES_MODULE |  |  | 5.18, 1.04, 0.88, 0.19 |
| TextBox | PARENT_ACTIVITY_CODE | Parent Activity Code: | PARENT_ACTIVITY_CODE |  |  | 5.18, 0.50, 0.88, 0.21 |
| CommandButton | Open Activity Codes List | View as List |  |  | Click | 2.92, 3.13, 0.95, 0.00 |
| ComboBox | DEFAULT_CONTRACT_ITEM | Default Contract Item: | DEFAULT_CONTRACT_ITEM | SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS;  |  | 5.18, 0.79, 0.83, 0.19 |
| CommandButton | Goto_New_Record | Add New Activity |  |  | Click | 0.17, 0.07, 1.12, 0.29 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    Activity_Code.Locked = False
    
End Sub

Private Sub ACTIVITY_CODE_Enter()
On Error GoTo Err_ACTIVITY_CODE_Enter

    If IsNull(Activity_Code) Then
        Activity_Code.Locked = False
    Else
        Activity_Code.Locked = True
    End If

Exit_ACTIVITY_CODE_Enter:
    Exit Sub

Err_ACTIVITY_CODE_Enter:
    MsgBox Err.DESCRIPTION
    Resume Exit_ACTIVITY_CODE_Enter
End Sub

Private Sub ACTIVITY_CODE_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ACTIVITY_CODE] = '" & Me![ACTIVITY_CODE_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    ACTIVITY_NAME_Lookup = ACTIVITY_CODE_Lookup
  
End Sub

Private Sub ACTIVITY_CODE_Lookup_Enter()

    ACTIVITY_CODE_Lookup.Requery
    
End Sub

Private Sub ACTIVITY_NAME_Lookup_AfterUpdate()

    ' Find the record that matches the control.
    Dim rs As Object

    Set rs = Me.Recordset.Clone
    rs.FindFirst "[ACTIVITY_Code] = '" & Me![ACTIVITY_NAME_Lookup] & "'"
    Me.Bookmark = rs.Bookmark
    ACTIVITY_CODE_Lookup = ACTIVITY_NAME_Lookup
  
End Sub

Private Sub ACTIVITY_NAME_Lookup_Enter()

    ACTIVITY_NAME_Lookup.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.GoToControl "ACTIVITY_CODE_Lookup"
    
End Sub

Private Sub Open_Activity_Codes_List_Click()
On Error GoTo Err_Open_Activity_Codes_List_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_ACTIVITY_CODES_LIST"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_Activity_Codes_List_Click:
    Exit Sub

Err_Open_Activity_Codes_List_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Activity_Codes_List_Click
    
End Sub

Private Sub Select_For_Parent_Activity_AfterUpdate()

    ACTIVITY_CODE_Lookup = Null
    ACTIVITY_NAME_Lookup = Null
    
End Sub

Private Sub View_All_Click()

    Select_For_Parent_Activity = Null
    ACTIVITY_CODE_Lookup.Requery
    
End Sub
Private Sub Goto_New_Record_Click()
On Error GoTo Err_Goto_New_Record_Click


    DoCmd.GoToRecord , , acNewRec
    DoCmd.GoToControl "activity_code"

Exit_Goto_New_Record_Click:
    Exit Sub

Err_Goto_New_Record_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Goto_New_Record_Click
    
End Sub
```
