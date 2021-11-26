SELECT *
FROM [HotelBooking].[dbo].['Order Database$'];


-- Step 1) Checking the number of columns and number of columns

SELECT COUNT(*) as number_of_rows
FROM [HotelBooking].[dbo].['Order Database$'];

--**There are 66535 records in the Table**--

SELECT Count (*)
FROM INFORMATION_SCHEMA.COLUMNS ; 

--**There are 27 columns**--

--Step 2) Checking the Datatypes of the dataset

SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS;



--Booking ID,Time, Customer ID, Gender, Origin Country, State, Location, Destination Country, Destination City,Hotel Name, Payment Mode, Bank Name are having categorical value
--Year,Age,No# Of People, No# Of Days, Rooms, Hotel Rating, No# Of Days1, Rooms1, Booking Price(SGD), Discount, GST, Profit Margin are having Numerical Values
--Date of Booking,Check-in date, Check-Out Date, is having Datetime Datatype

--Step 3) Checking the Null Values

--From Excel, we get to know, there is no Null Values

--Step 4) Checking the Columns which got Repeated

SELECT [No# Of Days], [No# Of Days1]
From [HotelBooking].[dbo].['Order Database$']
WHERE [No# Of Days] NOT IN ([No# Of Days1]);

SELECT [Rooms],[Rooms1]
FROM [HotelBooking].[dbo].['Order Database$']
WHERE [Rooms] NOT IN ([Rooms1]);

-- Step 5) Dropping the Unnecessary columns

ALTER TABLE [HotelBooking].[dbo].['Order Database$']
DROP COLUMN [Rooms1],[No# Of Days1];

ALTER TABLE [HotelBooking].[dbo].['Order Database$']
DROP COLUMN [Customer ID];

ALTER TABLE [HotelBooking].[dbo].['Order Database$']
DROP COLUMN [Booking ID],[Bank Name] ;

--Step 6) Cheking the number of columns left for analysis

SELECT Count (*)
FROM INFORMATION_SCHEMA.COLUMNS ; 

SELECT *
FROM [HotelBooking].[dbo].['Order Database$'];












