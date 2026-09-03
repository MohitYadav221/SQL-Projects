create database ola;
use ola;




drop  database ola;


SELECT 
    *
FROM
    data_set;


#SQL Questions:
#OLA Data Analyst Project


#1. Retrieve all successful bookings:

SELECT 
    *
FROM
    data_set
WHERE
    Booking_Status = 'Success'; 

#2. Find the average ride distance for each vehicle type:
SELECT 
    Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM
    data_set
GROUP BY Vehicle_Type;

#3. Get the total number of cancelled rides by customers:
SELECT 
    COUNT(*)
FROM
    data_set
WHERE
    Booking_Status = 'Canceled by Customer';

#4. List the top 5 customers who booked the highest number of rides:
SELECT 
    Customer_ID, COUNT(Booking_ID) AS total_bookings
FROM
    data_set
GROUP BY Customer_ID
ORDER BY total_bookings DESC
LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT 
    COUNT(*)
FROM
    data_set
WHERE
    Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT 
    MAX(Driver_Ratings) AS max_rating,
    MIN(Driver_Ratings) AS min_rating
FROM
    data_set
WHERE
    Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
SELECT 
    *
FROM
    data_set
WHERE
    Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:
SELECT 
    Vehicle_Type, AVG(Customer_Rating) AS avg_customer_ratings
FROM
    data_set
GROUP BY Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
 SELECT 
    SUM(Booking_Value) AS total_no_of_booking
FROM
    data_set
WHERE
    Booking_Status = 'Success';

#10. List all incomplete rides along with the reason
SELECT 
    Booking_ID, Incomplete_Rides_Reason
FROM
    data_set
WHERE
    Incomplete_Rides = 'Yes';