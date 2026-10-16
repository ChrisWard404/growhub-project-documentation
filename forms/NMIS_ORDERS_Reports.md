# Form: NMIS_ORDERS_Reports

**Caption:** Orders  Reports  
**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_FISCAL_YEARS`, `NMIS_SEASONS`  
**Opens:** `Report:Orders_Checklist`, `Report:Orders_Checklist_LiftInNote`, `Report:Orders_Checklist_Summary`, `Report:Orders_Checklist_by_Lot_ID`, `Report:Orders_Checklist_no_orders`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Orders Reports |  |  |  | 1.86, 0.08, 1.54, 0.28 |
| TextBox | Plntmstr_Symbol | Like Species Code: |  |  |  | 3.44, 1.33, 0.63, 0.20 |
| TextBox | Like_Client | Like Client: |  |  |  | 3.43, 1.06, 0.79, 0.20 |
| CommandButton | Preview_Orders_Checklist | Orders Checklist Report By Stocktype |  |  | Click | 0.25, 3.39, 1.43, 0.41 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 5.01, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.05, 0.72, 5.05, 1.14 |
| ComboBox | Begin_FY | Like Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 1.16, 1.06, 0.82, 0.20 |
| ComboBox | End_FY |  Like End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  | AfterUpdate | 1.16, 1.34, 0.82, 0.20 |
| CommandButton | Preview_Order_Checklist_No_Orders | NO ORDERS Checklist Report |  |  | Click | 1.90, 3.39, 1.43, 0.41 |
| ComboBox | End_Product | End Product: |  | Plant;Propagule | Change | 1.14, 0.81, 1.25, 0.20 |
| CommandButton | Preview_Orders_Summary | Orders Summary Report |  |  | Click | 3.57, 3.39, 1.43, 0.41 |
| ComboBox | Cost_Center | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container;CCTR;Container Contract |  | 3.43, 0.80, 1.60, 0.21 |
| CommandButton | NMIS_ORDERS_GENERIC_CREATE | Create Generic Orders |  |  | Click | 1.73, 3.89, 1.75, 0.31 |
| TextBox | Root_Prune | Root Prune: |  |  |  | 3.32, 2.14, 0.42, 0.21 |
| Rectangle | Order_Info_Box |  |  |  |  | 0.06, 2.04, 5.05, 1.17 |
| ComboBox | Product_Services | Special Service: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PROPERTIES_MODULE)="proc")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 1.36, 2.14, 0.78, 0.21 |
| TextBox | Nursery_Comment | Nursery Note: |  |  |  | 1.36, 2.66, 3.65, 0.47 |
| CommandButton | Preview_Orders_Checklist_by_Lot_ID | Orders Checklist Report By Lot ID |  |  | Click | 0.25, 3.82, 1.43, 0.41 |
| TextBox | Like_Activity_Code | Like Activity Code: |  |  | DblClick | 3.43, 1.59, 0.63, 0.20 |
| CommandButton | Preview_Orders_Checklist_LiftInNote |   Orders Checklist  'Lift' in Order Notes |  |  | Click | 3.57, 3.82, 1.43, 0.41 |
| CheckBox | XSSRPL_Orders | XSSRPL |  |  |  | 1.38, 2.42, 0.00, 0.00 |
| ComboBox | Like_End_Season | Like End Sea: |  | SELECT NMIS_SEASONS.SEASON_CODE, NMIS_SEASONS.SEASON_DESC FROM NMIS_SEASONS; |  | 1.16, 1.58, 0.82, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub End_FY_AfterUpdate()
    
    [Forms]![Switchboard]![FY_For_Reports] = END_FY
    
End Sub

Private Sub End_Product_Change()

    If End_Product = "Propagule" Then
        Cost_Center = "*"
        END_FY = "*"
        Cost_Center.Visible = False
        Root_Prune.Visible = False
        Product_Services = "NOSVC"
    Else
        Cost_Center.Visible = True
        Root_Prune.Visible = True
        Product_Services = "STDSVC"
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Cost_Center.Visible = True
    
End Sub

Private Sub Like_Activity_Code_DblClick(Cancel As Integer)

    Like_Activity_Code = "*"
    
End Sub

Private Sub Preview_Order_Checklist_No_Orders_Click()

    Like_Activity_Code = "*"
    
    Dim stDocName As String

    stDocName = "Orders_Checklist_no_orders"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_by_Lot_ID_Click()
On Error GoTo Err_Preview_Orders_Checklist_by_Lot_ID_Click

    Dim stDocName As String

    stDocName = "Orders_Checklist_by_Lot_ID"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Orders_Checklist_by_Lot_ID_Click:
    Exit Sub

Err_Preview_Orders_Checklist_by_Lot_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Orders_Checklist_by_Lot_ID_Click
 
End Sub

Private Sub Preview_Orders_Checklist_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_LiftInNote_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_LiftInNote"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Summary_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub NMIS_ORDERS_GENERIC_CREATE_Click()
On Error GoTo Err_NMIS_ORDERS_GENERIC_CREATE_Click
    
    DoCmd.SetWarnings False
    DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_APPEND2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_SERVICES_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_MGMT_CODE_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_GRADES_APPEND", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_CN_UPDATE2", acNormal, acEdit
    DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_DELETE", acNormal, acEdit
    DoCmd.SetWarnings True

    MsgBox "Generic Orders Created"
    
Exit_NMIS_ORDERS_GENERIC_CREATE_Click:
    Exit Sub

Err_NMIS_ORDERS_GENERIC_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDERS_GENERIC_CREATE_Click
    
End Sub
```
