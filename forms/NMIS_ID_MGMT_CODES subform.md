# Form: NMIS_ID_MGMT_CODES subform

**Caption:** Management Codes  
**Record source:**

```sql
NMIS_CLIENT_MGMT_CODES
```

**Backend tables referenced:** `NMIS_ACTIVITY_CODES`, `NMIS_CLIENT_MGMT_CODES`, `NMIS_ID_ACTIVITIES`  
**Subforms/subreports:** `Form.NMIS_CLIENT_MGMT_CODES subform`, `Form.NMIS_Special_Charges subform`  
**Opened from (VBA):** `Form_NMIS_ID_ACTIVITIES Subform`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label147 | Management Codes/Special Charges |  |  |  | 2.62, 0.17, 3.62, 0.28 |
| Line | Line26 |  |  |  |  | 0.08, 0.62, 9.25, 0.00 |
| TextBox | CN |  | ACTIVITY_ID_CN |  |  | 0.88, 0.25, 0.00, 0.00 |
| CommandButton | Save_and_Exit | Close |  |  |  | 8.83, 0.04, 0.47, 0.28 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | NMIS_CLIENT_MGMT_CODES subform |  | Form.NMIS_CLIENT_MGMT_CODES subform (master: CN → child: ACTIVITY_ID_CN) |  |  | 0.20, 0.80, 3.02, 3.17 |
| Subform | Special_Charges subform | Special Charges | Form.NMIS_Special_Charges subform (master: CN → child: CN) |  |  | 4.28, 0.81, 4.80, 3.17 |
| Label | NMIS_ID_Mgmt_Codes subform Label | Management Codes |  |  |  | 0.22, 0.58, 1.39, 0.20 |
| Label | Label11 | Date: |  |  |  | 0.19, 0.15, 0.40, 0.20 |
| Label | Label12 | Activity Code: |  |  |  | 1.61, 0.15, 0.97, 0.20 |
| ComboBox | Activity_No_Name | Activity Description: | ACTIVITY_ID_CN | SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_NAME] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);  |  | 5.16, 0.15, 4.04, 0.20 |
| ComboBox | Activity_Code |  | ACTIVITY_ID_CN | SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ACTIVITY_CODES].[ACTIVITY_CODE] FROM NMIS_ACTIVITY_CODES INNER JOIN NMIS_ID_ACTIVITIES ON ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]) AND ([NMIS_ACTIVITY_CODES].[ACTIVITY_CODE]=[NMIS_ID_ACTIVITIES].[ACTIVITY_CODE]);  |  | 2.66, 0.15, 0.82, 0.20 |
| ComboBox | Activity_Date |  | ACTIVITY_ID_CN | SELECT [NMIS_ID_ACTIVITIES].[CN], [NMIS_ID_ACTIVITIES].[ACTIVITY_DATE] FROM NMIS_ID_ACTIVITIES;  |  | 0.65, 0.15, 0.79, 0.20 |
