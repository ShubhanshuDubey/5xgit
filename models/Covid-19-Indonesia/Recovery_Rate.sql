{{ config(materialized='view') }}
with Total_Recover AS
    (
        SELECT total_cases,  total_recovered, case_recovered_rate AS Recovery_Rate, province
        FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
        where province is not null
    )
,
Place AS
(
    SELECT province FROM {{ ref('Locations') }}
)


select * from Total_Recover 
inner join Place USING(province)