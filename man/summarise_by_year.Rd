% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-processing.R
\name{summarise_by_year}
\alias{summarise_by_year}
\title{Get yearly summaries}
\usage{
summarise_by_year(df)
}
\arguments{
\item{df}{a data.frame or tibble of gapminder data, as sourced from r package
\pkg{gapminder}}
}
\description{
Get yearly summaries of  mean life expectancy and maximum gdp from gapminder
data.
}
\examples{
\dontrun{
library(gapminder)
df <- gapminder
summarise_by_year(df)
}
}
