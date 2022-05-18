SELECT * FROM [dbo].[hotel2018]

SELECT * FROM [dbo].[hotel2019]

SELECT * FROM [dbo].[hotel2020]

WITH hotels AS (
SELECT * FROM [dbo].[hotel2018]
UNION
SELECT * FROM [dbo].[hotel2019]
UNION
SELECT * FROM [dbo].[hotel2020])
SELECT * FROM hotels


WITH hotels AS (
SELECT * FROM [dbo].[hotel2018]
UNION
SELECT * FROM [dbo].[hotel2019]
UNION
SELECT * FROM [dbo].[hotel2020])
SELECT (stays_in_week_nights+stays_in_weekend_nights)* adr as revenue FROM hotels



WITH hotels AS (
SELECT * FROM [dbo].[hotel2018]
UNION
SELECT * FROM [dbo].[hotel2019]
UNION
SELECT * FROM [dbo].[hotel2020])
SELECT arrival_date_year, 
sum((stays_in_week_nights+stays_in_weekend_nights)* adr) as revenue 
FROM hotels
group by arrival_date_year



WITH hotels AS (
SELECT * FROM [dbo].[hotel2018]
UNION
SELECT * FROM [dbo].[hotel2019]
UNION
SELECT * FROM [dbo].[hotel2020])
SELECT arrival_date_year,hotel, 
sum((stays_in_week_nights+stays_in_weekend_nights)* adr) as revenue 
FROM hotels
group by arrival_date_year,hotel

select * from [dbo].[market_segment]
select * from [dbo].[meal_cost]

WITH hotels AS (
SELECT * FROM [dbo].[hotel2018]
UNION
SELECT * FROM [dbo].[hotel2019]
UNION
SELECT * FROM [dbo].[hotel2020])
SELECT * FROM hotels
join [dbo].[market_segment]
ON hotels.market_segment = market_segment.market_segment


WITH hotels AS (
SELECT * FROM [dbo].[hotel2018]
UNION
SELECT * FROM [dbo].[hotel2019]
UNION
SELECT * FROM [dbo].[hotel2020])
SELECT * FROM hotels
left join [dbo].[market_segment]
ON hotels.market_segment = market_segment.market_segment
left join [dbo].[meal_cost]
on meal_cost.meal = hotels.meal
