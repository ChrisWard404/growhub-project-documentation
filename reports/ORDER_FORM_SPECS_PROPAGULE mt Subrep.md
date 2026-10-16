# Report: ORDER_FORM_SPECS_PROPAGULE mt Subrep

**Caption:** ORDER_FORM_SPECS Subrep  
**Record source:**

```sql
**Order_Form_Specs
```

**Grouping/sorting:** `CN`  
**Subforms/subreports:** `Report.ORDER_FORM_MCODES mt Subrep`, `Report.ORDER_FORM_CNCTS mt Subrep`, `Report.Propagule_Order_Field_Location_Index Subform`  
**Embedded in:** `Report:ORDER_FORM_PROPAGULE mt`, `Report:ORDER_FORM_PROPAGULE_Prior_to_fy03 mt`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | CLIENT_NOTE |  | LastOfCLIENT_NOTE |  |  | 0.75, 0.02, 2.91, 0.44 |
| TextBox | NURSERY_NOTE |  | LastOfNURSERY_NOTE |  |  | 4.46, 0.02, 3.37, 0.58 |
| Label | CLIENT_NOTE_Label | Client Note |  |  |  | 0.29, 0.02, 0.46, 0.35 |
| Label | NURSERY_NOTE_Label | Nursery Note |  |  |  | 3.88, 0.02, 0.54, 0.44 |
| Subform | NMIS_ORDER_FORM_MCODES Subrep |  | Report.ORDER_FORM_MCODES mt Subrep (master: CN → child: ORDER_CN) |  |  | 1.79, 0.48, 2.00, 0.16 |
| Label | Job_Codes_Label | Job Codes: |  |  |  | 1.00, 0.48, 0.75, 0.17 |
| Subform | NMIS_ORDER_FORM_CNCTS Subrep |  | Report.ORDER_FORM_CNCTS mt Subrep (master: CN → child: ORDERS_CN) |  |  | 0.77, 0.64, 7.03, 0.01 |
| Rectangle | Box50 |  |  |  |  | 0.04, 0.67, 6.22, 6.08 |
| Label | Pack_Header_Label |   Date  # Containers lbs/Cont lbs Packed # Fld Contrs            Note |  |  |  | 0.08, 0.72, 6.12, 0.18 |
| Line | Line60 |  |  |  |  | 0.66, 0.66, 0.00, 6.09 |
| Line | Line63 |  |  |  |  | 1.64, 0.66, 0.00, 6.09 |
| Line | Line64 |  |  |  |  | 3.13, 0.66, 0.00, 6.09 |
| Line | Line65 |  |  |  |  | 4.12, 0.66, 0.00, 6.09 |
| TextBox | CN |  | CN |  |  | 6.92, 0.31, 0.88, 0.00 |
| TextBox | ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 6.00, 0.31, 0.88, 0.00 |
| TextBox | AGREEMENT_LOT_CN |  | AGREEMENT_LOT_CN |  |  | 4.92, 0.31, 0.79, 0.00 |
| Line | Line111 |  |  |  |  | 2.31, 0.66, 0.00, 6.09 |
| Line | Line79 |  |  |  |  | 0.04, 0.92, 6.22, 0.00 |
| Line | Line80 |  |  |  |  | 0.04, 1.12, 6.22, 0.00 |
| Line | Line81 |  |  |  |  | 0.04, 1.33, 6.22, 0.00 |
| Label | Label92 |  lbs's Packed |  |  |  | 1.21, 6.84, 1.02, 0.17 |
| Line | Line102 |  |  |  |  | 2.27, 7.01, 0.78, 0.00 |
| Subform | Plant_Inventory_Worksheet_Field_Location_Index Subform |  | Report.Propagule_Order_Field_Location_Index Subform (master: AGREEMENT_LOT_CN → child: AGREEMENT_LOT_CN) |  |  | 6.33, 0.95, 1.65, 5.28 |
| Label | Label47 | Ft In Bed |  |  |  | 7.65, 0.65, 0.30, 0.28 |
| Label | Label48 | Location |  |  |  | 6.29, 0.78, 0.49, 0.16 |
| Label | Label50 | Begin Index |  |  |  | 6.88, 0.65, 0.38, 0.28 |
| Label | Label56 | End Index |  |  |  | 7.28, 0.65, 0.35, 0.28 |
| Line | Line129 |  |  |  |  | 0.04, 1.54, 6.22, 0.00 |
| Line | Line130 |  |  |  |  | 0.04, 1.75, 6.22, 0.00 |
| Line | Line131 |  |  |  |  | 0.04, 1.96, 6.22, 0.00 |
| Line | Line132 |  |  |  |  | 0.04, 2.17, 6.22, 0.00 |
| Line | Line133 |  |  |  |  | 0.04, 2.38, 6.22, 0.00 |
| Line | Line134 |  |  |  |  | 0.04, 2.58, 6.22, 0.00 |
| Line | Line135 |  |  |  |  | 0.04, 2.79, 6.22, 0.00 |
| Line | Line136 |  |  |  |  | 0.04, 3.00, 6.22, 0.00 |
| Line | Line137 |  |  |  |  | 0.04, 3.21, 6.22, 0.00 |
| Line | Line138 |  |  |  |  | 0.04, 3.42, 6.22, 0.00 |
| Line | Line139 |  |  |  |  | 0.04, 3.62, 6.22, 0.00 |
| Line | Line140 |  |  |  |  | 0.04, 3.83, 6.22, 0.00 |
| Line | Line141 |  |  |  |  | 0.04, 4.04, 6.22, 0.00 |
| Line | Line142 |  |  |  |  | 0.04, 4.25, 6.22, 0.00 |
| Line | Line143 |  |  |  |  | 0.04, 4.46, 6.22, 0.00 |
| Line | Line144 |  |  |  |  | 0.04, 4.67, 6.22, 0.00 |
| Line | Line145 |  |  |  |  | 0.04, 4.88, 6.22, 0.00 |
| Line | Line146 |  |  |  |  | 0.04, 5.08, 6.22, 0.00 |
| Line | Line147 |  |  |  |  | 0.04, 5.29, 6.22, 0.00 |
| Line | Line148 |  |  |  |  | 0.04, 5.50, 6.22, 0.00 |
| Line | Line149 |  |  |  |  | 0.04, 5.71, 6.22, 0.00 |
| Line | Line150 |  |  |  |  | 0.04, 5.92, 6.22, 0.00 |
| Line | Line152 |  |  |  |  | 0.04, 6.12, 6.22, 0.00 |
| Line | Line153 |  |  |  |  | 0.04, 6.33, 6.22, 0.00 |
| Line | Line154 |  |  |  |  | 0.04, 6.54, 6.22, 0.00 |
| TextBox | ACTIVITY_CODE |  | ACTIVITY_CODE |  |  | 0.04, 0.42, 0.62, 0.22 |
