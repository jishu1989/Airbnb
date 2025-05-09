#### Source Models: 
Source models use CTEs to reference raw tables.  

#### LISTINGS

![image](https://github.com/user-attachments/assets/77d1da9d-74e8-4eb3-9906-255590f6acee)


![image](https://github.com/user-attachments/assets/df8ce249-0968-446c-9cba-4c3813fbc82e)

In the below transformation we change the id -> listing_id and name -> listing_name, and price-> price_str.
```
-- import raw_listings
WITH raw_listings AS (
        SELECT * FROM AIRBNB.RAW.RAW_LISTINGS
)
SELECT 
   id AS listing_id,
   listing_url,
   name AS listing_name,
   room_type,
   minimum_nights,
   host_id,
   price AS price_str,
   created_at,
   updated_at
FROM raw_listings
```

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

![image](https://github.com/user-attachments/assets/11112469-d9c3-4566-aaf3-7e77c0ab686a)

#### REVIEWS

![image](https://github.com/user-attachments/assets/a8e62a2e-aa22-4f79-83c3-8209b860f4d9)

Here also we put alias date -> review_date, sentiment -> review_sentiments, comments -> review_text.
```
WITH raw_reviews AS (
      SELECT * FROM AIRBNB.RAW.RAW_REVIEWS    
)
SELECT
listing_id,
date as review_date,
reviewer_name,
comments as review_text,
sentiment as review_sentiments
FROM raw_reviews
```

```
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> dbt run
22:06:52  Running with dbt=1.9.4
22:06:53  Registered adapter: snowflake=1.9.0
22:06:53  Found 2 models, 472 macros
22:06:53  
22:06:53  Concurrency: 1 threads (target='dev')
22:06:53
22:06:55  1 of 2 START sql view model DEV.src_listings ................................... [RUN]
22:06:55  1 of 2 OK created sql view model DEV.src_listings .............................. [SUCCESS 1 in 0.49s]
22:06:55  2 of 2 START sql view model DEV.src_reviews .................................... [RUN]
22:06:56  2 of 2 OK created sql view model DEV.src_reviews ............................... [SUCCESS 1 in 0.20s]
22:06:56  
22:06:56  Finished running 2 view models in 0 hours 0 minutes and 2.50 seconds (2.50s).
22:06:56  
22:06:56  Completed successfully
22:06:56
22:06:56  Done. PASS=2 WARN=0 ERROR=0 SKIP=0 TOTAL=2
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> 

```
![image](https://github.com/user-attachments/assets/bdf044d8-9ca6-4ea3-98bd-e1c73a8a8dd7)

#### HOSTS

![image](https://github.com/user-attachments/assets/12480567-7c07-4274-b5d3-ed82896b63b1)

```
WITH raw_hosts as(
     SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)
SELECT
id as host_id,
name as host_name,
is_superhost,
created_at,
updated_at
FROM raw_hosts
```
Here we transform id -> host_id, name -> host_name.

``` 
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn> dbt run
22:42:07  Running with dbt=1.9.4
22:42:08  Registered adapter: snowflake=1.9.0
22:42:09  Found 3 models, 472 macros
22:42:09  
22:42:09  Concurrency: 1 threads (target='dev')
22:42:09
22:42:10  1 of 3 START sql view model DEV.src_hosts ...................................... [RUN]
22:42:11  1 of 3 OK created sql view model DEV.src_hosts ................................. [SUCCESS 1 in 0.48s]
22:42:11  2 of 3 START sql view model DEV.src_listings ................................... [RUN]
22:42:11  2 of 3 OK created sql view model DEV.src_listings .............................. [SUCCESS 1 in 0.28s]
22:42:11  3 of 3 START sql view model DEV.src_reviews .................................... [RUN]
22:42:11  3 of 3 OK created sql view model DEV.src_reviews ............................... [SUCCESS 1 in 0.24s]     
22:42:12
22:42:12  Finished running 3 view models in 0 hours 0 minutes and 2.19 seconds (2.19s).
22:42:12
22:42:12  Completed successfully
22:42:12
22:42:12  Done. PASS=3 WARN=0 ERROR=0 SKIP=0 TOTAL=3
(venvdbt) PS C:\Users\Soumya Das\Documents\projects\git projects\Airbnb\dbtlearn>

```
![image](https://github.com/user-attachments/assets/5b9012fe-6883-494a-aff8-abe34a3da482)

