# Form: NMIS_AGREEMENT_LOT_ACT_TRANS_BALANCE

**Caption:** NMIS source Lot Report  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Opens:** `Report:NMIS_AGREEMENT_LOT_Transaction_Balance`, `Report:NMIS_AGREEMENT_LOT_Transaction_Balance_by_order`  
**Opened from (VBA):** `Form_NMIS_ID_ACTIVITY_TRANSACTIONS_FORM`, `Form_Reports_Menu_Production Subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | NMIS AGREEMENT LOT ACTIVITIES AND TRANSACTION BALANCE REPORT |  |  |  | 0.71, 0.07, 4.12, 0.84 |
| Line | Line5 |  |  |  |  | 0.00, 0.99, 5.42, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | AGREEMENT_LOT_ID1_SELECT Label | Agreement Lot ID1: |  |  |  | 1.12, 0.22, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID1_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.48, 0.21, 2.06, 0.27 |
| CommandButton | NMIS_AGREEMENT_LOT_REPORT_CREATE | Click to Preview Report |  |  | Click | 1.21, 1.96, 1.50, 0.70 |
| Label | AGREEMENT_LOT_ID2_SELECT Label | Agreement Lot ID2: |  |  |  | 1.12, 0.52, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID2_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.48, 0.51, 2.06, 0.27 |
| Label | AGREEMENT_LOT_ID3_SELECT Label | Agreement Lot ID3: |  |  |  | 1.12, 0.82, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID3_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.48, 0.81, 2.06, 0.27 |
| Label | AGREEMENT_LOT_ID4_SELECT Label | Agreement Lot ID4: |  |  |  | 1.12, 1.12, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID4_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.48, 1.11, 2.06, 0.27 |
| Label | AGREEMENT_LOT_ID5_SELECT Label | Agreement Lot ID5: |  |  |  | 1.12, 1.42, 1.32, 0.25 |
| ComboBox | AGREEMENT_LOT_ID5_SELECT |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.BEGIN_FY, NMIS_AGREEMENT_LOTS.END_FY FROM NMIS_AGREEMENT_LOTS ORDER BY NMIS_AGREEMENT_LOTS.BEGIN_FY DESC , NMIS_AGREEMENT_LOTS.ID;  |  | 2.48, 1.41, 2.06, 0.27 |
| CommandButton | Act_Trans_Report_By_Order | Click to Preview Report by Order |  |  | Click | 2.88, 1.96, 1.50, 0.70 |

## Code-behind (VBA)

```vb
Option Compare Database


Private Sub Act_Trans_Report_By_Order_Click()

    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_Transaction_Balance_by_order"
    
    DoCmd.OpenReport stDocName, acPreview

End Sub

Private Sub NMIS_AGREEMENT_LOT_REPORT_CREATE_Click()
    Dim stDocName As String

    stDocName = "NMIS_AGREEMENT_LOT_Transaction_Balance"
    
    DoCmd.OpenReport stDocName, acPreview
    
End Sub
```
