# Form: NMIS_CONTRACT_ITEMS

**Caption:** NMIS CONTRACT ITEMS  
**Record source:**

```sql
SELECT NMIS_CONTRACT_ITEMS.* FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=[Forms]![NMIS_CONTRACTS]![FISCAL_YEAR]) AND ((IIf(Val([Forms]![NMIS_CONTRACTS]![show_all_contract_items])=-1,[Forms]![NMIS_CONTRACTS]![CONTRACT_NO],[CONTRACT_NO]))=[Forms]![NMIS_CONTRACTS]![View_Contract])) ORDER BY NMIS_CONTRACT_ITEMS.FISCAL_YEAR DESC , NMIS_CONTRACT_ITEMS.CONTRACT_NO, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM;
```

**Backend tables referenced:** `NMIS_CONTRACTS`, `NMIS_CONTRACT_ITEMS`  
**Embedded in:** `Form:NMIS_CONTRACTS`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.03, 0.45, 0.44, 0.38 |
| Label | CONTRACT_ITEM_Label | Contract Item |  |  |  | 2.06, 0.45, 0.62, 0.38 |
| Label | CONTRACT_ITEM_DESC_Label | Contract Item Description |  |  |  | 2.74, 0.45, 2.10, 0.38 |
| Label | PAYMENT_PER_UNIT_Label | Payment/Unit |  |  |  | 4.90, 0.45, 0.62, 0.38 |
| Label | PAYMENT_PER_AMT_Label | Payment/Amt |  |  |  | 5.56, 0.45, 0.62, 0.38 |
| Label | PAYMENT_PER_AMT_GROSS_Label | Payment/AmtGross |  |  |  | 6.23, 0.45, 0.71, 0.38 |
| Label | Label14 | NMIS Contract Items |  |  |  | 3.58, 0.05, 2.50, 0.29 |
| TextBox | NURSERY_ASSOCIATE |  | NURSERY_ASSOCIATE |  |  | 0.04, 0.21, 0.67, 0.20 |
| Line | Line15 |  |  |  |  | 0.08, 0.39, 9.42, 0.00 |
| Label | Label17 | Contract No. |  |  |  | 0.51, 0.45, 1.51, 0.38 |
| Label | Label18 | Est Units |  |  |  | 6.97, 0.45, 0.71, 0.38 |
| Label | Label20 | Field Container |  |  |  | 8.29, 0.45, 0.71, 0.38 |
| Label | Label23 | Default Act. Code |  |  |  | 9.04, 0.45, 0.71, 0.38 |
| Label | Label25 | Unit Code |  |  |  | 7.73, 0.45, 0.51, 0.38 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.04, 0.03, 0.44, 0.20 |
| TextBox | CONTRACT_ITEM |  | CONTRACT_ITEM |  |  | 2.07, 0.03, 0.62, 0.20 |
| TextBox | CONTRACT_ITEM_DESC |  | CONTRACT_ITEM_DESC |  |  | 2.74, 0.03, 2.10, 0.20 |
| TextBox | PAYMENT_PER_UNIT |  | PAYMENT_PER_UNIT |  |  | 4.90, 0.03, 0.62, 0.20 |
| TextBox | PAYMENT_PER_AMT |  | PAYMENT_PER_AMT |  |  | 5.57, 0.03, 0.62, 0.20 |
| TextBox | PAYMENT_PER_AMT_GROSS |  | PAYMENT_PER_AMT_GROSS |  |  | 6.23, 0.03, 0.71, 0.20 |
| TextBox | CONTRACT_NO |  | CONTRACT_NO |  |  | 0.52, 0.03, 1.49, 0.21 |
| TextBox | Est_Units |  | EST_UNITS |  |  | 6.98, 0.03, 0.71, 0.20 |
| TextBox | FIELD_CONTAINER |  | FIELD_CONTAINER |  |  | 8.30, 0.03, 0.71, 0.20 |
| TextBox | DEFAULT_ACTIVITY_CODE |  | DEFAULT_ACTIVITY_CODE |  |  | 9.05, 0.03, 0.71, 0.20 |
| TextBox | Text26 |  | UNIT_CODE |  |  | 7.73, 0.03, 0.51, 0.20 |
