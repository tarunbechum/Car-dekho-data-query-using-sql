use cars;

-- Read data --
select * from car_dekho;

-- Total cars to get a count of total records --
select count(*) Total_cars from car_dekho ;

-- How many cars will be avilable in 2023 --
select count(*) from  car_dekho where year= 2023;

-- How many cars are avilable in 2020 , 2021 , 2022 --
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- Print the total cars by year --
select year , count(*) from car_dekho group by year;

-- how many diesel cars will be there in 2020 -- 
select count(*) from car_dekho where fuel = "diesel" and year = 2020;

-- how many petrol cars will be there in 2020 --
select count(*) from car_dekho where fuel = "petrol" and year = 2020;

-- Print all the fuel cars (diesel , petrol and cng ) come by all year --
select year , count(*) from car_dekho 
where fuel in("diesel","petrol","CNG") 
group by year ;

-- Which year had more than 100 cars --
select year , COUNT(*) from car_dekho 
group by year 
having count(*) > 100;

-- All car count between 2015 to 2023 -- 
select count(*) 
from car_dekho 
where year between 2015 and 2023;

-- end --

-- year wise count --
select year , count(*)
from car_dekho 
group by year 
having year between 2015 and 2023;


