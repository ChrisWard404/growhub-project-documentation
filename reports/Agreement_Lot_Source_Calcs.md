# Report: Agreement_Lot_Source_Calcs

**Opened from (VBA):** `Form_NMIS_AGREEMENT_LOTS`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | NMIS_AGREEMENT_LOTS_ID |  | =IIf([ID]=[ID_ORIGINAL],[ID],[ID] & "/" & [ID_ORIGINAL]) |  |  | 1.81, 0.46, 4.83, 0.42 |
| Label | Label32 | Nursery Management Information System |  |  |  | 2.65, 0.20, 2.81, 0.19 |
| Label | Label31 | USDA Forest Service |  |  |  | 2.44, 0.04, 3.24, 0.16 |
| Rectangle | Box75 |  |  |  |  | 0.08, 0.96, 7.83, 0.97 |
| TextBox | Request | Request | TOTAL_REQUEST |  |  | 0.22, 1.70, 0.61, 0.20 |
| TextBox | GROSS_SOURCE_PER_UNIT | Gross Source/Unit | GROSS_SOURCE_PER_UNIT |  |  | 4.61, 1.70, 0.83, 0.20 |
| TextBox | SOURCE_GERM_PCT | Germ % | SOURCE_GERM_PCT |  |  | 5.57, 1.70, 0.29, 0.20 |
| TextBox | SOURCE_PURITY_PCT | Purity % | SOURCE_PURITY_PCT |  |  | 6.04, 1.70, 0.28, 0.20 |
| TextBox | HARVEST_FACTOR_1 |  | HARVEST_FACTOR_1 |  |  | 1.41, 1.70, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_2 |  | HARVEST_FACTOR_2 |  |  | 2.00, 1.70, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_3 |  | HARVEST_FACTOR_3 |  |  | 2.59, 1.70, 0.47, 0.20 |
| TextBox | HARVEST_FACTOR_4 |  | THINNING_PROBABILITY_PCT |  |  | 3.19, 1.70, 0.47, 0.20 |
| TextBox | SOURCE_REQUIRED | Source Required | SOURCE_REQUIRED |  |  | 7.20, 1.70, 0.57, 0.20 |
| Label | Label61 | x |  |  |  | 5.45, 1.70, 0.12, 0.20 |
| Label | Label62 | x |  |  |  | 5.88, 1.70, 0.12, 0.20 |
| Label | Label63 | X 1000/ ( |  |  |  | 0.82, 1.70, 0.58, 0.20 |
| Label | Label64 | x |  |  |  | 1.88, 1.70, 0.12, 0.20 |
| Label | Label65 | x |  |  |  | 2.47, 1.70, 0.12, 0.20 |
| Label | Label66 | x |  |  |  | 3.06, 1.70, 0.12, 0.20 |
| Label | Label67 | ) = |  |  |  | 6.34, 1.70, 0.22, 0.20 |
| Label | Label68 | % |  |  |  | 1.56, 1.36, 0.16, 0.19 |
| Label | Label70 | % |  |  |  | 2.16, 1.36, 0.16, 0.19 |
| Label | Label71 | % |  |  |  | 2.74, 1.36, 0.16, 0.19 |
| Label | Label72 | % |  |  |  | 3.36, 1.36, 0.17, 0.19 |
| TextBox | HARVEST_ASF_ADJUSTMENT | Harvest ASF % | HARVEST_ASF_ADJUSTMENT |  |  | 3.80, 1.70, 0.53, 0.20 |
| Label | Label74 | x |  |  |  | 3.67, 1.70, 0.12, 0.20 |
| Label | Label76 | Calulations |  |  |  | 0.18, 0.97, 0.95, 0.23 |
| CheckBox | SOURCE_STRATIFIED | Source Stratified: | SOURCE_STRATIFIED |  |  | 3.29, 1.04, 0.00, 0.00 |
| Label | Label104 | M |  |  |  | 0.44, 1.39, 0.16, 0.19 |
| CheckBox | CHECK_STRAT | Borderline Strat: | CHECK_STRAT |  |  | 4.95, 1.04, 0.00, 0.00 |
| TextBox | Source_Calc | Source Calc | SOURCE_CALC |  |  | 6.59, 1.70, 0.57, 0.20 |
| Label | Label126 | ( |  |  |  | 0.11, 1.69, 0.09, 0.20 |
| Label | Label127 | )) * ( |  |  |  | 4.32, 1.71, 0.30, 0.19 |
| TextBox | HARVEST_1_FACTOR_CODE |  | =IIf(IsNull([HF1_CODE]),"HF1",[HF1_CODE]) |  |  | 1.41, 1.20, 0.44, 0.20 |
| TextBox | HARVEST_2_FACTOR_CODE |  | =IIf(IsNull([HF2_CODE]),"HF2",[HF2_CODE]) |  |  | 1.98, 1.20, 0.44, 0.20 |
| TextBox | HARVEST_3_FACTOR_CODE |  | =IIf(IsNull([HF3_CODE]),"HF3",[HF3_CODE]) |  |  | 2.56, 1.20, 0.44, 0.20 |
| TextBox | HARVEST_4_FACTOR_CODE |  | =IIf(IsNull([HF4_CODE]),"HF4",[HF4_CODE]) |  |  | 3.16, 1.20, 0.45, 0.20 |
| TextBox | HF1I |  | =IIf([HF1_FORMULA_OP]="/","10000/",Null) |  |  | 1.42, 1.53, 0.47, 0.20 |
| TextBox | HF2I |  | =IIf([HF2_FORMULA_OP]="/","10000/",Null) |  |  | 2.00, 1.53, 0.47, 0.20 |
| TextBox | HF3I |  | =IIf([HF3_FORMULA_OP]="/","10000/",Null) |  |  | 2.58, 1.53, 0.47, 0.20 |
| TextBox | HF4I |  | =IIf([HF4_FORMULA_OP]="/","10000/",Null) |  |  | 3.19, 1.53, 0.47, 0.20 |
