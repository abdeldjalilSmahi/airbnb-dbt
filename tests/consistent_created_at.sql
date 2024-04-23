select 
    * 
from 
    {{ ref("dim_listings_cleansed") }} as dlc
join 
    {{ ref("fact_reviews") }} as f

on 
    dlc.listing_id = f.listing_id
where
    dlc.created_at >= f.review_date