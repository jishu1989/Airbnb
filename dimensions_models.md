#### Dimension Tables

**What are dimension tables ?**

Dimension tables usually consists of attributes (fields) that describe "who," "what," "where," "when," and "how."
It stores descriptive (contextual) information about the business. Below we intend to clean the dimension tables
and create a dimension table from listings and host. 

![image](https://github.com/user-attachments/assets/1033c23d-a208-4512-8ed4-9a9cbaa63019)


![image](https://github.com/user-attachments/assets/8853b693-a0a2-4263-b00c-86fae206f1fe)

Below are the listings materializations for the dimensional models. Models are the building blocks for business
logics. Materialized as tables, views, etc. Some of the logics we add are for example:

Minimum nights = 0 are turned to 1 and price_str we remove the $ and convert it into number

```
WITH src_listings AS (
    SELECT * FROM {{ ref('src_listings') }}
)
SELECT 
  listing_id,
  listing_name,
  room_type,
  CASE
    WHEN minimum_nights = 0 THEN 1
    ELSE minimum_nights
  END AS minimum_nights,
  host_id,
  REPLACE(
    price_str,
    '$'
  ) :: NUMBER(
    10,
    2
  ) AS price,
  created_at,
  updated_at
FROM
  src_listings

```
And we materialize these as views..

Below we add constraints so that it removes the null values from host name...

```
WITH src_hosts AS (
    SELECT
        *
    FROM
        {{ ref('src_hosts') }}
)
SELECT
    host_id,
    NVL(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts
```


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
Here we add the constraint how to create dbt_project.yml -> there by materializing as tables

![image](https://github.com/user-attachments/assets/c744f97f-2869-4e3b-8f21-367841af0760)

![image](https://github.com/user-attachments/assets/7e8d6743-3377-418e-9022-4dab9f9894d2)
