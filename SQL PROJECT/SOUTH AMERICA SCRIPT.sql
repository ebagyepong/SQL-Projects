-- create database --
CREATE DATABASE south_american_celebrities;

-- creating celebrities table --
CREATE TABLE celebrity (celebrity_ID INT PRIMARY KEY, celebrity_name TEXT, gender TEXT, age INT, country TEXT,  profession TEXT CHECK (profession IN('singer','actor','both')), debut_year TEXT, net_worth FLOAT);


-- creating projects table --
CREATE TABLE project (project_ID INT PRIMARY KEY, celebrity_ID INT, project_count INT,movie_count INT,song_count INT, hit_project TEXT, recent_project TEXT);


-- creating performance table --
CREATE TABLE performance (performance_ID INT PRIMARY KEY, celebrity_ID INT, popular_role_type TEXT, popular_character_name TEXT, region_of_success TEXT);

-- creating achievement table --
CREATE TABLE achievement (achievement_ID INT PRIMARY KEY, celebrity_ID INT, award_count INT, nomination_count INT, award_for_hit_project TEXT, award_for_recent_project TEXT);


-- creating contribution table --
CREATE TABLE contribution (contribution_ID INT PRIMARY KEY AUTO_INCREMENT, celebrity_ID INT, celebrity_name TEXT, contribution_type TEXT, beneficiary TEXT, contribution_year TEXT);



-- inserting into celebrity table --
INSERT INTO celebrity (celebrity_ID, celebrity_name, gender, age, country, profession, debut_year, net_worth) VALUES
(100, 'Shakira Isabel Mebarek', 'Female', 48, 'Colombia', 'singer', '1990', 300000000),
(101, 'Juan Luis Londoño Arias', 'Male', 31, 'Colombia', 'both', '2010', 22000000),
(102, 'Sofía Margarita Vergara Vergara', 'Female', 52, 'Colombia', 'actor', '1995', 180000000),
(103, 'Karla Camila Cabello Estrabao', 'Female', 28, 'Cuba', 'singer', '2012', 18000000),
(104, 'José Pedro Balmaceda Pascal', 'Male', 50, 'Chile', 'actor', '1996', 15000000),
(105, 'Larissa de Macedo Machado', 'Female', 32, 'Brazil', 'singer', '2010', 50000000),
(106, 'Mariana Ximenes', 'Female', 44, 'Brazil', 'actor', '1998', 185000000),
(107, 'Wagner Moura', 'Male', 49, 'Brazil', 'actor', '1996', 10000000),
(108, 'José Álvaro Osorio Balvin', 'Male', 40, 'Colombia', 'singer', '2004', 30000000),
(109, 'Carolina Giraldo Navarro', 'Female', 34, 'Colombia', 'singer', '2006', 25000000),
(110, 'Carla Patricia Morrison Flores,', 'Female', 38, 'Cuba', 'singer', '2009', 3700000),
(111, 'Mariana Espósito', 'Female', 33, 'Argentina', 'both', '2003', 12000000),
(112, 'Sebastián Obando Giraldo', 'Male', 30, 'Colombia', 'singer', '2013', 10000000),
(113, 'Ricardo Alberto Darín', 'Male', 47, 'Argentina', 'actor', '2002', 20000000),
(114, 'Greeicy Yeliana Rendón Ceballos', 'Female', 32, 'Colombia', 'both', '2007', 4700000),
(115, 'Carolina Soto', 'Female', 33, 'Brazil', 'actor', '2009', 68400000),
(116, 'Sofia Rodriguez', 'Female', 32, 'Colombia', 'both', '2010', 58100000),
(117, 'Lucas Fernandez', 'Male', 35, 'Peru', 'singer', '2008', 65000000),
(118, 'Pablo Arturo del Sagrado Corazón Herrera Rogers', 'Male', 62, 'Chile', 'singer', '1981', 110600000),
(119, 'Camilo Echeverry Correa', 'Male', 31, 'Colombia', 'singer', '2008', 30000000);


