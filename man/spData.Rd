% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{spData}
\alias{spData}
\title{Prices of the S&P 500 index}
\format{A data frame called \code{spData} with 5032 rows and 7 columns:
 \itemize{
   \item Date. trading date
   \item Open. opening price for the day
   \item High. highest price recorded for the day
   \item Low. lowest price recorded for the day
   \item Close. closing price for the day adjusted for splits
   \item Volume. trading volume for the day
   \item Adj.Close. closing price for the day adjusted for both dividends and
    splits
 }}
\source{
\url{https://finance.yahoo.com/quote/\%5EGSPC/history?p=\%5EGSPC}
}
\usage{
data(SP500)
}
\description{
A dataset containing 10 years worth of daily prices for the S&P 500 index -
from 1997-04-24 till 2017-04-21, recorded in reverse chronological order.
}
\keyword{datasets}
