![image](https://github.com/user-attachments/assets/f71362c9-3998-4e91-ab37-b246c086ce30)

![image](https://github.com/user-attachments/assets/62fe8d14-cf50-4566-9547-814d6d3263b6)

![image](https://github.com/user-attachments/assets/6911e3d4-6bfb-4399-9b41-cba114dded00)

![image](https://github.com/user-attachments/assets/72934a7b-a1e4-4b4d-ae36-65c52a25f765)

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
