WITH Location AS(
    select distinct Latitude, longitude, total_cities,province, total_districts, total_urban_villages,island
    FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
)

select * from Location

