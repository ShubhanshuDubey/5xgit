

WITH Population AS
    (
        SELECT DISTINCT province,population, Population_Density
        FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
        WHERE province IS NOT NULL
    )


,
Total_Deaths AS
(
    SELECT * FROM {{ ref('TotalDeathsByProvince') }}
)

SELECT * FROM Population
inner join Total_Deaths USING(province)