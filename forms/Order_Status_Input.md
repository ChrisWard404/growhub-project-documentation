# Form: Order_Status_Input

**Caption:** Report Input  
**Backend tables referenced:** `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_ORDERS`  
**Opened from (VBA):** `Report_ORDER_STATUS`, `Report_ORDER_STATUS_DETAILED`, `Report_ORDER_STATUS_Packed`, `Report_ORDER_STATUS_Packed_Shortage`, `Report_ORDER_STATUS_Packed_no`, `Report_ORDER_STATUS_propague`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label0 | Select an Client  |  |  |  | 1.59, 0.08, 2.02, 0.28 |
| CommandButton | Preview_Report | Click to Preview Report |  |  | Click | 1.88, 3.00, 1.71, 0.75 |
| Line | Line12 |  |  |  |  | 0.08, 0.58, 4.96, 0.00 |
| Rectangle | Box13 |  |  |  |  | 0.12, 1.12, 4.88, 1.55 |
| ComboBox | Like_Client | Like Client: |  | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME FROM NMIS_ASSOCIATES INNER JOIN NMIS_ORDERS ON NMIS_ASSOCIATES.ASSOCIATE = NMIS_ORDERS.CLIENT_ASSOCIATE WHERE (((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME ORDER BY NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME; | Change | 2.23, 1.96, 1.75, 0.28 |
| ComboBox | BorC | Cost Center: |  | *;Bareroot and Container;B;Bareroot;C;Container |  | 2.23, 1.32, 2.00, 0.21 |
| CheckBox | Show_Notes | Show Order Notes |  |  |  | 2.23, 1.62, 0.00, 0.00 |
| ComboBox | Contact_CN |  Like Contact |  | SELECT NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] AS Name FROM NMIS_ORDERS INNER JOIN NMIS_CONTACTS ON NMIS_ORDERS.CONTACT_CN = NMIS_CONTACTS.CN WHERE (((NMIS_CONTACTS.HISTORICAL)=False) AND ((NMIS_ORDERS.CLIENT_ASSOCIATE) Like [Forms]![order_status_input]![Like_Client] & "*") AND ((NMIS_ORDERS.FISCAL_YEAR)=[Forms]![Switchboard]![FY_For_Reports])) GROUP BY NMIS_CONTACTS.CN, [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name] ORDER BY [LAST_NAME] & IIf(Not IsNull([First_name]),", ") & [FIRST_name]; | Enter | 2.23, 2.33, 1.60, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub Contact_CN_Enter()
    
    CONTACT_CN.Requery
    
End Sub

Private Sub Like_Client_Change()

    CONTACT_CN.Requery
    
End Sub

Private Sub Preview_Report_Click()

    Me.Visible = False

End Sub
```
