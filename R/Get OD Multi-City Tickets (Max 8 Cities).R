#' Purchase Multi-City Tickets (8 Cities)
#'
#' Input the inputs and output a dataframe that shows the itinerary of the eight cities with the most affordable prices (in compliance with the given inputs) and compute the total cost of all those eight cities.
#'
#' @usage Eight_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, date3, PAX3, SRC4, DST4, date4, PAX4, SRC5, DST5, date5, PAX5, SRC6, DST6, date6, PAX6, SRC7, DST7, date7, PAX7, SRC8, DST8, dateReturn, PAX8)
#'
#' @param data the dataset (use "Flightist.csv" or find the relevant dataset)
#' @param SRC Origin airport
#' @param DST Destination airport
#' @param date Date of flight
#' @param PAX Number of passengers
#' @param SRC2 The next destination can be reached from the same airport as the original destination or from another airport.
#' @param DST2 This is the airport from which you will fly to your next destination.
#' @param date2 Date of flight
#' @param PAX2 Number of passengers
#' @param SRC3 The next destination can be reached from the same airport as the previous destination or from another airport.
#' @param DST3 This is the airport from which you will fly to your next destination.
#' @param date3 Date of flight
#' @param PAX3 Number of passengers
#' @param SRC4 The next destination can be reached from the same airport as the previous destination or from another airport.
#' @param DST4 This is the airport from which you will fly to your next destination.
#' @param date4 Date of flight
#' @param PAX4 Number of passengers
#' @param SRC5 The next destination can be reached from the same airport as the previous destination or from another airport.
#' @param DST5 This is the airport from which you will fly to your next destination.
#' @param date5 Date of flight
#' @param PAX5 Number of passengers
#' @param SRC6 The next destination can be reached from the same airport as the previous destination or from another airport.
#' @param DST6 This is the airport from which you will fly to your next destination.
#' @param date6 Date of flight
#' @param PAX6 Number of passengers
#' @param SRC7 The next destination can be reached from the same airport as the previous destination or from another airport.
#' @param DST7 This is the airport from which you will fly to your next destination.
#' @param date7 Date of flight
#' @param PAX7 Number of passengers
#' @param SRC8 Depart from the same airport as the previous destination or from a different airport to return home.
#' @param DST8 The airport where you will be taken back to your origin location
#' @param dateReturn Return date
#' @param PAX8 Number of passengers
#'
#' @return Identify the data type in a console and view data in a spreadsheet-style data viewer.
#'
#' @export
#'
#' @examples Eight_Cities("Flightist.csv", "Banglore", "New Delhi", "03/01/2019", 3, "Delhi", "Cochin", "03/03/2019", 3, "Chennai", "Kolkata", "03/21/2019", 3, "Mumbai", "Hyderabad", "03/27/2019", 3, "Kolkata", "Banglore", "04/12/2019", 3, "Delhi", "Cochin", "04/21/2019", 3, "Chennai", "Kolkata", "05/03/2019", 3, "Kolkata", "Banglore", "05/06/2019", 2)

Eight_Cities <- function(data, SRC, DST, date, PAX,
                         SRC2, DST2, date2, PAX2,
                         SRC3, DST3, date3, PAX3,
                         SRC4, DST4, date4, PAX4,
                         SRC5, DST5, date5, PAX5,
                         SRC6, DST6, date6, PAX6,
                         SRC7, DST7, date7, PAX7,
                         SRC8, DST8, dateReturn, PAX8) {
  data <- read.csv(data)
  data2 <- data[which(data$Source == SRC & data$Destination == DST & data$Date_of_Journey == date),]
  data2 <- data2 %>% mutate(Total = Price * PAX)
  data2 <- data2 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data3 <- data[which(data$Source == SRC2 & data$Destination == DST2 & data$Date_of_Journey == date2),]
  data3 <- data3 %>% mutate(Total = Price * PAX2)
  data3 <- data3 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data4 <- data[which(data$Source == SRC3 & data$Destination == DST3 & data$Date_of_Journey == date3),]
  data4 <- data4 %>% mutate(Total = Price * PAX3)
  data4 <- data4 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data5 <- data[which(data$Source == SRC4 & data$Destination == DST4 & data$Date_of_Journey == date4),]
  data5 <- data5 %>% mutate(Total = Price * PAX4)
  data5 <- data5 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data6 <- data[which(data$Source == SRC5 & data$Destination == DST5 & data$Date_of_Journey == date5),]
  data6 <- data6 %>% mutate(Total = Price * PAX5)
  data6 <- data6 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data7 <- data[which(data$Source == SRC6 & data$Destination == DST6 & data$Date_of_Journey == date6),]
  data7 <- data7 %>% mutate(Total = Price * PAX6)
  data7 <- data7 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data8 <- data[which(data$Source == SRC7 & data$Destination == DST7 & data$Date_of_Journey == date7),]
  data8 <- data8 %>% mutate(Total = Price * PAX7)
  data8 <- data8 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data9 <- data[which(data$Source == SRC8 & data$Destination == DST8 & data$Date_of_Journey == dateReturn),]
  data9 <- data9 %>% mutate(Total = Price * PAX8)
  data9 <- data9 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data10 <- list(data2, data3, data4, data5, data6, data7, data8, data9)
  data10 <- Reduce(function(x, y) merge(x, y, all = T), data10)
  data10 <- data10[order(as.Date(data10$Date_of_Journey, format = "%m/%d/%Y")),]
  data10$Price <- as.character(data10$Price)
  data10 <- data10 %>% add_row(Price = "USD Total Price:", Total = sum(data10$Total))
  data10[9, 1:10] <- replace_na("")
  return(c(otype(data10), View(data10)))
}
