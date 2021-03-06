% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BD_shift.R
\name{max_BD_range}
\alias{max_BD_range}
\title{Adjusting BD range size if negative.}
\usage{
max_BD_range(BD_range, BD_min, BD_max, BD_to_set)
}
\arguments{
\item{BD_range}{BD range size}

\item{BD_min}{Minimum BD value}

\item{BD_max}{Maximum BD value}

\item{BD_to_set}{Value added to BD_min to set new BD_max}
}
\value{
New max BD value
}
\description{
If BD (buoyant density) range size is negative,
use BD_to_set value to set new BD_max. The \code{BD_to_set}
determines the \code{BD_max} if BD range is negative
}