-- inserting into projects table --
INSERT INTO project (project_ID, celebrity_ID, project_count,movie_count,song_count, hit_project, recent_project) VALUES
(1, 100, 153, 8, 145, 'Laundry Service', 'Besame'),
(2, 101, 137, 2, 135, 'La Temptura', 'Si Tú Me Vieras'),
(3, 102, 70, 70, 0, 'Modern Family', 'Griselda'),
(4, 103, 11, 4, 7, 'X-Factor', 'C,XOXO'),
(5, 104, 85, 85, 0, 'Game Of Thrones', 'Eddington'),
(6, 105, 120, 0, 120, 'Envolver', 'En 4'),
(7, 106, 33, 0, 33, 'Uga Uga', 'Mirna Vargas in Dona de Mim'), 
(8, 107, 83, 83, 0, 'Elite Squad:The Enemy Within', 'The Secret Agent'),
(9, 108, 9, 0, 80, 'Mi Gente:Song', 'Rayo'), 
(10, 109, 7, 0, 90, 'Tusa', 'Tropicoqueta'),
(11, 110, 12,0,12, 'Déjenme Llorar', 'El Renacimiento'),
(12,111, 25, 7, 18, 'Esperanza Mía', 'Disciplina'),
(13,112, 15, 0, 15, 'Tacones Rojos', 'Una Noche Sin Pensar'),
(14,113, 82, 82, 0, 'The Secret In Their Eyes', 'The Eternaut'),
(15,114, 17, 17, 0, 'Más Fuerte', 'Yeliana Live Tour'),
(16, 115, 6, 0, 0, 'El Conde', 'The Wave'),
(17, 116, 4, 3, 1, 'Troilus and Cressida (Patroclus)', 'A Streetcar Named Desire (Stella)'),
(18, 117, 2, 0, 6, 'Supergirl', 'Kids'),
(19, 118, 12, 0, 40, 'Entre Dos Paredes', 'Primer plano'),
(20, 119, 20, 0, 20, 'Tutu', 'Cuatro');


-- inserting into performance table --
INSERT INTO performance (performance_ID, celebrity_ID, popular_role_type, popular_character_name, region_of_success) VALUES
(1,100,'Lead Singer','Shakira','Global'),
(2,101,'Singer','Maluma','Global'),
(3,102,'Actor','Gloria Pritchett','Global'),
(4,103,'Singer','Camila Cabello','Global'),
(5,104,'Actor','Oberyn Martell','Global'),
(6, 105, 'singer-songwriter', 'Anitta', 'Global'),
(7, 106, 'actor', 'Bionda', 'Global' ),
(8, 107, 'actor', 'Wagner Moura', 'Brazil'),
(9, 108, 'singer', 'J Balvin', 'Latin America'),
(10, 109, 'singer', 'Karol G', 'Global'),
(11,110, 'singer', 'Carla Morrison', 'Mexico'),
(12,111, 'lead actress', 'Esperanza', 'Argentina'),
(13,112, 'singer', 'Sebastián Yatra', 'Colombia'),
(14,113,'actor', 'Ricardo Darin', 'Argentina'),
(15,114,'lead actress', 'Daisy OBrian', 'Colombia'),
(16, 115, 'Actor', 'Caroline Soto', 'Brazil'),
(17, 116, 'Actor', 'Patroclus, Stella, Tamsin', 'Colombia & USA'),
(18, 117, 'Singer', 'Lucas Fernandez', 'Peru & Latin America'),
(19, 118, 'Singer', 'Lucas Herrera', 'Chile & Latin America'),
(20, 119, 'Singer', 'Camilo Correa', 'Latin America & USA');






-- inserting into achievements table --
INSERT INTO achievement (achievement_ID, celebrity_ID, award_count, nomination_count, award_for_hit_project, award_for_recent_project) VALUES
(1, 100, 447, 994, 'Awarded', 'Not Awarded'),
(2, 101, 79, 277, 'Awarded', 'Not Awarded'),
(3, 102, 12, 54, 'Awarded', 'Awarded'),
(4, 103, 12, 54, 'Not Awarded', 'Not Awarded'),
(5, 104, 22, 41, 'Awarded', 'Not Awarded'),
(6, 105, 300, 760, 'Awarded', 'Not Awarded'),
(7, 106, 10, 20, 'Awarded', 'Not Awarded'),
(8, 107, 45, 41, 'Awarded', 'Awarded'),
(9, 108, 225, 521, 'Awarded', 'Not Awarded'),
(10, 109, 162, 423, 'Awarded', 'Not Awarded'),
(11,110, 2, 5, 'Awarded', 'Not Awarded'),
(12,111, 8, 15, 'Awarded', 'Not Awarded'),
(13,112,6, 10, 'Awarded', 'Not Awarded'),
(14,113, 45, 50, 'Awarded', 'Not Awarded'),
(15,114, 4, 7, 'Awarded', 'Not Awarded'),
(16, 115, 0, 0, 'Not Awarded', 'Not Awarded'),
(17, 116, 0, 0, 'Not Awarded', 'Not Awarded'),
(18, 117, 0, 0, 'Not Awarded', 'Not Awarded'),
(19, 118, 2, 3, 'Awarded', 'Awarded'),
(20, 119, 6, 10, 'Awarded', 'Not Awarded');




