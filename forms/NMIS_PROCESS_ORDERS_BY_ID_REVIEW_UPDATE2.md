# Form: NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2

**Caption:** NMIS PROCESSING ORDERS UPDATE  
**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`, `NMIS_ASSOCIATES`, `NMIS_ORDERS`, `NMIS_PRODUCTS`, `NMIS_PRODUCT_TYPES`, `NMIS_SPECIES_PRODUCTS`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform`, `Form.NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform`, `Form.NMIS_PROCESSING_ORDERS_ID_MC Subform`, `Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform`  
**Opens:** `Form:NMIS_PROCESS_QUALITY_SAMPLES2`  
**Opened from (VBA):** `Property_Module_Form_Opening Module`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label56 | Processing Orders Review/Update |  |  |  | 3.22, 0.10, 3.36, 0.28 |
| ComboBox | Order_CN | Agreement Lot ID/Order ID: |  | SELECT NMIS_ORDERS.CN, [ID] & "/" & Left$([NMIS_ORDERS].[CN],(Len([NMIS_ORDERS].[CN])-7)) AS ID_n_Order, [Client_Associate] & " " & [Associate_Name] AS ASSOCIATE, NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_ORDERS.ACTIVITY_CODE, NMIS_PRODUCT_TYPES.PRODUCT_GROUP FROM (NMIS_PRODUCT_TYPES INNER JOIN NMIS_PRODUCTS ON NMIS_PRODUCT_TYPES.PRODUCT_TYPE = NMIS_PRODUCTS.END_PRODUCT_TYPE) INNER JOIN (NMIS_SPECIES_PRODUCTS INNER JOIN (NMIS_ASSOCIATES INNER JOIN (NMIS_AGREEMENT_LOTS INNER JOIN NMIS_ORDERS ON NMIS_AGREEMENT_LOTS.CN = NMIS_ORDERS.AGREEMENT_LOT_CN) ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE) ON NMIS_SPECIES_PRODUCTS.CN = NMIS_AGREEMENT_LOTS.SPECIES_PRODUCT_CN) ON NMIS_PRODUCTS.CN = NMIS_SPECIES_PRODUCTS.PRODUCT_CN GROUP BY NMIS_ORDERS.CN, [ID] & "/" & Left$([NMIS_ORDERS].[CN],(Len([NMIS_ORDERS].[CN])-7)), [Client_Associate] & " " & [Associate_Name], NMIS_AGREEMENT_LOTS.TOTAL_REQUEST, NMIS_ORDERS.ACTIVITY_CODE, NMIS_PRODUCT_TYPES.PRODUCT_GROUP ORDER BY [ID] & "/" & Left$([NMIS_ORDERS].[CN],(Len([NMIS_ORDERS].[CN])-7)); |  | 2.36, 0.52, 2.13, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform |  | Form.NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform (master: ORDER_CN → child: CN) |  |  | 0.17, 0.07, 9.00, 2.58 |
| Subform | Child102 |  | Form.NMIS_PROCESSING_ORDERS_ID_SVCS2 Subform (master: ORDER_CN → child: ORDER_CN) |  |  | 0.17, 2.69, 3.41, 2.47 |
| Subform | Child103 |  | Form.NMIS_PROCESSING_ORDERS_ID_MC Subform (master: ORDER_CN → child: ORDER_CN) |  |  | 3.64, 2.69, 3.16, 2.46 |
| Subform | Child104 |  | Form.NMIS_PROCESSING_ORDERS_ID_GRADES Subform (master: ORDER_CN → child: ORDER_CN) |  |  | 6.84, 2.69, 2.34, 2.45 |

## Code-behind (VBA)

```vb
Private Sub Open_PROCESS_QUALITY_SAMPLES2_Form_Click()
On Error GoTo Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_PROCESS_QUALITY_SAMPLES2"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_:
    Exit Sub

Err_Open_PROCESS_QUALITY_SAMPLES2_Form_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Open_PROCESS_QUALITY_SAMPLES2_Form_
    
End Sub



Private Sub Like_Client_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub


Private Sub Product_Group_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
 
End Sub

Private Sub View_FY_Exit(Cancel As Integer)

    ORDER_CN.Requery
    ORDER_CN = Null
    
End Sub
```
