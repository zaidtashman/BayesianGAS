% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayesian_gas.R
\name{HMC}
\alias{HMC}
\title{Hamoltonian Monte Carlo.}
\usage{
\preformatted{
HMC(modelStr, priorStack, y, f1, initParams, iter, mass, stepsize,
  integrationTime, lb, ub, stepReductionFactor, verbose, printIter)
}
}
\description{
Function of similar form as \code{\link{GGS}}, but draws are generated
using the Hamiltonian Monte Carlo algorithm. Usage requires that the gradient
for the specified GAS model is implemented (this is currently not the case
for the \code{DPMP} class of models).
}