-- inserting into contributions --
INSERT INTO contribution (celebrity_ID, celebrity_name, contribution_type, beneficiary, contribution_year) VALUES 
(100, 'Shakira Isabel Mebarek', 'School Construction', 'ALAS Foundation (Early childhood education)', '2021'),
(100, 'Shakira Isabel Mebarek', 'Disaster Relief Donation', 'UNICEF – Venezuela/Colombia border children', '2019'),
(101, 'Juan Luis Londoño Arias', 'Scholarship Fund', 'El Arte de los Sueños (Young artists in Medellín)', '2021'),
(101, 'Juan Luis Londoño Arias', 'Medical Equipment Donation', 'Hospitals in Antioquia, Colombia', '2020'),
(102, 'Sofía Margarita Vergara Vergara', 'Microfinance Loans', 'Women Entrepreneurs in Colombia (via EBY and Seven Bar Foundation)', '2017'),
(102, 'Sofía Margarita Vergara Vergara', 'Premium Support Payment', 'Female Coffee Growers (National Federation of Coffee Growers of Colombia)', '2024'),
(102, 'Sofía Margarita Vergara Vergara', 'Fundraising Gala Co-host', 'Give to Colombia, Formula Sonrisas, Genesis Foundation, ArtNexus Foundation', '2011'),
(102, 'Sofía Margarita Vergara Vergara', 'Disaster Relief Appeal', 'Colombian Winter Flood Victims', '2010'),
(103, 'Karla Camila Cabello Estrabao', 'Climate Action Campaign', 'Global Citizen/Climate Reality Project', '2022'),
(103, 'Karla Camila Cabello Estrabao', 'Immigration Advocacy', 'This Is About Humanity (support for migrant families)', '2021'),
(104, 'José Pedro Balmaceda Pascal', 'Refugee Support Campaign', 'International Rescue Committee (IRC)', '2022'),
(104, 'José Pedro Balmaceda Pascal', 'LGBTQ+ Advocacy Fundraiser', 'The Trevor Project', '2021'),
(105, 'Larissa de Macedo Machado', ' LGBTQ+ Advocacy', 'LGBTQ+ rights organizations in Brazil', '2020'),
(105, 'Larissa de Macedo Machado', 'Amazon Rainforest Awareness Campaign', 'Environmental NGOs (e.g., Instituto Socioambiental)', '2021'),
(105, 'Mariana Ximenes', ' Cancer Awareness Campaign', 'Instituto Nacional de Câncer (INCA), Brazil', '2015'),
(106, 'Mariana Ximenes', 'Literacy Promotion & Reading Initiatives', 'Underprivileged children in São Paulo via NGO “Vaga Lume”', '2018'),
(106, 'Wagner Maniçoba de Moura', 'Human Rights Advocacy', 'Amnesty International Brazil', '2017'),
(106, 'Wagner Maniçoba de Moura', 'Cultural Access Campaign', 'Marginalized communities in Brazilian favelas', '2020'),
(107, 'José Álvaro Osorio Balvin', 'Mental Health Awareness Campaign ("OYE" app co-founder)', 'Latin American youth', '2022'),
(107, 'José Álvaro Osorio Balvin', 'COVID-19 Vaccination Awareness', 'Colombian public health programs', '2021'),
(108, 'Carolina Giraldo Navarro', 'Food Aid Distribution', 'Low-income families in Medellín', '2020'),
(108, 'Carolina Giraldo Navarro', 'Education Grants for Girls', 'Female students in rural Colombia', '2022'),
(108, 'Carla Patricia Morrison Flores', 'Mental Health Advocacy', 'Young Adults in Mexico', '2021'),
(109, 'Mariana Espósito', 'Education Support', 'Underprivileged Youth', '2020'),
(112, 'Sebastián Obando Giraldo', 'Environmental Campaign', 'Amazon Conservation', '2022'),
(113, 'Ricardo Alberto Darín', ' Support for Independent Argentine Cinema', 'Young Argentine filmmakers and film students', '2013'),
(113, 'Ricardo Alberto Darín', 'Human Rights Advocacy (Planned Parenthood & Justice)', 'Abuelas de Plaza de Mayo & human rights organizations in Argentina', '2017'),
(114, 'Greeicy Yeliana Rendón Ceballos', 'Animal Welfare Support', 'Rescue Shelters in Colombia', '2023'),
(115, 'Carolina Soto', 'Environmental Advocacy', 'Brazilian coastal cleanup initiatives', '2023'),
(116, 'Sofia Rodriguez', 'Theater Education', 'University Theater Students', '2024'),
(117, 'Lucas Fernandez', 'Music Education Workshops', 'Peruvian Youth', '2023'),
(118, 'Pablo Arturo del Sagrado Corazón Herrera Rogers', 'Cultural Ambassador', 'Promoting Chilean romantic music', '2022'),
(119, 'Camilo Echeverry Correa', 'Philanthropic & Talent Advocacy', 'La Tribu / Latin songwriters', '2023');

