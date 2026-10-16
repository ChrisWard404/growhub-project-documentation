# Form: NMIS_ORDER_BILL_ADJUSTMENTS

**Caption:** NMIS Order Invoice Adjustments  
**Record source:**

```sql
SELECT NMIS_AGREEMENT_LOTS.ID, NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN, NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN, NMIS_AGREEMENT_LOTS.ORDER_CN FROM NMIS_AGREEMENT_LOTS;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_AGREEMENT_LOTS`, `NMIS_CLIENT_MGMT_CODES`, `NMIS_CONTACTS`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_ORDR subform`, `Form.NMIS_ORDER_BADJ_GRADES subform`, `Form.NMIS_ORDER_BADJ_ACT subform`, `Form.NMIS_PROCESSING_ORDERS_ID_MC Subform`  
**Opened from (VBA):** `Form_Client_Bill_Menu`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label16 | NMIS Order Invoice Adjustments |  |  |  | 2.24, 0.09, 3.46, 0.30 |
| Line | Line17 |  |  |  |  | 0.04, 0.50, 7.92, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Rectangle | Box122 |  |  |  |  | 0.04, 0.03, 8.25, 0.58 |
| ComboBox | SOURCE_LOT_CN | Source: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, Source_Lot_ID_and_Source_string.ID_SOURCE2 FROM Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN=NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN;  |  | 4.46, 0.68, 3.84, 0.20 |
| Subform | NMIS_ORDR subform |  | Form.NMIS_ORDR subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 0.04, 1.42, 5.08, 1.57 |
| Label | Label20 | Select An Order |  |  |  | 0.11, 1.19, 1.23, 0.22 |
| TextBox | ORDER_CN |  | =[NMIS_ORDR subform].[Form]![CN] |  |  | 1.67, 1.17, 1.04, 0.21 |
| Label | Label110 | Species Product: |  |  |  | 3.70, 0.93, 1.18, 0.21 |
| ComboBox | SPECIES_PRODUCT |  | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, [PLNTMSTR_SYMBOL] & " " & [SPECIES_PRODUCT_DESC] AS SP FROM NMIS_SPECIES_PRODUCTS INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;  |  | 4.96, 0.93, 3.36, 0.20 |
| ComboBox | PRODUCT | Product: | =[cn] | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_PRODUCTS.PRODUCT_DESC FROM (NMIS_PRODUCTS INNER JOIN NMIS_SPECIES_PRODUCTS ON NMIS_PRODUCTS.CN=NMIS_SPECIES_PRODUCTS.PRODUCT_CN) INNER JOIN NMIS_AGREEMENT_LOTS ON NMIS_SPECIES_PRODUCTS.CN=NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN;  |  | 0.82, 0.93, 2.81, 0.20 |
| Subform | NMIS_ORDER_GRADES subform | Order Grades | Form.NMIS_ORDER_BADJ_GRADES subform (master: ORDER_CN → child: ORDER_CN) |  |  | 5.17, 1.42, 3.23, 1.57 |
| Subform | NMIS_ORDER_BADJ_ACT subform | Activity Adjustments | Form.NMIS_ORDER_BADJ_ACT subform (master: ORDER_CN → child: ORDER_CN) |  |  | 0.04, 3.26, 5.12, 2.50 |
| Subform | NMIS_PROCESSING_ORDERS_CLI_MC Subform | Order Job Codes | Form.NMIS_PROCESSING_ORDERS_ID_MC Subform (master: ORDER_CN → child: ORDER_CN) |  |  | 5.20, 3.26, 3.22, 2.50 |
| TextBox | Like_Client | Like Order Client: |  |  | DblClick | 1.43, 0.08, 0.79, 0.20 |
| ComboBox | Contact_CN | Like Order Primary Contact: |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([Historical]," (Historic)") AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![Current FY:])) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([Historical]," (Historic)") ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] & IIf([Historical]," (Historic)"); | DblClick, Enter | 5.80, 0.34, 2.10, 0.21 |
| ComboBox | CN |  |  | SELECT NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Source_Lot_ID_and_Source_string.ID_SOURCE2, NMIS_ORDERS.FISCAL_YEAR, [NMIS_CONTACTS].[LAST_NAME] & IIf(Not IsNull([NMIS_CONTACTS].[First_name]),", ") & [NMIS_CONTACTS].[FIRST_name] & IIf([NMIS_CONTACTS].[Historical]," (Historic)") AS Name, NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE FROM (NMIS_PRODUCTS INNER JOIN NMIS_PRODUCT_TYPES ON NMIS_PRODUCTS.END_PRODUCT_TYPE = NMIS_PRODUCT_TYPES.PRODUCT_TYPE) INNER JOIN ((NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_AGREEMENTS INNER JOIN ((NMIS_ORDERS RIGHT JOIN (Source_Lot_ID_and_Source_string INNER JOIN NMIS_AGREEMENT_LOTS ON Source_Lot_ID_and_Source_string.CN = NMIS_AGREEMENT_LOTS.SOURCE_LOT_CN) ON NMIS_ORDERS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) LEFT JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN) ON NMIS_AGREEMENTS.AGREEMENT_LOT_CN = NMIS_AGREEMENT_LOTS.CN) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) LEFT JOIN NMIS_CLIENT_MGMT_CODES ON NMIS_ORDERS.CN = NMIS_CLIENT_MGMT_CODES.ORDER_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN WHERE (((Left$([NMIS_AGREEMENT_LOTS].[CATEGORY_CODE],1) & [Product_Group]) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Product_Group]) AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports]) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Like_Client] & "*") AND ((NMIS_ORDERS.CONTACT_CN) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Contact_CN] & "*")) GROUP BY NMIS_AGREEMENT_LOTS.CN, NMIS_AGREEMENT_LOTS.ID, Source_Lot_ID_and_Source_string.ID_SOURCE2, NMIS_ORDERS.FISCAL_YEAR, [NMIS_CONTACTS].[LAST_NAME] & IIf(Not IsNull([NMIS_CONTACTS].[First_name]),", ") & [NMIS_CONTACTS].[FIRST_name] & IIf([NMIS_CONTACTS].[Historical]," (Historic)"), NMIS_ORDERS.ACTIVITY_CODE, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE, NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE HAVING (((NMIS_CLIENT_MGMT_CODES.CLIENT_ASSOCIATE) Like [Forms]![NMIS_ORDER_BILL_ADJUSTMENTS]![Like JobcodeClient] & "*")) ORDER BY NMIS_AGREEMENT_LOTS.ID; | Enter | 2.34, 0.35, 1.38, 0.20 |
| Label | Label41 | Select An Agreement Lot ID: |  |  |  | 0.14, 0.33, 2.13, 0.22 |
| ComboBox | Product_Group | Group: |  | BPLANT;"Bareroot Plant";CPLANT;"Container Plant";*PLANT;"All Plants";NPROPAGULE;"Propagule" |  | 6.75, 0.06, 1.50, 0.25 |
| TextBox | Like JobcodeClient | Like Job Code Client: |  |  | DblClick | 3.91, 0.08, 0.79, 0.20 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub NMIS_ORDR_ACT_subform_Enter()

    ORDER_CN.Requery

End Sub

Private Sub CN_Enter()

    CN.Requery
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)

    CONTACT_CN = Null
    
End Sub

Private Sub Contact_CN_Enter()

    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_DblClick(Cancel As Integer)

    Like_Client = "*"

End Sub

Private Sub Like_JobcodeClient_DblClick(Cancel As Integer)

    Like_JobcodeClient = "*"
    
End Sub
```
