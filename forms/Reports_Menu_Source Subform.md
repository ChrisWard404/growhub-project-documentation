# Form: Reports_Menu_Source Subform

**Caption:** Reports_Menu_Source Subform  
**Record source:**

```sql
NMIS_FISCAL_YEARS
```

**Backend tables referenced:** `NMIS_FISCAL_YEARS`  
**Embedded in:** `Form:REPORTS Form`  
**Opens:** `Form:ConeStorageSPD`, `Form:Lot_ID_Input_Form2`, `Form:Lot_ID_Input_Form2d`, `Form:Lot_ID_Input_Form2e`, `Form:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC`, `Form:NMIS_SEED_TICKETS_CHECKLIST`, `Form:NMIS_SEED_TICKETS_CHECKLIST2`, `Form:NMIS_SOURCE_LOT_SELECT`, `Form:NMIS_SOURCE_Location_by_ID_Report`, `Form:NMIS_SOURCE_Location_by_ID_Report2`, `Form:NMIS_SOURCE_Location_by_ID_Report3`, `Form:NMIS_SOURCE_Location_by_ID_Report3b`, `Form:NMIS_SOURCE_Location_by_Loc_Report`, `Form:NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report`, `Form:NMIS_SOURCE_Zero_Balance_Report`, `Form:Product_Storage_Summary`, `Form:Seed_Inventory_Report`, `Form:Seed_Needs_Report`, `Form:Seed_Non_WCF_Billing_Report`, `Form:Seed_QR_Activity_Breakdown Query`, `Form:Seed_QR_Activity_Breakdown_by_lot Query`, `Form:Seed_Quarterly_Report`, `Form:Seed_Sown_for_Other_Than_Storage_Parent`, `Form:Seedlots_with_negative_balance`, `Report:ConeStorageSPD`, `Report:Lot_ID_Input_Form2`, `Report:Lot_ID_Input_Form2d`, `Report:Lot_ID_Input_Form2e`, `Report:NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC`, `Report:NMIS_SEED_TICKETS_CHECKLIST`, `Report:NMIS_SEED_TICKETS_CHECKLIST2`, `Report:NMIS_SOURCE_LOT_SELECT`, `Report:NMIS_SOURCE_Location_by_ID_Report`, `Report:NMIS_SOURCE_Location_by_ID_Report2`, `Report:NMIS_SOURCE_Location_by_ID_Report3`, `Report:NMIS_SOURCE_Location_by_ID_Report3b`, `Report:NMIS_SOURCE_Location_by_Loc_Report`, `Report:NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report`, `Report:NMIS_SOURCE_Zero_Balance_Report`, `Report:Product_Storage_Summary`, `Report:Seed_Inventory_Report`, `Report:Seed_Needs_Report`, `Report:Seed_Non_WCF_Billing_Report`, `Report:Seed_QR_Activity_Breakdown Query`, `Report:Seed_QR_Activity_Breakdown_by_lot Query`, `Report:Seed_Quarterly_Report`, `Report:Seed_Sown_for_Other_Than_Storage_Parent`, `Report:Seedlots_with_negative_balance`  
**Form events with code:** Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TabControl | TabCtl2 |  |  |  |  | 0.16, 0.08, 8.47, 5.39 |
| Page | Extraction Tab | Extraction |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | Non_WCF_Billing_Report | Billings... |  |  | Click | 2.31, 0.47, 2.00, 0.00 |
| CommandButton | Sow_For_Other_Than_Stored_For | Sowing Billing Checklist |  |  | Click | 0.25, 0.47, 2.00, 0.00 |
| Page | Activities Tab | Activities |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | Source_Lot_Report | Source History Report... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Preview_Seed_Ticket_Checklist | Source Ticket Checklist... |  |  | Click | 0.25, 0.72, 2.00, 0.00 |
| CommandButton | Preview_Seed_Ticket_Checklist2 | Source Ticket Checklist2... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| Page | Inventory Tab | Inventory |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | Seed Inventory Report | Source Inventory Reports... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Product_Storage_Summary | Product Storage Summary... |  |  | Click | 2.31, 0.46, 2.00, 0.00 |
| CommandButton | NMIS_SOURCE_Location_by_ID | Storage Location by Lot ID... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | NMIS_SOURCE_Location_by_Loc | Storage Location by Location... |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Source_Needs_Reports | R5 Seed Need Reports... |  |  | Click | 0.25, 2.89, 2.00, 0.00 |
| CommandButton | Zero_Balance_Report | Zero Balance Lots by FY |  |  | Click | 0.25, 2.08, 2.00, 0.00 |
| CommandButton | Zero_Balance_Report_by_Crop_Yr_Stor_For | Zero Balance Lots by FY, CY, For |  |  | Click | 0.25, 2.35, 2.00, 0.00 |
| CommandButton | NMIS_SOURCE_Location_by_ID2 | Storage Location by Lot ID2... |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | NMIS_SOURCE_Location_by_ID3 | Storage Location by Lot ID3... |  |  | Click | 0.25, 1.54, 2.00, 0.00 |
| CommandButton | NMIS_SOURCE_Location_by_ID3b | Storage Location by Lot ID3b... |  |  | Click | 0.25, 1.81, 2.00, 0.00 |
| CommandButton | ConeStorageSpd | Cone Storage SPD |  |  | Click | 0.25, 2.62, 2.00, 0.00 |
| Page | Labels Tab | Labels |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | Seed Box Labels | Seed Box Labels... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Mailing_Labels_Intermec | Mailing Labels (Intermec 4X6)... |  |  | Click | 0.25, 1.27, 2.00, 0.00 |
| CommandButton | Seed Box Mini Labels | Seed Box Mini Labels... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | Two Lots per Seed Box Label | 2 Lots per Seed Box Label... |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| Page | Quarterly Tab | Quarterly |  |  |  | 0.25, 0.38, 8.28, 5.00 |
| CommandButton | seed Quarterly Report | Source Quarterly Report... |  |  | Click | 0.25, 0.46, 2.00, 0.00 |
| CommandButton | Negative_Balance_Lots | Negative Balance Lots |  |  | Click | 0.25, 0.73, 2.00, 0.00 |
| CommandButton | Activity_by_Species | Activity by Species... |  |  | Click | 0.25, 1.00, 2.00, 0.00 |
| CommandButton | Activity_by_Species_Lot | Activity by Species and Lot... |  |  | Click | 0.25, 1.27, 2.00, 0.00 |

