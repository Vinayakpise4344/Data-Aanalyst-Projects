create database ola;
use ola;
select * from bookings;
-- 1. Retrieve all successful bookings:
      select * from bookings where Booking_Status = "Success";
      select count(Booking_ID) from bookings where Booking_Status = "Success";

-- 2. Find the average ride distance for each vehicle type:
   select Vehicle_Type, avg(Ride_Distance) as averageridedistance from bookings
   group by Vehicle_Type;
   
-- 3. Get the total number of cancelled rides by customers:
    SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'cancelled by Customer';

-- 4. List the top 5 customers who booked the highest number of rides:
    select Customer_ID, count(Booking_Status) as totalride from bookings where Booking_Status="Success" 
    group by Customer_ID order by totalride desc  limit 5;
    
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
     
     select count(Canceled_Rides_by_Driver) from bookings where 
     Canceled_Rides_by_Driver ="Personal & Car related issue";
     
-- 6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
   select Vehicle_Type,max(Driver_Ratings) as max, min(Driver_Ratings) as min
   from bookings where Vehicle_Type="Prime Sedan";

-- 7. Retrieve all rides where payment was made using UPI:
   select   Booking_ID , Payment_Method from bookings  where Payment_Method="UPI"
   group by Booking_ID;
   
-- 8. Find the average customer rating per vehicle type:
   select * from bookings;
   select Vehicle_Type, avg(Driver_Ratings) from bookings
   group by Vehicle_Type;

-- 9. Calculate the total booking value of rides completed successfully:
   SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
   Booking_Status = 'Success';


-- 10. List all incomplete rides along with the reason:
  SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
'Yes';