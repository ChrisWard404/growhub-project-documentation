# Form: Huksy_lpro_xfer_hlift_table2 subform

**Caption:** **Huksy_lpro_xfer_hlift_table subform  
**Record source:**

```sql
**Husky_lpro_xfer_hlift_table2
```

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_CONTRACT_ITEMS`, `NMIS_ORDERS`, `NMIS_SPECIES_PRODUCTS`  
**Embedded in:** `Form:Husky_lpro_data_input_check_form`  
**Form events with code:** BeforeInsert, BeforeUpdate  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Contract_Item_Label | Contract Item |  |  |  | 2.03, 0.06, 0.63, 0.37 |
| Label | Label12 | Time (optional) |  |  |  | 5.02, 0.06, 0.69, 0.37 |
| Label | Label13 | Number of Containers |  |  |  | 4.18, 0.06, 0.78, 0.37 |
| Label | Label14 | Field Container |  |  |  | 3.27, 0.06, 0.85, 0.37 |
| Label | Nursery_ID_Label |   Agreement  Lot ID |  |  |  | 0.82, 0.06, 1.14, 0.37 |
| Label | Label15 | Feet Lifted |  |  |  | 2.74, 0.06, 0.49, 0.37 |
| Label | Label17 | Date |  |  |  | 0.11, 0.06, 0.65, 0.37 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sum_Containers |  | Containers |  | Enter | 4.18, 0.03, 0.77, 0.20 |
| TextBox | Sum_Feet_Lifted |  | Feet_Lifted |  | DblClick, Enter | 2.74, 0.03, 0.47, 0.20 |
| TextBox | Time |  | LTime |  |  | 5.02, 0.03, 0.71, 0.20 |
| TextBox | Date |  | Date |  |  | 0.11, 0.03, 0.64, 0.20 |
| ComboBox | Contract_Item |  | Contract_Item | SELECT NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Lift*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Field Destroy*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*force*" Or (NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC) Like "*Surplus*") And ((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!FY_For_Reports));  | Exit | 2.03, 0.03, 0.64, 0.20 |
| TextBox | Precool_Unit_Code |  | Precool_Unit_Code |  |  | 0.00, 0.04, 0.38, 0.00 |
| ComboBox | Nursery_ID |  | Nursery_ID | SELECT NMIS_AGREEMENT_LOTS.ID, [Age_Class_String] & " " & [PLNTMSTR_SYMBOL] AS Expr1, Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String FROM Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class RIGHT JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ORDERS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.CN = NMIS_AGREEMENT_LOTS.CN WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_AGREEMENT_LOTS.CATEGORY_CODE) Like "BR*" Or (NMIS_AGREEMENT_LOTS.CATEGORY_CODE)="NSP")) GROUP BY NMIS_AGREEMENT_LOTS.ID, [Age_Class_String] & " " & [PLNTMSTR_SYMBOL], Agreement_Lot_Cycle_for_Processing_wProduct_n_age_class.Age_Class_String ORDER BY NMIS_AGREEMENT_LOTS.ID; | Enter | 0.82, 0.03, 1.14, 0.21 |
| ComboBox | Field_Container |  | Field_Container | T;Tub;M;Bin;S;Destroy;X;XFERTO | BeforeUpdate, Exit | 3.27, 0.03, 0.85, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Contract_Item_Exit(Cancel As Integer)

End Sub

Private Sub Field_Container_BeforeUpdate(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Field_Container_Exit(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Form_BeforeInsert(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    Precool_Unit_Code = "Precool" & Field_Container

End Sub

Private Sub Nursery_ID_Enter()

    If IsNull(Nursery_ID) Then
        Field_Container = [Forms]![Husky_lpro_data_input_check_form]![Field_Container_Default]
    End If
    
End Sub

Private Sub Sum_Containers_Enter()

    Precool_Unit_Code = "Precool" & Field_Container
    If Field_Container = "S" Or Field_Container = "X" Then
        Sum_Containers = 1
    End If

End Sub

Private Sub Sum_Feet_Lifted_DblClick(Cancel As Integer)

    If Not IsNull(Nursery_ID) Then
        Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Requery
        Sum_Feet_Lifted = Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Form![Lot_Total_Ft]
    End If
    
End Sub

Private Sub Sum_Feet_Lifted_Enter()

    If Not IsNull(Nursery_ID) Then
        If Forms![Husky_lpro_data_input_check_form]![Auto_Insert_All_Ft] Then
            Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Requery
            Sum_Feet_Lifted = Forms![Husky_lpro_data_input_check_form]![Ft_To_Lift].Form![Lot_Total_Ft]
        End If
    End If
    
End Sub
```
