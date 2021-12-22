#A ANS
#Part1
select `ticker` ,`name` ,`sectors` ,`Industries` ,`Total Followers` ,18 as `Total Analyst` ,`Top Analyst Name` from ticker_info_tbl where ticker = 'BWA';


#part2 ANS
select 
`analyst_id`
,`error rate`
,`accuracy`
,`points`
,`points/Estimate`
,`stocks`
,`pending`
,`analyst_name`
,`confidence_score`
,`joining_date`
,rank() OVER (order by `confidence_score`desc ) AS 'rank' from analyst_tbl where `points`!='-'and `error rate`!='-' and `accuracy`!='-';

select 
`analyst_id`
,`error rate`
,`accuracy`
,`points`
,`points/Estimate`
,`stocks`
,`pending`
,`analyst_name`
,`confidence_score`
,`joining_date`
,rank() OVER (order by `confidence_score`,`points` ,`error rate` ,`accuracy` desc ) AS 'rank' from analyst_tbl where `points`!='-'and `error rate`!='-' and `accuracy`!='-';  

select 
`analyst_id`
,`error rate`
,`accuracy`
,`points`
,`points/Estimate`
,`stocks`
,`pending`
,`analyst_name`
,`confidence_score`
,`joining_date`
from analyst_tbl where `points`!='-'and `error rate`!='-' and `accuracy`!='-'
order by `confidence_score` ,`points` ,`error rate` ,`accuracy` desc ;          

#B ANS
with t1 as (SELECT COUNT(*) AS Number_of_company from ticker_info_tbl where Industries ='Auto Components'),
t2 as (SELECT cast(avg(`Total Analysts`) as decimal(10,2)) AS Average_number_analyst from ticker_info_tbl where Industries ='Auto Components'),
t3 as (select cast(avg((ec-re)/c1) as decimal(10,2)) as average_bias from(select sum(`Estimize Consensus`) as ec,sum(`Reported Earnings`) as re,count(*) as c1 from eps_info_tbl where Ticker in (select ticker from ticker_info_tbl where Industries ='Auto Components')) b)
select Number_of_company from t1 union select Average_number_analyst from t2 union select * from t3

#C ANS
# Ticker with maximum number of analyst with confidence score higher than 7
select t2.Ticker as Ticker, count(analyst_id) as Analyst_Count, avg(t3.confidence_score) as Average_Confidence_Score from ticker_info_tbl t1 
left join ticker_analyst_tbl t2 on t2.Ticker = t1.ticker
left join analyst_tbl t3 on t2.username = t3.analyst_id
where t3.confidence_score > 7 
group by t2.Ticker
order by count(analyst_id) desc
limit 1;

#D ANS
select `ticker`, `name`, `sectors`, `Industries`, 
`Total Followers`, `Total Analysts` from (select 
`ticker`, `name`, `sectors`, `Industries`, `Total 
Followers`, ` Total Analysts`, rank() OVER (order 
by `Total Followers`desc ) as rank_1 from 
ticker_info_tbl) a where a.rank_1=1






