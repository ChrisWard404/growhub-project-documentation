# Report: Clients_Not_Currently_Growing

**Caption:** Clients Not Currently Growing  
**Record source:**

```sql
client_and_Contacts_not_growing
```

**Grouping/sorting:** `CLIENT_ASSOCIATE`, `LAST_NAME`, `FIRST_NAME`  
**Opened from (VBA):** `Form_Reports_Menu_Production Subform`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | BEGIN_FY_Label | Total Req (M) |  |  |  | 7.31, 0.79, 0.66, 0.32 |
| Label | SOURCE_CODE_Label | Contact |  |  |  | 4.14, 0.93, 0.51, 0.18 |
| Line | Line31 |  |  |  |  | 0.00, 1.16, 7.99, 0.00 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.55, 0.16, 2.81, 0.19 |
| Label | Label33 | Previous Clients Not Currently Growing |  |  |  | 2.45, 0.55, 3.18, 0.23 |
| TextBox | Text91 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.42, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.33, 0.00, 3.24, 0.16 |
| Label | Label108 | Client |  |  |  | 0.07, 0.94, 1.05, 0.18 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOURCE_CODE |  | ASSOCIATE_NAME |  |  | 0.75, 0.00, 3.35, 0.20 |
| TextBox | BEGIN_FY |  | =[First_Name] & IIf(Not IsNull([first_name])," ") & [last_name] & IIf(Not IsNull([historical])," (Historical)") |  |  | 4.12, 0.00, 3.12, 0.20 |
| TextBox | Contact_Name |  | CLIENT_ASSOCIATE |  |  | 0.07, 0.01, 0.57, 0.18 |
| TextBox | ORIG_AMOUNT_REQUESTED |  | SumOfSumOfAMOUNT_REQUESTED |  |  | 7.29, 0.00, 0.57, 0.20 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.07, 3.50, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 4.49, 0.07, 3.50, 0.18 |
| Line | Line30 |  |  |  |  | 0.04, 0.04, 7.92, 0.00 |
