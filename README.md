# FlyPrice
A final project I did for my university LIS 4370 R Programming course
<p> An R package that generates flight data for price calculations
<p> IMPORTANT! This package is not available on CRAN

### Basic Usage
---
In this package, there are 16 functions; how can you choose the right one for finding the flight price?
<p> Use this function only if you have the data, airport of origin, destination, flight date, and passenger number for the one-way ticket.
One_Way(data, SRC, DST, date, PAX)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo.Rmd

Use this function only if you have the data, airport of origin, destination, flight date, passenger number, and airline preference for a one-way ticket.
Preferable_Airline_One_Way(data, SRC, DST, date, PAX, airline)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo2.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, and passenger number for a round-trip ticket.
Roundtrip(data, SRC, DST, date, PAX, SRC2, DST2, dateReturn, PAX2)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo3.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, passenger number, and airline preference for a round-trip ticket.
Roundtrip_Airline_Preferred(data, SRC, DST, date, PAX, airline, SRC2, DST2, dateReturn, PAX2, airline2)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo4.Rmd

Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum three cities).
Three_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, dateReturn, PAX3)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo5.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum three cities).
Three_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, dateReturn, PAX3, airline3)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo6.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum four cities).
Four_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, dateReturn, PAX4)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo7.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum four cities).
Four_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, dateReturn, PAX4, airline4)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo8.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum five cities).
Five_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, dateReturn, PAX5)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo9.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum five cities).
Five_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, dateReturn, PAX5, airline5)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo10.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum six cities).
Six_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, dateReturn, PAX6)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo11.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum six cities).
Six_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, dateReturn, PAX6, airline6)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo12.Rmd
  
Use this function only if you have the data, origin and destination, flight dates, and passenger numbers for a multicity ticket (maximum seven cities).
Seven_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, date6, PAX6, SRC7, DST7, dateReturn, PAX7)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo13.Rmd

Use this function only if you have the data, origin and destination, flight dates, passenger numbers, and airline preferences for a multicity ticket (maximum seven cities).
Seven_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, date6, PAX6, airline6, SRC7, DST7, dateReturn, PAX7, airline7)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo14.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, and passenger number for an eight-city ticket.
Eight_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, date6, PAX6, SRC7, DST7, date7, PAX7, SRC8, DST8, dateReturn, PAX8)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo15.Rmd

Use this function only if you have the data, airport of origin, destination, flight dates, passenger number, and airline preference for an eight-city ticket.
Eight_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, date6, PAX6, airline6, SRC7, DST7, date7, PAX7, airline7, SRC8, DST8, dateReturn, PAX8, airline8)
Here is a link to a demo showing how to use it:
https://github.com/nguyen263/FlyPrice/blob/main/vignettes/demo16.Rmd
