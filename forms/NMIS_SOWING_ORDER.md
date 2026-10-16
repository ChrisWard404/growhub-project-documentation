# Form: NMIS_SOWING_ORDER

**Caption:** Sowing Order Table  
**Record source:**

```sql
SELECT NMIS_SOWING_ORDER.* FROM NMIS_SOWING_ORDER WHERE (((NMIS_SOWING_ORDER.GROUP) Like NZ([Forms]![NMIS_SOWING_ORDER]![Like_Group],"*") Or (NMIS_SOWING_ORDER.GROUP) Is Null)) ORDER BY NMIS_SOWING_ORDER.GROUP, IIf([Forms]![NMIS_SOWING_ORDER]![Sort_By]="C",[SOWING_ORDER_CODE],IIf([SOWING_ORDER]<100,"0" & IIf([SOWING_ORDER]<10,"0") & [SOWING_ORDER]));
```

**Backend tables referenced:** `NMIS_SOWING_ORDER`  
**Opens:** `Report:NMIS_Sow_Order_Checklist`, `Report:NMIS_Sow_Order_Checklist_by_Sow_Order`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`, `Form_NMIS_SPECIES_PRODUCTS Form`, `Form_NMIS_SPECIES_PRODUCTS Form Unlockable`, `Form_Oyjord_Calibration`, `Form_Reports_Menu_Production Subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOWING_ORDER_CODE_Label | Code |  |  | Click | 0.04, 0.63, 0.51, 0.20 |
| Label | SOWING_ORDER_Label | Order |  |  | Click | 0.59, 0.64, 0.90, 0.20 |
| Label | DESCRIPTION_Label | DESCRIPTION |  |  |  | 1.55, 0.63, 5.69, 0.20 |
| Label | Label6 | Sow/Transplant Order |  |  |  | 3.50, 0.12, 2.48, 0.31 |
| Line | Line7 |  |  |  |  | 0.04, 0.55, 8.78, 0.00 |
| CommandButton | Preview_Checklist | Preview Checklist |  |  | Click | 7.46, 0.08, 1.29, 0.31 |
| Label | Label10 | Type |  |  |  | 7.31, 0.62, 1.48, 0.21 |
| Label | Label11 | Like Type (Blank for All)  |  |  |  | 0.00, 0.05, 1.69, 0.21 |
| Label | Label14 | Sort By |  |  |  | 1.15, 0.31, 0.54, 0.21 |
| ComboBox | Sort_By |  |  | C;Code;O;Order | AfterUpdate | 1.74, 0.31, 0.57, 0.21 |
| ComboBox | Like_Group |  |  | *;All Types;BS;Bareroot Sow;BT;Bareroot Transplant;CS;Container Sow;CT;Container Transplant | AfterUpdate, DblClick | 1.75, 0.04, 1.51, 0.21 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOWING_ORDER_CODE |  | SOWING_ORDER_CODE |  |  | 0.04, 0.03, 0.51, 0.21 |
| TextBox | SOWING_ORDER |  | SOWING_ORDER |  |  | 0.60, 0.03, 0.89, 0.21 |
| TextBox | DESCRIPTION |  | DESCRIPTION |  |  | 1.55, 0.02, 5.71, 0.21 |
| ComboBox | Group |  | GROUP | BS;Bareroot Sow;BT;Bareroot Transplant;CS;Container Sow;CT;Container Transplant | DblClick | 7.32, 0.02, 1.51, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Group_DblClick(Cancel As Integer)

    [Like_Group] = [GROUP]
    DoCmd.Requery
    
End Sub

Private Sub Like_Group_DblClick(Cancel As Integer)

    Like_Group = "*"
    DoCmd.Requery
    
End Sub

Private Sub Like_Group_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub Preview_Checklist_Click()
On Error GoTo Err_Preview_Checklist_Click

    Dim stDocName As String

    If Sort_By = "C" Then
        stDocName = "NMIS_Sow_Order_Checklist"
    Else
        stDocName = "NMIS_Sow_Order_Checklist_by_Sow_Order"
    End If
    
    DoCmd.OpenReport stDocName, acPreview

Exit_Preview_Checklist_Click:
    Exit Sub

Err_Preview_Checklist_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Preview_Checklist_Click
    
End Sub

Private Sub Sort_By_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub SOWING_ORDER_CODE_Label_Click()

    Sort_By = "C"
    DoCmd.Requery
  
End Sub

Private Sub SOWING_ORDER_Label_Click()

    Sort_By = "O"
    DoCmd.Requery
  
End Sub
```
