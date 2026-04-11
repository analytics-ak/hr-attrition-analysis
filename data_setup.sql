-- ===============================================
-- SECTION 1: Create Database for HR Analysis
-- ===============================================

-- Create a new database to store HR attrition-related data
CREATE DATABASE hr;

-- Switch to the newly created 'hr' database
USE hr;



-- ===============================================
-- SECTION 2: Create Table Structure
-- ===============================================

-- Define the schema for the HR Attrition dataset
-- Each column represents a specific employee attribute or HR metric
CREATE TABLE hr_attrition (
    Age INT,                                      -- Age of the employee
    Attrition VARCHAR(10),                        -- Indicates if the employee left the company (Yes/No)
    BusinessTravel VARCHAR(50),                   -- Frequency of business travel
    DailyRate INT,                                -- Employee’s daily earning rate
    Department VARCHAR(50),                       -- Department name (e.g., Sales, R&D, HR)
    DistanceFromHome INT,                         -- Distance between employee’s home and office (in kilometers)
    Education INT,                                -- Education level coded numerically (1–5)
    EducationField VARCHAR(50),                   -- Employee’s field of study
    EmployeeNumber INT PRIMARY KEY,               -- Unique employee identifier
    EnvironmentSatisfaction INT,                  -- Satisfaction with work environment (scale 1–4)
    Gender VARCHAR(10),                           -- Gender of the employee
    HourlyRate INT,                               -- Hourly wage rate
    JobInvolvement INT,                           -- Employee’s involvement level in job (scale 1–4)
    JobLevel INT,                                 -- Position level within the organization
    JobRole VARCHAR(50),                          -- Specific job title of the employee
    JobSatisfaction INT,                          -- Satisfaction with current job (scale 1–4)
    MaritalStatus VARCHAR(20),                    -- Employee’s marital status (Single/Married/Divorced)
    MonthlyIncome INT,                            -- Monthly salary
    MonthlyRate INT,                              -- Monthly earning rate
    NumCompaniesWorked INT,                       -- Number of companies the employee worked at before
    OverTime VARCHAR(10),                         -- Whether the employee works overtime (Yes/No)
    PercentSalaryHike INT,                        -- Annual salary hike percentage
    PerformanceRating INT,                        -- Performance rating given to the employee
    RelationshipSatisfaction INT,                 -- Satisfaction with interpersonal relationships at work
    StockOptionLevel INT,                         -- Stock option level provided by the company
    TotalWorkingYears INT,                        -- Total professional experience in years
    TrainingTimesLastYear INT,                    -- Number of training sessions attended in the last year
    WorkLifeBalance INT,                          -- Rating of work-life balance (scale 1–4)
    YearsAtCompany INT,                           -- Total years spent at the current company
    YearsInCurrentRole INT,                       -- Years spent in the current job role
    YearsSinceLastPromotion INT,                  -- Years since last promotion
    YearsWithCurrManager INT                      -- Years working under current manager
);



-- ===============================================
-- SECTION 3: Verify Table Structure
-- ===============================================

-- Display the table structure to confirm column definitions and data types
DESCRIBE hr_attrition;



-- ===============================================
-- SECTION 4: Load Data from CSV File
-- ===============================================

-- Import HR attrition data directly from a CSV file into the hr_attrition table
-- Ensure the file path and permissions are correct before loading
LOAD DATA LOCAL INFILE '.../hr_attrition_analysis.csv'
INTO TABLE hr_attrition
FIELDS TERMINATED BY ','                         -- Columns in CSV are separated by commas
ENCLOSED BY '"'                                  -- Text values enclosed within double quotes
LINES TERMINATED BY '\n'                         -- Each record ends with a newline character
IGNORE 1 ROWS                                    -- Skip the header row to avoid column names being inserted
(
    Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome, Education, EducationField, EmployeeNumber, 
    EnvironmentSatisfaction, Gender, HourlyRate, JobInvolvement, JobLevel, JobRole, JobSatisfaction, MaritalStatus, MonthlyIncome, 
    MonthlyRate, NumCompaniesWorked, OverTime, PercentSalaryHike, PerformanceRating, RelationshipSatisfaction, StockOptionLevel, 
    TotalWorkingYears, TrainingTimesLastYear, WorkLifeBalance, YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, YearsWithCurrManager
);



-- ===============================================
-- SECTION 5: Data Validation Check
-- ===============================================

-- Count the total number of records inserted into the table
-- This helps verify the data loading process was successful
SELECT COUNT(*) AS Total_Rows 
FROM hr_attrition;