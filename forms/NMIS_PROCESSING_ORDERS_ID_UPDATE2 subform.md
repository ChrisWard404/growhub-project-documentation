# Form: NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform

**Caption:** NMIS_PROCESSING_ORDERS subform  
**Record source:**

```sql
NMIS_ORDERS
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_CONTACT_LINKS`, `NMIS_CONTRACT_ITEMS`, `NMIS_FISCAL_YEARS`, `NMIS_ORDERS`  
**Embedded in:** `Form:NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2`  
**Opens:** `Form:NMIS_CONTACTS`  
**Form events with code:** BeforeUpdate  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ORDER_AMT | Amount | ORDER_AMT |  |  | 5.16, 0.13, 0.58, 0.20 |
| TextBox | OVERRUN_AMT | O'run Amt/All | OVERRUN_AMT |  |  | 6.72, 0.13, 0.55, 0.20 |
| CheckBox | OVERRUN_ALL_Check |  | OVERRUN_ALL |  |  | 7.32, 0.17, 0.00, 0.00 |
| ComboBox | CONTACT_CN | Primary | CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].[Form]![CLIENT_ASSOCIATE])); |  | 4.34, 0.83, 2.25, 0.18 |
| ComboBox | SECONDARY_CONTACT_CN | Secondary | SECONDARY_CONTACT_CN | SELECT NMIS_CONTACTS.CN, NMIS_CONTACTS.CONTACT_NAME_UPPER, NMIS_CONTACT_LINKS.LINK_ASSOCIATE FROM NMIS_CONTACTS INNER JOIN NMIS_CONTACT_LINKS ON NMIS_CONTACTS.CN = NMIS_CONTACT_LINKS.CONTACT_CN WHERE (((NMIS_CONTACT_LINKS.LINK_ASSOCIATE)=[Forms]![NMIS_PROCESS_ORDERS_BY_ID_REVIEW_UPDATE2]![NMIS_PROCESSING_ORDERS_ID_UPDATE2 subform].[Form]![CLIENT_ASSOCIATE])); | DblClick | 4.34, 1.08, 2.25, 0.18 |
| TextBox | DESIRED_DATE | Desired Date | DESIRED_DATE |  |  | 7.67, 1.08, 0.75, 0.18 |
| TextBox | DESTINATION_ASSOCIATE | Destination | DESTINATION_ASSOCIATE |  |  | 7.67, 0.83, 0.75, 0.18 |
| TextBox | CLIENT_NOTE | Client Comments | CLIENT_NOTE |  |  | 0.96, 1.50, 3.29, 0.70 |
| TextBox | NURSERY_NOTE | Nursery Comments | NURSERY_NOTE |  |  | 5.12, 1.50, 3.29, 0.70 |
| Rectangle | Box108 |  |  |  |  | 3.42, 0.50, 3.23, 0.86 |
| Rectangle | Box109 |  |  |  |  | 6.69, 0.50, 1.79, 0.86 |
| Label | Shipping_Label | Shipping |  |  |  | 6.74, 0.57, 1.68, 0.18 |
| Rectangle | Box28 |  |  |  |  | 0.08, 1.46, 8.42, 0.79 |
| ComboBox | ACTIVITY_CODE | Order Code | ACTIVITY_CODE | SELECT NMIS_ACTIVITY_CODES.ACTIVITY_CODE, NMIS_ACTIVITY_CODES.ACTIVITY_NAME FROM NMIS_ACTIVITY_CODES WHERE (((NMIS_ACTIVITY_CODES.PARENT_ACTIVITY_CODE)="ORDER")) ORDER BY NMIS_ACTIVITY_CODES.ACTIVITY_CODE; |  | 3.74, 0.12, 0.79, 0.21 |
| ComboBox | CLIENT_ASSOCIATE | Associate | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, NMIS_ASSOCIATES.ASSOCIATE_NAME_UPPER FROM NMIS_ASSOCIATES; | DblClick, Enter | 1.89, 0.12, 0.96, 0.21 |
| ComboBox | CONTRACT_ITEM | Contract Item | CONTRACT_ITEM | SELECT NMIS_CONTRACT_ITEMS.FISCAL_YEAR, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM, NMIS_CONTRACT_ITEMS.CONTRACT_ITEM_DESC FROM NMIS_CONTRACT_ITEMS WHERE (((NMIS_CONTRACT_ITEMS.FISCAL_YEAR)=Forms!Switchboard!NMIS_FISCAL_YEAR_Current.Form!FISCAL_YEAR_NUMBER));  |  | 0.05, 1.12, 0.62, 0.21 |
| TextBox | Text608 | Total | =Round(NZ([ORDER_AMT],0)+NZ([OVERRUN_AMT],0),3) |  |  | 7.91, 0.13, 0.58, 0.20 |
| TextBox | CN |  | CN |  |  | 8.71, 0.67, 0.50, 0.20 |
| TextBox | MODIFIED_DATE |  | MODIFIED_DATE |  |  | 7.90, 2.33, 0.58, 0.20 |
| TextBox | MODIFIED_BY |  | MODIFIED_BY |  |  | 6.27, 2.34, 1.60, 0.20 |
| Label | MODIFIED_BY_Label | Modified By |  |  |  | 5.38, 2.34, 0.74, 0.20 |
| TextBox | INSERTED_BY |  | INSERTED_BY |  |  | 2.84, 2.33, 1.73, 0.20 |
| TextBox | INSERTED_DATE |  | INSERTED_DATE |  |  | 4.67, 2.33, 0.58, 0.20 |
| Label | INSERTED_BY_Label | Inserted By |  |  |  | 1.96, 2.32, 0.80, 0.21 |
| TextBox | Text610 |  | =Left$([CN],Len([CN])-7) |  |  | 0.04, 0.20, 0.94, 0.26 |
| Label | Label612 | Order ID |  |  |  | 0.03, 0.01, 0.95, 0.18 |
| ComboBox | FISCAL_YEAR | FY: | FISCAL_YEAR | SELECT NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER, NMIS_FISCAL_YEARS.BEGIN_DATE, NMIS_FISCAL_YEARS.END_DATE FROM NMIS_FISCAL_YEARS ORDER BY NMIS_FISCAL_YEARS.FISCAL_YEAR_NUMBER DESC; |  | 0.43, 2.33, 0.75, 0.21 |
| TextBox | SPEC_MIN | Min | SPEC_MIN |  |  | 0.78, 1.13, 0.46, 0.20 |
| TextBox | SPEC_MAX | Max | SPEC_MAX |  |  | 1.28, 1.13, 0.47, 0.20 |
| TextBox | CALIPER_MIN | Caliper | CALIPER_MIN |  |  | 1.78, 1.13, 0.54, 0.20 |
| TextBox | ROOT_PRUNE_TARGET | Prune | ROOT_PRUNE_TARGET |  |  | 2.35, 1.13, 0.48, 0.20 |
| Label | ORDER_SPECIFICATIONS_Label | Order Specifications |  |  |  | 0.77, 0.53, 2.52, 0.18 |
| Label | HEIGHT_Label | Height |  |  |  | 0.77, 0.73, 0.98, 0.17 |
| Rectangle | Box107 |  |  |  |  | 0.72, 0.50, 2.66, 0.88 |
| Label | Label623 | Target |  |  |  | 2.35, 0.92, 0.49, 0.18 |
| TextBox | ROOT_PRUNE_MIN |  | ROOT_PRUNE_MIN |  |  | 2.83, 1.13, 0.47, 0.20 |
| Label | Label626 | Min |  |  |  | 2.84, 0.92, 0.45, 0.18 |
| Label | ASSOCIATE_CONTACTS_Label | Associate Contacts |  |  |  | 3.46, 0.56, 1.54, 0.20 |
| CheckBox | BE_AT_PACK |  | BE_AT_PACK |  |  | 6.42, 0.60, 0.00, 0.00 |
| Label | BE_AT_PACK Label | To be at Packing |  |  |  | 5.14, 0.55, 1.21, 0.21 |

