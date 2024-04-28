with mart_fullmoon_reviews AS (
    select * from {{ ref('mart_fullmoon_reviews') }}
)
SELECT 
    is_full_moon,
    review_sentiment,
    count(*) as reviews 
from
    mart_fullmoon_reviews
group by 
    is_full_moon,
    review_sentiment
order by
    is_full_moon,
    review_sentiment