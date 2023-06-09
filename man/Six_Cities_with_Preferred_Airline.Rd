% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Get Multi-City Airline Tickets (Max 6 Cities).R
\name{Six_Cities_with_Preferred_Airline}
\alias{Six_Cities_with_Preferred_Airline}
\title{Purchase Multi-City Tickets (6 Cities) on a Preferred Airline}
\usage{
Six_Cities_with_Preferred_Airline(data, SRC, DST, date, PAX, airline, SRC2, DST2, date2, PAX2, airline2, SRC3, DST3, date3, PAX3, airline3, SRC4, DST4, date4, PAX4, airline4, SRC5, DST5, date5, PAX5, airline5, SRC6, DST6, dateReturn, PAX6, airline6)
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

\item{SRC6}{Depart from the same airport as the previous destination or from a different airport to return home.}

\item{DST6}{The airport where you will be taken back to your origin location}

\item{dateReturn}{Return date}

\item{PAX6}{Number of passengers}

\item{airline6}{Preferred airline}
}
\value{
Identify the data type in a console and view data in a spreadsheet-style data viewer.
}
\description{
Input the inputs and output a dataframe that shows the itinerary of the six cities with the most affordable prices (in compliance with the given inputs) and compute the total cost of all those six cities.
}
\examples{
Six_Cities_with_Preferred_Airline("Flightist.csv", "Banglore", "New Delhi", "03/01/2019", 1, "IndiGo", "Delhi", "Cochin", "03/03/2019", 1, "Vistara", "Mumbai", "Hyderabad", "03/06/2019", 1, "Trujet", "Delhi", "Cochin", "03/09/2019", 1, "Multiple carriers", "Chennai", "Kolkata", "05/01/2019", 3, "Air India", "Kolkata", "Banglore", "05/06/2019", 3, "Vistara")
}
