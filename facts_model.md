#### Facts Table

Fact tables store measurable, quantitative data for analysis. It usually contains
metrics (facts) like sales amount, number of units sold, profit, etc. Facts table keeps on
growing regularly and have incremental loads. i.e Everyday new data is added to the table.

In this case we have review as our fact table, comments from various customers for their stays
in different airbnbs. Listing id connects us to various stays and their comments on different
stays. 

![image](https://github.com/user-attachments/assets/f71362c9-3998-4e91-ab37-b246c086ce30)

![image](https://github.com/user-attachments/assets/62fe8d14-cf50-4566-9547-814d6d3263b6)

NOTE: **this** refers to the model *fct_reviews.sql* (in the above fig.)

In the fig. below, we try to populate a new row in the raw table.

![image](https://github.com/user-attachments/assets/6911e3d4-6bfb-4399-9b41-cba114dded00)

And still the fact table is not yet updated...

![image](https://github.com/user-attachments/assets/72934a7b-a1e4-4b4d-ae36-65c52a25f765)

After running this dbt incremental run, the fact table is also populated with the single
row that we entered in the raw table. 

```
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> dbt run
20:59:48  Running with dbt=1.9.4
20:59:48  Registered adapter: snowflake=1.9.0
20:59:49  Found 6 models, 472 macros
20:59:49  
20:59:49  Concurrency: 1 threads (target='dev')
20:59:49
20:59:50  1 of 6 START sql view model DEV.src_hosts ...................................... [RUN]
20:59:50  1 of 6 OK created sql view model DEV.src_hosts ................................. [SUCCESS 1 in 0.56s]
20:59:50  2 of 6 START sql view model DEV.src_listings ................................... [RUN]
20:59:51  2 of 6 OK created sql view model DEV.src_listings .............................. [SUCCESS 1 in 0.30s]
20:59:51  3 of 6 START sql view model DEV.src_reviews .................................... [RUN]
20:59:51  3 of 6 OK created sql view model DEV.src_reviews ............................... [SUCCESS 1 in 0.24s]
20:59:51  4 of 6 START sql table model DEV.dim_hosts_cleansed ............................ [RUN]
20:59:52  4 of 6 OK created sql table model DEV.dim_hosts_cleansed ....................... [SUCCESS 1 in 0.79s]
20:59:52  5 of 6 START sql table model DEV.dim_listings_cleansed ......................... [RUN]
20:59:53  5 of 6 OK created sql table model DEV.dim_listings_cleansed .................... [SUCCESS 1 in 0.89s]
20:59:53  6 of 6 START sql incremental model DEV.fct_reviews ............................. [RUN]
20:59:54  6 of 6 OK created sql incremental model DEV.fct_reviews ........................ [SUCCESS 1 in 1.32s]
20:59:54  
20:59:54  Finished running 1 incremental model, 2 table models, 3 view models in 0 hours 0 minutes and 5.33 seconds (5.33s).
20:59:54  
20:59:54  Completed successfully
20:59:54
20:59:54  Done. PASS=6 WARN=0 ERROR=0 SKIP=0 TOTAL=6
```
![image](https://github.com/user-attachments/assets/6250cbff-7c4d-4280-b7c3-c6dfc99f65f0)
