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