# Form: NMIS_PROCESS_LABELS_subform1

**Caption:** NMIS_DG_PROC_ORDERS subform  
**Record source:**

```sql
SELECT NMIS_ORDERS.AGREEMENT_LOT_CN AS CN, NMIS_ORDERS.CN AS Order_CN, Left(NMIS_ORDERS.CN,Len(NMIS_ORDERS.CN)-7) AS PACK_ID, NMIS_ORDERS.SPEC_MIN, NMIS_ORDERS.SPEC_MAX, NMIS_ORDERS.CALIPER_MIN, NMIS_ORDERS.ROOT_PRUNE_TARGET AS Root_Target, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.MODIFIED_BY, NMIS_ORDERS.MODIFIED_DATE, NMIS_ORDERS.CONTRACT_ITEM, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.FISCAL_YEAR FROM NMIS_ORDERS WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) ORDER BY NMIS_ORDERS.CN, Left(NMIS_ORDERS.CN,Len(NMIS_ORDERS.CN)-7);
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`  
**Embedded in:** `Form:NMIS_PROCESS_LABELS`, `Form:NMIS_PROCESS_LABELS_ST1`, `Form:NMIS_PROCESS_LABELS_ST2`, `Form:NMIS_PROCESS_LABELS_ST3`, `Form:NMIS_PROCESS_LABELS_ST4`  
**Opens:** `Form:NMIS_ORDERS_Last_index`, `Form:NMIS_PROCESSING_ORDERS_SVCS_Labeler`  
**Form events with code:** BeforeUpdate  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | PACK_ID_Label | Order ID |  |  |  | 0.47, 0.04, 0.86, 0.37 |
| Label | SPEC_MIN_Label | Ht Min (in) |  |  |  | 2.42, 0.04, 0.54, 0.37 |
| Label | SPEC_MAX_Label | Ht Max (in) |  |  |  | 2.99, 0.04, 0.54, 0.37 |
| Label | CALIPER_MIN_Label | Cal Min (mm) |  |  |  | 3.57, 0.04, 0.57, 0.37 |
| Label | ROOT_TARGET_Label | Root Target  |  |  |  | 4.18, 0.04, 0.52, 0.37 |
| Label | Label18 | Client  |  |  |  | 5.40, 0.04, 0.97, 0.37 |
| TextBox | New_Order_CN |  |  |  |  | 0.84, 0.12, 1.17, 0.21 |
| Label | Label29 | Contract Item |  |  |  | 4.73, 0.04, 0.62, 0.37 |
| Label | Label31 | Activity Code |  |  |  | 1.39, 0.04, 0.99, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PACK_ID |  | PACK_ID |  |  | 0.47, 0.03, 0.86, 0.23 |
| TextBox | SPEC_MIN |  | SPEC_MIN |  | AfterUpdate, DblClick, Exit | 2.42, 0.03, 0.54, 0.23 |
| TextBox | SPEC_MAX |  | SPEC_MAX |  | AfterUpdate, DblClick, Exit | 2.99, 0.03, 0.54, 0.23 |
| TextBox | CALIPER_MIN |  | CALIPER_MIN |  | AfterUpdate, DblClick, Exit | 3.57, 0.03, 0.57, 0.23 |
| TextBox | ROOT_TARGET |  | ROOT_TARGET |  | AfterUpdate, DblClick, Exit | 4.18, 0.03, 0.52, 0.23 |
| CommandButton | New_Pack_ID | Dup |  |  | Click | 0.04, 0.03, 0.38, 0.23 |
| TextBox | Order_CN |  | Order_CN |  |  | 0.25, 0.04, 0.46, 0.00 |
| TextBox | MODIFIED_BY |  | MODIFIED_BY |  |  | 1.00, 0.04, 0.50, 0.00 |
| TextBox | MODIFIED_DATE |  | MODIFIED_DATE |  |  | 1.54, 0.04, 0.50, 0.00 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  | DblClick | 4.73, 0.03, 0.62, 0.23 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER"));  | AfterUpdate, DblClick | 1.39, 0.03, 0.99, 0.23 |
| CommandButton | Open_ORDER_SERVICES | svc |  |  | Click | 6.43, 0.03, 0.30, 0.23 |
| ComboBox | CLIENT |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES ORDER BY NMIS_ASSOCIATES.ASSOCIATE; | AfterUpdate, DblClick, Exit | 5.40, 0.03, 0.97, 0.24 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub ACTIVITY_CODE_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub ACTIVITY_CODE_DblClick(Cancel As Integer)

    [Activity_Code].Locked = False
    
