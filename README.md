# finance-macro-analysis
Financial Data Analysis - SQL-based analysis of macroeconomic indicators and market data

**Problem statement**
How do macroeconomic indicators influence stock market behavior between 2000–2008? (This is a sample data set used for analysis purposes.)

**Dataset**
- Finance dataset with macro, market, forex, commodities. 

**Data model**
Star schema (1 fact, 4 dimensions)

**Why this design helps analysis**
The star schema is preferred due to the nature of raw data being connected through the Fact Table (Date), providing better relationship models and making sure the analysis is granular. 

**Key questions I attempt to solve**

1. How do interest rates and inflation move together?
2. Does inflation affect Real Estate Index and housing prices?
3. How does Inflation affect stock index levels? 
4. How volatile is the market year over year?
5. How do returns behave across regimes?

**Key findings** 

1. The correlation index between Interest Rates and Inflation is **0.006**, which means both move in the same direction. When Inflation rises, the price of goods increases, and to curb that, the interest rates are highetened so that companies stop borrowing, making the balance back.  

2. Interest rate seems to have slight inverse influence on REI (Real Estate Index), but it’s not very strong. Inflation is too stable in this period (2000-2008) to see a clear effect.REI fluctuates independently too, likely due to other factors (demand, supply, government policies, etc.).

3. While the inflation levels were normal through the years, substantial difference was seen when transitioning from year **2007 to 2008**- where with inflaiton, the stock index levels also rised. 

4. The yearly average index levels indicate that the market remained largely range-bound between 2000 and 2006, followed by a sharp increase in 2008. Volatility levels, measured using the standard deviation of daily closing prices, remained relatively stable throughout the period, peaking in 2007 and declining in 2008. 

Notably, the highest average index level coincides with lower volatility, suggesting that market growth during this period occurred with relative price stability rather than heightened uncertainty.

5. **Yearly returns for avg index prices**

2008 recorded a +6.68% annual return — significantly higher than any other year — suggesting a structural or macroeconomic shift rather than normal market fluctuation. 


**Conclusion**
This analysis indicates that between 2000 and 2006, the stock market largely remained range-bound, with relatively stable index levels and controlled volatility.

The transition from 2007 to 2008 represents a clear structural shift, characterized by higher index levels, elevated returns, and changing volatility dynamics.

Weak correlations between macroeconomic indicators such as inflation, interest rates, and market indices suggest that market behavior cannot be explained by single macro variables in isolation. Instead, market movements during this period were likely influenced by a combination of policy decisions, global economic conditions, and sector-specific factors.
