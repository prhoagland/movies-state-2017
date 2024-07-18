SELECT
	DATE_TRUNC('month', release_date) AS MONTH,
	SUM(revenue) AS monthly_revenue,
	SUM(budget) AS monthly_budget
FROM movies_summary
GROUP BY month
ORDER BY monthly_revenue DESC;

SELECT *
FROM movies_summary
WHERE DATE_TRUNC('month', release_date) = '2015-12-01'
ORDER BY revenue DESC;

SELECT *
FROM movies_summary
WHERE DATE_TRUNC('year', release_date) = DATE_TRUNC('year', '2015-01-01'::date)
ORDER BY revenue DESC;

SELECT
	DATE_TRUNC('year', release_date) AS YEAR,
	SUM(budget) AS TOTAL_BUDGET,
	SUM(revenue) AS TOTAL_REV
FROM movies_summary
GROUP BY year
ORDER BY TOTAL_REV DESC;

SELECT *
FROM movies_summary
WHERE title LIKE '%Oklahoma%'
ORDER BY popularity DESC;