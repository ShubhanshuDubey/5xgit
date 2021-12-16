{{ config(materialized='view') }}

WITH Location AS(
    select distinct Latitude, longitude, total_cities, province, total_districts, 
    total_urban_villages,total_rural_villages,island, area_KM_2_ AS Area
    FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY
)

select * from Location

