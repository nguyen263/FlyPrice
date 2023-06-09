% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Get Multi-City Airline Tickets (Max 8 Cities).R
\name{Eight_Cities_with_Preferred_Airline}
\alias{Eight_Cities_with_Preferred_Airline}
\title{Purchase Multi-City Tickets (8 Cities) on a Preferred Airline}
\usage{
Eight_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, date6, PAX6, airline6, SRC7, DST7, date7, PAX7, airline7, SRC8, DST8, dateReturn, PAX8, airline8)
}
\arguments{
\item{data}{the dataset (use "Flightist.csv" or find the relevant dataset)}

\item{SRC}{Origin airport}

\item{DST}{Destination airport}

\item{date}{Date of flight}

\item{PAX}{Number of passengers}

\item{airline}{Preferred airline}

\item{SRC2}{The next destination can be reached from the same airport as the original destination or from another airport.}

\item{DST2}{This is the airport from which you will fly to your next destination.}

\item{date2}{Date of flight}

\item{PAX2}{Number of passengers}

\item{airline2}{Preferred airline}

\item{SRC3}{The next destination can be reached from the same airport as the previous destination or from another airport.}

\item{DST3}{This is the airport from which you will fly to your next destination.}

\item{date3}{Date of flight}

\item{PAX3}{Number of passengers}

\item{airline3}{Preferred airline}

\item{SRC4}{The next destination can be reached from the same airport as the previous destination or from another airport.}

\item{DST4}{This is the airport from which you will fly to your next destination.}

\item{date4}{Date of flight}

\item{PAX4}{Number of passengers}

\item{airline4}{Preferred airline}

\item{SRC5}{The next destination can be reached from the same airport as the previous destination or from another airport.}

\item{DST5}{This is the airport from which you will fly to your next destination.}

\item{date5}{Date of flight}

\item{PAX5}{Number of passengers}

\item{airline5}{Preferred airline}

\item{SRC6}{The next destination can be reached from the same airport as the previous destination or from another airport.}

\item{DST6}{This is the airport from which you will fly to your next destination.}

\item{date6}{Date of flight}

\item{PAX6}{Number of passengers}

\item{airline6}{Preferred airline}

\item{SRC7}{The next destination can be reached from the same airport as the previous destination or from another airport.}

\item{DST7}{This is the airport from which you will fly to your next destination.}

\item{date7}{Date of flight}

\item{PAX7}{Number of passengers}

\item{airline7}{Preferred airline}

\item{SRC8}{Depart from the same airport as the previous destination or from a different airport to return home.}

\item{DST8}{The airport where you will be taken back to your origin location}

\item{dateReturn}{Return date}

\item{PAX8}{Number of passengers}

\item{airline8}{Preferred airline}
}
\value{
Identify the data type in a console and view data in a spreadsheet-style data viewer.
}
\description{
Input the inputs and output a dataframe that shows the itinerary of the eight cities with the most affordable prices (in compliance with the given inputs) and compute the total cost of all those eight cities.
}
\examples{
Eight_Cities_with_Preferred_Airline("Flightist.csv", "Banglore", "New Delhi", "03/01/2019", 3, "IndiGo", "Delhi", "Cochin", "03/03/2019", 3, "Vistara", "Chennai", "Kolkata", "03/21/2019", 3, "Vistara", "Mumbai", "Hyderabad", "03/27/2019", 3, "SpiceJet", "Kolkata", "Banglore", "04/12/2019", 3, "Air Asia", "Delhi", "Cochin", "04/21/2019", 3, "GoAir", "Chennai", "Kolkata", "05/03/2019", 3, "Air India", "Kolkata", "Banglore", "05/06/2019", 2, "Vistara")
}
