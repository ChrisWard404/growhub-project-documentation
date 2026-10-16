# Report: Seed_Bank_Work_Order_Sow_list

**Grouping/sorting:** `PLNTMSTR_SYMBOL`, `ID_SOURCEB`, `SOURCE`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Subforms/subreports:** `Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1`  
**Opened from (VBA):** `Form_Seed_Sow_Withdrawal_Ticket Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | NMIS_SOURCE_LOTS_ID_Label | Seed Lot ID |  |  |  | 0.00, 2.53, 0.45, 0.36 |
| Label | SOURCE_CODE_Label | Source |  |  |  | 2.57, 2.70, 0.52, 0.20 |
| Label | SOURCE_REQUIRED_Label |  Lbs. Out |  |  |  | 6.78, 2.53, 0.40, 0.36 |
| Line | Line114 |  |  |  |  | 0.00, 2.90, 7.67, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.54, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  Source Material Sowing Withdrawal Request | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.32, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.32, 0.00, 3.24, 0.16 |
| Label | Label130 | Storage Location |  |  |  | 4.62, 2.53, 0.62, 0.36 |
| Label | Label131 | New Balance |  |  |  | 7.28, 2.53, 0.58, 0.36 |
| Label | Label132 | Inventory Balance |  |  |  | 5.27, 2.53, 0.71, 0.36 |
| Label | Label133 | Reweigh Balance  |  |  |  | 5.96, 2.53, 0.66, 0.36 |
| Label | Label148 | Computer Posted |  |  |  | 5.26, 1.28, 1.19, 0.18 |
| Label | Label149 | Shipment Record |  |  |  | 5.26, 1.46, 1.20, 0.18 |
| Label | Label150 | Stratification |  |  |  | 5.26, 1.64, 1.19, 0.18 |
| Label | Label151 | Withdrawn By |  |  |  | 5.26, 1.81, 1.19, 0.18 |
| Label | Label152 | Reviewed By |  |  |  | 5.26, 1.99, 1.19, 0.18 |
| Label | Label153 | Histories |  |  |  | 5.26, 2.17, 1.19, 0.18 |
| Line | Line154 |  |  |  |  | 6.55, 1.46, 0.58, 0.00 |
| Line | Line155 |  |  |  |  | 7.26, 1.46, 0.58, 0.00 |
| Label | Label156 | By |  |  |  | 6.64, 1.10, 0.42, 0.18 |
| Label | Label157 | Date |  |  |  | 7.34, 1.10, 0.38, 0.18 |
| Line | Line158 |  |  |  |  | 6.55, 1.64, 0.58, 0.00 |
| Line | Line159 |  |  |  |  | 7.26, 1.64, 0.58, 0.00 |
| Line | Line160 |  |  |  |  | 6.55, 1.81, 0.58, 0.00 |
| Line | Line161 |  |  |  |  | 7.26, 1.81, 0.58, 0.00 |
| Line | Line162 |  |  |  |  | 6.55, 1.99, 0.58, 0.00 |
| Line | Line163 |  |  |  |  | 7.26, 1.99, 0.58, 0.00 |
| Line | Line164 |  |  |  |  | 6.55, 2.17, 0.58, 0.00 |
| Line | Line165 |  |  |  |  | 7.26, 2.17, 0.58, 0.00 |
| Line | Line166 |  |  |  |  | 6.55, 2.34, 0.58, 0.00 |
| Line | Line167 |  |  |  |  | 7.26, 2.34, 0.58, 0.00 |
| Label | Label168 | Sow at: |  |  |  | 0.00, 1.28, 0.64, 0.20 |
| Line | Line169 |  |  |  |  | 0.69, 1.88, 0.58, 0.00 |
| Label | Label171 | Order #: |  |  |  | 0.00, 1.68, 0.58, 0.20 |
| Line | Line172 |  |  |  |  | 2.03, 1.88, 0.58, 0.00 |
| Label | Label173 | Date: |  |  |  | 1.55, 1.68, 0.40, 0.20 |
| Line | Line176 |  |  |  |  | 0.00, 2.53, 7.66, 0.00 |
| TextBox | Order_ID |  | TKT_NO |  |  | 0.67, 1.67, 0.70, 0.20 |
| TextBox | Date |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![DESIRED_DATE] |  |  | 2.01, 1.67, 0.73, 0.20 |
| ComboBox | Ordered_By |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![DELIVERED_TO_ASSOCIATE] | SELECT NMIS_ASSOCIATES.ASSOCIATE, [ASSOCIATE] & " - " & [ASSOCIATE_NAME] AS Expr1 FROM NMIS_ASSOCIATES; |  | 0.62, 1.28, 3.46, 0.21 |
| TextBox | Text187 |  | =[Forms]![Seed_Sow_Withdrawal_Ticket Subform]![NOTE] |  |  | 0.00, 1.96, 4.92, 0.46 |
| Label | Label177 | Ageement Lot ID |  |  |  | 0.89, 2.53, 0.75, 0.36 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_SOURCE_LOTS_ID |  | SOURCE |  |  | 1.85, 0.14, 2.48, 0.20 |
| TextBox | SOURCE_REQUIRED |  | Withdrawal_Amt |  |  | 6.56, 0.17, 0.64, 0.00 |
| Subform | NMIS_ID_LOCATIONS subreport1 |  | Report.NMIS_ID_LOCATIONS_Seed_Withdrawal subreport1 (master: SOURCE_LOT_CN → child: SOURCE_LOT_CN) |  |  | 4.33, 0.12, 0.96, 0.21 |
| TextBox | Sum Of ACTIVITY_UNITS |  | Seed_Balance |  |  | 5.30, 0.14, 0.66, 0.20 |
| TextBox | SOURCE_ID |  | NMIS_SOURCE_LOTS_ID |  |  | 0.00, 0.14, 0.92, 0.20 |
| Line | Line134 |  |  |  |  | 6.01, 0.33, 0.53, 0.00 |
| Line | Line135 |  |  |  |  | 7.31, 0.34, 0.57, 0.00 |
| TextBox | Agreement_Lot_ID |  | ID |  |  | 0.93, 0.14, 0.92, 0.20 |
| TextBox | ACTIVITY_UNITS |  | Withdrawal_Amt |  |  | 7.28, 0.17, 0.58, 0.00 |
| TextBox | Text183 |  | =IIf(Not IsNull([Withdrawal_Amt]),"Withdrawn") |  |  | 7.28, 0.00, 0.58, 0.00 |
| TextBox | Text186 |  | TKT_NO_and_Date |  |  | 6.16, 0.00, 1.10, 0.16 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text19 |  | =Now() |  |  | 0.03, 0.02, 1.87, 0.00 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 2.41, 0.02, 5.46, 0.16 |
| Line | Line22 |  |  |  |  | 0.03, 0.00, 7.60, 0.00 |
