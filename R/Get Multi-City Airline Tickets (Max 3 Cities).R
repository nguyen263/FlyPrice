#' Purchase Multi-City Tickets (3 Cities) on a Preferred Airline
#'
#' Input the inputs and output a dataframe that shows the itinerary of the three cities with the most affordable prices (in compliance with the given inputs) and compute the total cost of all those three cities.
#'
#' @usage Three_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, dateReturn, PAX3, airline3)
#'
#' @param data the dataset (use "Flightist.csv" or find the relevant dataset)
#' @param SRC Origin airport
#' @param DST Destination airport
#' @param date Date of flight
#' @param PAX Number of passengers
#' @param airline Preferred airline
#' @param SRC2 The next destination can be reached from the same airport as the original destination or from another airport.
#' @param DST2 This is the airport from which you will fly to your next destination.
#' @param date2 Date of flight
#' @param PAX2 Number of passengers
#' @param airline2 Preferred airline
#' @param SRC3 Depart from the same airport as the previous destination to get home, or from a different airport.
#' @param DST3 The airport where you will be taken back to your origin location
#' @param dateReturn Return date
#' @param PAX3 Number of passengers
#' @param airline3 Preferred airline
#'
#' @return Identify the data type in a console and view data in a spreadsheet-style data viewer.
#'
#' @export
#'
#' @examples Three_Cities_with_Preferred_Airline("Flightist.csv", "Banglore", "New Delhi", "03/21/2019", 7, "IndiGo", "Mumbai", "Hyderabad", "04/03/2019", 3, "IndiGo", "Kolkata", "Banglore", "05/18/2019", 5, "IndiGo")

Three_Cities_with_Preferred_Airline <- function(data, SRC, DST, date, PAX, airline,
                                                SRC2, DST2, date2, PAX2, airline2,
                                                SRC3, DST3, dateReturn, PAX3, airline3) {
  data <- read.csv(data)
  data2 <- data[which(data$Source == SRC & data$Destination == DST & data$Date_of_Journey == date & data$Airline == airline),]
  data2 <- data2 %>% mutate(Total = Price * PAX)
  data2 <- data2 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data3 <- data[which(data$Source == SRC2 & data$Destination == DST2 & data$Date_of_Journey == date2 & data$Airline == airline2),]
  data3 <- data3 %>% mutate(Total = Price * PAX2)
  data3 <- data3 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data4 <- data[which(data$Source == SRC3 & data$Destination == DST3 & data$Date_of_Journey == dateReturn & data$Airline == airline3),]
  data4 <- data4 %>% mutate(Total = Price * PAX3)
  data4 <- data4 %>% slice_min(Price, n = 1) %>% sample_n(size = 1)
  data5 <- list(data2, data3, data4)
  data5 <- Reduce(function(x, y) merge(x, y, all = T), data5)
  data5 <- data5[order(as.Date(data5$Date_of_Journey, format = "%m/%d/%Y")),]
  data5$Price <- as.character(data5$Price)
  data5 <- data5 %>% add_row(Price = "USD Total Price:", Total = sum(data5$Total))
  data5[4, 1:10] <- replace_na("")
  return(c(otype(data5), View(data5)))
}
