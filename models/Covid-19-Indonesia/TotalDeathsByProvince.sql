WITH total_deaths_by_province AS
(
    SELECT  distinct province
    FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
    WHERE province IS NOT NULL
    
),
    
   TotalDeaths AS (
        SELECT distinct province, SUM(total_deaths) as Total_Deaths
        FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
        group by Province
    
    )

SELECT * FROM total_deaths_by_province
inner join TotalDeaths USING (province)
