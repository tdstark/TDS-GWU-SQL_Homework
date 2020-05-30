-- Drop table if exists
-- DROP TABLE firepower;

-- Create new table to import data
CREATE TABLE firepower (
	country VARCHAR,
	ISO3 VARCHAR,
	rank INT,
	TotalPopulation INT,
	ManpowerAvailable INT,
	TotalMilitaryPersonnel INT,
	ActivePersonnel INT,
	ReservePersonnel INT,
	TotalAircraftStrength INT,
	FighterAircraft INT,
	AttackAircraft INT,
	TotalHelicopterStrength INT,
	AttackHelicopters INT
);

-- Import data from firepower.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM firepower;

DELETE FROM firepower
WHERE reservepersonnel = 0;

UPDATE firepower SET fighteraircraft = fighteraircraft + 1
WHERE fighteraircraft = 0;

UPDATE firepower SET totalaircraftstrength = totalaircraftstrength + 1
WHERE fighteraircraft = 1;

SELECT 
AVG(TotalMilitaryPersonnel) averageMilitaryPersonnel
, AVG(TotalAircraftStrength) averageAircraftStrength
, AVG(TotalHelicopterStrength) averageHelicopterStrength
, AVG(TotalPopulation) averagePopulation
FROM firepower;