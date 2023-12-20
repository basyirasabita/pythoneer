-- NGC 6 - Data Wrangling in SQL
-- Nama: Basyira Sabita
-- Batch: HCK-012

SELECT 
  COUNT(Filing_Date) AS count,
  LEFT(Filing_Date, 4) AS year, 
  SUBSTR(Filing_Date, 5, 2) AS month 
FROM `patents-public-data.uspto_oce_cancer.publications`
WHERE Patent_Title LIKE '%Data%' AND CAST(LEFT(Filing_Date, 4) AS INT64) > 2011
GROUP BY year, month
ORDER BY year, month;