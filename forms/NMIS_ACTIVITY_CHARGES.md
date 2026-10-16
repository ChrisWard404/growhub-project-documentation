# Form: NMIS_ACTIVITY_CHARGES

**Caption:** NMIS ACTIVITY CHARGES  
**Record source:**

```sql
SELECT NMIS_ACTIVITY_CHARGES.* FROM NMIS_ACTIVITY_CHARGES WHERE (((NMIS_ACTIVITY_CHARGES.FISCAL_YEAR) Like Nz([Forms]![NMIS_ACTIVITY_CHARGES]![View_FY],"*")) AND ((IIf([CHARGE_PER_ACTIVITY]=0,-1,0)) Like IIf([Forms]![NMIS_ACTIVITY_CHARGES]![Hide_0_Charges]=-1,0,"*"))) ORDER BY NMIS_ACTIVITY_CHARGES.FISCAL_YEAR DESC , NMIS_ACTIVITY_CHARGES.CATEGORY_CODE DESC , NMIS_ACTIVITY_CHARGES.ACTIVITY_CODE;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CHARGES`, `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_FISCAL_YEARS`, `NMIS_UNITS`  
**Opened from (VBA):** `Form_Lookup_Tables_Menu Subform`, `Form_xLookup_Tables_Menu`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 0.68, 0.67, 0.75, 0.37 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 1.48, 0.67, 1.04, 0.37 |
| Label | UNIT_CODE_Label | Unit Code |  |  |  | 2.60, 0.67, 0.68, 0.37 |
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.05, 0.67, 0.57, 0.37 |
| Label | MGMT_CODE_Label | Mgmt Code |  |  |  | 3.31, 0.67, 0.73, 0.37 |
| Label | CHARGE_PER_UNIT_Label | Charge/ Unit |  |  |  | 4.12, 0.67, 0.63, 0.37 |
| Label | CHARGE_PER_AMT_Label | Charge/ Amt |  |  |  | 4.83, 0.67, 0.63, 0.37 |
| Label | CHARGE_PER_HOUR_Label | Charge/ Hr |  |  |  | 5.52, 0.67, 0.63, 0.37 |
| Label | CHARGE_PER_ACTIVITY_Label | Charge/ Act |  |  |  | 6.18, 0.67, 0.63, 0.37 |
| Label | Label18 | NMIS Activity Charges |  |  |  | 2.51, 0.10, 2.47, 0.31 |
| Line | Line19 |  |  |  |  | 0.04, 0.50, 7.42, 0.00 |
| TextBox | View_FY |  |  |  | DblClick | 1.09, 0.17, 0.66, 0.21 |
| Label | Label56 | Like View FY: |  |  |  | 0.08, 0.17, 0.97, 0.21 |
| CheckBox | Hide_0_Charges | Hide Chg/Act = $0.00: |  |  | Click | 6.99, 0.22, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | MGMT_CODE |  | MGMT_CODE |  |  | 3.31, 0.04, 0.74, 0.20 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 4.12, 0.04, 0.63, 0.20 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_AMT |  |  | 4.82, 0.04, 0.63, 0.20 |
| TextBox | CHARGE_PER_HOUR |  | CHARGE_PER_HOUR |  |  | 5.52, 0.04, 0.63, 0.20 |
| TextBox | CHARGE_PER_ACTIVITY |  | CHARGE_PER_ACTIVITY |  |  | 6.18, 0.04, 0.63, 0.20 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES; |  | 1.48, 0.04, 1.06, 0.20 |
| ComboBox | UNIT_CODE |  | UNIT_CODE | SELECT [NMIS_UNITS].[UNIT_CODE], [NMIS_UNITS].[UNIT_DESC], [NMIS_UNITS].[UNIT_TYPE] FROM NMIS_UNITS;  |  | 2.60, 0.04, 0.69, 0.20 |
| ComboBox | FISCAL_YEAR |  | FISCAL_YEAR | SELECT [NMIS_FISCAL_YEARS].[FISCAL_YEAR], [NMIS_FISCAL_YEARS].[BEGIN_DATE], [NMIS_FISCAL_YEARS].[END_DATE] FROM NMIS_FISCAL_YEARS;  |  | 0.05, 0.04, 0.58, 0.20 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT [NMIS_CATEGORIES].[CATEGORY_CODE], [NMIS_CATEGORIES].[CATEGORY_DESC] FROM NMIS_CATEGORIES;  |  | 0.68, 0.04, 0.76, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    DoCmd.Requery
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = "*"
    DoCmd.Requery
    
End Sub
```
