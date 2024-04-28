with mart_fullmoon_reviews as (
    select * from {{ ref('mart_fullmoon_reviews') }}
)
select 
    is_full_moon,
    review_sentiment,
    count(*) as reviews
FROM 
    mart_fullmoon_reviews
group by
    is_full_moon,
    review_sentiment
