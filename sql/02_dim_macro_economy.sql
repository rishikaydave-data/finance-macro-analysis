create table dim_macro_economy as 
    select distinct
    finance."Date":: date as date_id,
    "GDP Growth (%)" as gdp,
    "Inflation Rate (%)" as inflation_rate,
    "Unemployment Rate (%)" as umemployment_rate,    
    "Interest Rate (%)" as interest_rate,
    "Government Debt (Billion USD)" as debt,
    "Corporate Profits (Billion USD)" as corp_profit
    
    from finance
