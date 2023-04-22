## code to prepare `Flightist` dataset goes here
library(readxl)
library(stringr)
library(priceR)
Flightist <- read_excel("/Users/loannguyen/Documents/R files/LIS 4370 – R programming/FlyPrice/data-raw/Data_Train.xlsx")
Flightist$Source <- as.factor(Flightist$Source)
Flightist$Destination <- as.factor(Flightist$Destination)
Flightist$Airline <- as.factor(Flightist$Airline)
Flightist$Total_Stops <- as.factor(Flightist$Total_Stops)
Flightist$Additional_Info <- as.factor(Flightist$Additional_Info)
Flightist$Date_of_Journey <- format(as.Date(Flightist$Date_of_Journey, format = "%d/%m/%Y"), "%m/%d/%Y")
Flightist$Date_of_Journey <- as.factor(Flightist$Date_of_Journey)
Flightist$Dep_Time <- paste(Flightist$Dep_Time, ":00")
Flightist$Dep_Time <- gsub(" ", "", Flightist$Dep_Time)
Flightist$Dep_Time <- format(as.POSIXlt(Flightist$Dep_Time, format = "%H:%M:%S"), "%I:%M %p")
Flightist$Dep_Time <- as.factor(Flightist$Dep_Time)
Flightist$Arrival_Time <- str_extract(Flightist$Arrival_Time, "\\d{2}\\:\\d{2}")
Flightist$Arrival_Time <- paste(Flightist$Arrival_Time, ":00")
Flightist$Arrival_Time <- gsub(" ", "", Flightist$Arrival_Time)
Flightist$Arrival_Time <- format(as.POSIXlt(Flightist$Arrival_Time, format = "%H:%M:%S"), "%I:%M %p")
Flightist$Arrival_Time <- as.factor(Flightist$Arrival_Time)
currency <- exchange_rate_latest("INR")
currency <- currency[currency$currency == "USD",]
Flightist$Price <- round(Flightist$Price * currency$one_inr_is_equivalent_to)

path <- "/Users/loannguyen/Documents/R files/LIS 4370 – R programming/FlyPrice/data-raw"
write.csv(Flightist, file.path(path, "Flightist.csv"), row.names = F)

usethis::use_data(Flightist, overwrite = TRUE)
