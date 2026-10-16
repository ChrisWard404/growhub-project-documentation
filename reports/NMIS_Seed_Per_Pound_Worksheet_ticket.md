# Report: NMIS_Seed_Per_Pound_Worksheet_ticket

**Caption:** Seed Per Pound Worksheet  
**Opened from (VBA):** `Form_NMIS_SOURCE_SPP_WORKSHEET_ticket`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.74, 0.16, 2.81, 0.19 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.52, 0.35, 3.24, 0.20 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.52, 0.00, 3.24, 0.16 |
| Label | Label24 | Seed Per Pound Worksheet |  |  |  | 3.28, 0.56, 1.89, 0.19 |
| ComboBox | Billed_To_Associate |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Lot ID] | SELECT Source_Lot_ID_and_Source_string.CN, Source_Lot_ID_and_Source_string.ID_SOURCEB FROM Source_Lot_ID_and_Source_string; |  | 0.46, 0.95, 7.38, 0.26 |
| TextBox | Date |  | ="Test Date: " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Date] |  |  | 0.50, 1.42, 3.25, 0.23 |
| Line | Line187 |  |  |  |  | 0.51, 1.67, 7.42, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Sample1 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE1] |  |  | 1.97, 1.09, 0.83, 0.26 |
| TextBox | Sample2 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE2] |  |  | 1.97, 1.41, 0.83, 0.26 |
| TextBox | Sample3 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE3] |  |  | 1.97, 1.74, 0.83, 0.26 |
| TextBox | Sample4 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE4] |  |  | 1.97, 2.06, 0.83, 0.26 |
| TextBox | Sample5 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE5] |  |  | 1.97, 2.38, 0.83, 0.26 |
| TextBox | Sample6 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE6] |  |  | 1.97, 2.70, 0.83, 0.26 |
| Label | Label162 | Sample 1: |  |  |  | 0.94, 1.09, 0.97, 0.26 |
| Label | Label163 | Sample 2: |  |  |  | 0.94, 1.41, 0.97, 0.26 |
| Label | Label164 | Sample 3: |  |  |  | 0.94, 1.74, 0.97, 0.26 |
| Label | Label165 | Sample 4: |  |  |  | 0.94, 2.06, 0.97, 0.26 |
| Label | Label166 | Sample 5: |  |  |  | 0.94, 2.38, 0.97, 0.26 |
| Label | Label167 | Sample 6: |  |  |  | 0.94, 2.70, 0.97, 0.26 |
| TextBox | Max |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![MAX] |  |  | 5.54, 0.79, 0.80, 0.26 |
| TextBox | Min |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![MIN] |  |  | 5.54, 1.11, 0.80, 0.26 |
| TextBox | Max_minus_Min |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Max_minus_Min] |  |  | 5.54, 1.43, 0.80, 0.26 |
| TextBox | Total_Weight |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Total_Weight] |  |  | 5.54, 1.76, 0.80, 0.26 |
| TextBox | Samples |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Total_Samples] |  |  | 5.54, 2.08, 0.80, 0.26 |
| TextBox | Average_Seed_Wt |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Average_Seed_Wt] |  |  | 5.54, 2.40, 0.80, 0.26 |
| Label | Label176 | Max: |  |  |  | 4.99, 0.79, 0.50, 0.26 |
| Label | Label177 | Min: |  |  |  | 5.04, 1.11, 0.45, 0.26 |
| Label | Label178 | Max-Min: |  |  |  | 4.59, 1.43, 0.90, 0.26 |
| Label | Label179 | Total Wt: |  |  |  | 4.60, 1.76, 0.89, 0.26 |
| Label | Label180 | Samples: |  |  |  | 4.57, 2.08, 0.92, 0.26 |
| Label | Label181 | Average: |  |  |  | 4.61, 2.40, 0.88, 0.26 |
| TextBox | Ten_PCT_of_Average |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Ten_PCT_of_Average] |  |  | 5.54, 2.71, 0.80, 0.26 |
| Label | Label183 | 10% of Average: |  |  |  | 3.93, 2.71, 1.55, 0.26 |
| Line | Line188 |  |  |  |  | 0.51, 3.81, 7.42, 0.00 |
| TextBox | Thousand_Seed_Wt |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Thousand_Seed_Wt] |  |  | 4.61, 3.98, 0.67, 0.26 |
| Label | Label190 | 1000 Seed Weight (gm): |  |  |  | 2.24, 3.98, 2.31, 0.26 |
| TextBox | Seed_Per_Pound |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Seed_Per_Pound] |  |  | 4.43, 4.32, 1.95, 0.32 |
| Label | Label192 | Seed Per Pound: |  |  |  | 2.10, 4.32, 2.26, 0.32 |
| Line | Line193 |  |  |  |  | 0.51, 0.69, 7.42, 0.00 |
| TextBox | Text194 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Comments] |  |  | 1.71, 0.04, 6.21, 0.62 |
| Label | Label195 | Comments: |  |  |  | 0.53, 0.04, 1.11, 0.26 |
| TextBox | Out_of_Range |  | =IIf([Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Max_minus_Min]>[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Ten_PCT_of_Average],"*Out of Range*",Null) |  |  | 6.38, 1.43, 1.55, 0.26 |
| TextBox | Text197 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE7] |  |  | 1.97, 3.05, 0.83, 0.26 |
| Label | Label198 | Sample 7: |  |  |  | 0.94, 3.05, 1.01, 0.26 |
| TextBox | Text199 |  | =[Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![SAMPLE8] |  |  | 1.97, 3.39, 0.83, 0.26 |
| Label | Label200 | Sample 8: |  |  |  | 0.94, 3.40, 1.01, 0.26 |
| TextBox | Text201 |  | ="Wt of " & [Forms]![NMIS_SOURCE_SPP_WORKSHEET_ticket]![Seeds_Per_Sample] & " Seeds in grams" |  |  | 0.50, 0.79, 2.88, 0.26 |
