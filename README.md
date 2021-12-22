# Webscraping and machine learning model
In this project, I have scraped data from website, estimize.com, and use the dataset to build machine learning model.

1 Problem Background
Estimize, an open web-based platform, has become an useful source to retrieve financial estiamtes. It facilitates the aggregation of financial estiamtes from a diverse community of individuals. 

2 Tasks  
(a) Scrape the data from the Estimize.com for at least one year.   
(b) Build a dataset to store the EPS estimation information, including:  
(a) The company basic information, such as Ticker, company name, Sectors, Industries,number of followers, number of analysts.   
i. ticker: EHTH  
ii. name: eHealth, inc.  
iii. Sectors: Financials  
iv. Industries: Insurance  
v. number of folowers: 66  
vi. number of analysts: 99  
(b) The EPS information, including Reported Earnings, Estimize Consensus, Estimize
Mean, Wall Street Consensus, and EPS estimations of all available analysts.  
(c) The information about each analyst, including Analyst name, Roles, Join date, Analyst Confidence score, number of estimates, Stocks Covered,
pending estimates, Scored estimates.  
i. name: Steven Halper  
ii. roles: Financial Professional, Sell Side, and Broker  
iii. Join Date: Jan 2017  
iv. Analyst Confidence Score: 5.4  
v. error rate: 17.3%  
vi. Accuracy Percentile: 24%  
vii. points: 16  
viii. points/Estimate: 1  
ix. stocks: 20  
x. pending: 28  
(c) Your database should support easy query, extracting the correct information for the questions similar to following ones:   
(a) Given a ticker, how many analysts have made estimations for its EPS? Rank them by their confidence score, total points, error rate or accuracy percentile?   
(b) Given a industry, how many companies are covered, the average number of analysts, the average bias between the Estimize Consensus and the Reported Earnings?  
(c) Which company have the largest number of analysts with confidence score greater
than 7?   
(d) Who has the largest number of followers?   
(a) Regression analysis is the basic method to find the important independent variables
that will affect the dependent variable. So, given all the features constructed and
scraped, can you find some important independent variables that affect accuracy of
prediction?  
(b) Can you came up with some novel method to construct a better EPS estimation compared with the Estimize Consensus and Wall Street Consensus?  
