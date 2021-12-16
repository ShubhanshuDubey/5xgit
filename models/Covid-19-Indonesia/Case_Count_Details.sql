with MaxTotalCases AS
(select province, Max(total_cases) AS MaxCaseCount
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
group by province)

,
MinTotalCases AS
(select province, 
Min(total_cases) AS MinCaseCount
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
group by province)


select * from MinTotalCases
inner join MaxTotalCases USING(province)





