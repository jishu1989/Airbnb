#### Ephemeral Materialization

Ephemeral models are not directly built into the database. Instead, dbt will interpolate the code from an ephemeral model into its dependent models using a common table expression (CTE). You can control the identifier for this CTE using a model alias, but dbt will always prefix the model identifier with __dbt__cte__.

Pros:
- You can still write reusable logic
- Ephemeral models can help keep your data warehouse clean by reducing clutter (also consider splitting your models across 
  multiple schemas by using custom schemas).

Cons:
- You cannot select directly from this model.
- Operations (for example, macros called using dbt run-operation cannot ref() ephemeral nodes)
- Overuse of ephemeral materialization can also make queries harder to debug.
- Ephemeral materialization doesn't support model contracts.
