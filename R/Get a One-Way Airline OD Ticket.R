#' Booking One-Way Tickets with a Preferred Airline
#'
#' Input the inputs and output a dataframe that shows the trips matching the given inputs starting at the lowest prices and finishing at the highest prices.
#'
#' @usage Preferable_Airline_One_Way(data, SRC, DST, date, PAX, airline)
#'
#' @param data the dataset (use "Flightist.csv" or find the relevant dataset)
#' @param SRC Origin airport
#' @param DST Destination airport
#' @param date Date of flight
#' @param PAX Number of passengers
#' @param airline Preferred airline
#'
#' @return Identify the data type in a console and view data in a spreadsheet-style data viewer.
#'
#' @export
#'
#' @examples Preferable_Airline_One_Way("Flightist.csv", "Banglore", "New Delhi", "03/03/2019", 2, "Vistara Premium economy")
#' @examples Preferable_Airline_One_Way("Flightist.csv", "Delhi", "Cochin", "06/09/2019", 120, "IndiGo")

Preferable_Airline_One_Way <- function(data, SRC, DST, date, PAX, airline) {
  data <- read.csv(data)
  data2 <- data[which(data$Source == SRC &
                        data$Destination == DST &
                        data$Date_of_Journey == date &
                        data$Airline == airline),]
  data2 <- data2 %>% mutate(Total = Price * PAX)
  data2 <- setorder(data2, Price, Total)
  rownames(data2) <- NULL
  return(c(otype(data2), View(data2)))
}
