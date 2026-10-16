# Form: NMIS_PROCESSING_ORDERS_SVCS_Labeler

**Caption:** NMIS ORDER SERVICES  
**Record source:**

```sql
SELECT NMIS_ORDER_SERVICES.*, Left$([ORDER_CN],Len([ORDER_CN])-7) AS ORDER_ID, NMIS_ORDERS.CLIENT_NOTE, NMIS_ORDERS.NURSERY_NOTE, NMIS_ORDERS.DESTINATION_ASSOCIATE, NMIS_ORDERS.CONTACT_CN, NMIS_ORDERS.SECONDARY_CONTACT_CN, NMIS_ORDERS.CLIENT_ASSOCIATE, NMIS_ORDERS.ORDER_AMT, NMIS_ORDERS.OVERRUN_AMT, NMIS_ORDERS.OVERRUN_ALL FROM NMIS_ORDER_SERVICES RIGHT JOIN NMIS_ORDERS ON NMIS_ORDER_SERVICES.ORDER_CN = NMIS_ORDERS.CN WHERE (((NMIS_ORDERS.CN)=[Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN]));
```

**Backend tables referenced:** `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_ORDERS`, `NMIS_ORDER_SERVICES`  
**Subforms/subreports:** `Form.NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform`, `Form.NMIS_PROCESSING_ORDERS_ID_SVCS Subform`  
**Opened from (VBA):** `Form_NMIS_PROCESS_LABELS_subform1`  
**Form events with code:** Close, Open  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_ID | ORDER ID: | =Left$([Forms]![NMIS_PROCESS_LABELS_MAIN]![Order_CN],Len([Forms]![NMIS_PROCESS_LABELS_MAIN]![ORDER_CN])-7) |  |  | 1.08, 0.53, 0.92, 0.21 |
| TextBox | ORDER_CN |  | ORDER_CN |  |  | 2.29, 0.57, 0.00, 0.00 |
| Label | Label124 | Edit Order Services and Job Code |  |  |  | 1.50, 0.07, 4.71, 0.39 |
| TextBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE |  |  | 4.62, 0.50, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NURSERY_NOTE | Nursery Note: | NURSERY_NOTE |  | DblClick, Enter | 3.95, 3.16, 3.09, 0.82 |
| TextBox | CLIENT_NOTE | Client Note: | CLIENT_NOTE |  | DblClick, Enter | 0.27, 3.16, 3.48, 0.82 |
| Subform | NMIS_PROCESSING_ORDERS_ID_MC Subform |  | Form.NMIS_PROCESSING_Labels_ORDERS_ID_MC Subform (master: ORDER_CN → child: ORDER_CN) |  |  | 3.92, 1.11, 3.09, 1.69 |
| Subform | Child102 |  | Form.NMIS_PROCESSING_ORDERS_ID_SVCS Subform (master: ORDER_CN → child: ORDER_CN) |  |  | 0.25, 1.11, 3.56, 1.69 |
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 3.48, 0.21, 3.12, 0.18 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE])) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf(Not ([NMIS_CONTACTS].[HISTORICAL])=IsNull([Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CONTACT_CN]),"*",False)) AND ((NMIS_CONTACTS.HISTORICAL)=False)) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")) GROUP BY NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") ORDER BY [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"); |  | 4.35, 0.46, 2.25, 0.18 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") AS name FROM NMIS_CONTACTS LEFT JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=IIf(Left([Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE],2)="  ","990000",[Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![CLIENT_ASSOCIATE])) AND ((NMIS_CONTACTS.HISTORICAL) Like IIf(Not ([NMIS_CONTACTS].[HISTORICAL])=IsNull([Forms]![NMIS_PROCESSING_ORDERS_SVCS_Labeler]![secondary_CONTACT_CN]),"*",False))) OR (((NMIS_CONTACTS.LAST_NAME)="contact") AND ((NMIS_CONTACTS.FIRST_NAME)="no")) GROUP BY NMIS_CONTACTS.CN, [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)") ORDER BY [CONTACT_NAME_UPPER] & IIf([historical]," (Hist)"); |  | 4.35, 0.71, 2.25, 0.18 |
| Rectangle | Box108 |  |  |  |  | 3.40, 0.12, 3.29, 0.83 |
| TextBox | ORDER_AMT | Order Amt: | ORDER_AMT |  |  | 2.27, 0.21, 0.52, 0.21 |
| TextBox | OVERRUN_AMT | Overrun Amt: | OVERRUN_AMT |  |  | 2.27, 0.46, 0.52, 0.21 |
| CheckBox | OVERRUN_ALL | Overrun All | OVERRUN_ALL |  |  | 2.27, 0.75, 0.00, 0.00 |
| Rectangle | Box129 |  |  |  |  | 0.84, 0.14, 2.12, 0.83 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CONTRACT_ITEM_Enter()

    CONTRACT_ITEM.Requery
    
End Sub

Private Sub CLIENT_NOTE_DblClick(Cancel As Integer)

    CLIENT_NOTE.Locked = False
    
End Sub

Private Sub CLIENT_NOTE_Enter()
    
    If Not IsNull(CLIENT_NOTE) Then
        CLIENT_NOTE.Locked = True
    Else
        CLIENT_NOTE.Locked = False
    End If
    
End Sub

Private Sub Form_Close()
DoCmd.SetWarnings False

    'Update Order_Services_String Table
    ' Deletes records from NMIS_ORDER_SERVICES_STRING table prior to updating string
    DoCmd.OpenQuery "NMIS_SPCL_SVCS_DEL_QUERY", acNormal, acEdit
    ' Selects ORDER_CN for NMIS_ORDER_SERVICE_STRING to match to NMIS_ORDERS!CN
    DoCmd.OpenQuery "NMIS_SPCL_SVCS1_QUERY", acNormal, acEdit
    ' Adds NMIS_ORDER_SERVICES as a string to NMIS_ORDER_SERVICE_STRING!SERVICES_STRING
    DoCmd.OpenQuery "NMIS_SPCL_SVCS2_QUERY", acNormal, acEdit
 DoCmd.SetWarnings True
End Sub

Private Sub Form_Open(Cancel As Integer)
    
    DoCmd.GoToControl "contact_cn"
    
End Sub

Private Sub NURSERY_NOTE_DblClick(Cancel As Integer)

    NURSERY_NOTE.Locked = False
    
End Sub

Private Sub NURSERY_NOTE_Enter()
    
    If Not IsNull(NURSERY_NOTE) Then
        NURSERY_NOTE.Locked = True
    Else
        NURSERY_NOTE.Locked = False
    End If
    
End Sub
```
