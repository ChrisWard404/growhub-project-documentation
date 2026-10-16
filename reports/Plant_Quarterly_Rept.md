# Report: Plant_Quarterly_Rept

**Caption:** Plant_Quarterly_Rept  
**Record source:**

```sql
SELECT [*Plant_Quarterly_Report Table].*, IIf([B_or_C]="B","Bareroot - ",IIf([B_or_C]="C","Container - ","Unknown - ")) & IIf(Forms!Plant_Quarterly_Report!Category_Code="WCF","Working Capital Fund (WCF)","Special Projects") AS Group_Header FROM [*Plant_Quarterly_Report Table] WHERE ((([*Plant_Quarterly_Report Table].B_or_C)="b" Or ([*Plant_Quarterly_Report Table].B_or_C)="c"));
```

**Grouping/sorting:** `B_or_C`, `Age_Class`  
**Opened from (VBA):** `Form_Plant_Quarterly_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Qtr/fy_Label | Seedling Age Class |  |  |  | 1.06, 2.18, 1.17, 0.19 |
| Label | Prev_Qtr_Bal_Label | Prev Qtr  Est. Net Inv. Balance |  |  |  | 3.21, 1.69, 0.54, 0.68 |
| Label | Inv_Adj_Label | Adjustment Due to New Inventory (Gain/Loss) |  |  |  | 3.78, 1.68, 0.80, 0.69 |
| Label | To_New_AC_Label | Moved or  Transplanted to An Older Age Class |  |  |  | 5.23, 1.69, 0.90, 0.68 |
| Label | Sown_Label | Transplanted, Sown or Moved From a Younger Age Class |  |  |  | 6.71, 1.54, 0.89, 0.84 |
| Label | Shipped_Label | Shipped |  |  |  | 8.22, 2.12, 0.53, 0.24 |
| Label | End_Balance_Label | Ending Est.  Net Inv. Balance |  |  |  | 11.41, 1.69, 0.51, 0.68 |
| Label | Cooler_Dest_Label | Cooler Destroyed |  |  |  | 8.76, 2.01, 0.66, 0.35 |
| Label | Field_Dest_Label | Field Destroyed |  |  |  | 9.42, 2.01, 0.64, 0.35 |
| Label | Other_Gain_or_Loss_Label | Other Gain/Loss (Explain Below) |  |  |  | 10.68, 1.69, 0.69, 0.68 |
| Label | Firm_Order_Adj_Label | Firm Order Adjust |  |  |  | 11.98, 1.85, 0.46, 0.51 |
| Label | Firm_Orders_Label | Firm Orders |  |  |  | 12.51, 2.01, 0.48, 0.35 |
| Label | Label43 | Units |  |  |  | 2.88, 2.17, 0.32, 0.20 |
| Label | Label44 | (1) |  |  |  | 0.31, 1.33, 0.20, 0.18 |
| Label | Label45 | (2) |  |  |  | 1.72, 1.33, 0.20, 0.18 |
| Label | Label46 | (3) |  |  |  | 2.90, 1.33, 0.18, 0.18 |
| Label | Label47 | (4) |  |  |  | 3.39, 1.33, 0.20, 0.18 |
| Label | Label48 | (5) |  |  |  | 4.04, 1.33, 0.20, 0.18 |
| Label | Label49 | EstimatedNet Inventory Balance |  |  |  | 4.58, 1.69, 0.64, 0.68 |
| Label | Label50 | (6) |  |  |  | 4.83, 1.33, 0.20, 0.18 |
| Label | Label51 | (7) |  |  |  | 5.52, 1.33, 0.20, 0.18 |
| Label | Label52 | (9) |  |  |  | 7.05, 1.33, 0.20, 0.18 |
| TextBox | Qtr/fy |  | =IIf(Forms!Plant_Quarterly_Report!Quarter="1A","Age Class Adjustment, First Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="1","First Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="2","Second Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="3","Third Quarter ",IIf(Forms!Plant_Quarterly_Report!Quarter="4","Fourth Quarter ","Yearly Report "))))) & "FY " & Forms!Plant_Quarterly_Report!FY_Select |  |  | 4.19, 0.78, 5.33, 0.29 |
| Label | Label32 | Nursery Management Information System |  |  |  | 5.46, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 5.24, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 5.24, 0.00, 3.24, 0.16 |
| Label | Label53 | Adjusted Balance |  |  |  | 6.14, 2.00, 0.57, 0.36 |
| Label | Label54 | (8) |  |  |  | 6.35, 1.33, 0.20, 0.18 |
| Label | Label55 | Adjusted Balance |  |  |  | 7.59, 2.00, 0.62, 0.36 |
| Label | Label56 | (10) |  |  |  | 7.78, 1.33, 0.26, 0.18 |
| Label | Label57 | Adjusted Balance |  |  |  | 10.06, 2.00, 0.58, 0.36 |
| Label | Label58 | (14) |  |  |  | 10.20, 1.33, 0.26, 0.18 |
| Label | Label59 | (11) |  |  |  | 8.32, 1.33, 0.26, 0.18 |
| Label | Label60 | (12) |  |  |  | 8.94, 1.33, 0.26, 0.18 |
| Label | Label61 | (13) |  |  |  | 9.53, 1.33, 0.26, 0.18 |
| Label | Label62 | (15) |  |  |  | 10.88, 1.33, 0.26, 0.18 |
| Label | Label63 | (17) |  |  |  | 11.49, 1.33, 0.26, 0.18 |
| Label | Label64 | (17) |  |  |  | 12.07, 1.33, 0.26, 0.18 |
| Label | Label65 | (18) |  |  |  | 12.57, 1.33, 0.26, 0.18 |
| TextBox | Text66 |  | ="Total Est Net Physical Inventory as of  " & Forms!Plant_Quarterly_Report!End_Date_for_Previous_FY |  |  | 0.00, 1.78, 0.75, 0.58 |
| Label | Label33 | Tree (Plant) Book Inventory |  |  |  | 5.77, 0.55, 2.22, 0.23 |
| Rectangle | Box71 |  |  |  |  | 0.00, 1.52, 0.75, 0.89 |
| Rectangle | Box74 |  |  |  |  | 0.79, 1.52, 2.06, 0.89 |
| Rectangle | Box76 |  |  |  |  | 2.85, 1.52, 0.35, 0.89 |
| Rectangle | Box77 |  |  |  |  | 3.21, 1.52, 0.58, 0.89 |
| Rectangle | Box78 |  |  |  |  | 3.79, 1.52, 0.79, 0.89 |
| Rectangle | Box79 |  |  |  |  | 4.58, 1.52, 0.62, 0.89 |
| Rectangle | Box80 |  |  |  |  | 5.21, 1.52, 0.92, 0.89 |
| Rectangle | Box82 |  |  |  |  | 6.12, 1.52, 0.58, 0.89 |
| Rectangle | Box83 |  |  |  |  | 6.71, 1.52, 0.88, 0.89 |
| Rectangle | Box84 |  |  |  |  | 7.58, 1.52, 0.62, 0.89 |
| Rectangle | Box85 |  |  |  |  | 8.21, 1.96, 0.54, 0.45 |
| Rectangle | Box86 |  |  |  |  | 8.75, 1.96, 0.65, 0.45 |
| Rectangle | Box87 |  |  |  |  | 9.40, 1.96, 0.65, 0.45 |
| Rectangle | Box88 |  |  |  |  | 10.04, 1.52, 0.62, 0.89 |
| Rectangle | Box89 |  |  |  |  | 10.67, 1.52, 0.71, 0.89 |
| Rectangle | Box91 |  |  |  |  | 11.38, 1.52, 0.54, 0.89 |
| Rectangle | Box92 |  |  |  |  | 11.96, 1.52, 0.00, 0.89 |
| Rectangle | Box93 |  |  |  |  | 12.46, 1.52, 0.58, 0.89 |
| TextBox | Text129 |  | =IIf(Forms!Plant_Quarterly_Report!Quarter="1A","* = Cost Center Change") |  |  | 0.08, 0.46, 1.79, 0.20 |
| TextBox | B_or_C |  | Group_Header |  |  | 4.19, 1.07, 5.33, 0.25 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Prev_FY_Bal |  | Prev_FY_Bal |  |  | 0.08, 0.01, 0.61, 0.00 |
| TextBox | Prev_Qtr_Bal |  | Prev_Qtr_Bal |  |  | 3.28, 0.01, 0.45, 0.00 |
| TextBox | Inv_Adj |  | Inv_Adj |  |  | 3.99, 0.01, 0.50, 0.00 |
| TextBox | To_New_AC |  | To_New_AC |  |  | 5.39, 0.01, 0.54, 0.00 |
| TextBox | Sown |  | Sown |  |  | 6.93, 0.01, 0.50, 0.00 |
| TextBox | Shipped |  | Shipped |  |  | 8.25, 0.01, 0.46, 0.00 |
| TextBox | End_Balance |  | End_Balance |  |  | 11.44, 0.01, 0.44, 0.00 |
| TextBox | Cooler_Dest |  | Cooler_Dest |  |  | 8.83, 0.01, 0.54, 0.00 |
| TextBox | Field_Dest |  | Field_Dest |  |  | 9.49, 0.01, 0.50, 0.00 |
| TextBox | Other_Gain_or_Loss |  | Other_Gain_or_Loss |  |  | 10.77, 0.01, 0.52, 0.00 |
| TextBox | Firm_Order_Adj |  | =Round([Firm_Orders],2)-Round([End_Balance],2) |  |  | 12.02, 0.01, 0.40, 0.00 |
| TextBox | Firm_Orders |  | Firm_Orders |  |  | 12.50, 0.01, 0.47, 0.00 |
| TextBox | Age_Class |  | Age_Class |  |  | 0.85, 0.01, 1.98, 0.00 |
| Label | Label68 | M |  |  |  | 2.96, 0.01, 0.16, 0.17 |
| Line | Line70 |  |  |  |  | 0.80, 0.19, 11.11, 0.00 |
| Line | Line72 |  |  |  |  | 0.00, 0.00, 0.00, 0.20 |
| Line | Line73 |  |  |  |  | 0.75, 0.00, 0.00, 0.20 |
| Line | Line94 |  |  |  |  | 0.79, 0.00, 0.00, 0.20 |
| Line | Line95 |  |  |  |  | 13.04, 0.00, 0.00, 0.20 |
| Line | Line96 |  |  |  |  | 0.00, 0.19, 0.75, 0.00 |
| Line | Line99 |  |  |  |  | 2.85, 0.00, 0.00, 0.20 |
| Line | Line100 |  |  |  |  | 3.21, 0.00, 0.00, 0.20 |
| Line | Line101 |  |  |  |  | 3.79, 0.00, 0.00, 0.20 |
| Line | Line102 |  |  |  |  | 4.58, 0.00, 0.00, 0.20 |
| Line | Line103 |  |  |  |  | 5.21, 0.00, 0.00, 0.20 |
| Line | Line104 |  |  |  |  | 6.12, 0.00, 0.00, 0.20 |
| Line | Line105 |  |  |  |  | 6.71, 0.00, 0.00, 0.20 |
| Line | Line106 |  |  |  |  | 7.58, 0.00, 0.00, 0.20 |
| Line | Line107 |  |  |  |  | 8.21, 0.00, 0.00, 0.20 |
| Line | Line109 |  |  |  |  | 8.75, 0.00, 0.00, 0.20 |
| Line | Line110 |  |  |  |  | 9.40, 0.00, 0.00, 0.20 |
| Line | Line111 |  |  |  |  | 10.04, 0.00, 0.00, 0.20 |
| Line | Line112 |  |  |  |  | 10.67, 0.00, 0.00, 0.20 |
| Line | Line113 |  |  |  |  | 11.38, 0.00, 0.00, 0.20 |
| Line | Line114 |  |  |  |  | 11.92, 0.00, 0.00, 0.20 |
| Line | Line115 |  |  |  |  | 12.46, 0.00, 0.00, 0.20 |
| Line | Line116 |  |  |  |  | 11.96, 0.00, 0.00, 0.20 |
| Line | Line117 |  |  |  |  | 11.96, 0.19, 1.08, 0.00 |
| TextBox | eight |  | =NZ([six],0)+NZ([To_New_AC],0) |  |  | 6.17, 0.01, 0.50, 0.00 |
| TextBox | six |  | =NZ([Prev_Qtr_Bal],0)+NZ([Inv_Adj],0) |  |  | 4.66, 0.01, 0.50, 0.17 |
| TextBox | ten |  | =NZ([eight],0)+NZ([Sown],0) |  |  | 7.66, 0.01, 0.50, 0.00 |
| TextBox | fourteen |  | =NZ([ten],0)+NZ([Shipped],0)+NZ([Cooler_Dest],0)+NZ([Field_Dest],0) |  |  | 10.15, 0.01, 0.50, 0.00 |
| TextBox | cc_Change |  | cc_Change |  |  | 5.94, 0.01, 0.12, 0.16 |
| TextBox | cc_change_From |  | cc_change_From |  |  | 7.46, 0.01, 0.12, 0.16 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text31 |  | =Now() |  |  | 0.00, 0.26, 3.50, 0.19 |
| TextBox | Text32 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 8.52, 0.26, 4.48, 0.19 |
| Line | Line42 |  |  |  |  | 0.00, 0.24, 13.00, 0.00 |
| Label | Label125 | Notes: |  |  |  | 0.12, 0.02, 0.41, 0.18 |
| Line | Line128 |  |  |  |  | 0.00, 0.00, 13.00, 0.00 |
