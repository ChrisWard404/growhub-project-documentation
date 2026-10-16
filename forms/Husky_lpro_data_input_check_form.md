# Form: Husky_lpro_data_input_check_form

**Caption:** Lifting/Field Destroy  
**Backend tables referenced:** `NMIS_CONTRACT_ITEMS`  
**Subforms/subreports:** `Form.Hide_Activity_Posting`, `Form.Huksy_lpro_xfer_hlift_table2 subform`, `Form.Ft_To_Lift`  
**Opens:** `Report:Husky_Lpro_Daily_Dump_Report`, `Report:LOTS_LIFTED_DAILY_CONTRACT`, `Report:Lift_Location_Worksheet`  
**Form events with code:** Close, Open  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Hide_Activity_Posting |  | Form.Hide_Activity_Posting |  |  | 6.83, 4.44, 0.96, 0.62 |
| Label | Label12 | Lifting/Field Destroy |  |  |  | 2.84, 0.11, 2.33, 0.28 |
| Line | Line13 |  |  |  |  | 0.08, 0.79, 7.79, 0.00 |
| Subform | **Huksy_lpro_xfer_hlift_table subform |  | Form.Huksy_lpro_xfer_hlift_table2 subform |  |  | 0.58, 0.86, 6.12, 5.38 |
| CommandButton | Preview Daily Dump Report | Click to Preview Daily Dump Report |  |  | Click | 6.88, 3.72, 0.88, 0.50 |
| CommandButton | Process_Data_Into_NMIS | Click to Process Data into NMIS |  |  | Click | 6.88, 4.50, 0.83, 0.49 |
| Subform | Ft_To_Lift |  | Form.Ft_To_Lift |  |  | 5.75, 0.04, 1.34, 0.44 |
| Label | Label28 | Auto Insert Feet Lifted With All Ft |  |  |  | 7.00, 1.62, 0.62, 0.77 |
| CheckBox | Processing_Done |  |  |  |  | 7.83, 5.17, 0.00, 0.00 |
| TextBox | Date_Default |  |  |  |  | 1.73, 0.05, 0.66, 0.20 |
| ComboBox | Contract_Item_Default |  |  | SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Lift*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Field Destroy*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*force*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Surplus*") And ((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!FY_For_Reports));  |  | 1.73, 0.30, 0.68, 0.20 |
| ComboBox | Field_Container_Default |  |  | T;Tub;M;Bin;S;Destroy;X;XFERTO |  | 1.73, 0.54, 0.85, 0.21 |
| Label | Label40 | Defaults: |  |  |  | 0.22, 0.04, 0.64, 0.21 |
| Label | Label41 | Date: |  |  |  | 1.28, 0.04, 0.41, 0.21 |
| Label | Label42 | Contract Item: |  |  |  | 0.70, 0.29, 0.99, 0.21 |
| Label | Label43 | Field Container: |  |  |  | 0.56, 0.54, 1.12, 0.21 |
| CheckBox | Auto_Insert_All_Ft |  |  |  |  | 7.27, 2.45, 0.00, 0.00 |
| CommandButton | Lift_Location_Worksheet | Click for Lifting Worksheet Blank |  |  | Click | 6.88, 0.88, 0.88, 0.58 |
| CommandButton | CmdLftDailyContr | Lift Contract Daily Diary Lot List... |  |  | Click | 6.92, 5.49, 0.82, 0.48 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CmdLftDailyContr_Click()
On Error GoTo Err_CmdLftDailyContr_Click

    Dim stDocName As String

    stDocName = "LOTS_LIFTED_DAILY_CONTRACT"
    DoCmd.OpenReport stDocName, acPreview

Exit_CmdLftDailyContr_Click:
    Exit Sub

Err_CmdLftDailyContr_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_CmdLftDailyContr_Click
    
End Sub

Private Sub Form_Close()

    If Processing_Done Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_lpro_xfer_hlift_table2_Blank_create"
        DoCmd.SetWarnings True
    End If
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.SetWarnings False
    DoCmd.OpenQuery "Agreement_Lot_Current_Age_Class_MT"
    DoCmd.SetWarnings True
    Forms!Husky_lpro_data_input_check_form!Processing_Done = False
    Forms!Husky_lpro_data_input_check_form!Hide_Activity_Posting.Visible = False
        
End Sub

Private Sub Lift_Location_Worksheet_Click()
On Error GoTo Err_Lift_Location_Worksheet_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Lift_Location_Worksheet"
    DoCmd.OpenReport stDocName, acPreview

Exit_Lift_Location_Worksheet_Click:
    Exit Sub

Err_Lift_Location_Worksheet_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Lift_Location_Worksheet_Click
    
End Sub

Private Sub Preview_Daily_Dump_Report_Click()
On Error GoTo Err_Preview_Daily_Dump_Report_Click

    Dim stDocName As String

    stDocName = "Husky_Lpro_Daily_Dump_Report"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Daily_Dump_Report_Click:
    Exit Sub

Err_Preview_Daily_Dump_Report_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Daily_Dump_Report_Click
    
End Sub

Private Sub Process_Data_Into_NMIS_Click()
'---------------------------------------------------
' Husky lpro process into NMIS
'---------------------------------------------------

    If Not (Forms!Husky_lpro_data_input_check_form!Processing_Done) Then
        DoCmd.SetWarnings False
        DoCmd.OpenQuery "Husky_lpro_dump_index_drop"
        DoCmd.OpenQuery "Husky_lpro_dump_index_create"
        DoCmd.OpenQuery "Husky_lpro_dump_lots"
        DoCmd.OpenQuery "Husky_lpro_Dump_Ctl_Create"
        DoCmd.OpenQuery "Husky_lpro_id_Activities_append"
        
        'set flag to not double process
        Forms!Husky_lpro_data_input_check_form!Processing_Done = 1
        Forms!Husky_lpro_data_input_check_form!Hide_Activity_Posting.Visible = True
        
        DoCmd.OpenQuery "Husky_lpro_lift_all_trans_append"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_single_loc_trans_append"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_total_bf_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_lowest_loc_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_temp_trans_table_create"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_remove"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_update"
        DoCmd.OpenQuery "Husky_lpro_lift_partial_trans_append"
        DoCmd.OpenQuery "Husky_lpro_ID_locations_append"
        DoCmd.OpenQuery "Husky_lpro_field_container_trans_append"
        DoCmd.SetWarnings True
        
        MsgBox "Processing Complete"
    Else
        MsgBox "Data has already been processed into NMIS", vbCritical
    End If
    
End Sub
```
