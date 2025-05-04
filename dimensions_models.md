![image](https://github.com/user-attachments/assets/1033c23d-a208-4512-8ed4-9a9cbaa63019)


![image](https://github.com/user-attachments/assets/8853b693-a0a2-4263-b00c-86fae206f1fe)

```
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> dbt run
06:49:12  Running with dbt=1.9.4
06:49:13  Registered adapter: snowflake=1.9.0
06:49:16  Found 5 models, 472 macros
06:49:16  
06:49:16  Concurrency: 1 threads (target='dev')
06:49:16  
06:49:23  1 of 5 START sql view model DEV.src_hosts ...................................... [RUN]
06:49:24  1 of 5 OK created sql view model DEV.src_hosts ................................. [SUCCESS 1 in 0.62s]
06:49:24  2 of 5 START sql view model DEV.src_listings ................................... [RUN]
06:49:24  2 of 5 OK created sql view model DEV.src_listings .............................. [SUCCESS 1 in 0.28s]
06:49:24  3 of 5 START sql view model DEV.src_reviews .................................... [RUN]
06:49:24  3 of 5 OK created sql view model DEV.src_reviews ............................... [SUCCESS 1 in 0.27s]
06:49:24  4 of 5 START sql view model DEV.dim_hosts_cleansed ............................. [RUN]
06:49:25  4 of 5 OK created sql view model DEV.dim_hosts_cleansed ........................ [SUCCESS 1 in 0.30s]
06:49:25  5 of 5 START sql view model DEV.dim_listings_cleansed .......................... [RUN]
06:49:25  5 of 5 OK created sql view model DEV.dim_listings_cleansed ..................... [SUCCESS 1 in 0.25s]
06:49:25  
06:49:25  Finished running 5 view models in 0 hours 0 minutes and 8.77 seconds (8.77s).
06:49:25  
06:49:25  Completed successfully
06:49:25
06:49:25  Done. PASS=5 WARN=0 ERROR=0 SKIP=0 TOTAL=5
```
![image](https://github.com/user-attachments/assets/c744f97f-2869-4e3b-8f21-367841af0760)

![image](https://github.com/user-attachments/assets/7e8d6743-3377-418e-9022-4dab9f9894d2)
