set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

-- [Answered by Philip Wells] 
-- Query 1. Retrieve the names, addresses, and estimated-prices of the 3 most popular restaurants in New York city, US
select t.`name`, t.street_number, t.street_name, t.zip_code, t.rating, r.price_range_starting, r.price_range_ending
from travel_attraction t inner join restaurant r on t.`name` = r.`name`
where t.city_name = 'New York City'
order by t.rating desc
limit 3;

-- [Answered by Philip Wells] 
-- Query 2. Retrieve the username, status (regular or preferred), and ranking of the member who has uploaded the most pictures.
select m.username, m.member_type, m.ranking, total_images
from `member` m
join (
select username, count(*) as total_images
from image
group by username
order by total_images desc
limit 1)
p on m.username = p.username;

-- [Answered by Matthew Castillo] 
-- Query 3. For each country in the system, retrieve the username, address and the number of followers of 
-- the members who live in this country and have the most followers.
SELECT m.username, m.street_number, m.street_number, m.street_number, m.city, m.state, m.country, m.number_of_followers 
FROM member m 
WHERE (m.username, m.number_of_followers) IN (
    SELECT username, MAX(number_of_followers) 
    FROM member 
    GROUP BY country, username
);

-- [Answered by Matthew Castillo] 
-- Query 4. Retrieve the names and countries of all preferred users who never visited the US.
SELECT DISTINCT m.USERNAME, m.COUNTRY
FROM MEMBER m LEFT JOIN TRAVELS_TO tt ON m.USERNAME = tt.USERNAME
LEFT JOIN TRAVEL_ATTRACTION ta ON tt.`NAME` = ta.`NAME` AND tt.PHONE_NUMBER = ta.PHONE_NUMBER
WHERE m.RANKING = 'preferred'
AND (ta.COUNTRY_NAME IS NULL OR ta.COUNTRY_NAME != 'United States');

-- [Answered by Phillip Ring] 
-- Query 5. For all country(s) visited by those who also visited the US on the same trip 
-- (within 15 days), retrieve the distinct names of the countries.
SELECT DISTINCT G.COUNTRY_NAME
FROM TRIP_PLAN T1
JOIN ARRIVAL_DATE_TIMES A1 ON T1.PLANID = A1.PLANID
JOIN TRAVEL_ATTRACTION TA1 ON A1.ARRIVAL_LOCATION = TA1.NAME
JOIN GEOGRAPHICAL_LOCATION G ON TA1.COUNTRY_NAME = G.COUNTRY_NAME
WHERE G.COUNTRY_NAME <> 'United States'
AND NOT EXISTS (
    SELECT 1
    FROM TRIP_PLAN T2
    JOIN ARRIVAL_DATE_TIMES A2 ON T2.PLANID = A2.PLANID
    JOIN TRAVEL_ATTRACTION TA2 ON A2.ARRIVAL_LOCATION = TA2.NAME
    JOIN GEOGRAPHICAL_LOCATION G2 ON TA2.COUNTRY_NAME = G2.COUNTRY_NAME
    WHERE G2.COUNTRY_NAME = 'United States'
    AND ABS(DATEDIFF(T1.START_DATE_TIME, T2.START_DATE_TIME)) <= 15);

-- [Answered by Darius Richardson] 
-- Query 6. Retrieve the contact information of the business owner who owns the most expensive restaurant 
-- and the owner who owns the most assets in the system.
SELECT R.`NAME` AS 'RESTAURANT NAME', B.`NAME` AS 'BUSINESS OWNER', B.PHONE_NUMBER AS 'BUSINESS OWNER PHONE NUMBER', B.CONTACT_PERSON
FROM RESTAURANT R INNER JOIN BUSINESS_OWNER B ON R.BUSINESS_NAME = B.`NAME`
WHERE R.`NAME` = (SELECT R.`NAME`
FROM RESTAURANT R INNER JOIN BUSINESS_OWNER B ON R.BUSINESS_NAME = B.`NAME`
GROUP BY R.`NAME`
ORDER BY AVG(PRICE_RANGE_ENDING - PRICE_RANGE_STARTING) DESC
LIMIT 1)
OR R.`NAME` = (SELECT B.`NAME`
FROM RESTAURANT R RIGHT JOIN BUSINESS_OWNER B ON R.BUSINESS_NAME = B.`NAME`
LEFT JOIN SHOPPING_MALL S ON B.`NAME` = S.BUSINESS_NAME
GROUP BY B.`NAME`
ORDER BY (COUNT(R.`NAME`) + COUNT(S.`NAME`)) DESC
LIMIT 1);

-- [Answered by Colton Booth] 
-- Query 7. Retrieve the names of the 5 most desirable France cities to visit.
ALTER TABLE TRAVEL_ATTRACTION
ADD COLUMN POPULARITY DECIMAL(5,2) DEFAULT 0;
UPDATE TRAVEL_ATTRACTION TA
JOIN (
    SELECT CITY_NAME, AVG(RATING) AS AVG_RATING
    FROM TRAVEL_ATTRACTION
    WHERE COUNTRY_NAME = 'France'
    GROUP BY CITY_NAME
) T ON TA.CITY_NAME = T.CITY_NAME
SET TA.POPULARITY = T.AVG_RATING;

