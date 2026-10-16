# Form: NMIS_PROCESS_LABELS

**Caption:** Select Pack ID  
**Record source:**

```sql
SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_AGREEMENT_LOTS`, `NMIS_ORDERS`  
**Subforms/subreports:** `Form.NMIS_PROCESS_LABELS_subform1`, `Form.NMIS_PROCESS_LABELS_subform2`  
**Opens:** `Form:Bag/Box Label`, `Form:Enter New Pack Id`, `Form:NMIS_PROCESS_PACK_LABELS`, `Form:NMIS_PROCESS_QI_LABELS`, `Report:Bag/Box Label`, `Report:Enter New Pack Id`, `Report:NMIS_PROCESS_PACK_LABELS`, `Report:NMIS_PROCESS_QI_LABELS`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | Processing Labels |  |  |  | 3.12, 0.07, 1.77, 0.29 |
| Line | Line45 |  |  |  |  | 0.08, 0.42, 7.81, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| CommandButton | Command4 | Preview Bag/Box Label |  |  | Click | 4.27, 5.29, 1.36, 0.49 |
| CommandButton | Command5 | Preview QI Label |  |  | Click | 2.43, 5.29, 1.36, 0.49 |
| TextBox | Table | Table: |  |  |  | 2.58, 0.71, 0.33, 0.23 |
| TextBox | Trees/Cont | Tree/Cont: |  |  |  | 2.58, 1.28, 0.71, 0.23 |
| TextBox | Date Lifted | Date Lifted: |  |  |  | 5.09, 0.70, 0.71, 0.23 |
| TextBox | Comments | Comments: |  |  |  | 2.58, 1.85, 3.67, 0.23 |
| Rectangle | Box25 |  |  |  |  | 2.52, 0.04, 2.92, 0.46 |
| Rectangle | Box26 |  |  |  |  | 1.42, 0.58, 5.03, 1.58 |
| Subform | NMIS_PROCESS_LABELS_subform1 |  | Form.NMIS_PROCESS_LABELS_subform1 (master: CN → child: CN) |  |  | 0.65, 2.37, 6.68, 2.71 |
| TextBox | CN |  | =[Agreement_Lot_CN_Select] |  |  | 5.52, 0.17, 0.00, 0.00 |
| Rectangle | Box39 |  |  |  |  | 0.48, 2.25, 7.02, 2.96 |
| ComboBox | Agreement_Lot_CN_Select | Nursery ID: |  | SELECT [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID] AS Nursery_ID FROM NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON [NMIS_ORDERS].[AGREEMENT_LOT_CN]=[NMIS_AGREEMENT_LOTS].[CN] GROUP BY [NMIS_AGREEMENT_LOTS].[CN], [NMIS_AGREEMENT_LOTS].[ID], [NMIS_ORDERS].[FISCAL_YEAR] HAVING (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![NMIS_FISCAL_YEAR_Current].[Form]![FISCAL_YEAR_NUMBER])) ORDER BY [NMIS_AGREEMENT_LOTS].[ID];  | Change | 4.00, 0.12, 1.18, 0.31 |
| Subform | NMIS_PROCESS_LABELS_subform2 |  | Form.NMIS_PROCESS_LABELS_subform2 (master: CN → child: CN) |  |  | 4.92, 0.64, 1.44, 1.15 |

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
```
