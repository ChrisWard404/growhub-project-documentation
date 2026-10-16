# Form: NMIS_PROCESS_LABELS_MAIN

**Caption:** Select Pack ID  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Form.NMIS_PROCESS_LABELS_ST1`, `Form.NMIS_PROCESS_LABELS_ST2`, `Form.NMIS_PROCESS_LABELS_ST3`, `Form.NMIS_PROCESS_LABELS_ST4`, `Form.NMIS_ACCESS_USER_NURSERY subform1`  
**Opens:** `Form:Bag/Box Label`, `Form:Enter New Pack Id`, `Form:NMIS_PROCESS_PACK_LABELS`, `Form:NMIS_PROCESS_PACK_LABELS_040207`, `Form:NMIS_PROCESS_PACK_LABELS_050357`, `Form:NMIS_PROCESS_PACK_LABELS_ODD_BOX`, `Form:NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207`, `Form:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE`, `Form:NMIS_PROCESS_QI_LABELS`, `Report:Bag/Box Label`, `Report:Enter New Pack Id`, `Report:NMIS_PROCESS_PACK_LABELS`, `Report:NMIS_PROCESS_PACK_LABELS_040207`, `Report:NMIS_PROCESS_PACK_LABELS_050357`, `Report:NMIS_PROCESS_PACK_LABELS_ODD_BOX`, `Report:NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207`, `Report:NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE`, `Report:NMIS_PROCESS_QI_LABELS`  
**Opened from (VBA):** `Form_Reports_Menu_Processing Subform`, `Form_xNative_Propagule_Harvest_Menu`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Processing Labels |  |  |  | 3.12, 0.04, 2.01, 0.31 |
| Line | Line45 |  |  |  |  | 0.12, 0.39, 7.81, 0.00 |
| TabControl | TabCtl48 |  |  |  |  | 0.03, 0.40, 8.21, 5.40 |
| Page | Station_1 | Table/Belt: 1 |  |  |  | 0.12, 0.69, 8.02, 5.01 |
| Subform | NMIS_PROCESS_LABELS_ST1 |  | Form.NMIS_PROCESS_LABELS_ST1 |  |  | 0.12, 0.70, 8.02, 5.00 |
| Page | Station_2 | Table/Belt: 2 |  |  |  | 0.12, 0.69, 8.02, 5.01 |
| Subform | NMIS_PROCESS_LABELS_ST2 |  | Form.NMIS_PROCESS_LABELS_ST2 |  |  | 0.12, 0.70, 8.02, 5.00 |
| Page | Station_3 | Table/Belt: 3 |  |  |  | 0.12, 0.69, 8.02, 5.01 |
| Subform | NMIS_PROCESS_LABELS_ST3 |  | Form.NMIS_PROCESS_LABELS_ST3 |  |  | 0.12, 0.70, 8.02, 5.00 |
| Page | Station_4 | Table/Belt: 4 |  |  |  | 0.12, 0.69, 8.02, 5.01 |
| Subform | NMIS_PROCESS_LABELS_ST4 |  | Form.NMIS_PROCESS_LABELS_ST4 |  |  | 0.12, 0.70, 8.02, 5.00 |
| TextBox | Ageement_Lot_CN_Select |  |  |  |  | 5.12, 0.03, 0.67, 0.00 |
| TextBox | Order_CN |  |  |  |  | 5.81, 0.03, 0.58, 0.00 |
| TextBox | Trees/Cont |  |  |  |  | 6.43, 0.03, 0.38, 0.00 |
| TextBox | Table |  |  |  |  | 6.85, 0.03, 0.42, 0.00 |
| TextBox | Pack_Date |  |  |  |  | 7.76, 0.03, 0.42, 0.00 |
| TextBox | Pack_ID |  |  |  |  | 5.15, 0.20, 0.38, 0.00 |
| TextBox | Comments |  |  |  |  | 5.56, 0.20, 2.58, 0.00 |
| TextBox | Date_Lifted |  |  |  |  | 7.31, 0.03, 0.42, 0.00 |
| CommandButton | Open_Box_Label_To_Edit |  |  |  | Click | 0.00, 0.00, 0.05, 0.07 |
| TextBox | Order_Index_to_DUP |  |  |  |  | 1.42, 0.21, 0.88, 0.00 |
| TextBox | Order_CN_to_Dup |  |  |  |  | 2.38, 0.21, 0.67, 0.00 |
| CommandButton | Print_Processing_ODD_BOX_LABEL | Click HERE to Print Odd Box Label(s) |  |  | Click | 5.47, 0.06, 2.12, 0.23 |
| TextBox | NumberOfOddBoxLabels |  |  |  |  | 7.64, 0.08, 0.35, 0.21 |
| ComboBox | Label_Style | Label Style: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES WHERE (((NMIS_ASSOCIATES.ASSOCIATE) In ("061019","050357","040207","090707"))) ORDER BY NMIS_ASSOCIATES.ASSOCIATE_NAME; |  | 0.89, 0.13, 1.83, 0.00 |
| TextBox | Client |  |  |  |  | 2.33, 0.00, 0.67, 0.00 |
| TextBox | New_Order_CN |  |  |  |  | 0.25, 0.21, 0.96, 0.00 |
| Subform | NMIS_ACCESS_USER_NURSERY subform1 |  | Form.NMIS_ACCESS_USER_NURSERY subform1 |  |  | 0.25, 0.00, 1.75, 0.33 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Command3_Click()

End Sub

Private Sub PackID_BeforeUpdate(Cancel As Integer)

End Sub

Private Sub Preview_Label_Click()
On Error GoTo Err_Preview_Label_Click

    Dim stDocName As String

    stDocName = "Bag/Box Label"
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Label_Click:
    Exit Sub

Err_Preview_Label_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Label_Click
    
End Sub

Private Sub Agreement_Lot_CN_Select_Change()

    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Command4_Click()
On Error GoTo Err_Command4_Click

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_PACK_LABELS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command4_Click:
    Exit Sub

Err_Command4_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command4_Click
    
End Sub
Private Sub Command5_Click()
On Error GoTo Err_Command5_Click

    Dim stDocName As String

    stDocName = "NMIS_PROCESS_QI_LABELS"
    DoCmd.OpenReport stDocName, acPreview

Exit_Command5_Click:
    Exit Sub

Err_Command5_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command5_Click
    
End Sub
Private Sub Command15_Click()
On Error GoTo Err_Command15_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Enter New Pack Id"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Command15_Click:
    Exit Sub

Err_Command15_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Command15_Click
    
End Sub

Private Sub Nursery_ID_Change()

    [Date_Lifted] = ""
    [Table] = ""
    [Trees/Cont] = ""
    [Comments] = ""
    
End Sub

Private Sub Form_Open(Cancel As Integer)
 DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
 DoCmd.SetWarnings True
 
End Sub

Private Sub Open_Box_Label_To_Edit_Click()
On Error GoTo Err_Open_Box_Label_To_Edit_Click

    Dim stDocName As String

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "050357"
        stDocName = "NMIS_PROCESS_PACK_LABELS_050357"
    Case Is = "040207"
        stDocName = "NMIS_PROCESS_PACK_LABELS_040207"
    Case Else
        If [NMIS_PROCESS_LABELS_ST1].Form![Species_Product_End_Product_Group  subform].Form![PRODUCT_GROUP] = "PROPAGULE" Then
            stDocName = "NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE"
        Else
            stDocName = "NMIS_PROCESS_PACK_LABELS"
        End If
    End Select
    
    DoCmd.OpenReport stDocName, acViewDesign
    
Exit_Open_Box_Label_To_Edit_Click:
    Exit Sub

Err_Open_Box_Label_To_Edit_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_Box_Label_To_Edit_Click
    
End Sub

Private Sub Preview_Processing_Table_Sign_Click()

End Sub

Private Sub Print_Processing_ODD_BOX_LABEL_Click()
On Error GoTo Err_Print_Processing_ODD_BOX_LABEL_Click

    Dim stDocName As String

    Select Case Forms![NMIS_PROCESS_LABELS_MAIN]![Label_Style]
        
    Case Is = "040207"
        ' 4X2.5 Label
        stDocName = "NMIS_PROCESS_PACK_LABELS_ODD_BOX_040207"
    Case Else
        ' 4X6 Label
        stDocName = "NMIS_PROCESS_PACK_LABELS_ODD_BOX"
    End Select
    
    DoCmd.OpenReport stDocName, acViewPreview
    DoCmd.PrintOut , , , , NumberOfOddBoxLabels
    DoCmd.Close

Exit_Print_Processing_ODD_BOX_LABEL_Click:
    Exit Sub

Err_Print_Processing_ODD_BOX_LABEL_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Print_Processing_ODD_BOX_LABEL_Click
    
End Sub
```
