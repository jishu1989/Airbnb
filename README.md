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
PS C:\Users\Soumya Das\Documents\projects\git projects> .\venvdbt\Scripts\Activate.ps1
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects> cd Airbnb
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb> cd dbtlearn
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> dbt run       
21:54:24  Running with dbt=1.9.4
21:54:25  Registered adapter: snowflake=1.9.0
21:54:26  Unable to do partial parsing because saved manifest not found. Starting full parse.
21:54:29  Found 1 model, 472 macros
21:54:29
21:54:29  Concurrency: 1 threads (target='dev')
21:54:29
21:54:34  1 of 1 START sql view model DEV.src_listings ................................... [RUN]
21:54:35  1 of 1 OK created sql view model DEV.src_listings .............................. [SUCCESS 1 in 0.52s]     
21:54:35
21:54:35  Finished running 1 view model in 0 hours 0 minutes and 6.19 seconds (6.19s).
21:54:35
21:54:35  Completed successfully
21:54:35
21:54:35  Done. PASS=1 WARN=0 ERROR=0 SKIP=0 TOTAL=1
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn>
```

```
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> dbt run
22:05:08  Running with dbt=1.9.4
22:05:09  Registered adapter: snowflake=1.9.0
22:05:10  Found 2 models, 472 macros
22:05:10
22:05:10  Concurrency: 1 threads (target='dev')
22:05:10
22:05:12  1 of 2 START sql view model DEV.src_listings ................................... [RUN]
22:05:13  1 of 2 OK created sql view model DEV.src_listings .............................. [SUCCESS 1 in 0.63s]     
22:05:13  2 of 2 START sql view model DEV.src_review ..................................... [RUN]
22:05:13  2 of 2 OK created sql view model DEV.src_review ................................ [SUCCESS 1 in 0.21s]     
22:05:13
22:05:13  Finished running 2 view models in 0 hours 0 minutes and 3.29 seconds (3.29s).
22:05:13
22:05:13  Completed successfully
22:05:13
22:05:13  Done. PASS=2 WARN=0 ERROR=0 SKIP=0 TOTAL=2
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn>
```