End Sub

Private Sub Activity_Code_Exit(Cancel As Integer)

    [Activity_Code].Locked = True
    
End Sub

Private Sub CALIPER_MIN_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub CALIPER_MIN_DblClick(Cancel As Integer)

    [CALIPER_MIN].Locked = False
    
End Sub

Private Sub CALIPER_MIN_Exit(Cancel As Integer)

    [CALIPER_MIN].Locked = True
    
End Sub

Private Sub CLIENT_AfterUpdate()

    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [ORDER_CN]
    
End Sub

Private Sub CLIENT_DblClick(Cancel As Integer)

    [CLIENT].Locked = False
    
End Sub

Private Sub CLIENT_Exit(Cancel As Integer)

    [CLIENT].Locked = True

End Sub

Private Sub CONTRACT_ITEM_DblClick(Cancel As Integer)

    [CONTRACT_ITEM].Locked = False
    
End Sub

Private Sub Contract_Item_Exit(Cancel As Integer)

    [CONTRACT_ITEM].Locked = True
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
 
End Sub

Private Sub New_Pack_ID_Click()
On Error GoTo Err_New_Pack_ID_Click
    
    Response = MsgBox("Create New Order ID using " & [PACK_ID], vbOKCancel)
    
    If Response = vbOK Then
        
        DoCmd.SetWarnings False
        DoCmd.OpenForm "NMIS_ORDERS_Last_index"
        Forms![NMIS_PROCESS_LABELS_MAIN]![New_Order_CN] = (Forms![NMIS_ORDERS_Last_index].Form![MaxOfIndex] + 1) & "L" & _
            Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![User_Nursery_Code]
        Forms![NMIS_PROCESS_LABELS_MAIN]![Order_Index_to_DUP] = PACK_ID
        Forms![NMIS_PROCESS_LABELS_MAIN]![Order_CN_to_Dup] = ORDER_CN
        DoCmd.Close
        DoCmd.OpenQuery "Processing_labels_duplicate_order_append"
        DoCmd.OpenQuery "Processing_labels_duplicate_order_services_append"
        DoCmd.OpenQuery "Processing_labels_duplicate_order_jobcode_append"
        DoCmd.OpenQuery "Processing_labels_duplicate_order_grades_append"
        DoCmd.SetWarnings True
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].Form![CN].Requery
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST2].Form![CN].Requery
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST3].Form![CN].Requery
        Forms![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST4].Form![CN].Requery
        DoCmd.GoToRecord , , acLast
        
    Else
        MsgBox "OK I won't do it"
    End If

Exit_New_Pack_ID_Click:
    Exit Sub

Err_New_Pack_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_New_Pack_ID_Click
    
End Sub

Private Sub ROOT_TARGET_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub ROOT_TARGET_DblClick(Cancel As Integer)

    [ROOT_TARGET].Locked = False
    
End Sub

Private Sub ROOT_TARGET_Exit(Cancel As Integer)

    [ROOT_TARGET].Locked = True
    
End Sub

Private Sub SPEC_MAX_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPEC_MAX_DblClick(Cancel As Integer)

    [SPEC_MAX].Locked = False
    
End Sub

Private Sub SPEC_MAX_Exit(Cancel As Integer)

    [SPEC_MAX].Locked = True
    
End Sub

Private Sub SPEC_MIN_AfterUpdate()

    MODIFIED_BY = CurrentUserName()
    MODIFIED_DATE = Date
    
End Sub

Private Sub SPEC_MIN_DblClick(Cancel As Integer)

    [SPEC_MIN].Locked = False
    
End Sub

Private Sub SPEC_MIN_Exit(Cancel As Integer)
    
    [SPEC_MIN].Locked = True
  
End Sub
Private Sub Open_ORDER_SERVICES_Click()
On Error GoTo Err_Open_ORDER_SERVICES_Click

    Dim stDocName As String
    Dim stLinkCriteria As String
    
    Forms![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN] = [ORDER_CN]
    Forms![NMIS_PROCESS_LABELS_MAIN]![CLIENT] = CLIENT
    stDocName = "NMIS_PROCESSING_ORDERS_SVCS_Labeler"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_ORDER_SERVICES_Click:
    Exit Sub

Err_Open_ORDER_SERVICES_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_ORDER_SERVICES_Click
    
End Sub
```
