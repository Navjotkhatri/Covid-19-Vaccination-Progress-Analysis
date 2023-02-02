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

