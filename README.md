# COVID_DATA

COVID Data portfolio project.

Goal of the project was to find & visualize four things.
  1. Global COVID-19 numbers... total cases, total deaths, & death percentage
  2. What were the total deaths by continent
  3. What was the percetage of the population by country that was infected with COVID-19
  4. What was the percetage of the population by country that was infected with COVID-19 year over year
  
## Preparation
I downloaded a CSV file of the Data from the Our World in Data website for the past 3 years of COVID Data.

https://ourworldindata.org/covid-deaths

## Process
I opened the CSV in Excel.  The overall table was very large so I split it into two tables.

I imported the two tables into Google's Big Query to begin Querying using SQL.

Tables:
  1. covid_deaths
  2. covid_vaccinations
  
## Analyze

I queried the Data to answer the four questions in SQL. (Queries found in SQL file)

Then I visualized in Tableau.

  1. For the first question I went with a simple data display of the numbers to make it clear and simple.
  2. Second question I used a bar chart to give a clean visualization of total death count per continent.  It starts with the highest and moves down to the lowest
  3. Third question I used a heatmap to display the percetage of the population by country that was infected with COVID-19
  4. For the fourth question I displayed the data on a line chart to compare the percetage of the population by country that was infected with COVID-19 year over year
  
 ## Share
 
 Insights for the Analyze phase.
 
  1. The death rate for COVID-19 is 1.02% over the past 3 years.
  2. Europe has had the highest total death count.
  3. Austria has the highest percentage of the population infected with COVID-19

TABLEAU Dashboard 
https://public.tableau.com/app/profile/daniel2560/viz/COVIDData_16775402876890/Dashboard1
