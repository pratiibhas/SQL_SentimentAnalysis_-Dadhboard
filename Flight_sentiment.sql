select * from test;

/* Total number of passsengers which left a rating */
select count(id) from test;

/* Ratings by all*/ 
select  Class, `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test

group by Class, Type_of_Travel, customer_type
order by Type_of_Travel, customer_type;

/* Ratings by  customers travelling for distance 0 to 1000 kms*/
select id, Class, `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test
where `Flight Distance` between 0 and 1000
group by Class, Type_of_Travel;

select count(satisfaction), satisfaction from test 
group by satisfaction;

-- More than half are dissatisfied

/*  For customers travelling for distance 0 to 1000 kms*/
select Class, `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test
where `Flight Distance` >1000
group by Class, Type_of_Travel; 

/* Passengers rating per customer by gender */
select Gender ,Class, `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test

group by Gender, class, Type_of_Travel; 
-- More females than men

select Gender, count(satisfaction) , satisfaction from test
group by Gender , satisfaction; 
-- Around same numbers of dissatisfaction around customers

/*Ratings given as per age */ 

-- Younger than 25
select Class,  `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test
where age <25
group by Class,Type_of_Travel;

/*Ratings by age group between n25band 39*/
select Class,  `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test
where age >25 and age<= 39
group by Class,Type_of_Travel;

/*Ratings by age  more than 39*/
select Class,  `Customer Type` as customer_type , `Type of Travel`  as Type_of_Travel ,count(id) as NumOfPassengers,
avg(`Flight Distance`) as Flight_Distance,
avg(`Departure/Arrival time convenient`) as Departure_Arrival_time_convenient_rating,
avg(`Inflight wifi service`) as inflight_wifi_service_rating,
avg(`Ease of Online booking`) as Online_booking_rating,
avg(`Food and drink`) as Food_and_drink_rating,
avg(`Gate location`) as Gate_location_rating,
avg(`Online boarding`) as Online_boarding_rating,
avg(`Seat comfort`) as Seat_comfort_rating,
avg(`Inflight entertainment`) as Inflight_entertainment_rating,
avg(`On-board service`) as On_board_service_rating,
avg(`Baggage handling`) as Baggage_handling_rating,
avg(`Checkin service`) as Checkin_service_rating,
avg(`Leg room service`) as Leg_room_service_rating,
avg(`Inflight service`) as Inflight_service_rating,
avg(`Cleanliness`) as Cleanliness_rating,
avg(`Arrival Delay in Minutes`) as Arrival_Delay_in_Minutes,
avg(`Departure Delay in Minutes`) as Departure_Delay_in_Minutes
from test
where age > 39
group by Class,Type_of_Travel;
