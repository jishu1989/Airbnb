# Airbnb
Analytics Engineering approach towards Hospitality and Homestays industry

```
PS C:\Users\Soumya Das\Documents\projects\git projects> py -m venv venvdbt
PS C:\Users\Soumya Das\Documents\projects\git projects> .\venvdbt\Scripts\Activate.ps1
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects> py --version
Python 3.12.3
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects>
```
<img width="856" alt="image" src="https://github.com/user-attachments/assets/90d069df-c6b9-4710-951d-60c179ddb29f" />

<img width="692" alt="image" src="https://github.com/user-attachments/assets/81ba35a3-22ac-4a7a-aed9-b6d62265bd72" />

<img width="843" alt="image" src="https://github.com/user-attachments/assets/bef47c03-6f75-4e20-ab42-7282576ebfaa" />

<img width="851" alt="image" src="https://github.com/user-attachments/assets/63f3283a-a834-4aca-93d7-c360d9426975" />

<img width="848" alt="image" src="https://github.com/user-attachments/assets/e0103499-0e4f-4b4c-985b-36fa1779473b" />

<img width="602" alt="image" src="https://github.com/user-attachments/assets/e950fe09-bce0-482a-8be2-2e1d776975e8" />


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
<img width="149" alt="image" src="https://github.com/user-attachments/assets/95f0ec82-8f19-49d0-9078-40439d50ff29" />

