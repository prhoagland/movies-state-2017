CREATE TABLE "state_overviews_and_titles" (
    us_state VARCHAR(100)   NOT NULL,
	release_date date   NOT NULL,
    title VARCHAR(255)   NOT NULL,
    runtime float   NOT NULL,
    budget integer   NOT NULL,
    revenue integer   NOT NULL,
    popularity float   NOT NULL,
    vote_average float   NOT NULL,
    vote_count float   NOT NULL,
    net_income integer   NOT NULL
);

SELECT *
FROM state_overviews_and_titles
WHERE us_state = 'Washington'
ORDER BY vote_count DESC;

SELECT *
FROM state_overviews_and_titles
WHERE us_state = 'Washington' AND vote_count >= 100
ORDER BY vote_average DESC, vote_count DESC;

SELECT *
FROM state_overviews_and_titles
WHERE us_state = 'Washington'
ORDER BY popularity DESC;

SELECT *
FROM state_overviews_and_titles
WHERE title = 'Ferris Buellers Day Off';

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Alabama' AND (title = 'Captain Phillips' OR title = 'True Romance'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Arizona' AND (title = 'Phantom of the Paradise' OR title = 'My Own Private Idaho' OR title = 'Demolition Man'
								OR title = 'Harry Potter and the Order of the Phoenix' OR title = 'Flight of the Phoenix' OR title = 'Phoenix'
								OR title = 'Griffin & Phoenix' OR title = 'Im Still Here'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Arkansas' AND title = 'Trespass');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'California' AND title = 'Whiplash');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Connecticut' AND (title = 'A Knight in Camelot' OR title = 'The Haunting in Connecticut 2: Ghosts of Georgia'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Delaware' AND (title = 'Alone Yet Not Alone' OR title = 'The Crossing' OR title = '12th & Delaware'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Florida' AND (title = 'Home Alone 2: Lost in New York' OR title = 'Slap Shot' OR title = 'The Rookie'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Georgia' AND (title = 'Pride & Prejudice' OR title = 'Band of Brothers' OR title = 'The Duchess'
								OR title = 'The Gold Rush' OR title = 'Red Heat' OR title = 'My Life in Ruins'
								OR title = 'Kin-dza-dza!' OR title = '5 Days of War' OR title = 'Angus, Thongs and Perfect Snogging'
								OR title = 'The Cake Eaters' OR title = 'Georgia'));
								
DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Hawaii' AND title = 'Legally Blonde');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Illinois' AND (title = 'The Great Outdoors' OR title = 'Footloose' OR title = 'Gangster Squad'));
								
DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Indiana' AND (title = 'Raiders of the Lost Ark' OR title = 'Indiana Jones and the Last Crusade'
								OR title = 'Indiana Jones and the Temple of Doom' OR title = 'Armour of God'
								OR title = 'USS Indianapolis: Men of Courage' OR title = 'The People vs. George Lucas'
								OR title = 'Indiana Jones and the Kingdom of the Crystal Skull' OR title = 'Robin and the 7 Hoods'
								OR title = 'The Executioners Song'));
								
DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Kansas' AND (title = 'Nurse Betty' OR title = 'City Heat' OR title = 'The Secret of My Success'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Louisiana' AND title = 'Exit Through the Gift Shop')

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Michigan' AND title = 'Paint Your Wagon');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Minnesota' AND title = 'The Hustler');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Mississippi' AND title = 'Happythankyoumoreplease');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Missouri' AND title = 'Under Siege');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Montana' AND (title = 'Scarface' OR title = 'Hannah Montana: The Movie' OR title = 'Soapdish'));

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Nevada' AND title = 'The Hangover Part II');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'New York' AND title = 'Captain America: The Winter Soldier');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Tennessee' AND title = 'Gone in Sixty Seconds');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Utah' AND title = 'Point Break');

DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Virginia' AND (title = 'Tucker and Dale vs Evil' OR title = 'The Mothman Prophecies' OR title = 'Wrong Turn'
								 OR title = 'Wrong Turn 2: Dead End' OR title = 'Wrong Turn 3: Left for Dead'
								 OR title = 'Wrong Turn 5: Bloodlines' OR title = 'Wrong Turn 6: Last Resort' OR title = 'Bugsy'
								 OR title = 'The 10th Kingdom' OR title = 'I, Madman' OR title = 'Matewan'
								 OR title = 'Whos Afraid of Virginia Woolf?'));
								 
DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Washington' AND (title = 'Captain America: The Winter Soldier' OR title = 'Mr. Smith Goes to Washington'
								    OR title = 'Eddie Murphy: Delirious' OR title = 'Being There' OR title = 'Louis C.K. 2017'
									OR title = 'The Equalizer' OR title = 'In the Loop' OR title = 'Enemy of the State'
									OR title = 'Ultimate Avengers' OR title = 'The American President' OR title = 'Corrina, Corrina'
									OR title = 'National Treasure' OR title = 'The Adventures of Ichabod and Mr. Toad'
									OR title = 'The Replacements' OR title = 'Rendition' OR title = 'Doc Hollywood'
									OR title = 'Executive Decision' OR title = 'Man of the Year' OR title = 'Resident Evil: Retribution'
								    OR title = 'All the Presidents Men'));
									
DELETE FROM state_overviews_and_titles
WHERE (us_state = 'Washington' AND (title = 'Heartburn' OR title = 'The Walker' OR title = 'MacGruber' OR title = 'Killing Kennedy'
								    OR title = 'Suspect' OR title = 'Casino Jack' OR title = 'Alex Cross'));
								


CREATE TABLE state_best_movies_v2 AS
WITH TopMovies AS (
	SELECT DISTINCT ON (us_state)
       	us_state,
       	title,
       	release_date,
       	runtime,
       	budget,
       	revenue,
       	popularity,
       	vote_average,
       	vote_count,
       	net_income
	FROM state_overviews_and_titles
	WHERE vote_count > 100
	ORDER BY us_state, vote_average DESC, vote_count DESC
),
FallbackMovies AS (
	SELECT DISTINCT ON (us_state)
       	us_state,
       	title,
       	release_date,
       	runtime,
       	budget,
       	revenue,
       	popularity,
       	vote_average,
       	vote_count,
       	net_income
	FROM state_overviews_and_titles
	WHERE vote_count > 50 AND us_state NOT IN (SELECT us_state FROM TopMovies)
	ORDER BY us_state, vote_average DESC, vote_count DESC
)
SELECT *
FROM TopMovies
UNION ALL
SELECT *
FROM FallbackMovies
ORDER BY us_state;

CREATE TABLE state_most_popular_v2 AS
SELECT DISTINCT ON (us_state)
       	us_state,
       	title,
       	release_date,
       	runtime,
       	budget,
       	revenue,
       	popularity,
       	vote_average,
       	vote_count,
       	net_income
FROM state_overviews_and_titles
ORDER BY us_state, popularity DESC;