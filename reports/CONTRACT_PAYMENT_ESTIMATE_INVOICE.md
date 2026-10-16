# Report: CONTRACT_PAYMENT_ESTIMATE_INVOICE

**Caption:** LIFT_CONTRACT_ESTIMATE_INVOICE  
**Grouping/sorting:** `Level`, `sort`, `Item_No`  
**Backend tables referenced:** `NMIS_ASSOCIATES`  
**Opened from (VBA):** `Form_Contract_Payment_Estimate_Invoice`, `Form_Contract_Payment_Estimate_Invoice_Main`, `Form_Contract_Payment_Estimate_Invoice_Main_subform`, `Form_Contract_Payment_Estimate_Invoice_bu`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | REPORT_Label | CONTRACT ESTIMATE AND INVOICE |  |  |  | 0.50, 0.81, 3.51, 0.19 |
| TextBox | Text63 |  | CONTRACT_NO |  |  | 7.74, 0.82, 2.48, 0.19 |
| TextBox | Inclusive_Dates |  | Inclusive_Dates |  |  | 1.46, 1.86, 2.90, 0.19 |
| Label | Label73 | INCLUSIVE DATES |  |  |  | 1.42, 1.69, 2.97, 0.18 |
| TextBox | Text75 |  | Estimate_No |  |  | 0.34, 1.86, 0.92, 0.19 |
| Label | Label76 | ESTIMATE NO. |  |  |  | 0.32, 1.69, 0.94, 0.18 |
| Label | Label80 | UNIT |  |  |  | 0.32, 1.31, 4.05, 0.18 |
| ComboBox | Text81 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Nursery_Associate_Code] | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES_1.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_ASSOCIATES AS NMIS_ASSOCIATES_1 ON NMIS_ASSOCIATES.PARENT_ASSOCIATE = NMIS_ASSOCIATES_1.ASSOCIATE; |  | 0.36, 1.48, 4.02, 0.19 |
| Label | Label82 | PROJECT |  |  |  | 4.45, 0.65, 3.19, 0.18 |
| Label | Label85 | CONTRACT NO. |  |  |  | 7.69, 0.65, 2.47, 0.16 |
| TextBox | CONTRACTOR_NAME |  | ASSOCIATE_NAME |  |  | 4.49, 1.28, 3.05, 0.19 |
| Label | Label87 | NAME AND ADDRESS OF CONTRACTOR |  |  |  | 4.45, 1.03, 3.18, 0.18 |
| Rectangle | Box90 |  |  |  |  | 4.39, 1.03, 3.25, 1.03 |
| Rectangle | Box91 |  |  |  |  | 0.31, 1.31, 4.07, 0.38 |
| Rectangle | Box92 |  |  |  |  | 4.39, 0.65, 3.25, 0.39 |
| Rectangle | Box93 |  |  |  |  | 0.31, 1.69, 1.03, 0.38 |
| Rectangle | Box94 |  |  |  |  | 7.64, 0.65, 2.60, 0.39 |
| Rectangle | Box95 |  |  |  |  | 1.34, 1.69, 3.04, 0.38 |
| Label | CONTRACT_ITEM_Label | Item No. |  |  |  | 0.31, 2.06, 0.61, 0.38 |
| Label | FEET_Label | Prev. Est |  |  |  | 5.97, 2.25, 0.82, 0.19 |
| Label | PAYMENT_PER_UNIT_Label | Unit Price |  |  |  | 8.59, 2.06, 0.70, 0.38 |
| Label | PAYMENT_Label | Total Earned to Date |  |  |  | 9.29, 2.06, 0.95, 0.38 |
| Label | Label120 | Unit |  |  |  | 3.14, 2.06, 0.38, 0.38 |
| Label | Label130 | Rev. Tot |  |  |  | 5.17, 2.25, 0.80, 0.19 |
| Label | Label140 | Item |  |  |  | 0.93, 2.06, 2.21, 0.38 |
| Label | Label141 | Contract |  |  |  | 3.51, 2.25, 0.83, 0.19 |
| Label | Label142 | Changes |  |  |  | 4.34, 2.25, 0.82, 0.19 |
| Label | Label143 | This Est |  |  |  | 6.79, 2.25, 0.84, 0.19 |
| Label | Label144 | Total to Date |  |  |  | 7.64, 2.25, 0.96, 0.19 |
| TextBox | MAIL_ADDRESS |  | ADDRESS |  |  | 4.49, 1.47, 3.05, 0.19 |
| TextBox | CITY_STATE_ZIP |  | CITY_STATE_ZIP |  |  | 4.49, 1.66, 3.05, 0.19 |
| Label | Label148 | Quantities |  |  |  | 3.51, 2.06, 5.08, 0.19 |
| TextBox | Net_Contract_Amount |  | NET_CONTRACT_AMOUNT |  |  | 7.75, 1.89, 2.44, 0.15 |
| Label | Label150 | NET CONTRACT AMOUNT |  |  |  | 7.69, 1.72, 2.49, 0.16 |
| Rectangle | Net_Contract_Amount_box |  |  |  |  | 7.64, 1.73, 2.60, 0.33 |
| TextBox | Increases_Or_Decreases |  | INCREASES_DECREASES |  |  | 7.76, 1.54, 2.43, 0.15 |
| Label | Label153 | INCREASES OR DECREASES |  |  |  | 7.69, 1.36, 2.47, 0.16 |
| Rectangle | Box154 |  |  |  |  | 7.64, 1.38, 2.60, 0.35 |
| Label | Label214 | FS-6300-30 (9/02) |  |  |  | 0.32, 0.65, 4.06, 0.18 |
| Rectangle | Box216 |  |  |  |  | 0.31, 0.65, 4.07, 0.67 |
| Label | Label217 | (Reference FSH 6909.11 and 6309.31) |  |  |  | 0.50, 1.00, 3.51, 0.20 |
| TextBox | ORIGINAL_CONTRACT_AMOUNT |  | ORIGINAL_CONTRACT_AMT |  |  | 7.75, 1.19, 2.45, 0.00 |
| Label | Label219 | ORIGINAL CONTRACT AMOUNT |  |  |  | 7.69, 1.02, 2.49, 0.16 |
| Rectangle | Box220 |  |  |  |  | 7.64, 1.03, 2.60, 0.34 |
| Line | Line221 |  |  |  |  | 3.51, 2.07, 0.00, 0.36 |
| Line | Line223 |  |  |  |  | 8.59, 2.06, 0.00, 0.36 |
| TextBox | PAGES |  | ="Page " & [Page] & " of " & [Pages] |  |  | 8.14, 0.45, 2.11, 0.18 |
| TextBox | Project_Name |  | PROJECT_NAME |  |  | 4.49, 0.81, 3.14, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CONTRACT_ITEM_DESC |  | Item |  |  | 0.99, 0.01, 2.12, 0.18 |
| TextBox | FEET |  | This_Est |  |  | 6.79, 0.01, 0.83, 0.18 |
| TextBox | PAYMENT_PER_UNIT |  | Total_To_Date |  |  | 7.66, 0.01, 0.92, 0.18 |
| TextBox | CONTRACT_ITEM |  | Item_No |  |  | 0.35, 0.01, 0.58, 0.18 |
| TextBox | Text121 |  | Unit |  |  | 3.14, 0.01, 0.35, 0.18 |
| TextBox | Total_Earned_to_Date |  | [Total_Earned_to_Date] |  |  | 9.35, 0.01, 0.86, 0.20 |
| TextBox | Contract |  | Contract |  |  | 3.52, 0.01, 0.81, 0.18 |
| TextBox | Text135 |  | Changes |  |  | 4.38, 0.01, 0.78, 0.18 |
| TextBox | Text136 |  | Rev_Tot |  |  | 5.19, 0.01, 0.78, 0.18 |
| TextBox | Text138 |  | Prev_Est |  |  | 5.98, 0.01, 0.79, 0.18 |
| TextBox | Text139 |  | Unit_Price |  |  | 8.65, 0.01, 0.61, 0.18 |
| Line | Line176 |  |  |  |  | 0.93, 0.00, 0.00, 0.21 |
| Line | Line177 |  |  |  |  | 3.14, 0.00, 0.00, 0.21 |
| Line | Line178 |  |  |  |  | 3.51, 0.00, 0.00, 0.21 |
| Line | Line179 |  |  |  |  | 4.34, 0.00, 0.00, 0.21 |
| Line | Line181 |  |  |  |  | 5.17, 0.00, 0.00, 0.21 |
| Line | Line182 |  |  |  |  | 5.97, 0.00, 0.00, 0.21 |
| Line | Line183 |  |  |  |  | 6.79, 0.00, 0.00, 0.21 |
| Line | Line184 |  |  |  |  | 7.64, 0.00, 0.00, 0.21 |
| Line | Line185 |  |  |  |  | 8.59, 0.00, 0.00, 0.21 |
| Line | Line186 |  |  |  |  | 9.29, 0.00, 0.00, 0.21 |
| Line | Line189 |  |  |  |  | 0.30, 0.00, 0.00, 0.21 |
| Line | Line313 |  |  |  |  | 10.24, 0.00, 0.00, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text301 |  | ="NMIS " & Now() |  |  | 8.14, 0.08, 2.12, 0.00 |
| Line | Line302 |  |  |  |  | 0.26, 0.00, 10.00, 0.00 |
| TextBox | Date Signed |  | SIGN_DATE |  |  | 0.38, 0.00, 5.04, 0.26 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label250 |  DATE |  |  |  | 0.31, 0.86, 1.11, 0.18 |
| Rectangle | Box251 |  |  |  |  | 0.31, 0.85, 1.11, 0.93 |
| Label | Label252 |  SIGNATURE |  |  |  | 1.42, 0.86, 0.72, 0.16 |
| Rectangle | Box253 |  |  |  |  | 1.43, 0.85, 4.91, 0.93 |
| Label | Label254 | (Payee or their represenative) |  |  |  | 2.15, 0.86, 1.52, 0.16 |
| Label | Label255 |  AND TITLE |  |  |  | 3.68, 0.86, 0.65, 0.16 |
| Label | Label256 |  DATE PAYMENT RECOMMENDED |  |  |  | 0.31, 1.78, 1.86, 0.18 |
| Rectangle | Box257 |  |  |  |  | 0.31, 1.78, 1.86, 0.46 |
| Label | Label258 | SIGNATURE OF COR |  |  |  | 2.21, 1.78, 1.70, 0.17 |
| Rectangle | Box259 |  |  |  |  | 2.18, 1.78, 4.16, 0.46 |
| Label | Label260 |  DEDUCTIONS |  |  |  | 6.45, 1.57, 0.80, 0.18 |
| Rectangle | Box261 |  |  |  |  | 6.34, 1.40, 1.57, 0.39 |
| Label | Label262 |  REMARKS |  |  |  | 0.31, 0.00, 1.45, 0.19 |
| Rectangle | Box263 |  |  |  |  | 0.31, 0.00, 6.03, 0.72 |
| TextBox | Remarks |  | REMARKS |  |  | 0.34, 0.18, 5.91, 0.53 |
| Label | Label265 | I CERTIFY THAT THE ABOVE BILL IS CORRECT AND JUST AND THAT PAYMENT THEREOF HAS NOT BEEN RECEIVED |  |  |  | 0.36, 0.71, 5.45, 0.16 |
| Rectangle | Box266 |  |  |  |  | 0.31, 0.71, 6.03, 0.16 |
| Label | Label267 |  DATE PAYMENT APPROVED |  |  |  | 0.31, 2.24, 1.86, 0.18 |
| Rectangle | Box268 |  |  |  |  | 0.31, 2.24, 1.86, 0.46 |
| Label | Label269 | SIGNATURE OF CO |  |  |  | 2.21, 2.24, 1.07, 0.16 |
| Rectangle | Box270 |  |  |  |  | 2.18, 2.24, 4.16, 0.46 |
| Label | Label271 |  TOTAL EARNED TO DATE |  |  |  | 6.45, 0.12, 1.45, 0.16 |
| Rectangle | Box272 |  |  |  |  | 6.34, 0.00, 2.95, 0.35 |
| Rectangle | Box273 |  |  |  |  | 6.34, 0.35, 1.57, 0.35 |
| Line | Line274 |  |  |  |  | 7.95, 0.22, 1.26, 0.00 |
| Label | Label275 | > |  |  |  | 9.09, 0.02, 0.22, 0.35 |
| Label | Label276 |  PREVIOUS PAYMENTS |  |  |  | 6.45, 0.81, 1.33, 0.19 |
| Rectangle | Box277 |  |  |  |  | 6.34, 0.71, 1.57, 0.33 |
| Label | Label278 | _____% RETENTION |  |  |  | 6.45, 0.48, 1.12, 0.21 |
| Rectangle | Box279 |  |  |  |  | 6.34, 1.04, 1.57, 0.35 |
| Label | Label280 | _____% DISCOUNT |  |  |  | 6.45, 1.17, 1.12, 0.21 |
| Label | Label281 |  (See  "Remarks") |  |  |  | 7.21, 1.59, 0.71, 0.12 |
| Rectangle | Box282 |  |  |  |  | 9.29, 0.00, 0.94, 0.35 |
| Rectangle | Box283 |  |  |  |  | 7.93, 0.35, 1.36, 0.35 |
| Rectangle | Box284 |  |  |  |  | 7.93, 0.71, 1.36, 0.33 |
| Rectangle | Box285 |  |  |  |  | 7.93, 1.04, 1.36, 0.35 |
| Rectangle | Box286 |  |  |  |  | 7.93, 1.40, 1.36, 0.39 |
| Rectangle | Box287 |  |  |  |  | 6.34, 1.78, 2.95, 0.46 |
| Rectangle | Box288 |  |  |  |  | 6.34, 2.24, 2.95, 0.46 |
| Rectangle | Box289 |  |  |  |  | 9.29, 0.35, 0.94, 1.43 |
| Rectangle | Box290 |  |  |  |  | 9.29, 1.78, 0.94, 0.46 |
| Rectangle | Box291 |  |  |  |  | 9.29, 2.24, 0.94, 0.46 |
| Label | Label292 |  TOTAL DEDUCTIONS |  |  |  | 6.45, 1.99, 1.20, 0.16 |
| Label | Label293 | > |  |  |  | 9.09, 1.89, 0.20, 0.30 |
| Label | Label294 |  AMOUNT TO BE PAID THIS ESTIMATE |  |  |  | 6.45, 2.45, 2.09, 0.16 |
| Label | Label295 | > |  |  |  | 9.09, 2.34, 0.22, 0.32 |
| Line | Line296 |  |  |  |  | 7.68, 2.08, 1.54, 0.00 |
| Line | Line297 |  |  |  |  | 8.58, 2.54, 0.64, 0.00 |
| TextBox | Subtotal_Earned_To_Date |  | =Sum([Total_Earned_to_Date]) |  |  | 9.33, 0.11, 0.89, 0.23 |
| TextBox | Retention |  | =nz([Retention_PCT],0)/100*[ORIGINAL_CONTRACT_AMOUNT] |  |  | 8.09, 0.48, 1.11, 0.21 |
| TextBox | PREVIOUS_PAYMENTS |  | =Val([Prev_Pmt]) |  |  | 8.09, 0.79, 1.11, 0.21 |
| TextBox | Discount |  | =nz([Discount_PCT],0)/100*[ORIGINAL_CONTRACT_AMOUNT] |  |  | 8.09, 1.17, 1.11, 0.21 |
| TextBox | Deductions |  | =NZ([DEDUCTION],0) |  |  | 8.09, 1.54, 1.11, 0.21 |
| TextBox | Total_Deductions |  | =[Retention]+[PREVIOUS_PAYMENTS]+[Discount]+[Deductions] |  |  | 9.34, 2.00, 0.89, 0.21 |
| TextBox | Amount_To_Be_Paid_This_Est |  | =[Subtotal_Earned_To_Date]-[Total_Deductions] |  |  | 9.33, 2.46, 0.89, 0.23 |
| TextBox | Retention_PCT |  | [RETENTION_PCT] |  |  | 6.46, 0.46, 0.29, 0.16 |
| TextBox | Discount_PCT |  | [DISCOUNT_PCT] |  |  | 6.45, 1.15, 0.29, 0.16 |
