select date, new_cases 
, new_active_cases,growth_factor_of_new_deaths,((total_cases-(total_cases-total_recovered))/(total_cases-total_recovered)) 
AS GrowthRate
  FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SHUBHANSHU_DUBEY


