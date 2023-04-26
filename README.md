# FlyPrice
A final project I did for my university LIS 4370 R Programming course
<p> R package provides functions for generating flight data for price calculations. These functions require specific fields, including travel details: departure, arrival, dates, number of passengers, and airline; a dataset is also needed.
<p> IMPORTANT! This package is not available on CRAN

### Basic Usage
---
In this package, there are 16 functions; how can you choose the right one for finding the flight price?
<p> 1.
<p> Use this function only if you have the data, airport of origin, destination, flight date, and passenger number for the one-way ticket.
<p> One_Way(data, SRC, DST, date, PAX)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/One_Way.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo.Rmd

<p> 2.
Use this function only if you have the data, airport of origin, destination, flight date, passenger number, and airline preference for a one-way ticket.
<p> Preferable_Airline_One_Way(data, SRC, DST, date, PAX, airline)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Preferable_Airline_One_Way.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo2.Rmd

<p> 3.
Use this function only if you have the data, airport of origin, destination, flight dates, and passenger number for a round-trip ticket.
<p> Roundtrip(data, SRC, DST, date, PAX, SRC2, DST2, dateReturn, PAX2)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Roundtrip.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo3.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, passenger number, and airline preference for a round-trip ticket.
<p> Roundtrip_Airline_Preferred(data, SRC, DST, date, PAX, airline, SRC2, DST2, dateReturn, PAX2, airline2)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Roundtrip_Airline_Preferred.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo4.Rmd

Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum three cities).
<p> Three_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, dateReturn, PAX3)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Three_Cities.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo5.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum three cities).
<p> Three_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, dateReturn, PAX3, airline3)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Three_Cities_with_Preferred_Airline.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo6.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum four cities).
<p> Four_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, dateReturn, PAX4)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Four_Cities.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo7.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum four cities).
<p> Four_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, dateReturn, PAX4, airline4)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Four_Cities_with_Preferred_Airline.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo8.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum five cities).
<p> Five_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, dateReturn, PAX5)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Five_Cities.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo9.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum five cities).
<p> Five_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, dateReturn, PAX5, airline5)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Five_Cities_with_Preferred_Airline.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo10.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum six cities).
<p> Six_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, dateReturn, PAX6)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Six_Cities.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo11.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum six cities).
<p> Six_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, dateReturn, PAX6, airline6)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Six_Cities_with_Preferred_Airline.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo12.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum seven cities).
<p> Seven_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, date6, PAX6, SRC7, DST7, dateReturn, PAX7)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Seven_Cities.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo13.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum seven cities).
<p> Seven_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, date6, PAX6, airline6, SRC7, DST7, dateReturn, PAX7, airline7)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Seven_Cities_with_Preferred_Airline.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo14.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, and passenger number for an eight-city ticket.
<p> Eight_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, date6, PAX6, SRC7, DST7, date7, PAX7, SRC8, DST8, dateReturn, PAX8)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Eight_Cities.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo15.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, passenger number, and airline preference for an eight-city ticket.
<p> Eight_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, date6, PAX6, airline6, SRC7, DST7, date7, PAX7, airline7, SRC8, DST8, dateReturn, PAX8, airline8)
<p> https://github.com/nguyen263/FlyPrice/blob/main/man/Eight_Cities_with_Preferred_Airline.Rd: provides documentation on this function, including what it does, its arguments, and more.
<p> Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo16.Rmd
