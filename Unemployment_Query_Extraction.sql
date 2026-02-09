--Solve to Business Problem: Extracting Unemployment Data for Analysis

--Select Data --
SELECT * FROM [Complete_Data_Analyst].[dbo].[unemployment_data]

--Problem 1: Overall Unemployment Situation
SELECT 
   ROUND(AVG(Unemployment_Rate),2) AS Average_Unemployment_Rate
FROM [Complete_Data_Analyst].[dbo].[unemployment_data]


--Problem 2: High-Risk 
SELECT 
   TOP 10
   state,
   ROUND(AVG(Unemployment_Rate),2) AS Average_Unemployment_Rate
FROM [Complete_Data_Analyst].[dbo].[unemployment_data]
GROUP BY state
ORDER BY Average_Unemployment_Rate DESC

--Problem 3: Rural vs Urban Gap
SELECT
 Area,
  ROUND(AVG(Unemployment_Rate),2) AS Average_Unemployment_Rate
  FROM [Complete_Data_Analyst].[dbo].[unemployment_data]
Group BY Area

--Problem 4: Trend Over Time
SELECT
  Year,
  ROUND(AVG(Unemployment_Rate),2) AS Average_Unemployment_Rate
  FROM [Complete_Data_Analyst].[dbo].[unemployment_data]
GROUP BY Year
Order BY Year

--Problem 5: Job-Creating Sector
SELECT
  Industry_Sector,
  ROUND(AVG(Employment_Rate),2) AS Average_Employment_Rate
  FROM [Complete_Data_Analyst].[dbo].[unemployment_data]
Group BY Industry_Sector

-- Problem 6 : Average Employment Rate 
SELECT
  ROUND(AVG(Employment_Rate),2) AS Average_Employment_Rate
  FROM [Complete_Data_Analyst].[dbo].[unemployment_data]

-- Problem 7 : Average Labor Force Participation Rate
SELECT
  ROUND(AVG(Labour_Participation_Rate),2) AS Average_Employment_Rate
  FROM [Complete_Data_Analyst].[dbo].[unemployment_data]

-- Problem 8 :Employment Gap Filling
SELECT
  State,
  Year,
  ROUND(AVG(Employment_Gap),2) AS Average_Employment_Gap
From [Complete_Data_Analyst].[dbo].[unemployment_data]
GROUP BY State, Year, Employment_Gap


