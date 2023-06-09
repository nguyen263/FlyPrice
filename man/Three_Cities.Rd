% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Get OD Multi-City Tickets (Max 3 Cities).R
\name{Three_Cities}
\alias{Three_Cities}
\title{Purchase Multi-City Tickets (3 Cities)}
\usage{
Three_Cities(data, SRC, DST, date, PAX, SRC2, DST2, date2, PAX2, SRC3, DST3, dateReturn, PAX3)
}
\arguments{
\item{data}{the dataset (use "Flightist.csv" or find the relevant dataset)}

\item{SRC}{Origin airport}

\item{DST}{Destination airport}

\item{date}{Date of flight}

\item{PAX}{Number of passengers}

\item{SRC2}{The next destination can be reached from the same airport as the original destination or from another airport.}

\item{DST2}{This is the airport from which you will fly to your next destination.}

\item{date2}{Date of flight}

\item{PAX2}{Number of passengers}

\item{SRC3}{Depart from the same airport as the previous destination to get home, or from a different airport.}

\item{DST3}{The airport where you will be taken back to your origin location}

\item{dateReturn}{Return date}

\item{PAX3}{Number of passengers}
}
\value{
Identify the data type in a console and view data in a spreadsheet-style data viewer.
}
\description{
Input the inputs and output a dataframe that shows the itinerary of the three cities with the most affordable prices (in compliance with the given inputs) and compute the total cost of all those three cities.
}
\examples{
Three_Cities("Flightist.csv", "Banglore", "New Delhi", "03/21/2019", 7, "Mumbai", "Hyderabad", "04/03/2019", 3, "Kolkata", "Banglore", "05/18/2019", 5)
}
