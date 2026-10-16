# Form: Lifting_Priority_Comments subform

**Caption:** Lifting_Priority_Comments subform  
**Record source:**

```sql
SELECT Lifting_Priority_Comments.Priority, Lifting_Priority_Comments.Comment FROM Lifting_Priority_Comments ORDER BY Lifting_Priority_Comments.Priority;
```

**Backend tables referenced:** `Lifting_Priority_Comments`  
**Embedded in:** `Form:Lifting_Priorties`  

## Section: FormHeader

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| Label | Label4 | Priority |  |  |  | 0.08, 0.04, 0.54, 0.21 |
| Label | Label5 | Comment |  |  |  | 0.70, 0.04, 6.24, 0.19 |

## Section: Detail

| Type | Name | Label/Caption | Bound to / Source | Row source | Events | Position (L,T,W,H in) |
|---|---|---|---|---|---|---|
| TextBox | Priority |  | Priority |  |  | 0.08, 0.04, 0.54, 0.21 |
| TextBox | Comment |  | Comment |  |  | 0.70, 0.04, 6.24, 0.21 |
