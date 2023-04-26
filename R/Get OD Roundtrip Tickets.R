#' Purchase Roundtrip Tickets
#'
#' Input the inputs and output a dataframe that shows the departure and arrival schedules that match the given inputs.
#'
#' @usage Roundtrip(data, SRC, DST, date, PAX, SRC2, DST2, dateReturn, PAX2)
#'
#' @param data the dataset (use "Flightist.csv" or find the relevant dataset)
#' @param SRC Origin airport
#' @param DST Destination airport
#' @param date Date of flight
#' @param PAX Number of passengers
#' @param SRC2 Departures can be made either from the same airport as the destination or from another airport.
#' @param DST2 The airport where you will be taken back to your origin location
#' @param dateReturn Return date
#' @param PAX2 Number of passengers
#'
#' @return Identify the data types in a console and view the data in spreadsheet-like views.
#'
#' @export
#'
#' @examples Roundtrip("Flightist.csv", "Banglore", "New Delhi", "03/03/2019", 3, "Kolkata", "Banglore", "03/24/2019", 3)
#' @examples Roundtrip("Flightist.csv", "Banglore", "New Delhi", "03/01/2019", 2, "Delhi", "Cochin", "03/21/2019", 2)

Roundtrip <- function(data, SRC, DST, date, PAX, SRC2, DST2, dateReturn, PAX2) {
  data <- read.csv(data)
  data2 <- data[which(data$Source == SRC &
                        data$Destination == DST &
                        data$Date_of_Journey == date),]
  data2 <- data2 %>% mutate(Total = Price * PAX)
  data2 <- data2 %>% slice_min(Total, n = 3)
  data2 <- rbind("Departure flights", data2)
  data2[1, 2:ncol(data2)] <- str_remove_all(data2[1, 2:ncol(data2)], "Departure flights")
  data3 <- data[which(data$Source == SRC2 &
                        data$Destination == DST2 &
                        data$Date_of_Journey == dateReturn),]
  data3 <- data3 %>% mutate(Total = Price * PAX2)
  data3 <- data3 %>% slice_min(Total, n = 3)
  data3 <- rbind("Return flights", data3)
  data3[1, 2:ncol(data3)] <- str_remove_all(data3[1, 2:ncol(data3)], "Return flights")
  return(c(otype(data2), otype(data3), View(data2), View(data3)))
}