## Code-behind (VBA)

```vb
Private Sub Activity_by_Species_Click()
On Error GoTo Err_ctivity_by_Species_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_QR_Activity_Breakdown Query"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_ctivity_by_Species_Click:
    Exit Sub

Err_ctivity_by_Species_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ctivity_by_Species_Click
    
End Sub

Private Sub Activity_by_Species_Lot_Click()
On Error GoTo Err_Activity_by_Species_Lot_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_QR_Activity_Breakdown_by_lot Query"
    DoCmd.OpenQuery stDocName, acViewPreview

Exit_Activity_by_Species_Lot_Click:
    Exit Sub

Err_Activity_by_Species_Lot_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Activity_by_Species_Lot_Click
    
End Sub



Private Sub ConeStorageSpd_Click()
On Error GoTo Err_ConeStorageSpd_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "ConeStorageSPD"
    DoCmd.OpenQuery stDocName

Exit_ConeStorageSpd_Click:
    Exit Sub

Err_ConeStorageSpd_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_ConeStorageSpd_Click
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    If Forms![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form![Nursery_Associate_Code] = "050357" Then
        [Source_Needs_Reports].Visible = True
    Else
        [Source_Needs_Reports].Visible = False
    End If
    
End Sub

Private Sub Mailing_Labels_Intermec_Click()
On Error GoTo Err_Mailing_Labels_Intermec_Click


    Dim stDocName As String

    stDocName = "NMIS_ASSOCIATES_MAILING_LABEL_INTERMEC"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Mailing_Labels_Intermec_Click:
    Exit Sub

Err_Mailing_Labels_Intermec_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Mailing_Labels_Intermec_Click
    
End Sub

Private Sub Negative_Balance_Lots_Click()
On Error GoTo Err_Negative_Balance_Lots_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seedlots_with_negative_balance"
    DoCmd.OpenQuery stDocName ', acViewPreview

Exit_Negative_Balance_Lots_Click:
    Exit Sub

Err_Negative_Balance_Lots_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Negative_Balance_Lots_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID2_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID2_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report2"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID2_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID2_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID3_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID3_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report3"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID3_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID3_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID3_Click
    
End Sub

Private Sub NMIS_SOURCE_Location_by_ID3b_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_ID3b_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_ID_Report3b"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_NMIS_SOURCE_Location_by_ID3b_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_ID3b_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_ID3b_Click
End Sub

Private Sub NMIS_SOURCE_Location_by_Loc_Click()
On Error GoTo Err_NMIS_SOURCE_Location_by_Loc_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Location_by_Loc_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_NMIS_SOURCE_Location_by_Loc_Click:
    Exit Sub

Err_NMIS_SOURCE_Location_by_Loc_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_SOURCE_Location_by_Loc_Click
    
End Sub

Private Sub Non_WCF_Billing_Report_Click()
On Error GoTo Err_Non_WCF_Billing_Report_Click
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Non_WCF_Billing_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Non_WCF_Billing_Report_Click:
    Exit Sub

Err_Non_WCF_Billing_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Non_WCF_Billing_Report_Click
    
End Sub

Private Sub Preview_Seed_Ticket_Checklist2_Click()
On Error GoTo Err_Preview_Seed_Ticket_Checklist2_Click

    Dim stDocName As String

    stDocName = "NMIS_SEED_TICKETS_CHECKLIST2"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Ticket_Checklist2_Click:
    Exit Sub

Err_Preview_Seed_Ticket_Checklist2_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Ticket_Checklist2_Click
    
End Sub

Private Sub Product_Storage_Summary_Click()
On Error GoTo Err_Product_Storage_Summary_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Product_Storage_Summary"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Product_Storage_Summary_Click:
    Exit Sub

Err_Product_Storage_Summary_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Product_Storage_Summary_Click
    
End Sub

Private Sub Seed_Box_Mini_Labels_Click()
On Error GoTo Err_Seed_Box_Mini_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2d"
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    
Exit_Seed_Box_Mini_Labels_Click:
    Exit Sub

Err_Seed_Box_Mini_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Mini_Labels_Click
    
End Sub

Private Sub Seed_Inventory_Report_Click()
On Error GoTo Err_Seed_Inventory_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Inventory_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Seed_Inventory_Report_Click:
    Exit Sub

Err_Seed_Inventory_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Inventory_Report_Click
    
End Sub
Private Sub seed_Quarterly_Report_Click()
On Error GoTo Err_seed_Quarterly_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Quarterly_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_seed_Quarterly_Report_Click:
    Exit Sub

Err_seed_Quarterly_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_seed_Quarterly_Report_Click
    
End Sub
Private Sub Seed_Box_Labels_Click()
On Error GoTo Err_Seed_Box_Labels_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Seed_Box_Labels_Click:
    Exit Sub

Err_Seed_Box_Labels_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Seed_Box_Labels_Click
    
End Sub
Private Sub Source_Lot_Report_Click()
On Error GoTo Err_Source_Lot_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_LOT_SELECT"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Lot_Report_Click:
    Exit Sub

Err_Source_Lot_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Lot_Report_Click
    
End Sub
Private Sub Preview_Seed_Ticket_Checklist_Click()
On Error GoTo Err_Preview_Seed_Ticket_Checklist_Click

    Dim stDocName As String

    stDocName = "NMIS_SEED_TICKETS_CHECKLIST"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Seed_Ticket_Checklist_Click:
    Exit Sub

Err_Preview_Seed_Ticket_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Seed_Ticket_Checklist_Click
    
End Sub

Private Sub Source_Needs_Reports_Click()
On Error GoTo Err_Source_Needs_Reports_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Seed_Needs_Report"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Source_Needs_Reports_Click:
    Exit Sub

Err_Source_Needs_Reports_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Source_Needs_Reports_Click
End Sub

Private Sub Sow_For_Other_Than_Stored_For_Click()
On Error GoTo Err_Sow_For_Other_Than_Stored_For_Click

    Dim stDocName As String

    stDocName = "Seed_Sown_for_Other_Than_Storage_Parent"
    DoCmd.OpenReport stDocName, acViewPreview

Exit_Sow_For_Other_Than_Stored_For_Click:
    Exit Sub

Err_Sow_For_Other_Than_Stored_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Sow_For_Other_Than_Stored_For_Click
    
End Sub

Private Sub Two_Lots_per_Seed_Box_Label_Click()
On Error GoTo Err_Two_Lots_per_Seed_Box_Label_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lot_ID_Input_Form2e"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Two_Lots_per_Seed_Box_Label_Click:
    Exit Sub

Err_Two_Lots_per_Seed_Box_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Two_Lots_per_Seed_Box_Label_Click
    
End Sub

Private Sub Zero_Balance_Report_by_Crop_Yr_Stor_For_Click()
On Error GoTo Err_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Zero_Bal_by_Col_Yr_Stor_For_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click:
    Exit Sub

Err_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Zero_Balance_Report_by_Crop_Yr_Stor_For_Click
    
End Sub

Private Sub Zero_Balance_Report_Click()
On Error GoTo Err_Zero_Balance_Report_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_SOURCE_Zero_Balance_Report"
    DoCmd.OpenReport stDocName, acPreview
    
Exit_Zero_Balance_Report_Click:
    Exit Sub

Err_Zero_Balance_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Zero_Balance_Report_Click
    
End Sub
```
