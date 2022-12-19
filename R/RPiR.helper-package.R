#' Reproducible Programming in R course helper package
#'
#' \code{RPiR.helper} provides additional functionality for the Reproducible
#' Programming in R course, developed by the Institute of Biodiversity, Animal
#' Health, and Comparative Medicine at the University of Glasgow.
#'
#' For more information go to our GitHub page;
#' \url{https://github.com/SBOHVM/RPiR}
#'
#' Please raise an issue if you find any problems;
#' \url{https://github.com/SBOHVM/RPiR/issues}
#'
#' @author
#' Sonia Mitchell <sonia.mitchell@glasgow.ac.uk> (maintainer) \cr
#' Richard Reeve <richard.reeve@glasgow.ac.uk>

#' @name RPiR.helper-package
#' @aliases RPiR.helper
#' @docType package
#'
#' @import codetools
#' @import deSolve
#' @import devtools
#' @import graphics
#'
#' @examples
#' initial.population <- data.frame(time = 0,
#'                                  susceptibles = 99,
#'                                  infecteds = 1)
#' population.history <-
#'  RPiR.helper::run_simulation(RPiR.helper:::timestep_deterministic_SIS,
#'                              initial.population,
#'                              end.time = 100,
#'                              transmission.rate = 1,
#'                              recovery.rate = 0.5,
#'                              timestep = 1)
#' RPiR.helper::plot_populations(population.history)
#'
NULL
