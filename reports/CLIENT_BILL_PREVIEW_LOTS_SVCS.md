# Report: CLIENT_BILL_PREVIEW_LOTS_SVCS

**Caption:** CLIENT_BILL_SVCS_Crosstab  
**Record source:**

```sql
CLIENT_BILL_PREVIEW_Crosstab_SVCS
```

**Grouping/sorting:** `CLIENT`, `JOB_CODE`, `PRODUCT_DESC`, `LOT_ID`  
**Opened from (VBA):** `Form_CLIENT_BILLING_PREVIEW_BILLING`, `Form_CLIENT_BILLING_PREVIEW_SVCS`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label30 | CLIENT BILL REVIEW - Special Services - FY: |  |  |  | 2.82, 0.54, 3.01, 0.20 |
| TextBox | Text62 | Client: | CLIENT |  |  | 0.54, 0.79, 0.62, 0.21 |
| Label | LOT_ID_Label | Nursery ID |  |  |  | 0.33, 1.08, 0.50, 0.33 |
| Label | BAG_Label | BAG |  |  |  | 0.83, 1.25, 0.58, 0.17 |
| Label | BGBX_Label | BGBX |  |  |  | 2.00, 1.25, 0.50, 0.17 |
| Label | BND100_Label | BND100 |  |  |  | 6.50, 1.25, 0.55, 0.17 |
| Label | BNDL20_Label | BNDL20 |  |  |  | 4.75, 1.25, 0.55, 0.17 |
| Label | BNDL25_Label | BNDL25 |  |  |  | 5.33, 1.25, 0.55, 0.17 |
| Label | BNDL50_Label | BNDL50 |  |  |  | 5.92, 1.25, 0.55, 0.17 |
| Label | BOX_Label | BOX |  |  |  | 1.46, 1.25, 0.50, 0.17 |
| Label | BOXU_Label | BOXU |  |  |  | 2.54, 1.25, 0.50, 0.17 |
| Label | DBLSRT_Label | 2ndSRT |  |  |  | 7.12, 1.25, 0.55, 0.17 |
| Label | FRZR_Label | FREEZE |  |  |  | 7.71, 1.25, 0.55, 0.17 |
| Label | NOSVC_Label | NOSVC |  |  |  | 9.46, 1.25, 0.55, 0.17 |
| Label | SDLTST_Label | SDLTST |  |  |  | 8.29, 1.25, 0.55, 0.17 |
| Label | STRAP_Label | STRAP |  |  |  | 8.88, 1.25, 0.55, 0.17 |
| Line | Line57 |  |  |  |  | 0.04, 1.41, 9.96, 0.00 |
| Line | Line64 |  |  |  |  | 0.88, 1.08, 0.00, 0.33 |
| Line | Line65 |  |  |  |  | 4.21, 1.08, 0.00, 0.33 |
| Line | Line66 |  |  |  |  | 7.08, 1.08, 0.00, 0.33 |
| Label | Label68 | # of Containers by Type |  |  |  | 0.92, 1.04, 3.29, 0.24 |
| Label | Label69 | Bundling (M's) |  |  |  | 4.21, 1.04, 2.88, 0.24 |
| Label | Label70 | Other Services (M's) |  |  |  | 7.12, 1.04, 2.88, 0.24 |
| TextBox | NURSERY |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 3.75, 0.33, 2.56, 0.21 |
| TextBox | Text20 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 9.33, 0.00, 0.92, 0.00 |
| TextBox | REPORT_DATE |  | =Now() |  |  | 9.33, 0.17, 0.92, 0.00 |
| Label | Label118 | USDA Forest Service |  |  |  | 3.79, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 3.67, 0.17, 2.78, 0.17 |
| TextBox | Label110 |  | ASSOCIATE_NAME |  |  | 1.17, 0.79, 2.92, 0.20 |
| Label | Label130 | RACK |  |  |  | 3.08, 1.25, 0.50, 0.17 |
| Label | Label135 | TOTE |  |  |  | 3.62, 1.25, 0.50, 0.17 |
| Label | Label141 | BNDL10 |  |  |  | 4.21, 1.25, 0.55, 0.17 |
| TextBox | FISCAL_YEAR |  | =[Forms]![Switchboard]![Current FY:] |  |  | 5.84, 0.54, 0.42, 0.20 |
| TextBox | Bill Period |  | =[Forms]![Client_Bill_Menu]![Begin_Date] & " - " & [Forms]![Client_Bill_Menu]![End_Date] |  |  | 6.33, 0.55, 1.43, 0.19 |

## Section: GroupHeader1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text43 | Job Code: | JOB_CODE |  |  | 0.88, 0.03, 1.38, 0.19 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text45 | Product: | PRODUCT_DESC |  |  | 0.96, 0.03, 2.92, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | LOT_ID |  | LOT_ID |  |  | 0.12, 0.00, 0.79, 0.00 |
| TextBox | BAG |  | BAG |  |  | 1.00, 0.00, 0.42, 0.00 |
| TextBox | BGBX |  | BGBX |  |  | 2.00, 0.00, 0.50, 0.00 |
| TextBox | BND100 |  | BND100 |  |  | 6.50, 0.00, 0.55, 0.00 |
| TextBox | BNDL20 |  | BNDL20 |  |  | 4.75, 0.00, 0.55, 0.00 |
| TextBox | BNDL25 |  | BNDL25 |  |  | 5.33, 0.00, 0.55, 0.00 |
| TextBox | BNDL50 |  | BNDL50 |  |  | 5.92, 0.00, 0.55, 0.00 |
| TextBox | BOX |  | BOX |  |  | 1.46, 0.00, 0.50, 0.00 |
| TextBox | BOXU |  | BOXU |  |  | 2.54, 0.00, 0.50, 0.00 |
| TextBox | DBLSRT |  | 2NDSRT |  |  | 7.12, 0.00, 0.55, 0.00 |
| TextBox | FRZR |  | FRZR |  |  | 7.71, 0.00, 0.55, 0.00 |
| TextBox | NOSVC |  | NOSVC |  |  | 9.46, 0.00, 0.55, 0.00 |
| TextBox | SDLTST |  | SDLTST |  |  | 8.29, 0.00, 0.55, 0.00 |
| TextBox | STRAP |  | STRAP |  |  | 8.88, 0.00, 0.55, 0.00 |
| Line | Line71 |  |  |  |  | 0.97, 0.00, 0.00, 0.17 |
| Line | Line72 |  |  |  |  | 4.21, 0.00, 0.00, 0.17 |
| Line | Line73 |  |  |  |  | 7.12, 0.00, 0.00, 0.17 |
| TextBox | Text131 |  | RACK |  |  | 3.08, 0.00, 0.50, 0.00 |
| TextBox | Text136 |  | TOTE |  |  | 3.62, 0.00, 0.50, 0.00 |
| TextBox | Text140 |  | BNDL10 |  |  | 4.21, 0.00, 0.55, 0.00 |

## Section: GroupFooter0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line58 |  |  |  |  | 0.17, 0.00, 9.87, 0.00 |
| TextBox | Text75 |  | =Sum([BAG]) |  |  | 0.83, 0.08, 0.58, 0.17 |
| TextBox | Text76 |  | =Sum([BGBX]) |  |  | 2.00, 0.08, 0.50, 0.17 |
| TextBox | Text78 |  | =Sum([BND100]) |  |  | 6.50, 0.08, 0.55, 0.17 |
| TextBox | Text80 |  | =Sum([BNDL20]) |  |  | 4.75, 0.08, 0.55, 0.17 |
| TextBox | Text81 |  | =Sum([BNDL25]) |  |  | 5.33, 0.08, 0.55, 0.17 |
| TextBox | Text82 |  | =Sum([BNDL50]) |  |  | 5.92, 0.08, 0.55, 0.17 |
| TextBox | Text83 |  | =Sum([BOX]) |  |  | 1.46, 0.08, 0.50, 0.17 |
| TextBox | Text84 |  | =Sum([BOXU]) |  |  | 2.54, 0.08, 0.50, 0.17 |
| TextBox | Text85 |  | =Sum([2NDSRT]) |  |  | 7.12, 0.08, 0.55, 0.17 |
| TextBox | Text86 |  | =Sum([FRZR]) |  |  | 7.71, 0.08, 0.55, 0.17 |
| TextBox | Text87 |  | =Sum([NOSVC]) |  |  | 9.46, 0.08, 0.55, 0.17 |
| TextBox | Text88 |  | =Sum([SDLTST]) |  |  | 8.29, 0.08, 0.55, 0.17 |
| TextBox | Text89 |  | =Sum([STRAP]) |  |  | 8.88, 0.08, 0.55, 0.17 |
| Label | PROD_DESC | Product |  |  |  | 0.21, 0.08, 0.52, 0.17 |
| TextBox | Text132 |  | =Sum([RACK]) |  |  | 3.08, 0.08, 0.50, 0.17 |
| TextBox | Text137 |  | =Sum([TOTE]) |  |  | 3.62, 0.08, 0.50, 0.17 |
| TextBox | Text142 |  | =Sum([BNDL10]) |  |  | 4.21, 0.08, 0.55, 0.17 |

## Section: GroupFooter2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line111 |  |  |  |  | 0.33, 0.00, 9.67, 0.00 |
| TextBox | Text112 |  | =Sum([BAG]) |  |  | 0.83, 0.08, 0.58, 0.17 |
| TextBox | Text113 |  | =Sum([BGBX]) |  |  | 2.00, 0.08, 0.50, 0.17 |
| TextBox | Text115 |  | =Sum([BND100]) |  |  | 6.50, 0.08, 0.55, 0.17 |
| TextBox | Text117 |  | =Sum([BNDL20]) |  |  | 4.75, 0.08, 0.55, 0.17 |
| TextBox | Text118 |  | =Sum([BNDL25]) |  |  | 5.33, 0.08, 0.55, 0.17 |
| TextBox | Text119 |  | =Sum([BNDL50]) |  |  | 5.92, 0.08, 0.55, 0.17 |
| TextBox | Text120 |  | =Sum([BOX]) |  |  | 1.46, 0.08, 0.50, 0.17 |
| TextBox | Text121 |  | =Sum([BOXU]) |  |  | 2.54, 0.08, 0.50, 0.17 |
| TextBox | Text122 |  | =Sum([2NDSRT]) |  |  | 7.12, 0.08, 0.55, 0.17 |
| TextBox | Text123 |  | =Sum([FRZR]) |  |  | 7.71, 0.08, 0.55, 0.17 |
| TextBox | Text124 |  | =Sum([NOSVC]) |  |  | 9.46, 0.08, 0.55, 0.17 |
| TextBox | Text125 |  | =Sum([SDLTST]) |  |  | 8.29, 0.08, 0.55, 0.17 |
| TextBox | Text126 |  | =Sum([STRAP]) |  |  | 8.88, 0.08, 0.55, 0.17 |
| Label | jc | JobCode |  |  |  | 0.25, 0.08, 0.56, 0.17 |
| TextBox | Text133 |  | =Sum([RACK]) |  |  | 3.08, 0.08, 0.50, 0.17 |
| TextBox | Text138 |  | =Sum([TOTE]) |  |  | 3.62, 0.08, 0.50, 0.17 |
| TextBox | Text143 |  | =Sum([BNDL10]) |  |  | 4.21, 0.08, 0.55, 0.17 |

## Section: GroupFooter1

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line93 |  |  |  |  | 0.05, 0.00, 9.99, 0.00 |
| Line | Line128 |  |  |  |  | 0.05, 0.04, 9.99, 0.00 |
| TextBox | Text94 |  | =Sum([BAG]) |  |  | 0.83, 0.08, 0.58, 0.17 |
| TextBox | Text95 |  | =Sum([BGBX]) |  |  | 2.00, 0.08, 0.50, 0.17 |
| TextBox | Text97 |  | =Sum([BND100]) |  |  | 6.50, 0.08, 0.55, 0.17 |
| TextBox | Text99 |  | =Sum([BNDL20]) |  |  | 4.75, 0.08, 0.55, 0.17 |
| TextBox | Text100 |  | =Sum([BNDL25]) |  |  | 5.33, 0.08, 0.55, 0.17 |
| TextBox | Text101 |  | =Sum([BNDL50]) |  |  | 5.92, 0.08, 0.55, 0.17 |
| TextBox | Text102 |  | =Sum([BOX]) |  |  | 1.46, 0.08, 0.50, 0.17 |
| TextBox | Text103 |  | =Sum([BOXU]) |  |  | 2.54, 0.08, 0.50, 0.17 |
| TextBox | Text104 |  | =Sum([2NDSRT]) |  |  | 7.12, 0.08, 0.55, 0.17 |
| TextBox | Text105 |  | =Sum([FRZR]) |  |  | 7.71, 0.08, 0.55, 0.17 |
| TextBox | Text106 |  | =Sum([NOSVC]) |  |  | 9.46, 0.08, 0.55, 0.17 |
| TextBox | Text107 |  | =Sum([SDLTST]) |  |  | 8.29, 0.08, 0.55, 0.17 |
| TextBox | Text108 |  | =Sum([STRAP]) |  |  | 8.88, 0.08, 0.55, 0.17 |
| Label | Label109 | Client Total |  |  |  | 0.04, 0.08, 0.75, 0.17 |
| TextBox | Text134 |  | =Sum([RACK]) |  |  | 3.08, 0.08, 0.50, 0.17 |
| TextBox | Text139 |  | =Sum([TOTE]) |  |  | 3.62, 0.08, 0.50, 0.17 |
| TextBox | Text144 |  | =Sum([BNDL10]) |  |  | 4.21, 0.08, 0.55, 0.17 |
