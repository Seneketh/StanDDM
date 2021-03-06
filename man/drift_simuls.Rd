% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drift_simuls.r
\name{drift_simuls}
\alias{drift_simuls}
\title{Drift Diffusion Data Simulation}
\usage{
drift_simuls(params, samples = 500, dt = 1e-04, intra_sv = 1)
}
\arguments{
\item{params}{A list of parameters which should at least contain 'a', 'v', 'z' and 't'. Inter trial variabilities 
can also be included: 'sv', 'sz' and/or 'st', in any combination.}

\item{samples}{Amount of decisions to be simulated. Can be conceptualized as 'trials'.}

\item{dt}{Function steps or 'resolution'. Should not be altered, but can.}

\item{intra_sv}{Intra-trial variability. When simulating data with parameters fitted via Stan, then the value of
\code{1} should be used. The implemented likelihood in Stan is calibrated to that value. When using parameters 
fitted with a Ratcliff procedure, then this value should be set to \code{0.1}.}
}
\value{
A data frame with two columns, 'rt' and 'response', as long as 'samples'.
}
\description{
Simulates reaction times and binary decisions (0/1) from a set of DDM parameters. This function is not likelihood
based, but executes all steps of the diffusion process. Can be used directly, but intended use is within the 
wrapper function \code{\link{simulDat}}. This function has been adapted from the python package "HDDM".
}