## Code-behind (VBA)

```vb
Option Compare Database

Private Sub CLIENT_ASSOCIATE_DblClick(Cancel As Integer)

    CLIENT_ASSOCIATE.Locked = False
    
End Sub

Private Sub CLIENT_ASSOCIATE_Enter()

    If IsNull(CLIENT_ASSOCIATE) Then
        CLIENT_ASSOCIATE.Locked = False
    Else
        CLIENT_ASSOCIATE.Locked = True
    End If
    
End Sub

Private Sub Contact_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [CONTACT_CN] & "')", acFormEdit
    End If
    
End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)

    MODIFIED_BY = Forms![Switchboard]![Current_User_Name]
    MODIFIED_DATE = Date
 
End Sub

Private Sub SECONDARY_CONTACT_CN_DblClick(Cancel As Integer)
    'DoCmd.OpenForm "NMIS_CONTACTS", , , , acFormAdd
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "NMIS_CONTACTS"
    
    If IsNull(SECONDARY_CONTACT_CN) Then
          DoCmd.OpenForm stDocName, , , acFormEdit
          DoCmd.GoToRecord , , acNewRec
        Else
          DoCmd.OpenForm stDocName, acNormal, , "([CN]=" & "'" & [SECONDARY_CONTACT_CN] & "')", acFormEdit
    End If
    
End Sub
```
