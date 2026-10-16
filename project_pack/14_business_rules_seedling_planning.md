# Business rules: Seedling planning

How much seed to pull and how much space (bed feet or containers) to plan for a seedling order. Legacy: the Calculations tab of the NMIS_AGREEMENT_LOTS form. GrowHub: the Planning step of /orders (OrderPlanningComponent).

## Inputs
| Meaning | Legacy | GrowHub | Note |
|---|---|---|---|
| Seedlings requested | TOTAL_REQUEST (thousands) | order_cycle_planning.adjustedQuantityRequested (seedlings) | Legacy quantities are in thousands; GrowHub's are whole seedlings. The mapping sheet already says 'Value x1000'. |
| Seeds per pound | GROSS_SOURCE_PER_UNIT | order_cycle_planning.seedPerPound |  |
| Germination % | SOURCE_GERM_PCT | order_cycle_planning.germPercent |  |
| Purity % | SOURCE_PURITY_PCT | order_cycle_planning.purityPercent |  |
| Harvest factors 1–3 | HARVEST_FACTOR_1..3 (+ operator HFn_Formula_OP) | order_cycle_planning.factor1..3 | GrowHub has no operator. |
| Harvest factor 4 | HARVEST_FACTOR_4 | no field | No GrowHub field. |
| Harvest ASF adjustment | HARVEST_ASF_ADJUSTMENT | no field | No GrowHub field. |
| Container factors 1–3 | CONTAINER_FACTOR_1..3 (+ operator) | no field | No GrowHub field on planning. |
| Container ASF adjustment | CONTAINER_ASF_ADJUSTMENT | order_cycle_planning.containerSpecificationsNurseryfactors | Per the mapping sheet; the GrowHub calculations don't read it. |
| Thinning probability % | THINNING_PROBABILITY_PCT | order_cycle_planning.thinningProbability |  |
| Past inventory performance % |  | order_cycle_planning.pastInventoryPerformance | New in GrowHub. |
| Cells filled % / bareroot space |  | order_cycle_planning.cellsFilled | New in GrowHub. |
| Container / bareroot survival % |  | order_cycle_planning.containerSurvival | New in GrowHub. |
| Target density | DESIRED_DENSITY | order_cycle_planning.desiredDensity |  |
| Cells per container | NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER.CELLS_PER_CONTAINER | grow_unit.cellsPerContainer |  |
| Seeds per cell | seed_per_cell_to_use (unbound, default 2) | order_cycle_planning.seedPerCell |  |
| Seed required (lb) | SOURCE_REQUIRED | order_cycle_planning.estimatedLbsOfSeed / adjustedCalculatedSeedQuantity |  |
| Containers / bed feet | EST_CONTAINERS_REQUIRED | order_cycle_planning.adjustedCalculatedSpaceQuantity (+ containerSpecificationsNumberofcontainersneeded) |  |
## SP-01 Pure live seed (viable seeds per pound) — differs (high)
**Why it matters:** With no test data, GrowHub silently assumes 100% germination and purity. It then under-orders seed by whatever the real germ and purity would have been, where legacy would have stopped.

**Legacy:** seeds/lb × germ% × purity%. If it comes out 0 (no test data), the Calculate button refuses to compute seed and says "No test data entered to calculate source".

