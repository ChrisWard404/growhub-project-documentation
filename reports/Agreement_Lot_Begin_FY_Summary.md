# Report: Agreement_Lot_Begin_FY_Summary

**Caption:** Agreement_Lot_Begin_FY_Summary  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, Count(NMIS_AGREEMENT_LOTS.CN) AS CountOfCN, Sum(NMIS_AGREEMENT_LOTS.TOTAL_REQUEST) AS SumOfTOTAL_REQUEST, "Begin FY: " & [Begin_fy] AS FY, NMIS_AGREEMENT_LOTS.BEGIN_FY FROM NMIS_PRODUCTS INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN GROUP BY NMIS_AGREEMENT_LOTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC, "Begin FY: " & [Begin_fy], NMIS_AGREEMENT_LOTS.BEGIN_FY HAVING (((NMIS_AGREEMENT_LOTS.BEGIN_FY) Like [Forms]![FY_Input]![FY])) ORDER BY NMIS_AGREEMENT_LOTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_DESC;
```

**Grouping/sorting:** `BEGIN_FY`, `CATEGORY_CODE`, `PRODUCT_DESC`  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_CATEGORIES`, `NMIS_PRODUCTS`, `NMIS_SPECIES_PRODUCTS`  
**Opens:** `Form:FY_Input`  
**Report events with code:** Close, NoData, Open  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CATEGORY_CODE_Label | Category |  |  |  | 1.14, 1.15, 0.58, 0.19 |
| Label | PRODUCT_DESC_Label | Product Description |  |  |  | 2.33, 1.15, 2.42, 0.19 |
| Label | CountOfCN_Label | # of Lots |  |  |  | 5.10, 1.15, 0.56, 0.19 |
| Label | SumOfTOTAL_REQUEST_Label | Total Requested (M or Ac) |  |  |  | 5.85, 1.15, 1.60, 0.20 |
| Line | Line12 |  |  |  |  | 0.50, 1.12, 7.49, 0.00 |
| Line | Line13 |  |  |  |  | 0.50, 1.38, 7.49, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.76, 0.16, 2.81, 0.19 |
| Label | Label110 | Agreement Lot FY Summary |  |  |  | 3.30, 0.57, 1.72, 0.17 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.54, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.54, 0.00, 3.24, 0.16 |
| TextBox | Text20 |  | FY |  |  | 3.21, 0.76, 1.88, 0.19 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 0.54, 0.00, 2.46, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC |  | PRODUCT_DESC |  |  | 2.33, 0.00, 2.42, 0.19 |
| TextBox | CountOfCN |  | CountOfCN |  |  | 4.89, 0.00, 0.77, 0.19 |
| TextBox | SumOfTOTAL_REQUEST |  | SumOfTOTAL_REQUEST |  |  | 6.16, 0.00, 0.93, 0.19 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line14 |  |  |  |  | 0.50, 0.33, 7.49, 0.00 |
| TextBox | Text15 |  | =Sum([CountOfCN]) |  |  | 4.88, 0.11, 0.77, 0.19 |
| TextBox | Text16 |  | =Sum([SumOfTOTAL_REQUEST]) |  |  | 6.16, 0.11, 0.93, 0.19 |
| Line | Line17 |  |  |  |  | 6.20, 0.04, 0.88, 0.00 |
| Line | Line18 |  |  |  |  | 4.88, 0.04, 0.79, 0.00 |
| Label | Label19 | Totals |  |  |  | 3.69, 0.11, 0.41, 0.19 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text9 |  | =Now() |  |  | 0.54, 0.17, 3.50, 0.00 |
| TextBox | Text10 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 5.26, 0.17, 2.69, 0.00 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Report_Close()

    DoCmd.Close acForm, "FY_Input"
    
End Sub

Private Sub Report_NoData(Cancel As Integer)

    MsgBox "There is no data for this report. Canceling report..."
    Cancel = -1

End Sub

Private Sub Report_Open(Cancel As Integer)

    DoCmd.OpenForm "FY_Input", , , , , acDialog
    If Not IsLoaded("FY_Input") Then
        Cancel = True
    End If

End Sub
```
