-- COVID Portfolio Project

-- 1. Global Numbers
SELECT SUM(new_cases) AS total_cases, SUM(new_deaths) AS total_deaths, SUM(new_deaths)/SUM(new_cases)*100 as DeathPercentage
FROM `portfolio-projects-373923.covid_data.covid_deaths`
WHERE continent IS NOT NULL
ORDER BY 1,2

-- 2. Total Deaths Per Continent
SELECT location, SUM(cast(new_deaths as int)) as TotalDeathCount
From `portfolio-projects-373923.covid_data.covid_deaths`
WHERE continent IS NULL AND location NOT IN ('World', 'European Union', 'International', 'High income', 'Upper middle income', 'Lower middle income', 'Low income')
GROUP BY location
ORDER BY TotalDeathCount DESC

-- 3. Percentage of the Population Infected Per Country
SELECT location, population, MAX(total_cases) as HighestInfectionCount,  MAX((total_cases/population))*100 as PercentPopulationInfected
FROM `portfolio-projects-373923.covid_data.covid_deaths`
GROUP BY Location, Population
ORDER BY PercentPopulationInfected DESC

-- 4. Percentage of the Population Infected by Date to measure infection growth
SELECT location, population, date, MAX(total_cases) as HighestInfectionCount, MAX((total_cases/population))*100 as PercentPopulationInfected
FROM `portfolio-projects-373923.covid_data.covid_deaths`
GROUP BY location, population, date
ORDER BY PercentPopulationInfected DESC