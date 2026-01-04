 create table fact_table as 
   select
   finance."Date"::date as date_id,
   "Stock Index" as stock_index,
   "Open Price" as open_price,
   "Close Price" as close_price,
   "Daily High" as daily_high,
   "Daily Low" as daily_low,
   "Trading Volume" as trading_volume,
   "Retail Sales (Billion USD)" as retail_sales,
   "Bankruptcy Rate (%)" as bankruptcy_rate,
   "Mergers & Acquisitions Deals" as m_and_a, 
   "Venture Capital Funding (Billion USD)" as vc_fund
   from finance
   
