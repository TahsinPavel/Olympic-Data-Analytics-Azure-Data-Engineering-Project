-- Count the number of athletes from each country --

SELECT NOC, COUNT(*) AS TotalAthletes FROM athletes
GROUP BY NOC
ORDER BY TotalAthletes DESC


-- Total number of medal won by each country --

SELECT Team,
SUM(Gold) AS Total_Gold,
SUM(Silver) AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP by Team
ORDER BY Total_Gold DESC

-- Average number of entries by gender for eaxh discipline --

SELECT Discipline,
AVG(Male) AS Avg_Male,
AVG(Female) AS Avg_Female
FROM entriesgender
GROUP BY Discipline