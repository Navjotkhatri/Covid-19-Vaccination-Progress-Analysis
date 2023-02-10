--covid vaccination programe analysis


select* from vaccinations

--total vaccinated and boosters percentage people in india--

select location,population,Max(people_fully_vaccinated) AS total_people_fully_vaccinated
,(MAX(people_fully_vaccinated)/population)*100 AS vaccinated_population_percentage,
max(total_boosters) AS total_boosters,
(max(total_boosters)/population)*100 as boosters_dose_percentage 
from vaccinations
where location like 'India%'
group by location,population


-----------total vaccinated and boosters percentage people in the world--
select location,population,Max(people_fully_vaccinated) AS total_people_fully_vaccinated
,(MAX(people_fully_vaccinated)/population)*100 AS vaccinated_population_percentage,
max(total_boosters) AS total_boosters,
(max(total_boosters)/population)*100 as boosters_dose_percentage 
from vaccinations
where location like 'World%'
group by location,population




---total booster dose percentage in india---

select location,population,max(total_boosters) AS total_boosters,
(max(total_boosters)/population)*100 as boosters_dose_percentage 
from vaccinations
where continent is not null
and location like 'India%'
group by location,population
order by max(total_boosters)





--total vaccinated and boosters percentage people in the world--



select location,population,Max(people_fully_vaccinated) AS total_people_fully_vaccinated
,(MAX(people_fully_vaccinated)/population)*100 AS vaccinated_population_percentage,
max(total_boosters) AS total_boosters,
(max(total_boosters)/population)*100 as boosters_dose_percentage 
from vaccinations
where location like 'World%'
group by location,population


----total booster dose percentage in the world

select location,population,max(total_boosters) AS total_boosters,
(max(total_boosters)/population)*100 as boosters_dose_percentage 
from vaccinations
where continent is  null
and location like 'World%%'
group by location,population
order by max(total_boosters)

----total populaion percentage vaccinated in all location--

select location,population,Max(people_fully_vaccinated) AS total_people_fully_vaccinated
,(MAX(people_fully_vaccinated)/population)*100 AS vaccinated_population_percentage
from vaccinations
where continent is not null
group by location,population
order by vaccinated_population_percentage desc



----vaccination programe progress in india--

select location,date,population,people_fully_vaccinated from vaccinations
where continent is not null
and people_fully_vaccinated is not null
and location like 'India%'


select location,population,max(total_boosters) AS total_boosters,
(max(total_boosters)/population)*100 as boosters_dose_percentage 
from vaccinations
where continent is not null
and location like 'India%'
group by location,population
order by max(total_boosters)




select location,population,max(total_boosters) AS total_boosters 
from vaccinations
where continent is not null
and location like 'India%'
group by location,population
order by MAX(total_boosters)




select location,population,max(total_boosters) AS total_boosters ,
(max(total_boosters)/population)*100 AS boosters_dose_percentage
from vaccinations
where continent is not null
--and location like 'India%'
group by location,population
order by MAX(total_boosters) desc


select * from vaccinations



select population,location,date,people_fully_vaccinated_per_hundred from vaccinations
where continent is not null
and location like 'India'

-----some world indexs ----


select location,max(stringency_index) as stringency_index,
max(population_density) as population_density,
max(median_age) as median_age,max(aged_65_older) as aged_65_older,
max(aged_70_older) as aged_70_older,max(gdp_per_capita) as gdp_per_capita,
max(extreme_poverty) as extreme_poverty,max(cardiovasc_death_rate) as cardiovasc_death_rate,
max(female_smokers) as female_smokers,max(male_smokers) as male_smokers,
max(handwashing_facilities) as handwashing_facilities,
max(hospital_beds_per_thousand) as hospital_beds_per_thousand,
max(life_expectancy) as life_expectancy,
max(human_development_index) as human_development_index
from vaccinations
where continent is not null
group by location



