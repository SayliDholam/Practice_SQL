SELECT COUNT(low) AS low
  FROM tutorial.aapl_historical_stock_price

--

SELECT COUNT(year) AS year,
       COUNT(month) AS month,
       COUNT(open) AS open,
       COUNT(high) AS high,
       COUNT(low) AS low,
       COUNT(close) AS close,
       COUNT(volume) AS volume
  FROM tutorial.aapl_historical_stock_price

--

SELECT SUM(open)/COUNT(open) AS avg_open_price
  FROM tutorial.aapl_historical_stock_price

--

SELECT MIN(low)
  FROM tutorial.aapl_historical_stock_price

--

SELECT MAX(close - open)
  FROM tutorial.aapl_historical_stock_price

--

SELECT AVG(volume) AS avg_volume
  FROM tutorial.aapl_historical_stock_price

--

SELECT year,
       month,
       SUM(volume) AS volume_sum
  FROM tutorial.aapl_historical_stock_price
 GROUP BY year, month
 ORDER BY year, month

--

SELECT year,
       AVG(close - open) AS avg_daily_change
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1
 ORDER BY 1

--

SELECT year,
       month,
       MIN(low) AS lowest_price,
       MAX(high) AS highest_price
  FROM tutorial.aapl_historical_stock_price
 GROUP BY 1, 2
 ORDER BY 1, 2


-- query clause order --------------------

SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY

------------------------------------
