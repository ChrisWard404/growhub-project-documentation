# Report: NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change

**Backend tables referenced:** `NMIS_AGREEMENT_LOTS`  
**Opened from (VBA):** `Form_NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form`  

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label1 | Lot Change |  |  |  | 0.00, 0.38, 5.75, 1.25 |
| ComboBox | Text2 |  | =[Forms]![NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form]![Like_Lot_ID] | SELECT NMIS_AGREEMENT_LOTS.CN, [ID] & IIf(Not IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]),"-" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]) AS ID_Year FROM NMIS_AGREEMENT_LOTS; |  | 0.04, 1.84, 5.71, 1.59 |
| Label | Label6 | Lot Change |  |  |  | 5.74, 0.38, 5.81, 1.25 |
| ComboBox | Combo7 |  | =[Forms]![NMIS_PROCESS_PACK_LABELS_ST1_PROPAGULE_lot_change_form]![Like_Lot_ID] | SELECT NMIS_AGREEMENT_LOTS.CN, [ID] & IIf(Not IsNull([Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]),"-" & [Forms]![NMIS_PROCESS_LABELS_MAIN]![NMIS_PROCESS_LABELS_ST1].[Form]![Sublot]) AS ID_Year FROM NMIS_AGREEMENT_LOTS; |  | 5.78, 1.84, 5.77, 1.59 |
