# Report: Seed_Bank_Work_Order subreport

**Caption:** Seed_Bank_Work_Order subreport  
**Record source:**

```sql
SELECT NMIS_AGREEMENTS.CLIENT_ASSOCIATE, NMIS_AGREEMENTS.AMOUNT_REQUESTED, NMIS_AGREEMENTS.AGREEMENT_LOT_CN, IIf(Not IsNull([contact_cn]),"Contact: " & [FIRST_NAME] & " " & [LAST_NAME] & "   ","") & IIf(Not IsNull([NMIS_AGREEMENTS].[NOTE]),"Note: " & [NMIS_AGREEMENTS].[NOTE],"") AS Contact_Note, NMIS_AGREEMENTS.CN, IIf(Not IsNull([contact_cn]),"Contact: " & [FIRST_NAME] & " " & [LAST_NAME],"") AS Contact, NMIS_AGREEMENTS.NOTE, NMIS_SOURCE_LOTS.ID AS SOURCE_ID FROM NMIS_SOURCE_LOTS INNER JOIN (NMIS_AGREEMENTS LEFT JOIN NMIS_CONTACTS ON NMIS_AGREEMENTS.CONTACT_CN = NMIS_CONTACTS.CN) ON NMIS_SOURCE_LOTS.CN = NMIS_AGREEMENTS.SOURCE_LOT_CN;
```

**Backend tables referenced:** `NMIS_AGREEMENTS`, `NMIS_ASSOCIATES`, `NMIS_CONTACTS`, `NMIS_SOURCE_LOTS`  
**Subforms/subreports:** `Report.NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport`  
**Embedded in:** `Report:Seed_Bank_Work_Order`, `Report:Seed_Bank_Work_Order2`, `Report:Seed_Bank_Work_Order_old`, `Report:Seed_Bank_Work_Order_old2`  

## Section: ReportHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | CLIENT_ASSOCIATE_Label | Client Associate |  |  |  | 0.07, 0.00, 2.37, 0.17 |
| Label | AMOUNT_REQUESTED_Label | Req (M) |  |  |  | 5.09, 0.00, 0.65, 0.17 |
| Label | Label12 | Client      Job Code |  |  |  | 5.86, 0.00, 1.55, 0.18 |
| Label | Label15 | Source ID |  |  |  | 3.85, 0.00, 1.07, 0.17 |

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line6 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| ComboBox | CLIENT_ASSOCIATE |  | CLIENT_ASSOCIATE | SELECT NMIS_ASSOCIATES.ASSOCIATE, [Associate] & " " & [ASSOCIATE_NAME] AS Associate_and_Name FROM NMIS_ASSOCIATES;  |  | 0.07, 0.01, 3.77, 0.20 |
| TextBox | AMOUNT_REQUESTED |  | AMOUNT_REQUESTED |  |  | 5.14, 0.01, 0.60, 0.21 |
| Subform | NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport |  | Report.NMIS_CLIENT_MGMT_CODES_For_Seed_Work_Order subreport (master: CN → child: AGREEMENT_CN) |  |  | 5.80, 0.00, 2.12, 0.44 |
| TextBox | CONTACT |  | Contact_Note |  |  | 0.12, 0.22, 5.62, 0.21 |
| TextBox | SOURCE_ID |  | SOURCE_ID |  |  | 3.85, 0.01, 1.27, 0.20 |
| Line | Line16 |  |  |  |  | 0.08, 0.44, 7.38, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Line | Line7 |  |  |  |  | 0.00, 0.00, 0.00, 0.00 |