Form NMIS_AGREEMENT_LOTS › control Pure_Live_Seed
```
Pure_Live_Seed = [GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:49
```
If Pure_Live_Seed > 0 Then
REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
      (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
      (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:78
```
MsgBox "No test data entered to calculate source. Calculating containers only"
```

**GrowHub:** Same product, inlined in each calculation. But a germ% or purity% of 0 or blank is treated as 100%, so the calculation runs as if the seed were perfect.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:866
```
calculateEstimatedSeed(orderForm: any): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let totalAdjustmentFactor =
    (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
      ? growRecControls.factor1.value / 100
      : 1) *
    (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
      ? growRecControls.factor2.value / 100
      : 1) *
    (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
      ? growRecControls.factor3.value / 100
      : 1) *
    (growRecControls.thinningProbability.value !== null &&
    !isNaN(growRecControls.thinningProbability.value)
      ? growRecControls.thinningProbability.value / 100
      : 1) *
    (growRecControls.pastInventoryPerformance.value !== null &&
    !isNaN(growRecControls.pastInventoryPerformance.value)
      ? growRecControls.pastInventoryPerformance.value / 100
      : 1);

  let estimate =
    growRecControls.adjustedQuantityRequested.value /
    (totalAdjustmentFactor *
      ((this.castToFloat(growRecControls.germPercent.value) !== 0
        ? this.castToFloat(growRecControls.germPercent.value)
        : 100) /
        100) *
      ((this.castToFloat(growRecControls.purityPercent.value) !== 0
        ? this.castToFloat(growRecControls.purityPercent.value)
        : 100) /
        100) *
      growRecControls.seedPerPound.value);

  if (this.sourceLot.unitOfMeasurement == 2) {
    estimate = estimate * 453.6;
  }

  this.calculatedSeedQuantity = Number(estimate.toFixed(3));

  return Number(estimate.toFixed(3));
}
```

**Open question:** Should GrowHub block or warn when germ or purity is missing, as legacy did?
## SP-02 Harvest factor product (and the multiply/divide operator) — differs (high)
**Why it matters:** Any factor whose code uses the '/' operator moves the result the wrong way in GrowHub: 125 multiplies instead of dividing. The Access factor migration (admin/bin/access-migrations/species-product-factors-seed.ts) copies HARVEST_FACTOR_1–3 as-is and drops factor 4. In the four nurseries' NMIS_FACTORS exports, factor 4 is always 100, so dropping it from the defaults is harmless. On agreement lots it isn't: in the Oracle-era export (seed/NMIS_AGREEMENT_LOTS.json), 1,821 of 8,149 lots override factor 4, and 21 set a Harvest ASF.

**Legacy:** HFn = factor when the factor code's operator is '*', otherwise 10000 / factor (the inverse). Product = HF1 × HF2 × HF3 × HF4 × Harvest ASF, each as a fraction of 100.

Form NMIS_AGREEMENT_LOTS › control HF1
```
HF1 = IIf([HF1_Formula_OP]="*",[HARVEST_FACTOR_1],(10000/[HARVEST_FACTOR_1]))
```
Form NMIS_AGREEMENT_LOTS › control Harvest_Factor
```
Harvest_Factor = ([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*100
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:529
```
Private Sub Harvest_Factor_Tip_Click()

    MsgBox "Harvest Factors GREATER THAN 100% with an OP of / will INCREASE the amount of seed " & _
            "and with an OP of * will REDUCE the amount of seed." & _
            "   Harvest Factors LESS THAN than 100% with an OP of / will REDUCE the amount of seed " & _
            "and with an OP of * will INCREASE the amount of seed." & _
            "   A Harvest ASF adjustment GREATER THAN 100% will REDUCE the amount of seed and LESS THAN 100 " & _
            "will INCREASE the amount of seed", vbInformation, _
            "Harvest Factor Help"

End Sub
```

**GrowHub:** factor1/100 × factor2/100 × factor3/100. There's no operator, no factor 4 and no Harvest ASF. A blank factor counts as 1.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:866
```
calculateEstimatedSeed(orderForm: any): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let totalAdjustmentFactor =
    (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
      ? growRecControls.factor1.value / 100
      : 1) *
    (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
      ? growRecControls.factor2.value / 100
      : 1) *
    (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
      ? growRecControls.factor3.value / 100
      : 1) *
    (growRecControls.thinningProbability.value !== null &&
    !isNaN(growRecControls.thinningProbability.value)
      ? growRecControls.thinningProbability.value / 100
      : 1) *
    (growRecControls.pastInventoryPerformance.value !== null &&
    !isNaN(growRecControls.pastInventoryPerformance.value)
      ? growRecControls.pastInventoryPerformance.value / 100
      : 1);

  let estimate =
    growRecControls.adjustedQuantityRequested.value /
    (totalAdjustmentFactor *
      ((this.castToFloat(growRecControls.germPercent.value) !== 0
        ? this.castToFloat(growRecControls.germPercent.value)
        : 100) /
        100) *
      ((this.castToFloat(growRecControls.purityPercent.value) !== 0
        ? this.castToFloat(growRecControls.purityPercent.value)
        : 100) /
        100) *
      growRecControls.seedPerPound.value);

  if (this.sourceLot.unitOfMeasurement == 2) {
    estimate = estimate * 453.6;
  }

  this.calculatedSeedQuantity = Number(estimate.toFixed(3));

  return Number(estimate.toFixed(3));
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1298
```
getSeedFactorOptionSelection(event: any) {
  const planningControls =
    this.orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex]
      .controls;

  // The "None" option lets the user clear a previously chosen sowing factor and
  // revert the calculations to a blank state.
  const selection = this.order.growRequest.speciesProduct.seedFactors.find(
    (factor: SeedFactors) => factor?.uuid == event.value
  );

  this.factor1 = selection?.factor1 ?? null;
  this.factor2 = selection?.factor2 ?? null;
  this.factor3 = selection?.factor3 ?? null;
  planningControls.factor1.patchValue(this.factor1);
  planningControls.factor2.patchValue(this.factor2);
  planningControls.factor3.patchValue(this.factor3);
}
```

**Evidence:** seed/access/*/NMIS_FACTORS.xml: HARVEST_FACTOR_4 = 100 in all 2,376 rows. seed/NMIS_AGREEMENT_LOTS.json: HARVEST_FACTOR_4 ≠ 100 on 1,821 lots.
**Open question:** Which factor codes use the inverse operator (NMIS_FACTOR_CODES.FORMULA_INVERSE)? That table isn't in the frontend or the XML exports. Were those values converted before migration?
## SP-03 Seed required (lb) — differs (high)
**Why it matters:** GrowHub always includes thinning and past performance in the seed figure. Legacy's saved SOURCE_REQUIRED excluded thinning. Even with the same inputs, GrowHub asks for more seed whenever thinning or past performance is below 100%.

**Legacy:** (TOTAL_REQUEST × 1000) ÷ (pure live seed × harvest factor product × Harvest ASF), rounded to 3 decimals. The Calculate button leaves thinning probability out. A separate display field, Calc_Source, shows the figure with thinning included.

vba/Form_NMIS_AGREEMENT_LOTS.bas:49
```
If Pure_Live_Seed > 0 Then
REQ = (Forms!NMIS_AGREEMENT_LOTS!TOTAL_REQUEST * 1000)
PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
      (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
      (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
ASF = (Forms!NMIS_AGREEMENT_LOTS!HARVEST_ASF_ADJUSTMENT / 100)
HARVEST_FACTOR = (Forms!NMIS_AGREEMENT_LOTS!HF1 / 100) * _
                 (Forms!NMIS_AGREEMENT_LOTS!HF2 / 100) * _
                 (Forms!NMIS_AGREEMENT_LOTS!HF3 / 100) * _
                 (Forms!NMIS_AGREEMENT_LOTS!HF4 / 100)
Source_Req = Round((REQ / (PLS * HARVEST_FACTOR * ASF)), 3)
```
Form NMIS_AGREEMENT_LOTS › control Calc_Source
```
Calc_Source = IIf([Pure_Live_Seed]>0,Round(([TOTAL_REQUEST]*1000)/[Pure_Live_Seed]/(([HF]/100)*[THINNING_PROBABILITY_PCT]/100),3),"NA")
```

**GrowHub:** seedlings ÷ (factor1 × factor2 × factor3 × thinning × past inventory performance × germ × purity × seeds/lb), rounded to 3 decimals, × 453.6 when the source lot is measured in grams.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:866
```
calculateEstimatedSeed(orderForm: any): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let totalAdjustmentFactor =
    (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
      ? growRecControls.factor1.value / 100
      : 1) *
    (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
      ? growRecControls.factor2.value / 100
      : 1) *
    (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
      ? growRecControls.factor3.value / 100
      : 1) *
    (growRecControls.thinningProbability.value !== null &&
    !isNaN(growRecControls.thinningProbability.value)
      ? growRecControls.thinningProbability.value / 100
      : 1) *
    (growRecControls.pastInventoryPerformance.value !== null &&
    !isNaN(growRecControls.pastInventoryPerformance.value)
      ? growRecControls.pastInventoryPerformance.value / 100
      : 1);

  let estimate =
    growRecControls.adjustedQuantityRequested.value /
    (totalAdjustmentFactor *
      ((this.castToFloat(growRecControls.germPercent.value) !== 0
        ? this.castToFloat(growRecControls.germPercent.value)
        : 100) /
        100) *
      ((this.castToFloat(growRecControls.purityPercent.value) !== 0
        ? this.castToFloat(growRecControls.purityPercent.value)
        : 100) /
        100) *
      growRecControls.seedPerPound.value);

  if (this.sourceLot.unitOfMeasurement == 2) {
    estimate = estimate * 453.6;
  }

  this.calculatedSeedQuantity = Number(estimate.toFixed(3));

  return Number(estimate.toFixed(3));
}
```

**Open question:** Should the saved seed quantity include thinning (like legacy's Calc_Source display) or not (like legacy's Calculate button)?
## SP-04 Seed balance check when setting seed required — differs (medium)
**Why it matters:** Legacy capped the planned seed at the balance as soon as it was calculated. GrowHub lets planning compute and save more seed than the lot holds, flags it on the grow request, and stops it at withdrawal.

**Legacy:** If seed required is more than the lot's balance: zero-balance lots show "This is a Zero Balance Lot!". Otherwise seed required is capped at the balance, with "Insufficient Seed". The same check runs whenever seed required is edited.

vba/Form_NMIS_AGREEMENT_LOTS.bas:61
```
If Source_Req <= Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] Then
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
    Else
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] >= 0 Then
            If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                MsgBox "This is a Zero Balance Lot!"
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
            Else
                Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
            End If
        Else
            Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
            MsgBox "Undetermined amount of source material."
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:714
```
Private Sub SOURCE_REQUIRED_AfterUpdate()

    If Not IsNull(SOURCE_REQUIRED) Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
        If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
            MsgBox "This is a Zero Balance Lot!"
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
        Else
            'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum of Activity_Units], 3)
            MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
        End If
        End If
    End If

End Sub
```

**GrowHub:** Two checks, neither on the planning step's figure. (1) The grow-request step sets an 'insufficient balance' flag when growRequest.estimatedLbsOfSeed is more than the lot balance (a warning, not a cap). (2) The production step's form validator rejects a withdrawal larger than the lot balance.

frontend/src/app/routes/orders/order-grow-request/order-grow-request.component.ts:257
```
checkExistingBalance() {
  if (this.order?.growRequest?.estimatedLbsOfSeed) {
    this.insufficientBalance =
      Number(this.order?.growRequest?.estimatedLbsOfSeed) > Number(this.sourceLot.lotBalance)
        ? true
        : false;
  }
}
```
frontend/src/app/routes/orders/order-grow-request/order-grow-request.component.ts:870
```
confirmAvailableBalance() {
  let balance = Number(this.sourceLot.lotBalance);
  let seedEstimate = Number(
    this.orderForm.controls.growRequest.controls.estimatedLbsOfSeed.value
  );
  this.insufficientBalance = seedEstimate > balance ? true : false;
}
```
frontend/src/app/routes/orders/orders-main/orders-main.component.ts:212
```
balanceValidation: ValidatorFn = (control) => {
  const lbsOfSeedWithdrawn = control.get('lbsOfSeedWithdrawn')?.value;
  let lotBalance = this.order?.cycles[0]?.cyclePlanning?.sourceLot?.lotBalance || 0;
  return lbsOfSeedWithdrawn - this.originalWithdrawalBalance <= lotBalance ||
    lbsOfSeedWithdrawn == null
    ? null
    : { balanceInvalid: 'Withdrawal amount exceeds available lot balance' };
}
```

**Open question:** Is a warning at grow request plus a hard stop at withdrawal enough, or should planning cap or warn as legacy did?
## SP-05 Which seed balance — needs SME (medium)
**Why it matters:** Future-dated activities count toward the legacy planning balance. The activity-code crosswalk (Reference data › Activity codes) decides which codes move the GrowHub balance, and only 33% of Access codes are mapped so far.

**Legacy:** Sum of activity units for the lot over activity codes whose balance effect isn't NOEFFECT, with grams converted to pounds (× 0.002204623). The planning form's version (Seed_Balance3) has no date filter. A sibling query (Seed_Balance2) only counts activities dated today or earlier.

Saved query “Seed_Balance_MT Query”
```
MAKE TABLE NMIS_SOURCE_LOTS.CN, [Seed_Balance3 Query].[Sum Of ACTIVITY_UNITS], "LB" AS LastOfUNIT_CODE FROM NMIS_SOURCE_LOTS, Seed_Balance3 Query JOIN NMIS_SOURCE_LOTS↔Seed_Balance3 Query ON NMIS_SOURCE_LOTS.CN = [Seed_Balance3 Query].SOURCE_LOT_CN
```
Saved query “Seed_Balance3 Query”
```
SELECT NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, Round(Sum(IIf([NMIS_ID_ACTIVITIES].[unit_Code]="G",[ACTIVITY_UNITS]*0.002204623,[Activity_Units])),4) AS Sum Of ACTIVITY_UNITS, "LB" AS UNIT_CODE FROM NMIS_ACTIVITY_CODES, NMIS_ID_ACTIVITIES JOIN NMIS_ACTIVITY_CODES↔NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE JOIN NMIS_ACTIVITY_CODES↔NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE WHERE (((NMIS_ACTIVITY_CODES.BALANCE_EFFECT)<>"NOEFFECT")) GROUP BY NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, "LB"
```
Saved query “Seed_Balance2 Query”
```
SELECT NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, Round(Sum(IIf([NMIS_ID_ACTIVITIES].[unit_Code]="G",[ACTIVITY_UNITS]*0.002204623,[Activity_Units])),4) AS Sum Of ACTIVITY_UNITS, "LB" AS UNIT_CODE, NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE FROM NMIS_SOURCE_LOTS, NMIS_ACTIVITY_CODES, NMIS_ID_ACTIVITIES JOIN NMIS_ACTIVITY_CODES↔NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE JOIN NMIS_ACTIVITY_CODES↔NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE JOIN NMIS_SOURCE_LOTS↔NMIS_ID_ACTIVITIES ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN WHERE (((NMIS_ACTIVITY_CODES.BALANCE_EFFECT)<>"NOEFFECT") AND ((NMIS_ID_ACTIVITIES.ACTIVITY_DATE)<=Date())) GROUP BY NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, "LB", NMIS_SOURCE_LOTS.ID, NMIS_SOURCE_LOTS.CATEGORY_CODE
```

**GrowHub:** source_lot.lotBalance, maintained by the server from lot transactions.



**Open question:** Does GrowHub's lotBalance include future-dated activities?
## SP-06 Which test results feed planning — differs (medium)
**Why it matters:** In GrowHub, germ, purity and seeds/lb can come from different test dates. TZ germination tests (t3, which the Access test migration creates for TZ / TZ-P / T-P-C) are never used for germ. Also, getSeedsPerPound runs after the tests are sorted newest-first, so its loop keeps the oldest t7. That variable looks display-only, since the form field uses the newest t7, but it's worth checking.

**Legacy:** "Use Last Test Data" copies germ%, purity%, seeds/lb and stratified from one record: the lot's most recent test (max TEST_DATE). All four values come from that one test. Two tests on the same date give duplicate rows.

vba/Form_NMIS_AGREEMENT_LOTS.bas:914
```
Private Sub Use_Last_Test_Data_Click()
On Error GoTo Err_Use_Last_Test_Data_Click

    'If IsNull(Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT) Then
        Forms!NMIS_AGREEMENT_LOTS!Source_Stratified = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!STRATIFIED
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GERM_PCT
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!PURITY_PCT
        Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT = _
            Forms!NMIS_AGREEMENT_LOTS![NMIS_SOURCE_LastTestData Query subform].Form!GROSS_SOURCE_PER_UNIT
    'End If

    DoCmd.GoToControl "Use_Default_Factors"

Exit_Use_Last_Test_Data_Click:
    Exit Sub

Err_Use_Last_Test_Data_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Last_Test_Data_Click

End Sub
```
Saved query “NMIS_SOURCE_LastTestData_MT Query”
```
MAKE TABLE NMIS_SOURCE_LOTS.ID, [NMIS_SOURCE_LastTestDate Query].SOURCE_LOT_CN, NMIS_SOURCE_TESTS.TEST_DATE, NMIS_SOURCE_TESTS.GROSS_SOURCE_PER_UNIT, NMIS_SOURCE_TESTS.STRATIFIED, NMIS_SOURCE_TESTS.GERM_PCT, NMIS_SOURCE_TESTS.PURITY_PCT, NMIS_SOURCE_TESTS.CHECK_STRAT, NMIS_SOURCE_TESTS.FILLED_PCT, NMIS_SOURCE_TESTS.TYPE_OF_TEST FROM NMIS_SOURCE_LastTestDate Query, NMIS_SOURCE_LOTS, NMIS_SOURCE_TESTS JOIN NMIS_SOURCE_LastTestDate Query↔NMIS_SOURCE_TESTS ON [NMIS_SOURCE_LastTestDate Query].MaxOfTEST_DATE = NMIS_SOURCE_TESTS.TEST_DATE JOIN NMIS_SOURCE_LastTestDate Query↔NMIS_SOURCE_TESTS ON [NMIS_SOURCE_LastTestDate Query].SOURCE_LOT_CN = NMIS_SOURCE_TESTS.SOURCE_LOT_CN JOIN NMIS_SOURCE_LOTS↔NMIS_SOURCE_TESTS ON NMIS_SOURCE_LOTS.CN = NMIS_SOURCE_TESTS.SOURCE_LOT_CN ORDER BY NMIS_SOURCE_LOTS.ID
```
Saved query “NMIS_SOURCE_LastTestDate Query”
```
SELECT NMIS_SOURCE_TESTS.SOURCE_LOT_CN, Max(NMIS_SOURCE_TESTS.TEST_DATE) AS MaxOfTEST_DATE, Max(NMIS_SOURCE_TESTS.Index) AS MaxOfIndex FROM NMIS_SOURCE_TESTS, NMIS_SOURCE_LastTestDate1 Query JOIN NMIS_SOURCE_LastTestDate1 Query↔NMIS_SOURCE_TESTS ON [NMIS_SOURCE_LastTestDate1 Query].SOURCE_LOT_CN = NMIS_SOURCE_TESTS.SOURCE_LOT_CN JOIN NMIS_SOURCE_TESTS↔NMIS_SOURCE_LastTestDate1 Query ON NMIS_SOURCE_TESTS.TEST_DATE = [NMIS_SOURCE_LastTestDate1 Query].MaxOfTEST_DATE GROUP BY NMIS_SOURCE_TESTS.SOURCE_LOT_CN ORDER BY NMIS_SOURCE_TESTS.SOURCE_LOT_CN
```

**GrowHub:** Takes the most recent test of each type separately: germ from t2, purity from t4, seeds/lb from t7. Fills them in when the field is empty or the source lot changes.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1317
```
convertTestsEnumValue(sourceLotChange: boolean) {
  this.tests = [];
  if (sourceLotChange) {
    this.orderForm.controls.growRequest.controls.planning.controls[
      this.planningCycleIndex
    ].controls.germPercent.patchValue(null);
    this.orderForm.controls.growRequest.controls.planning.controls[
      this.planningCycleIndex
    ].controls.purityPercent.patchValue(null);
    this.orderForm.controls.growRequest.controls.planning.controls[
      this.planningCycleIndex
    ].controls.seedPerPound.patchValue(null);
    this.germTest = '';
    this.purityTest = '';
    this.seedPerPoundTest = 0;
    this.mostRecentStratData = [];
  }

  let testTypes: any[] = this.sourceLotTests;
  let typeVar: any;
  let firstOfTestType: any[] = [];

  const sortedDesc = testTypes.sort(
    (objA, objB) => Number(new Date(objB.testDate)) - Number(new Date(objA.testDate))
  );

  //sorts tests by date descending and only displays the most recent of each type
  sortedDesc.forEach((test: any) => {
    if (firstOfTestType.includes(getEnumKeyByEnumValue(TestTypeEnum, test.testType ?? ''))) {
      return;
    } else {
      switch (test.testType) {
        case 't2':
          this.germTest = test.testResults;
          this.mostRecentGermNotes = test.notes;
          this.mostRecentGermDate = test.testDate;
          this.mostRecentStratData = test.stratificationData ?? [];
          if (!this.cyclePlanningObject.germPercent || sourceLotChange) {
            this.orderForm.controls.growRequest.controls.planning.controls[
              this.planningCycleIndex
            ].controls.germPercent.patchValue(test.testResults);
          }
          break;
        case 't4':
          this.purityTest = test.testResults;
          if (!this.cyclePlanningObject.purityPercent || sourceLotChange) {
            this.orderForm.controls.growRequest.controls.planning.controls[
              this.planningCycleIndex
            ].controls.purityPercent.patchValue(test.testResults);
          }
          break;
        case 't7':
          this.seedPerPoundTest = Number(test.testResults);
          if (!this.cyclePlanningObject.seedPerPound || sourceLotChange) {
            this.orderForm.controls.growRequest.controls.planning.controls[
              this.planningCycleIndex
            ].controls.seedPerPound.patchValue(Number(test.testResults));
          }
          break;
      }

      typeVar = test.testType;
      test.testType = getEnumKeyByEnumValue(TestTypeEnum, typeVar ?? '');
      this.tests.push(test);
      firstOfTestType.push(test.testType);
    }
  });
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1386
```
getSeedsPerPound() {
  for (let i = 0; i < this.sourceLotTests.length; i++) {
    if (this.sourceLotTests[i].testType == 't7') {
      this.seedsPerPound = this.sourceLotTests[i].testResults;
    }
  }
}
```

**Open question:** Should TZ (t3) results count as germination in planning?
## SP-07 Choosing the default factors — differs (medium)
**Why it matters:** GrowHub doesn't pre-select the client- or germ-matched row, and choosing a factor doesn't set desired density or reset thinning.

**Legacy:** Automatic. Takes the NMIS_FACTORS row for the species product where the client ID starts with LIKE_ASSOCIATE. Otherwise it takes a generic row (LIKE_ASSOCIATE blank) whose germ range covers the lot's germ%. Client rows sort first. The elevation range is selected but not used. "Use Default Factors" copies harvest factors 1–4, container factors 1–3 and desired density, and resets thinning and container probability to 100%.

Form NMIS_FACTORS_FOR_AGREEMENT_LOTS subform › record source
```
SELECT NMIS_FACTORS.SPECIES_PRODUCT_CN, NMIS_FACTORS.LIKE_ASSOCIATE, NMIS_FACTORS.GERM_MIN, NMIS_FACTORS.GERM_MAX, NMIS_FACTORS.HARVEST_FACTOR_1, NMIS_FACTORS.HARVEST_FACTOR_2, NMIS_FACTORS.HARVEST_FACTOR_3, NMIS_FACTORS.HARVEST_FACTOR_4, NMIS_FACTORS.HARVEST_FACTOR, NMIS_FACTORS.CONTAINER_FACTOR_1, NMIS_FACTORS.CONTAINER_FACTOR_2, NMIS_FACTORS.CONTAINER_FACTOR_3, NMIS_FACTORS.CONTAINER_FACTOR, NMIS_FACTORS.DESIRED_DENSITY, NMIS_FACTORS.MAXIMUM_DENSITY, NMIS_FACTORS.SOURCE_PER_AGREEMENT_UNIT, NMIS_FACTORS.GROSS_PER_CONTAINER, [Forms]![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].[Form]![CLIENT_ASSOCIATE] AS Associate, NMIS_FACTORS.ELEVATION_MIN, NMIS_FACTORS.ELEVATION_MAX FROM NMIS_FACTORS WHERE (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN]) AND (([Forms]![NMIS_AGREEMENT_LOTS]![NMIS_AGREEMENTS subform1].[Form]![CLIENT_ASSOCIATE]) Like IIf([like_associate] Is Not Null,[like_associate] & "*",[like_associate]))) OR (((NMIS_FACTORS.SPECIES_PRODUCT_CN)=[Forms]![NMIS_AGREEMENT_LOTS]![SPECIES_PRODUCT_CN]) AND ((NMIS_FACTORS.LIKE_ASSOCIATE) Is Null) AND ((NMIS_FACTORS.GERM_MIN)<=Nz([Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_GERM_PCT],0)) AND ((NMIS_FACTORS.GERM_MAX)>=Nz([Forms]![NMIS_AGREEMENT_LOTS]![SOURCE_GERM_PCT],100))) ORDER BY NMIS_FACTORS.LIKE_ASSOCIATE DESC;
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:940
```
Private Sub Use_Default_Factors_Click()
On Error GoTo Err_Use_Default_Factors_Click

    [NMIS_FACTORS subform].Requery

    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_1 = [NMIS_FACTORS subform]![HARVEST_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_2 = [NMIS_FACTORS subform]![HARVEST_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_3 = [NMIS_FACTORS subform]![HARVEST_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!HARVEST_FACTOR_4 = [NMIS_FACTORS subform]![HARVEST_FACTOR_4]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_1 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_1]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_2 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_2]
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_FACTOR_3 = [NMIS_FACTORS subform]![CONTAINER_FACTOR_3]
    Forms!NMIS_AGREEMENT_LOTS!DESIRED_DENSITY = [NMIS_FACTORS subform]![DESIRED_DENSITY]
    Forms!NMIS_AGREEMENT_LOTS!THINNING_PROBABILITY_PCT = 100
    Forms!NMIS_AGREEMENT_LOTS!CONTAINER_PROBABILITY_PCT = 100

    DoCmd.GoToControl "Calculate"

Exit_Use_Default_Factors_Click:
    Exit Sub

Err_Use_Default_Factors_Click:
    MsgBox Err.DESCRIPTION
    Resume Exit_Use_Default_Factors_Click

End Sub
```

**GrowHub:** Manual. The planner picks from a dropdown of every seed factor for the species product, labelled with client, elevation and germ range. Choosing one copies factor1–3 only.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1298
```
getSeedFactorOptionSelection(event: any) {
  const planningControls =
    this.orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex]
      .controls;

  // The "None" option lets the user clear a previously chosen sowing factor and
  // revert the calculations to a blank state.
  const selection = this.order.growRequest.speciesProduct.seedFactors.find(
    (factor: SeedFactors) => factor?.uuid == event.value
  );

  this.factor1 = selection?.factor1 ?? null;
  this.factor2 = selection?.factor2 ?? null;
  this.factor3 = selection?.factor3 ?? null;
  planningControls.factor1.patchValue(this.factor1);
  planningControls.factor2.patchValue(this.factor2);
  planningControls.factor3.patchValue(this.factor3);
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:385
```
displaySeedFactors(seedFactor: any) {
  this.factor1 = seedFactor.factor1;
  this.factor2 = seedFactor.factor2;
  this.factor3 = seedFactor.factor3;
}
```

**Open question:** Keep factor selection manual, or pre-select using legacy's client-prefix / germ-range rule?
## SP-08 Bareroot space (bed feet / seedbed containers) — differs (high)
**Why it matters:** Different starting point (request vs seed sown) and different factors. Legacy recalculated space from the seed actually sown whenever seed required was edited. GrowHub's space doesn't move when the planner adjusts seed.

**Legacy:** For seedbed (SB) stock: containers = (seed required × pure live seed) × container factor product ÷ (target density × cells per container) × container ASF. It starts from the seed actually being sown.

vba/Form_NMIS_AGREEMENT_LOTS.bas:93
```
If [Type_of_Container] = "SB" Then
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
    ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
      CONTAINER_ASF)
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:770
```
Private Sub SOURCE_REQUIRED_Exit(Cancel As Integer)
'Relock Source_Required

    If [SOURCE_REQUIRED].Locked = False Then
        [SOURCE_REQUIRED].Locked = True
    End If

'Recalculate the container needs for bareroot if the source amount is changed

   If [Type_of_Container] = "SB" Then

    Dim ASF As Double
    Dim Source_Req2 As Double
    Dim PLS As Double
    Dim CF1 As Double
    Dim CF2 As Double
    Dim CF3 As Double
    Dim TARGET_DENSITY As Double
    Dim Cells_Per_Container As Double
    Dim CONTAINER_ASF As Double
    Dim CONTAINER_FACTOR As Double


'Calculate Grow Containers
    If IsNull(SOURCE_REQUIRED) Then
       MsgBox "No Source Required Entered"
    Else
    If [DESIRED_DENSITY] > 0 Then
        Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
        If Not IsNull(Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT) Then
            PLS = (Forms!NMIS_AGREEMENT_LOTS!GROSS_SOURCE_PER_UNIT * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_GERM_PCT / 100) * _
                (Forms!NMIS_AGREEMENT_LOTS!SOURCE_PURITY_PCT / 100))
        End If
        CF1 = [CF1A] / 100
        CF2 = [CF2A] / 100
        CF3 = [CF3A] / 100
        TARGET_DENSITY = [DESIRED_DENSITY]
        Cells_Per_Container = _
            [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1]![Cells_Per_Container]
        CONTAINER_ASF = (Forms!NMIS_AGREEMENT_LOTS!CONTAINER_ASF_ADJUSTMENT / 100)
        CONTAINER_FACTOR = CF1 * CF2 * CF3

        Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
                ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
                  CONTAINER_ASF)
    Else
        MsgBox "No target density has been entered. Est Containers will not be calculated."
    End If
    End If
   End If

End Sub
```

**GrowHub:** round(((seedlings ÷ (factor1 × factor2 × factor3 × past performance)) × bareroot space) ÷ (target density × cells per container × survival)). It starts from the request and uses harvest factors, not container factors.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:911
```
calculateEstimatedSpace(orderForm: any, estimatedLbsOfSeed: number): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;
  let barerootSpace = growRecControls.cellsFilled.value;
  let desiredDensity = growRecControls.desiredDensity.value;
  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let barerootSurvival = growRecControls.containerSurvival.value;
  let quantity = growRecControls.adjustedQuantityRequested.value;
  let totalAdjustmentFactor =
    (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
      ? growRecControls.factor1.value / 100
      : 1) *
    (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
      ? growRecControls.factor2.value / 100
      : 1) *
    (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
      ? growRecControls.factor3.value / 100
      : 1) *
    (growRecControls.pastInventoryPerformance.value !== null &&
    !isNaN(growRecControls.pastInventoryPerformance.value)
      ? growRecControls.pastInventoryPerformance.value / 100
      : 1);
  let testResults =
    ((this.castToFloat(growRecControls.germPercent.value) !== 0
      ? this.castToFloat(growRecControls.germPercent.value)
      : 100) /
      100) *
    ((this.castToFloat(growRecControls.purityPercent.value) !== 0
      ? this.castToFloat(growRecControls.purityPercent.value)
      : 100) /
      100) *
    growRecControls.seedPerPound.value;

  let estimatedSpace = Math.round(
    ((quantity / totalAdjustmentFactor) * barerootSpace) /
      (desiredDensity * cellsPerContainer * barerootSurvival)
  );
  return estimatedSpace;
  //(Seed Quantity in row * Germination * Purity * Seeds Per Pound) * Bareroot Space / (Desired Density * Cells Per Container) * Bareroot Survival
}
```

**Open question:** Should bareroot space follow the seed being sown (legacy) or the seedlings requested (GrowHub)?
## SP-09 Container count (container stock) — differs (medium)
**Why it matters:** The +0.35 rounding nudge carried over. Container factors and container ASF were replaced by cells-filled and survival percentages. The container factors are overridden on about 2,700 lots in the Oracle-era export, so migrated lots won't reproduce legacy container counts.

**Legacy:** Calculate button: (gross seedlings × 1000) ÷ (target density × cells per container) × container factor product + 0.35. Gross seedlings = TOTAL_REQUEST ÷ (harvest factors × Harvest ASF).

vba/Form_NMIS_AGREEMENT_LOTS.bas:97
```
Else 'For Containers
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
    ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
      CONTAINER_FACTOR) + 0.35
```
Form NMIS_AGREEMENT_LOTS › control Calculated_Gross
```
Calculated_Gross = Round(([TOTAL_REQUEST]/(([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))),3)
```

**GrowHub:** round(((seedlings ÷ (factor1 × factor2 × factor3 × past performance)) × cells filled) ÷ (target density × cells per container × survival) + 0.35).

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1128
```
calculateCTREstimatedSpace(orderForm: any, estimatedLbsOfSeed: number): number {
  let totalAdjustmentFactor;
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;
  let seedlingQuantity = growRecControls.adjustedQuantityRequested.value;
  let cellsFilled = growRecControls.cellsFilled.value;
  let desiredDensity = growRecControls.desiredDensity.value;
  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let containerSurvival = growRecControls.containerSurvival.value;
  if (this.isBareroot) {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.thinningProbability.value !== null &&
      !isNaN(growRecControls.thinningProbability.value)
        ? growRecControls.thinningProbability.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1);
  } else {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1);
  }

  totalAdjustmentFactor = Number(totalAdjustmentFactor.toFixed(3));

  let estimatedSpace =
    ((seedlingQuantity / totalAdjustmentFactor) * cellsFilled) /
      (desiredDensity * cellsPerContainer * containerSurvival) +
    0.35;

  estimatedSpace = Math.round(estimatedSpace);
  return estimatedSpace;
}
```

## SP-10 Legacy uses three different container formulas — legacy bug (high)
**Why it matters:** Migrated EST_CONTAINERS_REQUIRED values can't all be reproduced by one formula. Don't treat a mismatch on a migrated lot as a GrowHub bug before checking which legacy path produced it.

**Legacy:** The same EST_CONTAINERS_REQUIRED is recalculated by different handlers with different formulas:
• Calculate button: × container factor, + 0.35, no container ASF
• leaving Container ASF or Container Factor 1–3: × container factor × container ASF, no + 0.35
• leaving Desired Density: × container ASF + 0.35, no container factor
So the stored value depends on which field the user left last.

vba/Form_NMIS_AGREEMENT_LOTS.bas:97
```
Else 'For Containers
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
    ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
      CONTAINER_FACTOR) + 0.35
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:132
```
If [Type_of_Container] = "SB" Then
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
    ((Source_Req2 * PLS) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
      CONTAINER_ASF)
Else 'For Containers
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
    ((Calculated_Gross * 1000) * CONTAINER_FACTOR / (TARGET_DENSITY * Cells_Per_Container) * _
      CONTAINER_ASF)
End If
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:305
```
Else 'For Containers
    Forms!NMIS_AGREEMENT_LOTS!EST_CONTAINERS_REQUIRED = _
    ((Calculated_Gross * 1000) * 1 / (TARGET_DENSITY * Cells_Per_Container) * _
      CONTAINER_ASF) + 0.35
```

**GrowHub:** One formula (SP-09).

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1128
```
calculateCTREstimatedSpace(orderForm: any, estimatedLbsOfSeed: number): number {
  let totalAdjustmentFactor;
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;
  let seedlingQuantity = growRecControls.adjustedQuantityRequested.value;
  let cellsFilled = growRecControls.cellsFilled.value;
  let desiredDensity = growRecControls.desiredDensity.value;
  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let containerSurvival = growRecControls.containerSurvival.value;
  if (this.isBareroot) {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.thinningProbability.value !== null &&
      !isNaN(growRecControls.thinningProbability.value)
        ? growRecControls.thinningProbability.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1);
  } else {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1);
  }

  totalAdjustmentFactor = Number(totalAdjustmentFactor.toFixed(3));

  let estimatedSpace =
    ((seedlingQuantity / totalAdjustmentFactor) * cellsFilled) /
      (desiredDensity * cellsPerContainer * containerSurvival) +
    0.35;

  estimatedSpace = Math.round(estimatedSpace);
  return estimatedSpace;
}
```

**Open question:** Which legacy variant is the intended one?
## SP-11 Seeds-per-cell (SPC) adjustment — matches (low)
**Why it matters:** The formulas match. Legacy lots where planners clicked "Use" carry back-solved values in HARVEST_FACTOR_4 and CONTAINER_FACTOR_3, which explains the odd values in the export (CONTAINER_FACTOR_3 = 1, 2, 5 …). Those fields have no home in GrowHub.

**Legacy:** Seed for SPC = cells per container × seeds per cell × containers ÷ seeds/lb (gross seeds/lb, not pure live seed). Containers for SPC = seed required × seeds/lb ÷ (cells × seeds per cell). The "Use" buttons then back-solve a percentage into harvest factor 4 / container factor 3 or thinning / container probability so the main formulas reproduce the SPC figure.

Form NMIS_AGREEMENT_LOTS › control Source_Required_by_spc
```
Source_Required_by_spc = IIf([Pure_Live_Seed]>0,Round(([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]*[seed_per_cell_to_use])*[EST_CONTAINERS_REQUIRED]/[GROSS_SOURCE_PER_UNIT],3),"NA")
```
Form NMIS_AGREEMENT_LOTS › control Containers_Required_by_spc
```
Containers_Required_by_spc = IIf(Not IsNull([SOURCE_REQUIRED]),Round(([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT])/([NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]*[seed_per_cell_to_use]),0),Round([TOTAL_REQUEST]*1000/[seed_per_cell_to_use]/[CELLS_PER_CONTAINER],0))
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:845
```
Private Sub SPC_Use_Source_Click()

    If Pure_Live_Seed > 0 Then
        If Not IsNull(Source_Required_by_spc) Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                CONTAINER_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                THINNING_PROBABILITY_PCT = Round(SOURCE_REQUIRED / Source_Required_by_spc * 100, 0)
                SOURCE_REQUIRED = Round(Source_Required_by_spc, 3)
            End If

            If Not IsNull(SOURCE_REQUIRED) Then
                If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
                    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
                        MsgBox "This is a Zero Balance Lot!"
                        'Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
                    Else
                        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Round(Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS], 3)
                        MsgBox "Insufficient Seed. Check Calculated for Request Adjustment"
                    End If
                End If
            End If
        End If
    End If

End Sub
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:831
```
Private Sub SPC_Use_Containers_Click()

    'If Pure_Live_Seed > 0 Then
        If Not IsNull(Containers_Required_by_spc) And THINNING_PROBABILITY_PCT = 100 Then
            If CONTAINER_PROBABILITY_PCT = 100 And THINNING_PROBABILITY_PCT = 100 Then
                THINNING_PROBABILITY_PCT = Round(Calc_Source / Source_Required_by_spc * 100, 0)
                'CONTAINER_PROBABILITY_PCT = Round(EST_CONTAINERS_REQUIRED / Containers_Required_by_spc * 100, 0)
                EST_CONTAINERS_REQUIRED = Containers_Required_by_spc
            End If
        End If
    'End If

End Sub
```

**GrowHub:** Same two formulas, shown as a separate "Calc. (SPC)" row. Nothing is back-solved into the factors.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:822
```
calcSPCSeedQuantity(orderForm: any, containers: number): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let seedsPerCell = growRecControls.seedPerCell.value;
  let seedsPerLb = growRecControls.seedPerPound.value;

  let estimatedSeed = (cellsPerContainer * seedsPerCell * containers) / seedsPerLb;
  estimatedSeed = Number(estimatedSeed.toFixed(3));
  return estimatedSeed;
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:835
```
calcSPCContainerQuantity(orderForm: any, estimatedSeed: number): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let seedsPerPound = growRecControls.seedPerPound.value;
  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let seedsPerCell = growRecControls.seedPerCell.value;

  let containerQuantity = Math.round(
    (estimatedSeed * seedsPerPound) / (cellsPerContainer * seedsPerCell)
  );
  return containerQuantity;
}
```

## SP-12 Seedling yield ("will grow") — differs (medium)
**Why it matters:** Same structure, including the bareroot/container thinning split. The differences are the ones in SP-02 (factor 4, ASF, operator), past performance being new, and units (legacy is in thousands).

**Legacy:** seed required × pure live seed × harvest factors × Harvest ASF (× thinning for container stock) ÷ 1000, rounded to 3 decimals. Bareroot leaves thinning out.

Form NMIS_AGREEMENT_LOTS › control Source_Will_Grow
```
Source_Will_Grow = IIf([Type_of_Container]="SB",IIf([SOURCE_REQUIRED]>0,IIf([Pure_Live_SEED]>0,Round(([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100)*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100))/1000,3),0),"NA"),IIf([SOURCE_REQUIRED]>0,IIf([Pure_Live_SEED]>0,Round((([SOURCE_REQUIRED]*[GROSS_SOURCE_PER_UNIT]*([SOURCE_GERM_PCT]/100)*([SOURCE_PURITY_PCT]/100))*([HF1]/100)*([HF2]/100)*([HF3]/100)*([HF4]/100)*([HARVEST_ASF_ADJUSTMENT]/100)*([THINNING_PROBABILITY_PCT]/100))/1000,3),0),"NA"))
```

**GrowHub:** seed × factor1 × factor2 × factor3 × germ × purity (× thinning for container stock) × past performance × seeds/lb, rounded. Bareroot leaves thinning out.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:972
```
calculateSeedlingYield(orderForm: any, seedQuantity: number): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;
  let totalAdjustmentFactor;
  if (this.isBareroot) {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.germPercent.value !== null && !isNaN(growRecControls.germPercent.value)
        ? growRecControls.germPercent.value / 100
        : 1) *
      (growRecControls.purityPercent.value !== null && !isNaN(growRecControls.purityPercent.value)
        ? growRecControls.purityPercent.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1) *
      growRecControls.seedPerPound.value;
  } else {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.germPercent.value !== null && !isNaN(growRecControls.germPercent.value)
        ? growRecControls.germPercent.value / 100
        : 1) *
      (growRecControls.purityPercent.value !== null && !isNaN(growRecControls.purityPercent.value)
        ? growRecControls.purityPercent.value / 100
        : 1) *
      (growRecControls.thinningProbability.value !== null &&
      !isNaN(growRecControls.thinningProbability.value)
        ? growRecControls.thinningProbability.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1) *
      growRecControls.seedPerPound.value;
  }

  totalAdjustmentFactor = Number(totalAdjustmentFactor.toFixed(3));

  //Seed Quantity * Seeds Per Pound * Germination * Purity * Survival * Harvest * Shippable * Past Performance
  let seedYield = Math.round(seedQuantity * totalAdjustmentFactor);

  return seedYield;
}
```

## SP-13 Shortage — matches (low)
**Why it matters:** Equivalent apart from units.

**Legacy:** max(0, TOTAL_REQUEST − will grow), rounded to 3 decimals. Shows NA when there's no seed required.

Form NMIS_AGREEMENT_LOTS › control Shortage
```
Shortage = IIf([SOURCE_REQUIRED]>0,IIf(Round([TOTAL_REQUEST]-[Source_Will_Grow],3)>0,Round([TOTAL_REQUEST]-[Source_Will_Grow],3),0),"NA")
```

**GrowHub:** round(seedlings − yield). Shown as 0 when under 1.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1033
```
calculateShortage(orderForm: any, seedYield: number): number {
  //Seed Quantity in row - Seedling Yield in row
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let seedlingQuantity = growRecControls.adjustedQuantityRequested.value;
  let shortage = Math.round(seedlingQuantity - seedYield);
  return shortage;
}
```

## SP-14 Propagule (NSP) orders — missing (medium)
**Why it matters:** Propagule orders would fall through to the seed-based formulas.

**Legacy:** For category NSP: containers = TOTAL_REQUEST × the user nursery's propagule bed-feet-per-acre default (Default4N). Seed isn't calculated.

vba/Form_NMIS_AGREEMENT_LOTS.bas:40
```
If CATEGORY_CODE = "NSP" Then
'Calculate Grow Containers
    EST_CONTAINERS_REQUIRED = TOTAL_REQUEST * Propagule_BF_per_Acre
'Calculate Source Needs
    MsgBox "NMIS does not currently calculate source needs. To be implemented at a later time."
```
Form NMIS_AGREEMENT_LOTS › control Propagule_BF_per_Acre
```
Propagule_BF_per_Acre = [Forms]![Switchboard]![NMIS_ACCESS_SET_USER_NURSERY subform].[Form]![Default4N]
```

**GrowHub:** No propagule branch found in the planning calculations.



**Open question:** Are propagule (native plant) orders in scope for GrowHub planning?
## SP-15 Bareroot vs container branching — needs SME (low)
**Why it matters:** Probably equivalent, but SPB / TB container types are worth checking against grow_unit.stockType.

**Legacy:** Branches on the species product's begin container type: SB (seedbed) is bareroot. Containers_Will_Grow also treats SPB and TB as bareroot for B/N category lots.

Form NMIS_AGREEMENT_LOTS › control Type_of_Container
```
Type_of_Container = [NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].Form!BEGIN_CONTAINER
```
Form NMIS_AGREEMENT_LOTS › control Containers_Will_Grow
```
Containers_Will_Grow = Round(IIf((Left$([CATEGORY_CODE],1)="B" Or Left$([CATEGORY_CODE],1)="N") And ([Type_of_Container] In ("sb","SPB","TB")),[Calculated_Gross],[EST_CONTAINERS_REQUIRED]*[NMIS_SPECIES_PRODUCTS_BEGIN_CONTAINER subform1].[Form]![CELLS_PER_CONTAINER]/1000),3)
```

**GrowHub:** Branches on the grow cycle's stock type (isBareroot).



## SP-16 Legacy bugs not to carry over — legacy bug (low)
**Why it matters:** Migrated lots touched by these paths may have blank seed required or zero container estimates.

**Legacy:** • Source_Required_by_spc_DblClick sets SOURCE_REQUIRED = Source_Req on a zero-balance lot, but Source_Req is never set in that procedure. With no Option Explicit, the field gets blanked.
• Calculate_Click only sets pure live seed when test data exists, so for seedbed stock with no test data the container estimate is computed with PLS = 0.
• Calculate_Click assigns Source_Req2 but declares Source_Reg2 (typo). It works only because Option Explicit is off.

vba/Form_NMIS_AGREEMENT_LOTS.bas:741
```
If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < SOURCE_REQUIRED Then
    If Forms!NMIS_AGREEMENT_LOTS![Seed_Balance Query subform]![Sum Of ACTIVITY_UNITS] < 0.0001 Then
        MsgBox "This is a Zero Balance Lot!"
        Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED = Source_Req
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:28
```
Dim Source_Reg2 As Double
```
vba/Form_NMIS_AGREEMENT_LOTS.bas:83
```
Source_Req2 = Forms!NMIS_AGREEMENT_LOTS!SOURCE_REQUIRED
```

**GrowHub:** Not applicable.



## SP-17 Rounding and unit constants — differs (low)
**Why it matters:** Small differences (under 0.1%) in parallel-run comparisons.

**Legacy:** Pounds from grams × 0.002204623 (and 453.59 g/lb in the balance query). Results rounded at the end.

Saved query “Seed_Balance Query”
```
SELECT NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, Round(Sum(IIf([NMIS_ID_ACTIVITIES].[unit_Code]="G",[ACTIVITY_UNITS]*0.002204623,[Activity_Units])),4) AS Sum Of ACTIVITY_UNITS, "LB" AS UNIT_CODE, NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE, Round(Sum(IIf([NMIS_ID_ACTIVITIES].[unit_Code]="G",[ACTIVITY_UNITS]*0.002204623,[Activity_Units]))*453.59,4) AS Sum Of ACTIVITY_UNITS_G FROM NMIS_SOURCE_LOTS, NMIS_ACTIVITY_CODES, NMIS_ID_ACTIVITIES JOIN NMIS_ACTIVITY_CODES↔NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE JOIN NMIS_ACTIVITY_CODES↔NMIS_ID_ACTIVITIES ON NMIS_ACTIVITY_CODES.ACTIVITY_CODE = NMIS_ID_ACTIVITIES.ACTIVITY_CODE JOIN NMIS_SOURCE_LOTS↔NMIS_ID_ACTIVITIES ON NMIS_SOURCE_LOTS.CN = NMIS_ID_ACTIVITIES.SOURCE_LOT_CN WHERE (((NMIS_ACTIVITY_CODES.BALANCE_EFFECT)<>"NOEFFECT") AND ((NMIS_ID_ACTIVITIES.SOURCE_LOT_CN) Is Not Null) AND ((NMIS_ID_ACTIVITIES.ACTIVITY_DATE)<=Date())) GROUP BY NMIS_ID_ACTIVITIES.SOURCE_LOT_CN, "LB", NMIS_SOURCE_LOTS.STORED_AT_ASSOCIATE
```

**GrowHub:** × 453.6 for grams. The container adjustment factor is rounded to 3 decimals before it's used, which drifts slightly when several factors are multiplied.

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:866
```
calculateEstimatedSeed(orderForm: any): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let totalAdjustmentFactor =
    (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
      ? growRecControls.factor1.value / 100
      : 1) *
    (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
      ? growRecControls.factor2.value / 100
      : 1) *
    (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
      ? growRecControls.factor3.value / 100
      : 1) *
    (growRecControls.thinningProbability.value !== null &&
    !isNaN(growRecControls.thinningProbability.value)
      ? growRecControls.thinningProbability.value / 100
      : 1) *
    (growRecControls.pastInventoryPerformance.value !== null &&
    !isNaN(growRecControls.pastInventoryPerformance.value)
      ? growRecControls.pastInventoryPerformance.value / 100
      : 1);

  let estimate =
    growRecControls.adjustedQuantityRequested.value /
    (totalAdjustmentFactor *
      ((this.castToFloat(growRecControls.germPercent.value) !== 0
        ? this.castToFloat(growRecControls.germPercent.value)
        : 100) /
        100) *
      ((this.castToFloat(growRecControls.purityPercent.value) !== 0
        ? this.castToFloat(growRecControls.purityPercent.value)
        : 100) /
        100) *
      growRecControls.seedPerPound.value);

  if (this.sourceLot.unitOfMeasurement == 2) {
    estimate = estimate * 453.6;
  }

  this.calculatedSeedQuantity = Number(estimate.toFixed(3));

  return Number(estimate.toFixed(3));
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:1128
```
calculateCTREstimatedSpace(orderForm: any, estimatedLbsOfSeed: number): number {
  let totalAdjustmentFactor;
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;
  let seedlingQuantity = growRecControls.adjustedQuantityRequested.value;
  let cellsFilled = growRecControls.cellsFilled.value;
  let desiredDensity = growRecControls.desiredDensity.value;
  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let containerSurvival = growRecControls.containerSurvival.value;
  if (this.isBareroot) {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.thinningProbability.value !== null &&
      !isNaN(growRecControls.thinningProbability.value)
        ? growRecControls.thinningProbability.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1);
  } else {
    totalAdjustmentFactor =
      (growRecControls.factor1.value !== null && !isNaN(growRecControls.factor1.value)
        ? growRecControls.factor1.value / 100
        : 1) *
      (growRecControls.factor2.value !== null && !isNaN(growRecControls.factor2.value)
        ? growRecControls.factor2.value / 100
        : 1) *
      (growRecControls.factor3.value !== null && !isNaN(growRecControls.factor3.value)
        ? growRecControls.factor3.value / 100
        : 1) *
      (growRecControls.pastInventoryPerformance.value !== null &&
      !isNaN(growRecControls.pastInventoryPerformance.value)
        ? growRecControls.pastInventoryPerformance.value / 100
        : 1);
  }

  totalAdjustmentFactor = Number(totalAdjustmentFactor.toFixed(3));

  let estimatedSpace =
    ((seedlingQuantity / totalAdjustmentFactor) * cellsFilled) /
      (desiredDensity * cellsPerContainer * containerSurvival) +
    0.35;

  estimatedSpace = Math.round(estimatedSpace);
  return estimatedSpace;
}
```

## SP-18 Seed-to-seed and later grow cycles — GrowHub only (info)
**Why it matters:** New behaviour. Nothing in legacy to compare it with.

**Legacy:** No equivalent on this form. Multi-cycle stock was planned as separate agreement lots.



**GrowHub:** Seed-to-seed pounds = bed feet × density ÷ (seeds/lb × purity × fill × germ). Later cycles: space = seedlings ÷ (cells filled × cells per container), or ÷ (bareroot space × density).

frontend/src/app/routes/orders/order-planning/order-planning.component.ts:849
```
calculateSeedToSeedPoundsNeeded(orderForm: any): number {
  const ctrl =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;
  const bedFeet = Number.parseFloat(ctrl.adjustedQuantityRequested.value) || 0;
  const density = Number.parseFloat(ctrl.desiredDensity.value) || 0;
  const seedsPerPound = Number.parseFloat(ctrl.seedPerPound.value) || 0;
  const purity = (Number.parseFloat(ctrl.purityPercent.value) || 0) / 100;
  const fill = (Number.parseFloat(ctrl.cellsFilled.value) || 0) / 100;
  const germ = (Number.parseFloat(ctrl.germPercent.value) || 0) / 100;

  const divisor = seedsPerPound * purity * fill * germ;
  if (divisor === 0) return 0;

  const result = (bedFeet * density) / divisor;
  return Number(result.toFixed(3));
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:614
```
calculateAdditionalContainer(orderForm: any): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let cellsFilled = growRecControls.cellsFilled.value / 100;
  cellsFilled = Number(cellsFilled.toFixed(3));
  let cellsPerContainer = this.growCycleObject?.growUnit?.cellsPerContainer;
  let adjustedSeedlingQuantity = growRecControls.adjustedQuantityRequested.value;

  let additionalBRSpace = Math.round(
    adjustedSeedlingQuantity / (cellsFilled * cellsPerContainer)
  );
  return additionalBRSpace;
}
```
frontend/src/app/routes/orders/order-planning/order-planning.component.ts:629
```
calculateAdditionalBRSpace(orderForm: any): number {
  let growRecControls =
    orderForm.controls.growRequest.controls.planning.controls[this.planningCycleIndex].controls;

  let barerootSpace = growRecControls.cellsFilled.value;
  let desiredDensity = growRecControls.desiredDensity.value;
  let adjustedSeedlingQuantity = growRecControls.adjustedQuantityRequested.value;

  barerootSpace = Number.parseFloat(barerootSpace) / 100;

  let additionalBRSpace = Math.round(adjustedSeedlingQuantity / (barerootSpace * desiredDensity));
  return additionalBRSpace;
}
```
