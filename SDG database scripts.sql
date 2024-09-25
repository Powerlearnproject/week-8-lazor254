create database sdg;
use sdg;

-- drop table if exists Regions;
CREATE TABLE Regions (
  region_id INT PRIMARY KEY,
  region_name VARCHAR(100),
  population INT
);

CREATE TABLE WaterSources (
  source_id INT PRIMARY KEY,
  region_id INT,
  source_type VARCHAR(50),
  capacity INT,
  FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE WaterQuality (
  quality_id INT PRIMARY KEY,
  source_id INT,
  water_ph DECIMAL(3,2),
  contaminant_levels DECIMAL(5,2),
  FOREIGN KEY (source_id) REFERENCES WaterSources(source_id)
);

CREATE TABLE HealthData (
  health_id INT PRIMARY KEY,
  region_id INT,
  waterborne_disease_cases INT,
  population_affected INT,
  FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

INSERT INTO Regions (region_id, region_name, population) 
VALUES (1, 'Region 1', 500000), (2, 'Region 2', 200000), (3, 'Region 3', 400000), (4, 'Region 4', 600000), (5, 'Region 5', 230000), (6, 'Region 6', 340000), (7, 'Region 7', 210000), (8, 'Region 8', 410000), (9, 'Region 9', 700000), (10, 'Region 10', 800000), (11, 'Region 11', 900000), (12, 'Region 12', 560000), (13, 'Region 13', 610000), (14, 'Region 14', 810000), (15, 'Region 15', 640000), (16, 'Region 16', 400000), (17, 'Region 17', 604000), (18, 'Region 18', 510000), (19, 'Region 19', 870000), (20, 'Region 20', 780000);

INSERT INTO WaterSources (source_id, region_id, source_type, capacity) 
VALUES (1, 1, 'River', 10000), (2, 2, 'Well', 5000), (3, 3, 'Well', 9000), (4, 4, 'Borehole', 6000), (5, 5, 'stream', 70000), (6, 6, 'Well', 5200), (7, 7, 'Well', 5000), (8, 8, 'Well', 5100), (9, 9, 'River', 5040), (10, 10, 'Well', 9000), (11, 11, 'Borehole', 7000), (12, 12, 'River', 5600), (13, 13, 'River', 7000), (14, 14, 'River', 5230), (15, 15, 'Stream', 5300), (16, 16, 'Well', 6300), (17, 17, 'Stream', 7000), (18, 18, 'River', 78000), (19, 19, 'Stream', 9500), (20, 20, 'Borehole', 46000);

INSERT INTO WaterQuality (quality_id, source_id, water_ph, contaminant_levels)
VALUES (1, 1, 7.0, 0.02), (2, 2, 6.5, 0.08), (3, 3, 6.8, 0.05), (4, 4, 7.1, 0.03), (5, 5, 6.9, 0.04), (6, 6, 7.2, 0.06), (7, 7, 6.7, 0.09), (8, 8, 7.0, 0.02), (9, 9, 7.3, 0.01), (10, 10, 6.4, 0.07), (11, 11, 7.1, 0.05), (12, 12, 7.0, 0.04), (13, 13, 6.6, 0.06), (14, 14, 7.3, 0.02), (15, 15, 6.8, 0.08), (16, 16, 6.9, 0.03), (17, 17, 7.2, 0.05), (18, 18, 6.5, 0.07), (19, 19, 7.1, 0.04), (20, 20, 6.7, 0.09);

INSERT INTO HealthData (health_id, region_id, waterborne_disease_cases, population_affected)
VALUES (1, 1, 100, 1500), (2, 2, 50, 800), (3, 3, 30, 200), (4, 4, 40, 700), (5, 5, 70, 400), (6, 6, 70, 900), (7, 7, 60, 800), (8, 8, 80, 1000), (9, 9, 30, 850), (10, 10, 70, 900), (11, 11, 50, 800), (12, 12, 80, 840), (13, 13, 70, 820), (14, 14, 60, 870), (15, 15, 90, 850), (16, 16, 70, 900), (17, 17, 30, 1100), (18, 18, 60, 700), (19, 19, 40, 740), (20, 20, 40, 600);

select * from watersources;
