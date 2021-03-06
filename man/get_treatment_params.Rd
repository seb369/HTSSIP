% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phyloseq_subset.R
\name{get_treatment_params}
\alias{get_treatment_params}
\title{Get parameters for subsetting the phyloseq dataset}
\usage{
get_treatment_params(physeq, exp_params, treatment = NULL)
}
\arguments{
\item{physeq}{Phyloseq object}

\item{exp_params}{a vector listing the columns in the phyloseq sample_data
table that can subset the phyloseq dataset in order to make the specific
labeled-treatment vs labeled-control comparisons that you would like to make.}

\item{treatment}{This is an expression used to filter out the
control-specific parameters (if needed).}
}
\description{
This function is needed if you want to make multiple
subsets of the phyloseq object in order to make specific
comparisons between isotopically labeled-treatments and
}
\details{
their corresponding controls (eg., from the same time point).

Makes a data.frame of all of the parameter values that differ
among the treatment-control comparisons.

For example, if you want to compare the gradient fractions from
each labeled-treatment to its corresponding unlabeled-Control (both from the
same time point).
}
\examples{
data(physeq_S2D2)
# Here, the treatment/controls (12C & 13C) are listed in substrate,
# and should be matched by 'Day'. The 13C-treatments can be identified by
# the expression: "Substrate != '12C-Con'"
get_treatment_params(physeq_S2D2, c('Substrate', 'Day'), "Substrate != '12C-Con'")

}
