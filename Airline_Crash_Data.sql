--Code to Create the Table in Postgresql

CREATE TABLE public.airline_crash_data (
    index SERIAL PRIMARY KEY,
    accident_date DATE,
    accident_time TIME WITHOUT TIME ZONE,
    location VARCHAR(255),
    plane_type VARCHAR(255),
    route VARCHAR(255),
    plane_model VARCHAR(255),
    registration VARCHAR(50),
    onboard_passengers INTEGER,
    fatalities INTEGER,
    survivors INTEGER,
    ground VARCHAR(255),
    crash_reason TEXT,
    crash_severity VARCHAR(50)
);


select * from airline_crash_data

--Code to Generate Random data and Insert in the Table

DO $$ 
DECLARE 
    i INT;
    onboard_passengers INT;
    fatalities INT;
    survivors INT;
    accident_time TIME;
    fatality_percentage FLOAT;  -- Variable to hold the percentage of fatalities
BEGIN
    FOR i IN 1..3000 LOOP  -- Inserts 3000 rows 
        -- Generate onboard_passengers first
        onboard_passengers := ROUND(10 + RANDOM() * 490);
        
        -- Calculate fatalities and survivors based on onboard_passengers
        fatalities := ROUND(RANDOM() * onboard_passengers);
        survivors := onboard_passengers - fatalities;

        -- Generate a random time between 00:00:00 and 23:59:59
        accident_time := TO_TIMESTAMP('00:00:00', 'HH24:MI:SS') + INTERVAL '1 second' * ROUND(RANDOM() * 86400);

        -- Calculate the percentage of fatalities
        fatality_percentage := CASE 
            WHEN onboard_passengers > 0 THEN fatalities * 100.0 / onboard_passengers
            ELSE 0
        END;

        -- Inserting data into the airline_crash_data table
        INSERT INTO airline_crash_data (
            accident_date, 
            accident_time, 
            location, 
            plane_type, 
            route, 
            plane_model, 
            registration, 
            onboard_passengers, 
            fatalities, 
            survivors, 
            ground, 
            crash_reason,
            crash_severity -- Added crash_severity column
        ) VALUES (
            -- Generate a random date between 2000 and 2025
            CURRENT_DATE - INTERVAL '1 day' * ROUND(RANDOM() * 9125),  -- Generates a random date between 2000-2025
            
            -- Random time between 00:00:00 and 23:59:59
            accident_time::TIME,  -- Ensure the time is cast to the TIME data type
            
            -- Random location for takeoff (city/state)
            (ARRAY[
                'Delhi', 'Mumbai', 'Bangalore', 'Kolkata', 'Chennai', 'Hyderabad', 'Pune', 
                'Jaipur', 'Lucknow', 'Chandigarh', 'Ahmedabad', 'Surat', 'Patna', 
                'Bhopal', 'Indore', 'Coimbatore', 'Nagpur', 'Visakhapatnam'
            ])[ROUND(RANDOM() * 17) + 1], 
            
            -- Random plane type
            CASE 
                WHEN RANDOM() < 0.25 THEN 'Boeing 737'
                WHEN RANDOM() < 0.50 THEN 'Airbus A320'
                WHEN RANDOM() < 0.75 THEN 'Boeing 777'
                ELSE 'Airbus A380'
            END,
            
            -- Random route
            CASE 
                WHEN RANDOM() < 0.5 THEN 'Domestic'
                ELSE 'International'
            END,
            
            -- Random plane model
            CASE 
                WHEN RANDOM() < 0.2 THEN '737 MAX'
                WHEN RANDOM() < 0.4 THEN 'Airbus A320neo'
                WHEN RANDOM() < 0.6 THEN 'Boeing 787'
                WHEN RANDOM() < 0.8 THEN 'Boeing 747'
                ELSE 'Airbus A350'
            END,
            
            -- Random registration number (e.g., Air India plane registrations)
            'AI-' || ROUND(RANDOM() * 9999)::TEXT,
            
            -- Random number of onboard passengers
            onboard_passengers,
            
            -- Random fatalities
            fatalities,
            
            -- Random survivors
            survivors,
            
            -- Random ground type
            CASE 
                WHEN RANDOM() < 0.5 THEN 'Ground'
                ELSE 'Water'
            END,
            
            -- Random summary (reason for crash)
            CASE 
                WHEN RANDOM() < 0.15 THEN 'Pilot Error'
                WHEN RANDOM() < 0.30 THEN 'Mechanical Failure'
                WHEN RANDOM() < 0.45 THEN 'Weather Conditions'
                WHEN RANDOM() < 0.60 THEN 'Fuel Shortage'
                WHEN RANDOM() < 0.75 THEN 'Bird Strike'
                WHEN RANDOM() < 0.85 THEN 'Engine Fire'
                ELSE 'Unknown Reason'
            END,

            -- Handle crash severity based on fatalities percentage
            CASE 
                WHEN fatalities = 0 THEN 'Mild'  -- No fatalities, so we assign 'Mild'
                WHEN fatality_percentage <= 30 THEN 'Mild'  -- If fatalities are less than or equal to 30% of onboard passengers
                WHEN fatality_percentage > 30 AND fatality_percentage <= 60 THEN 'Moderate'  -- Between 30% and 60%
                WHEN fatality_percentage > 60 THEN 'Severe'  -- More than 60% fatalities
                ELSE 'Unknown'  -- Fallback case
            END
        );
    END LOOP;
END $$;
