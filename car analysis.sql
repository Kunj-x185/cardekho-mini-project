CREATE DATABASE carsanalysis;
use carsanalysis

--read cars data--
select *from cardekho

--count of cars--
SELECT COUNT(*) FROM cardekho;

--how many cars available in 2023--
select count(*) from cardekho where year = 2023;

--how many cars available in 2020 to 2023--
select count(*) from cardekho where year in (2020, 2021, 2023)

--if we want to know availability seperately--
-- use group by--

select count(*) from cardekho where year in (2020, 2021, 2023) group by year

--client asked me to print the total of all cars by year, but i dont see all the details--
select year, count(*) from cardekho group by year

--client asked how many diesel cars are in 2020--
select count(*) from cardekho where year=2020 and fuel = "Diesel"

--manager told me to give a print of all the fuel cars come by year--
select year, count(*) from cardekho where fuel = 'petrol' group by year

--manager said there were more than 100 cars in a given year, which year had more than 100 cars--
select year, count(*) from cardekho group by year having count(*)>100

--give count of cars between 2015 to 2023 --
select count(*) from cardekho where year between 2015 and 2023
select year, count(*) from cardekho where year between 2015 and 2023 group by year

--give count of cars with details between 2015 to 2023 --
select *from cardekho where year between 2015 and 2023 

--end--