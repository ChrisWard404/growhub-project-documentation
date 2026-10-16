# Report: CLIENT_BILL_PREVIEW_TICKETS

**Caption:** SHIPPED  
**Record source:**

```sql
CLIENT_BILL_PREVIEW_TICKETS
```

**Grouping/sorting:** `DELIVERED_TO_ASSOCIATE`, `ACTIVITY_CODE`, `JOB_CODE`, `PRODUCT_DESC`, `ID`  
**Subforms/subreports:** `Report.CLIENT_BILL_PREVIEW_TKT_COSTS`  
**Opened from (VBA):** `Form_CLIENT_BILLING_PREVIEW_BILLING`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label18 | Client Billing Ticket List - FY |  |  |  | 3.72, 0.54, 1.76, 0.19 |
| TextBox | Text54 |  | CLIENT |  |  | 0.54, 0.79, 0.58, 0.21 |
| TextBox | Text55 |  | PARENT_NAME |  |  | 1.12, 1.00, 3.88, 0.21 |
| TextBox | Text56 |  | ASSOCIATE_NAME |  |  | 1.12, 0.79, 3.88, 0.21 |
| Label | Label58 | Client: |  |  |  | 0.04, 0.79, 0.42, 0.21 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.58, 0.33, 2.56, 0.21 |
| TextBox | FISCAL_YEAR |  | FISCAL_YEAR |  |  | 5.46, 0.54, 0.42, 0.19 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.62, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.50, 0.17, 2.78, 0.17 |
| Label | Label62 |          Lot ID              Source                                                                            TKT#           Date        Client            Reference #           Sdlngs        Containers |  |  |  | 0.04, 1.21, 9.92, 0.19 |
| Label | Label63 |            Shipping                 M's            Total # |  |  |  | 6.54, 1.04, 3.17, 0.19 |
| TextBox | Text36 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 7.96, 0.00, 1.96, 0.20 |
| TextBox | Text35 |  | =Now() |  |  | 7.96, 0.21, 1.96, 0.20 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text57 |  | ACTIVITY_NAME |  |  | 0.04, 0.00, 2.85, 0.20 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | JOB_CODE | Job Code: | JOB_CODE |  |  | 0.88, 0.00, 1.62, 0.20 |

## Section: GroupHeader3

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | PRODUCT_DESC | Product: | PRODUCT_DESC |  |  | 0.88, 0.00, 3.12, 0.20 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | ID |  | AGREEMENT_LOT_ID_AND_SOURCE |  |  | 0.33, 0.00, 4.38, 0.00 |
| TextBox | TKT_NO |  | TKT_NO |  |  | 4.71, 0.00, 0.50, 0.00 |
| TextBox | DESIRED_DATE |  | DESIRED_DATE |  |  | 5.25, 0.00, 0.71, 0.00 |
| TextBox | EXT_DOC_REF |  | EXT_DOC_REF |  |  | 6.79, 0.00, 0.00, 0.00 |
| TextBox | DELIVERED_TO_ASSOCIATE |  | DELIVERED_TO_ASSOCIATE |  |  | 6.00, 0.00, 0.71, 0.00 |
| TextBox | SHIPPED |  | SHIPPED |  |  | 7.96, 0.00, 0.62, 0.00 |
| TextBox | Text34 |  | CONTAINERS |  |  | 8.83, 0.00, 0.58, 0.00 |

## Section: GroupFooter7

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text64 |  | =Sum([shipped]) |  |  | 7.96, 0.08, 0.62, 0.00 |
| TextBox | Text65 |  | =Sum([CONTAINERS]) |  |  | 8.83, 0.08, 0.58, 0.00 |
| TextBox | Text66 |  | PRODUCT_DESC |  |  | 1.88, 0.08, 2.58, 0.00 |
| Line | Line68 |  |  |  |  | 7.96, 0.04, 0.62, 0.00 |
| Line | Line69 |  |  |  |  | 8.83, 0.04, 0.58, 0.00 |
| Label | Label92 | Product Total |  |  |  | 0.92, 0.08, 0.92, 0.17 |

## Section: GroupFooter6

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text70 |  | =Sum([shipped]) |  |  | 7.96, 0.08, 0.62, 0.00 |
| TextBox | Text71 |  | =Sum([CONTAINERS]) |  |  | 8.83, 0.08, 0.58, 0.00 |
| Line | Line73 |  |  |  |  | 7.96, 0.04, 0.62, 0.00 |
| Line | Line74 |  |  |  |  | 8.83, 0.04, 0.58, 0.00 |
| TextBox | Text75 | Job Code Total | JOB_CODE |  |  | 1.54, 0.08, 1.50, 0.00 |

## Section: GroupFooter5

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text77 |  | =Sum([shipped]) |  |  | 7.96, 0.08, 0.62, 0.00 |
| TextBox | Text78 |  | =Sum([CONTAINERS]) |  |  | 8.83, 0.08, 0.58, 0.00 |
| Line | Line79 |  |  |  |  | 7.96, 0.04, 0.62, 0.00 |
| Line | Line80 |  |  |  |  | 8.83, 0.04, 0.58, 0.00 |
| TextBox | Text83 |  | ACTIVITY_NAME |  |  | 0.96, 0.08, 2.85, 0.00 |
| Label | Label91 | Activity Total |  |  |  | 0.12, 0.08, 0.82, 0.18 |

## Section: GroupFooter4

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text84 |  | =Sum([shipped]) |  |  | 7.96, 0.08, 0.62, 0.00 |
| TextBox | Text85 |  | =Sum([CONTAINERS]) |  |  | 8.83, 0.08, 0.58, 0.00 |
| Line | Line86 |  |  |  |  | 7.96, 0.04, 0.62, 0.00 |
| Line | Line87 |  |  |  |  | 8.83, 0.04, 0.58, 0.00 |
| Label | Label90 | Client's Total |  |  |  | 0.04, 0.08, 0.83, 0.17 |
| Subform | CLIENT_BILL_PREVIEW_TKT_COSTS |  | Report.CLIENT_BILL_PREVIEW_TKT_COSTS (master: DELIVERED_TO_ASSOCIATE → child: DELIVERED_TO_ASSOCIATE) |  |  | 2.00, 0.33, 5.00, 0.27 |
