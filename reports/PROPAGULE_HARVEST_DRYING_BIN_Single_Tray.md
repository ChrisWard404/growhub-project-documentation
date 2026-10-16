# Report: PROPAGULE_HARVEST_DRYING_BIN_Single_Tray

**Caption:** NMIS Propagule Harvest Drying Tray Tag  
**Grouping/sorting:** `ID`, `CLIENT_ASSOCIATE`  
**Subforms/subreports:** `Report.Plant_Inventory_Worksheet_Field_Location_Index Subform`, `Report.Plant_Inventory_Worksheet_Field_Location_Index Subform`  
**Opened from (VBA):** `Form_Drying_Tray_Input_Form`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text39 |  | =Forms!Switchboard![NMIS_ACCESS_SET_USER_NURSERY subform].Form!User_Nursery |  |  | 2.75, 0.38, 2.50, 0.21 |
| Label | Label118 | USDA Forest Service |  |  |  | 2.75, 0.00, 2.50, 0.17 |
| Label | Label119 | Nursery Management Information System |  |  |  | 2.62, 0.17, 2.78, 0.20 |
| TextBox | Text66 | Native Seed Harvest Fiscal Year: | =Forms!Switchboard!FY_For_Reports |  |  | 5.00, 0.58, 0.49, 0.21 |
| Line | Line134 |  |  |  |  | 0.17, 0.86, 7.67, 0.00 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Subform | Plant_Inventory_Worksheet_Field_Location_Index Subform |  | Report.Plant_Inventory_Worksheet_Field_Location_Index Subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 6.23, 0.89, 1.65, 7.11 |
| Label | Label47 | Ft In Bed |  |  |  | 7.55, 0.59, 0.30, 0.28 |
| Label | Label48 | Location |  |  |  | 6.20, 0.72, 0.49, 0.16 |
| Label | Label50 | Begin Index |  |  |  | 6.78, 0.59, 0.38, 0.28 |
| Label | Label56 | End Index |  |  |  | 7.19, 0.59, 0.35, 0.28 |
| TextBox | ID | Nursery ID: | ID2 |  |  | 3.42, 0.98, 2.51, 0.62 |
| Label | SOURCE_CODE_Label | Source: |  |  |  | 0.20, 0.30, 0.57, 0.19 |
| TextBox | SOURCE_CODE |  | SOURCE |  |  | 0.82, 0.12, 7.05, 0.41 |
| TextBox | CLIENT | Location: | Location |  |  | 0.82, 2.66, 5.29, 0.62 |
| Line | Line51 |  |  |  |  | 3.42, 1.58, 2.52, 0.00 |
| Line | Line52 |  |  |  |  | 0.82, 0.51, 7.06, 0.00 |
| TextBox | Text122 | Date: | =Forms!Drying_Tray_Input_Form![Date:] |  |  | 0.82, 3.42, 5.40, 0.62 |
| TextBox | Text125 | Initials/ Notes: | =Forms!Drying_Tray_Input_Form!Initials |  |  | 0.84, 4.88, 5.37, 0.45 |
| TextBox | Text127 | Method of Harvest: | =Forms!Drying_Tray_Input_Form!Harvest_Method |  |  | 0.85, 5.58, 5.36, 0.45 |
| Line | Line129 |  |  |  |  | 0.83, 3.25, 5.25, 0.00 |
| Line | Line131 |  |  |  |  | 0.82, 4.03, 5.25, 0.00 |
| Line | Line132 |  |  |  |  | 0.86, 5.30, 5.25, 0.02 |
| Line | Line133 |  |  |  |  | 0.87, 6.11, 5.26, 0.02 |
| TextBox | VERNACULAR |  | Scientific_Name |  |  | 0.83, 0.54, 5.25, 0.00 |
| Line | Line144 |  |  |  |  | 0.83, 2.47, 1.98, 0.00 |
| TextBox | Text145 | Client: | CLIENT_ASSOCIATE |  |  | 0.83, 1.87, 1.96, 0.62 |
| TextBox | Text138 | Species: | PLNTMSTR_SYMBOL |  |  | 3.42, 1.87, 2.12, 0.62 |
| Line | Line140 |  |  |  |  | 3.42, 2.47, 2.08, 0.00 |
| Label | Label124 | __ of __ |  |  |  | 0.21, 0.99, 1.96, 0.62 |
| TextBox | Number_of_Trays |  | =Forms!Drying_Tray_Input_Form!Number_Of_Trays |  |  | 1.53, 0.98, 0.54, 0.63 |
| TextBox | Text147 |  | VERNACULAR |  |  | 0.83, 0.71, 5.25, 0.00 |
| Subform | Child148 |  | Report.Plant_Inventory_Worksheet_Field_Location_Index Subform (master: CN → child: AGREEMENT_LOT_CN) |  |  | 6.23, 9.90, 1.65, 5.18 |
| Label | Label149 | Ft In Bed |  |  |  | 7.55, 9.60, 0.30, 0.28 |
| Label | Label150 | Location |  |  |  | 6.20, 9.73, 0.49, 0.16 |
| Label | Label151 | Begin Index |  |  |  | 6.78, 9.60, 0.38, 0.28 |
| Label | Label152 | End Index |  |  |  | 7.19, 9.60, 0.35, 0.28 |
| TextBox | Text153 | Nursery ID: | ID |  |  | 3.42, 9.99, 2.51, 0.62 |
| Label | Label155 | Source: |  |  |  | 0.20, 9.31, 0.57, 0.19 |
| TextBox | Text156 |  | SOURCE |  |  | 0.82, 9.14, 7.05, 0.41 |
| TextBox | Text157 | Location: | Location |  |  | 0.82, 11.67, 5.29, 0.62 |
| Line | Line159 |  |  |  |  | 3.42, 10.59, 2.52, 0.00 |
| Line | Line160 |  |  |  |  | 0.82, 9.52, 7.06, 0.00 |
| TextBox | Text161 | Date: | =Forms!Drying_Tray_Input_Form![Date:] |  |  | 0.82, 12.44, 5.40, 0.61 |
| TextBox | Text163 | Initials: | =Forms!Drying_Tray_Input_Form!Initials |  |  | 0.84, 13.89, 5.36, 0.44 |
| TextBox | Text165 | Method of Harvest: | =Forms!Drying_Tray_Input_Form!Harvest_Method |  |  | 0.85, 14.59, 5.35, 0.44 |
| Line | Line167 |  |  |  |  | 0.83, 12.26, 5.25, 0.00 |
| Line | Line168 |  |  |  |  | 0.82, 13.04, 5.24, 0.00 |
| Line | Line169 |  |  |  |  | 0.86, 14.31, 5.24, 0.01 |
| Line | Line170 |  |  |  |  | 0.87, 15.12, 5.33, 0.01 |
| TextBox | Text171 |  | Scientific_Name |  |  | 0.83, 9.55, 5.25, 0.00 |
| Line | Line172 |  |  |  |  | 0.83, 11.48, 1.98, 0.00 |
| TextBox | Text173 | Client: | CLIENT_ASSOCIATE |  |  | 0.83, 10.88, 1.96, 0.62 |
| TextBox | Text175 | Species: | PLNTMSTR_SYMBOL |  |  | 3.42, 10.88, 2.12, 0.62 |
| Line | Line177 |  |  |  |  | 3.42, 11.48, 2.08, 0.00 |
| Label | Label178 | __ of __ |  |  |  | 0.21, 10.00, 1.96, 0.62 |
| TextBox | Text179 |  | =Forms!Drying_Tray_Input_Form!Number_Of_Trays |  |  | 1.53, 9.99, 0.54, 0.63 |
| TextBox | Text180 |  | VERNACULAR |  |  | 0.83, 9.72, 5.25, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text27 |  | =Now() |  |  | 0.04, 0.45, 1.96, 0.00 |
| TextBox | Text104 |  | ID_ORDER |  |  | 2.52, 0.00, 5.34, 0.62 |
