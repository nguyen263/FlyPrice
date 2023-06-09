% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Get Airline OD Roundtrip Tickets.R
\name{Roundtrip_Airline_Preferred}
\alias{Roundtrip_Airline_Preferred}
\title{Book Round-Trip Tickets with a Preferred Airline}
\usage{
Roundtrip_Airline_Preferred(data, SRC, DST, date, PAX, airline, SRC2, DST2, dateReturn, PAX2, airline2)
}
\arguments{
\item{data}{the dataset (use "Flightist.csv" or find the relevant dataset)}

\item{SRC}{Origin airport}

\item{DST}{Destination airport}

\item{date}{Date of flight}

\item{PAX}{Number of passengers}

\item{airline}{Preferred airline}

\item{SRC2}{Departures can be made either from the same airport as the destination or from another airport.}

\item{DST2}{The airport where you will be taken back to your origin location}

\item{dateReturn}{Return date}

\item{PAX2}{Number of passengers}

\item{airline2}{Preferred airline}
}
\value{
Identify the data types in a console and view the data in spreadsheet-like views.
}
\description{
Input the inputs and output a dataframe that shows the departure and arrival schedules that match the given inputs.
}
\examples{
Roundtrip_Airline_Preferred("Flightist.csv", "Banglore", "New Delhi", "03/01/2019", 2, "Jet Airways Business", "Kolkata", "Banglore", "03/24/2019", 3, "GoAir")
Roundtrip_Airline_Preferred("Flightist.csv", "Banglore", "New Delhi", "03/01/2019", 2, "Jet Airways Business", "Delhi", "Cochin", "03/21/2019", 2, "Multiple carriers Premium economy")
}
