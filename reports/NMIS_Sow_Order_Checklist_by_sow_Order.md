# Report: NMIS_Sow_Order_Checklist_by_sow_Order

**Caption:** AGREEMENT_LOT_SOWING_ORDER_Group_Summary  
**Record source:**

```sql
SELECT NMIS_SOWING_ORDER.* FROM NMIS_SOWING_ORDER WHERE (((NMIS_SOWING_ORDER.GROUP) Like nz([Forms]![NMIS_SOWING_ORDER]![Like_Group],"*"))) ORDER BY NMIS_SOWING_ORDER.GROUP, NMIS_SOWING_ORDER.SOWING_ORDER_CODE;
```

**Grouping/sorting:** `Group`, `SOWING_ORDER`, `SOWING_ORDER_CODE`  
**Backend tables referenced:** `NMIS_SOWING_ORDER`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | SOURCE_CODE_Label | Sowing Order |  |  |  | 0.25, 1.02, 0.54, 0.34 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.30, 0.16, 2.81, 0.19 |
| Label | Label33 | Sowing Group Checklist |  |  |  | 2.09, 0.55, 3.22, 0.22 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.08, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.08, 0.00, 3.24, 0.16 |
| Label | Label127 | Sowing Group |  |  |  | 0.88, 1.02, 0.54, 0.34 |
| Label | Label128 | Desciption |  |  |  | 2.61, 1.19, 0.69, 0.18 |
| Line | Line133 |  |  |  |  | 0.03, 1.40, 7.50, 0.00 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | Group |  | Group | BS;Bareroot Sow;BT;Bareroot Transplant;CS;Container Sow;CT;Container Transplant |  | 0.12, 0.00, 2.96, 0.23 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SOWING_ORDER_CODE |  | SOWING_ORDER_CODE |  |  | 0.96, 0.00, 0.42, 0.21 |
| TextBox | SOWING_ORDER |  | SOWING_ORDER |  |  | 0.22, 0.00, 0.38, 0.21 |
| TextBox | DESCRIPTION |  | DESCRIPTION |  |  | 1.54, 0.00, 5.88, 0.21 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.01, 0.01, 3.50, 0.18 |
| Line | Line134 |  |  |  |  | 0.00, 0.00, 7.52, 0.00 |