-- selecting celebrity --
SELECT *
FROM celebrity;

-- selecting project --
SELECT *
FROM project;

-- selecting performance --
SELECT *
FROM performance;

-- selecting achievement --
SELECT *
FROM achievement;

-- selecting contribution --
SELECT *
FROM contribution;

-- Country With Most Celebrities --
SELECT country, COUNT(celebrity_ID) AS celebrity_count
FROM celebrity
GROUP BY country
ORDER BY celebrity_count DESC
LIMIT 1;

-- Total Celebrities --
SELECT COUNT(*) AS total_celebrities
FROM celebrity;


-- Popular Profession --
SELECT profession, COUNT(celebrity_ID) AS profession_count
FROM celebrity
GROUP BY profession
ORDER BY profession_count DESC
LIMIT 1;

-- Most Awarded Celebrities --
SELECT c.celebrity_id, p.popular_character_name, SUM(a.award_count) AS total_awards
FROM celebrity AS c
INNER JOIN achievement AS a 
ON c.celebrity_id = a.celebrity_id
INNER JOIN performance AS p
ON p.celebrity_id = a.celebrity_id
GROUP BY c.celebrity_id, p.popular_character_name
ORDER BY total_awards DESC
LIMIT 5;


-- Celebrity Impact Across Countries --
SELECT c.country, COUNT(co.contribution_ID) AS total_contributions
FROM celebrity AS c
INNER JOIN contribution AS co 
ON c.celebrity_id = co.celebrity_id
GROUP BY c.country
ORDER BY total_contributions DESC;



-- Gender Distribution Across Professions --
SELECT profession, gender, COUNT(*) AS count
FROM celebrity
GROUP BY profession, gender
ORDER BY profession, gender;

-- Number of Celebrities Per Profession --
SELECT profession, COUNT(celebrity_ID) AS celebrity_count
FROM celebrity
GROUP BY profession
ORDER BY celebrity_count DESC;

-- Celebrity Count Per Country --
SELECT country, COUNT(celebrity_ID) AS celebrity_count
FROM celebrity
GROUP BY country
ORDER BY country DESC;

-- Average Net Worth --
SELECT ROUND(AVG(net_worth),2) AS average_net_worth
FROM celebrity;

-- Net Worth Topper --
SELECT country, AVG(net_worth) AS average_net_worth
FROM celebrity
GROUP BY country
ORDER BY average_net_worth DESC
LIMIT 1;

-- Richest Celebrity --
SELECT c.celebrity_id, p.popular_character_name, AVG(c.net_worth) 
FROM celebrity  AS c
INNER JOIN performance AS p
ON p.celebrity_ID = c.celebrity_ID
GROUP BY c.celebrity_id, p.popular_character_name
ORDER BY net_worth DESC
LIMIT 1;

-- Least Wealthy Celebrities --
SELECT p.popular_character_name, AVG(c.net_worth) AS average_net_worth
FROM celebrity AS c
INNER JOIN performance AS p 
ON c.celebrity_id = p.celebrity_id
GROUP BY p.popular_character_name
ORDER BY average_net_worth ASC
LIMIT 5;

-- Average Net Worth By Gender --
SELECT gender, ROUND(AVG(net_worth),2) AS average_net_worth
FROM celebrity
GROUP BY gender
ORDER BY average_net_worth DESC;

-- Average Net Worth By Country --
SELECT country, ROUND(AVG(net_worth),2) AS average_net_worth
FROM celebrity
GROUP BY country
ORDER BY average_net_worth DESC;

 -- Least Wealthy Celebrities --
SELECT p.popular_character_name, AVG(c.net_worth) AS average_net_worth
FROM celebrity AS c
INNER JOIN performance AS p 
ON c.celebrity_id = p.celebrity_id
GROUP BY p.popular_character_name
ORDER BY average_net_worth DESC
LIMIT 5;



















               






















