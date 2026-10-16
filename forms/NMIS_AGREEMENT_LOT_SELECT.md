# Form: NMIS_AGREEMENT_LOT_SELECT

**Caption:** NMIS source Lot Report  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Opens:** `Report:NMIS_AGREEMENT_Lots_Activities_and_Transactions`, `Report:NMIS_AGREEMENT_Lots_Activities_wo_Transactions`  
**Opened from (VBA):** `Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`, `Form_Reports_Menu_Production Subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | NMIS AGREEMENT LOT  ACTIVITIES AND TRANSACTIONS REPORT |  |  |  | 0.80, 0.07, 3.94, 0.56 |
| Line | Line5 |  |  |  |  | 0.00, 0.70, 5.42, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | AGREEMENT_LOT_ID1_SELECT Label | Agreement Lot ID1: |  |  |  | 1.09, 0.22, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID1_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.46, 0.21, 2.06, 0.27 |
| CommandButton | NMIS_AGREEMENT_LOT_REPORT_CREATE | Click to Preview Report WITH Transactions |  |  | Click | 1.00, 2.00, 1.50, 0.70 |
| Label | AGREEMENT_LOT_ID2_SELECT Label | Agreement Lot ID2: |  |  |  | 1.09, 0.52, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID2_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.46, 0.51, 2.06, 0.27 |
| Label | AGREEMENT_LOT_ID3_SELECT Label | Agreement Lot ID3: |  |  |  | 1.09, 0.82, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID3_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.46, 0.81, 2.06, 0.27 |
| Label | AGREEMENT_LOT_ID4_SELECT Label | Agreement Lot ID4: |  |  |  | 1.09, 1.12, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID4_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.46, 1.11, 2.06, 0.27 |
| Label | AGREEMENT_LOT_ID5_SELECT Label | Agreement Lot ID5: |  |  |  | 1.09, 1.42, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID5_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.46, 1.41, 2.06, 0.27 |
| CommandButton | NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE | Click to Preview Report WITHOUT Transactions |  |  | Click | 3.01, 2.00, 1.50, 0.70 |

## Code-behind (VBA)

```vb
Option Compare Database


Private Sub NMIS_AGREEMENT_LOT_REPORT_CREATE_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_Lots_Activities_and_Transactions"
    DoCmd.OpenReport stDocName, acPreview
Exit_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_REPORT_CREATE_Click
        
End Sub

Private Sub NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click()
On Error GoTo Err_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_Lots_Activities_wo_Transactions"
    DoCmd.OpenReport stDocName, acPreview
Exit_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click:
    Exit Sub

Err_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_NMIS_AGREEMENT_LOT_REPORT_Without_Transactions_CREATE_Click
    
End Sub
```