SELECT CITY_NAME, POPULARITY
FROM TRAVEL_ATTRACTION
WHERE COUNTRY_NAME = 'France'
ORDER BY POPULARITY DESC
LIMIT 5;

-- [Answered by Darius Richardson] 
-- Query 8. Retrieve the username and status of the member who either posted any comments 
-- or created any itinerary between 12/01/2018 and 1/31/2019.
SELECT M.USERNAME, M.RANKING, MEMBER_TYPE AS 'MEMBER STATUS', P.PLANID, P.`NAME` AS 'ITINERARY PLAN NAME', P.PURPOSE, 
	   P.START_DATE_TIME, P.END_DATE_TIME, C.COMMENTID, C.POSTING_DATE, C.CONTENT
FROM TRIP_PLAN P INNER JOIN `MEMBER` M ON P.USERNAME = M.USERNAME
				 INNER JOIN `COMMENT` C ON M.USERNAME = C.USERNAME
WHERE (P.START_DATE_TIME BETWEEN '2018-12-01' AND '2019-01-31') AND (P.END_DATE_TIME BETWEEN '2018-12-01' AND '2019-01-31') 
	   AND (C.POSTING_DATE BETWEEN '2018-12-01' AND '2019-01-31')
ORDER BY M.USERNAME;

-- [Answered by Nicholas Habibelahian]
-- Query 9. For each member who has visited all the states/provinces in France, retrieve the maximum, 
-- minimum and average daily cost per person, per day across all these related itineraries 
-- (*considering restaurant and attraction cost only).
SELECT
    MAX(daily_cost_per_person) AS max_daily_cost_per_person,
    MIN(daily_cost_per_person) AS min_daily_cost_per_person,
    AVG(daily_cost_per_person) AS avg_daily_cost_per_person
FROM (
    SELECT T.USERNAME,T.PLANID,
SUM(COST_PER_PERSON)/ DATEDIFF(A.ARRIVAL_DATE, A.DEPARTURE_DATE) AS daily_cost_per_person
    FROM TRIP_PLAN T
    JOIN DEPARTURE_DATE_TIMES D ON T.PLANID = D.PLANID
    JOIN ARRIVAL_DATE_TIMES A ON T.PLANID = A.PLANID
    JOIN CONTAINS C ON T.PLANID = C.PLANID
    JOIN TRAVEL_ATTRACTION TA ON C.NAME = TA.NAME AND C.PHONE_NUMBER = TA.PHONE_NUMBER
    JOIN RESTAURANT R ON TA.NAME = R.NAME AND TA.PHONE_NUMBER = R.PHONE_NUMBER
    WHERE TA.COUNTRY_NAME = 'France'
    GROUP BY T.USERNAME, T.PLANID
) AS daily_costs
WHERE EXISTS (
    SELECT STATE_NAME
    FROM GEOGRAPHICAL_LOCATION
    WHERE COUNTRY_NAME = 'France'
    GROUP BY STATE_NAME
    HAVING COUNT(*) = (SELECT COUNT(*)
        FROM GEOGRAPHICAL_LOCATION
        WHERE COUNTRY_NAME = 'France'
    )
);

-- [Answered by Phillip Ring] 
-- Query 10. For each country, retrieve the total number of original comments, the total number of 
-- related itineraries, and the total number of members from this country, and the total number of members who have visited.
SELECT 
    G.COUNTRY_NAME AS Country,
    COUNT(DISTINCT C.COMMENTID) AS Total_Comments,
    COUNT(DISTINCT TP.PLANID) AS Total_Itineraries,
    COUNT(DISTINCT M.USERNAME) AS Total_Members,
    COUNT(DISTINCT TT.USERNAME) AS Total_Members_Visited
FROM GEOGRAPHICAL_LOCATION G
LEFT JOIN TRAVEL_ATTRACTION TA ON G.CITY_NAME = TA.CITY_NAME 
      AND G.STATE_NAME = TA.STATE_NAME 
      AND G.COUNTRY_NAME = TA.COUNTRY_NAME
LEFT JOIN `COMMENT` C ON TA.`NAME` = C.`NAME` AND TA.PHONE_NUMBER = C.PHONE_NUMBER
LEFT JOIN TRIP_PLAN_ATTRACTIONS TPA ON TA.`NAME` = TPA.ATTRACTION_NAME
LEFT JOIN TRIP_PLAN TP ON TPA.PLANID = TP.PLANID
LEFT JOIN `MEMBER` M ON TP.USERNAME = M.USERNAME
LEFT JOIN TRAVELS_TO TT ON M.USERNAME = TT.USERNAME
GROUP BY G.COUNTRY_NAME;