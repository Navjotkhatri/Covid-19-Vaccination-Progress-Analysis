--covid vaccination programe analysis


select* from vaccinations



select location,population,Max(people_fully_vaccinated) AS total_people_fully_vaccinated
,(MAX(people_fully_vaccinated)/population)*100 AS vaccinated_population_percentage
from vaccinations
where location like 'India%'
group by location,population





select location,population,Max(people_fully_vaccinated) AS total_people_fully_vaccinated
,(MAX(people_fully_vaccinated)/population)*100 AS vaccinated_population_percentage
from vaccinations
where continent is not null
group by location,population
order by vaccinated_population_percentage desc





select location,date,population,people_fully_vaccinated from vaccinations
where continent is not null
and people_fully_vaccinated is not null
and location like 'India%'


