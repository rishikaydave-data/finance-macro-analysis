create table dim_forex as
   select distinct 
   finance."Date"::date as date_id, 
   "Forex USD/EUR" as forex_rates_eur,
   "Forex USD/JPY" as forex_rates_jpy
   
   from finance
