 create table dim_commodities as
   select distinct 
   finance."Date"::date as date_id,
   "Crude Oil Price (USD per Barrel)" as crude_price,
   "Gold Price (USD per Ounce)" as gold_price,
   "Real Estate Index" as real_estate_index
   
   from finance 
