# Report: Agreement_Lot_Source_Calcs_Review

**Grouping/sorting:** `borc`, `PRODUCT_DESC`, `Vernacular_With_Code`, `ID`  
**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS_Report`  

## Section: PageHeaderSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label32 | Nursery Management Information System |  |  |  | 2.72, 0.16, 2.81, 0.19 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.50, 0.00, 3.24, 0.16 |
| Label | Label150 | Agreement Lot Source Calculation Review |  |  |  | 2.43, 0.57, 3.49, 0.23 |
| TextBox | Text91 |  | =[Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![User_Nursery] |  |  | 2.54, 0.35, 3.24, 0.20 |
| Label | Label184 | Request |  |  |  | 0.04, 0.87, 0.59, 0.18 |
| Label | Label185 | Gross Source/Unit |  |  |  | 4.44, 0.89, 0.83, 0.36 |
| Label | Label186 | Germ % |  |  |  | 5.31, 0.89, 0.44, 0.36 |
| Label | Label187 | Purity % |  |  |  | 5.78, 0.89, 0.43, 0.36 |
| Label | Label188 | Source Used |  |  |  | 6.98, 0.88, 0.64, 0.37 |
| Label | Label189 | % |  |  |  | 1.38, 1.05, 0.16, 0.19 |
| Label | Label190 | % |  |  |  | 1.98, 1.05, 0.16, 0.19 |
| Label | Label191 | % |  |  |  | 2.56, 1.05, 0.16, 0.19 |
| Label | Label192 | % |  |  |  | 3.18, 1.05, 0.17, 0.19 |
| Label | Label193 | Harvest ASF % |  |  |  | 3.60, 0.89, 0.55, 0.36 |
| Label | Label194 | M |  |  |  | 0.26, 1.05, 0.16, 0.19 |
| Label | Label195 | Source Calc |  |  |  | 6.38, 0.88, 0.64, 0.37 |
| TextBox | Text196 |  | HF1_CODE |  |  | 1.23, 0.89, 0.44, 0.00 |
| TextBox | Text197 |  | HF2_CODE |  |  | 1.80, 0.89, 0.44, 0.00 |
| TextBox | Text198 |  | HF3_CODE |  |  | 2.39, 0.89, 0.44, 0.00 |
| TextBox | Text199 |  | ="SPC" |  |  | 2.98, 0.89, 0.45, 0.00 |
| Line | Line201 |  |  |  |  | 0.00, 1.24, 7.99, 0.00 |

## Section: GroupHeader2

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text206 |  | Product_Desc |  |  | 0.00, 0.00, 7.99, 0.22 |

## Section: GroupHeader0

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | SPECIES_PRODUCT_DESC |  | Vernacular_With_Code |  |  | 0.00, 0.00, 7.99, 0.22 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Text154 |  | =IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]) |  |  | 0.00, 0.00, 1.28, 0.21 |
| TextBox | Text155 |  | TOTAL_REQUEST |  |  | 0.10, 0.21, 0.61, 0.20 |
| TextBox | Text156 |  | GROSS_SOURCE_PER_UNIT |  |  | 4.50, 0.21, 0.83, 0.20 |
| TextBox | Text157 |  | SOURCE_GERM_PCT |  |  | 5.46, 0.21, 0.29, 0.20 |
| TextBox | Text158 |  | SOURCE_PURITY_PCT |  |  | 5.93, 0.21, 0.28, 0.20 |
| TextBox | Text159 |  | HARVEST_FACTOR_1 |  |  | 1.29, 0.21, 0.47, 0.20 |
| TextBox | Text160 |  | HARVEST_FACTOR_2 |  |  | 1.89, 0.21, 0.47, 0.20 |
| TextBox | Text161 |  | HARVEST_FACTOR_3 |  |  | 2.48, 0.21, 0.47, 0.20 |
| TextBox | Text162 |  | THINNING_PROBABILITY_PCT |  |  | 3.07, 0.21, 0.47, 0.20 |
| TextBox | Text163 |  | SOURCE_REQUIRED |  |  | 7.08, 0.21, 0.57, 0.20 |
| Label | Label164 | x |  |  |  | 5.34, 0.21, 0.12, 0.20 |
| Label | Label165 | x |  |  |  | 5.76, 0.21, 0.12, 0.20 |
| Label | Label166 | X 1000/ ( |  |  |  | 0.71, 0.21, 0.58, 0.20 |
| Label | Label167 | x |  |  |  | 1.76, 0.21, 0.12, 0.20 |
| Label | Label168 | x |  |  |  | 2.35, 0.21, 0.12, 0.20 |
| Label | Label169 | x |  |  |  | 2.95, 0.21, 0.12, 0.20 |
| Label | Label170 | ) = |  |  |  | 6.23, 0.21, 0.22, 0.20 |
| TextBox | Text171 |  | HARVEST_ASF_ADJUSTMENT |  |  | 3.68, 0.21, 0.53, 0.20 |
| Label | Label172 | x |  |  |  | 3.56, 0.21, 0.12, 0.20 |
| TextBox | Text173 |  | SOURCE_CALC |  |  | 6.48, 0.21, 0.57, 0.20 |
| Label | Label174 | ( |  |  |  | 0.00, 0.20, 0.09, 0.20 |
| Label | Label175 | ))*( |  |  |  | 4.20, 0.22, 0.32, 0.19 |
| TextBox | Text176 |  | =IIf([HF1_FORMULA_OP]="/","10000/",Null) |  |  | 1.30, 0.04, 0.47, 0.20 |
| TextBox | Text177 |  | =IIf([HF2_FORMULA_OP]="/","10000/",Null) |  |  | 1.89, 0.04, 0.47, 0.20 |
| TextBox | Text178 |  | =IIf([HF3_FORMULA_OP]="/","10000/",Null) |  |  | 2.47, 0.04, 0.47, 0.20 |
| TextBox | Text179 |  | =IIf([HF4_FORMULA_OP]="/","10000/",Null) |  |  | 3.07, 0.04, 0.47, 0.20 |
| TextBox | Text180 | Seed Per Cell: | Seed_Per_Cell |  |  | 7.24, 0.02, 0.41, 0.18 |
| TextBox | Text182 | Est Grow Units: | EST_CONTAINERS_REQUIRED |  |  | 5.59, 0.02, 0.53, 0.18 |
| Line | Line153 |  |  |  |  | 0.00, 0.44, 7.99, 0.00 |
| TextBox | NOTE |  | NOTE |  |  | 0.08, 0.42, 7.79, 0.00 |

## Section: PageFooterSection

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label203 | Source Used > 5% over Source Calc |  |  |  | 4.49, 0.02, 2.42, 0.20 |
| Label | Label204 | Source Used < 5% Under Source Calc |  |  |  | 1.92, 0.02, 2.51, 0.20 |
| Line | Line205 |  |  |  |  | 0.04, 0.01, 7.88, 0.00 |
| TextBox | Text27 |  | =Now() |  |  | 0.00, 0.04, 1.92, 0.18 |
| TextBox | Text28 |  | ="Page " & [Page] & " of " & [Pages] |  |  | 6.92, 0.04, 1.03, 0.18 |
