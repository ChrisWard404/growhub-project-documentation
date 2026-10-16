# Form: NMIS_ORDERS_Generic_Scheduled_Transplant

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CONTACTS`, `NMIS_FISCAL_YEARS`  
**Opens:** `Report:Orders_Checklist_Scheduled_Transplant`, `Report:Orders_Checklist_Summary`, `Report:Orders_Checklist_scheduled_transplant_not`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Scheduled Transplant Generic Orders |  |  |  | 0.79, 0.08, 3.73, 0.28 |
| TextBox | Plntmstr_Symbol | Like Species Code: |  |  |  | 2.36, 1.43, 0.81, 0.20 |
| TextBox | Like_Client | Order Client: |  |  |  | 1.64, 1.88, 0.79, 0.20 |
| CommandButton | Preview_Orders_Checklist | Click to Preview Scheduled TP Orders Checklist Report |  |  | Click | 1.23, 3.33, 1.43, 0.61 |
| Line | Line12 |  |  |  |  | 0.08, 0.44, 5.01, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.05, 0.50, 5.05, 1.20 |
| ComboBox | Begin_FY | Like Begin FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 2.36, 0.89, 0.68, 0.20 |
| ComboBox | End_FY |  Like End FY: |  | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR FROM NMIS_FISCAL_YEARS;  |  | 2.36, 1.16, 0.68, 0.20 |
| CommandButton | Preview_Order_Checklist_No_Orders |   Click to Preview   NO ORDERS Checklist Report |  |  | Click | 2.84, 3.33, 1.43, 0.61 |
| ComboBox | Contact | Contact: |  | SELECT NMIS_CONTACTS.CN, [last_name] & IIf(Not IsNull([first_name]),", " & [first_name]) AS Contact, NMIS_CONTACTS.LAST_NAME, NMIS_CONTACTS.FIRST_NAME FROM NMIS_CONTACTS WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_CONTACTS.HOME_ASSOCIATE)=[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code])) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")); |  | 1.64, 2.12, 1.59, 0.20 |
| ComboBox | Cost_Center | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 2.36, 0.61, 1.60, 0.21 |
| CommandButton | NMIS_ORDERS_GENERIC_CREATE | Create Generic Orders |  |  | Click | 1.83, 4.03, 1.76, 0.31 |
| TextBox | Root_Prune | Root Prune: |  |  |  | 4.24, 2.12, 0.42, 0.21 |
| Rectangle | Box29 |  |  |  |  | 0.05, 1.74, 5.05, 1.48 |
| ComboBox | Product_Services | Special Service: |  | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PROPERTIES_MODULE)="proc")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 4.25, 1.88, 0.78, 0.21 |
| TextBox | Nursery_Comment | Nursery Note: |  |  |  | 1.35, 2.65, 3.65, 0.47 |
| CheckBox | Bill_Agreement_Client | Bill Agreement Client |  |  |  | 1.67, 2.42, 0.00, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub END_DATE_Exit(Cancel As Integer)

    If [END_DATE] < [BEGIN_DATE] Then
        MsgBox "The Ending Date must be Greater than the Begin Date!"
    End If
    
End Sub

Private Sub End_Product_Change()

    If End_Product = "Propagule" Then
        Cost_Center = "*"
        END_FY = "*"
        Cost_Center.Visible = False
    Else
        Cost_Center.Visible = True
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    Cost_Center.Visible = True
    
End Sub

Private Sub Preview_Order_Checklist_No_Orders_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_scheduled_transplant_not"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Checklist_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Scheduled_Transplant"
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub Preview_Orders_Summary_Click()

    Dim stDocName As String

    stDocName = "Orders_Checklist_Summary"
    DoCmd.OpenReport stDocName, acPreview

End Sub
Private Sub NMIS_ORDERS_GENERIC_CREATE_Click()
On Error GoTo Err_NMIS_ORDERS_GENERIC_CREATE_Click
    
    If Not IsNull(Contact) Then
        If Not IsNull(Like_Client) Then
            DoCmd.SetWarnings False
            DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_APPEND2_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_SERVICES_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_MGMT_CODE_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_GRADES_APPEND_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_GENERIC_CN_UPDATE2_Sch_Xplt", acNormal, acEdit
            DoCmd.OpenQuery "NMIS_ORDERS_MAKE_GENERIC_TABLE_DELETE_Sch_Xplt", acNormal, acEdit
            DoCmd.SetWarnings True
            MsgBox "Generic Scheduled Transplant Orders Created"
        Else
            MsgBox "A Client is Required", vbCritical
            DoCmd.GoToControl "like_client"
        End If
    Else
        MsgBox "A Contact is Required", vbCritical
        DoCmd.GoToControl "contact"
    End If
    
Exit_NMIS_ORDERS_GENERIC_CREATE_Click:
    Exit Sub

Err_NMIS_ORDERS_GENERIC_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_ORDERS_GENERIC_CREATE_Click
    
End Sub
```
