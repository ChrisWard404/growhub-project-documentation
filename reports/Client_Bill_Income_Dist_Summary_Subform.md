# Report: Client_Bill_Income_Dist_Summary_Subform

**Caption:** Client Bill Income Dist subreport  
**Record source:**

```sql
SELECT nz([MGMT_CODE],"Undefined") AS MC, Sum(Round(IIf([OVERRIDE]="AT",1,[UNITS])*[CHARGE_PER_UNIT]*([PERCENT_OF_CHARGE]/100),2)) AS INCOME FROM CLIENT_BILL_INCOME_DIST1 LEFT JOIN NMIS_PRODUCT_MGMT_CODES_QUERY ON CLIENT_BILL_INCOME_DIST1.PMC_LINK = NMIS_PRODUCT_MGMT_CODES_QUERY.PMC_LINK WHERE (((IIf(IsNull([Forms]![Client_Bill_Menu]![Contact_CN]),"ALL",[Contact_CN])) Like IIf(IsNull([Forms]![Client_Bill_Menu]![Contact_CN]),"ALL",[Forms]![Client_Bill_Menu]![Contact_CN])) AND ((CLIENT_BILL_INCOME_DIST1.CLIENT) Like [Forms]![Client_Bill_Menu]![Like_Client] & "*") AND ((CLIENT_BILL_INCOME_DIST1.BILL_CODE)<>"HOLD")) GROUP BY nz([MGMT_CODE],"Undefined") ORDER BY nz([MGMT_CODE],"Undefined");
```

**Grouping/sorting:** `MC`  
**Embedded in:** `Report:CLIENT_BILL_INVOICE_COMBINED2`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Hourly_Charges_Label | Amount |  |  |  | 1.54, 0.21, 0.57, 0.20 |
| Label | MGMT_CODE_Label | Job Code |  |  |  | 0.09, 0.21, 0.68, 0.20 |
| Label | Label10 | Income Distribution: |  |  |  | 0.11, 0.03, 1.52, 0.20 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line8 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Hourly_Charges |  | INCOME |  |  | 1.08, 0.00, 1.09, 0.21 |
| TextBox | MGMT_CODE |  | MC |  |  | 0.08, 0.00, 0.90, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line9 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: ReportFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text13 |  | =Sum([INCOME]) |  |  | 0.99, 0.00, 1.18, 0.21 |
| Line | Line14 |  |  |  |  | 1.24, 0.00, 0.93, 0.00 |
