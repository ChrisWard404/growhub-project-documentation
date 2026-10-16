# Form: NMIS_PRODUCT_CHARGES

**Caption:** NMIS PRODUCT CHARGES  
**Record source:**

```sql
SELECT NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_SORT_ORDER, NMIS_PRODUCT_CHARGES.*, [FISCAL_YEAR] & [PRODUCT_CN] & [CATEGORY_CODE] & [NMIS_PRODUCT_CHARGES].[ACTIVITY_CODE] & [PRODUCT_GRADE] AS PMC_LINK, NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_CODE FROM NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER RIGHT JOIN NMIS_PRODUCT_CHARGES ON NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.ACTIVITY_CODE = NMIS_PRODUCT_CHARGES.ACTIVITY_CODE WHERE (((NMIS_PRODUCT_CHARGES.FISCAL_YEAR) Like [Forms]![NMIS_PRODUCT_CHARGES]![View_FY] & "*") AND ((NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_CODE) Like NZ([Forms]![NMIS_PRODUCT_CHARGES]![Filter_For_Parent_Activity],"*")) AND ((NMIS_PRODUCT_CHARGES.PRODUCT_CN)=[Forms]![NMIS_PRODUCTS]![CN]) AND ((IIf([CHARGE_PER_AMT]=0,-1,0)) Like IIf([Forms]![NMIS_PRODUCT_CHARGES]![Hide_0_Charges]=-1,0,"*")) AND ((IIf([CHARGE_PER_UNIT]=0,-1,0)) Like IIf([Forms]![NMIS_PRODUCT_CHARGES]![Hide_0_Charges]=-1,0,"*"))) ORDER BY NMIS_PRODUCT_CHARGES.FISCAL_YEAR DESC , NMIS_ACTIVITY_CODE_PARENT_SORT_ORDER.PARENT_ACTIVITY_SORT_ORDER, NMIS_PRODUCT_CHARGES.ACTIVITY_CODE, NMIS_PRODUCT_CHARGES.PRODUCT_GRADE DESC;
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CATEGORIES`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_CHARGES`, `NMIS_PRODUCT_GRADES`  
**Subforms/subreports:** `Form.NMIS_PRODUCT_MGMT_CODES1 Subform`  
**Opened from (VBA):** `Form_NMIS_PRODUCTS`, `Form_NMIS_PRODUCTS_Unlocked`, `Form_NMIS_Product_Charges_add_activity_codes_and_MCs Form`  
**Form events with code:** Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | FISCAL_YEAR_Label | Fiscal Year |  |  |  | 0.10, 0.83, 0.42, 0.37 |
| Label | CATEGORY_CODE_Label | Category Code |  |  |  | 0.60, 0.83, 0.68, 0.37 |
| Label | ACTIVITY_CODE_Label | Activity Code |  |  |  | 2.21, 0.83, 0.78, 0.37 |
| Label | PRODUCT_GRADE_Label |   Product Grade |  |  |  | 3.07, 0.83, 0.96, 0.37 |
| Label | CHARGE_PER_UNIT_Label | Charge per Unit |  |  |  | 4.11, 0.83, 0.68, 0.37 |
| Label | CHARGE_PER_AMT_Label | Charge per Amt. |  |  |  | 4.85, 0.83, 0.73, 0.37 |
| ComboBox | PRODUCT_CN |  | PRODUCT_CN | SELECT NMIS_PRODUCTS.CN, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")" & IIf([HISTORICAL]," Historical") AS PRODUCT_DESCRIPTION, NMIS_PRODUCTS.CATEGORY_CODE, NMIS_PRODUCTS.PRODUCT_CLASS, NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE FROM NMIS_PRODUCTS WHERE (((Left$([CATEGORY_CODE],1)) Like [Forms]![NMIS_PRODUCTS]![Filter_for_Product_Type] & "*")) ORDER BY NMIS_PRODUCTS.CATEGORY_CODE, [PRODUCT_DESC] & " (" & [BEGIN_PRODUCT_TYPE] & " " & [END_PRODUCT_TYPE] & ")", NMIS_PRODUCTS.BEGIN_PRODUCT_TYPE, NMIS_PRODUCTS.END_PRODUCT_TYPE; |  | 2.18, 0.52, 3.42, 0.25 |
| Label | Label25 | Product Charges |  |  |  | 3.50, 0.08, 1.71, 0.28 |
| TextBox | View_FY |  |  |  | DblClick | 1.46, 0.04, 0.66, 0.21 |
| Label | Label56 | Like View FY: |  |  |  | 0.45, 0.04, 0.97, 0.21 |
| Label | Label36 | Parent Activity |  |  |  | 1.35, 0.84, 0.81, 0.37 |
| TextBox | Filter_For_Parent_Activity |  |  |  | Change, DblClick | 1.46, 0.29, 0.66, 0.21 |
| Label | Label39 | Like Parent Activity: |  |  |  | 0.03, 0.29, 1.39, 0.21 |
| CheckBox | Hide_0_Charges | Hide $0.00's: |  |  | Click | 1.50, 0.58, 0.00, 0.00 |
| Label | Label42 | <- Double-    <- Click for All |  |  |  | 2.20, 0.07, 0.99, 0.38 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 0.10, 0.03, 0.42, 0.21 |
| TextBox | CHARGE_PER_UNIT |  | CHARGE_PER_UNIT |  |  | 4.11, 0.03, 0.68, 0.21 |
| TextBox | CHARGE_PER_AMT |  | CHARGE_PER_AMT |  |  | 4.85, 0.03, 0.73, 0.21 |
| ComboBox | ACTIVITY_CODE |  | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="LIFT" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="PROC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SPCSVC" Or (NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="SHIP")); |  | 2.21, 0.03, 0.81, 0.21 |
| ComboBox | PRODUCT_GRADE |  | PRODUCT_GRADE | SELECT NMIS_PRODUCT_GRADES.PRODUCT_GRADE FROM NMIS_PRODUCT_GRADES; |  | 3.07, 0.03, 0.96, 0.21 |
| ComboBox | CATEGORY_CODE |  | CATEGORY_CODE | SELECT NMIS_CATEGORIES.CATEGORY_CODE, NMIS_CATEGORIES.CATEGORY_DESC FROM NMIS_CATEGORIES;  |  | 0.60, 0.03, 0.69, 0.21 |
| TextBox | PMC_LINK |  | PMC_LINK |  |  | 5.04, 0.08, 0.62, 0.19 |
| TextBox | PARENT_ACTIVITY_CODE |  | PARENT_ACTIVITY_CODE |  | DblClick | 1.35, 0.03, 0.81, 0.21 |

## Section: FormFooter

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_PRODUCT_MGMT_CODES1 Subform |  | Form.NMIS_PRODUCT_MGMT_CODES1 Subform |  |  | 0.08, 0.04, 5.58, 1.41 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Filter_For_Parent_Activity_Change()

    DoCmd.Requery
    
End Sub

Private Sub Filter_For_Parent_Activity_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = Null
    DoCmd.Requery
    
End Sub

Private Sub Form_Open(Cancel As Integer)

    DoCmd.Requery
    
End Sub

Private Sub Hide_0_Charges_Click()

    DoCmd.Requery
    
End Sub

Private Sub PARENT_ACTIVITY_CODE_DblClick(Cancel As Integer)

    Filter_For_Parent_Activity = PARENT_ACTIVITY_CODE
    DoCmd.Requery
    
End Sub

Private Sub VIEW_FY_AfterUpdate()

    If Not IsNull(Activity_Code) Then
        DoCmd.Requery
    End If
    
End Sub

Private Sub View_FY_DblClick(Cancel As Integer)

    View_FY = Null
    DoCmd.Requery
    
End Sub
```
