#' Exporting Mass Destruction? The Determinants of Dual-Use Trade
#'
#' Data produced by Fuhrmann (2008) used to explore the national security dimensions of dual-use trade.
#'
#' @format ## `x_mass_destruction`
#' A data set with 153 observations and 14 variables.
#'
#' \describe{
#'    \item{country}{Export destination}
#'    \item{ccode}{COW code for the export destination}
#'    \item{x_dual_use}{The volume of US dual-use exports to the country (measured as the total US dollar value of licensed dual-use exports to the country)}
#'    \item{x_dual_use_licence}{The volume of US dual-use exports to the country (measured as the total number of approved export licences to the country)}
#'    \item{log_gdp}{The average GDP of the country between 1991 to 2001 (logged)}
#'    \item{log_population}{The average national population of the country between 1991 to 2001 (logged)}
#'    \item{log_distance}{The distance between the United States and the country (logged)}
#'    \item{log_x_all}{The total US dollar value of all exports from the United States to the country between 1991 and 2001 (logged)}
#'    \item{defence_ally}{Whether the country is part of a defence pact with the United States at any point between 1991 and 2001}
#'    \item{democracy}{Whether the average Polity score for the country between 1991 and 2001 is 7 or greater}
#'    \item{conflict}{Whether United States' troops were deployed to take up aggressive operations against the country at least once between 1991 and 2001}
#'    \item{pol_dissimilarity}{Whether the average compatibility between the country's and the United States' foreign policy between 1991 and 2001 was in the lowest 10th percentile of all countries' similiarities with the United States}
#'    \item{wmd_acquisition}{Whether the country acquired nuclear, chemical, or biological weapons at any point between 1991 and 2001}
#'    \item{wmd_pursuit}{Whether the country pursued the acquisition of chemical or biological weapons at any point between 1991 and 2001}
#' }
#'
#' @source https://files.prio.org/Journals/JPR/2008/45/5/Replication%20Fuhrmann.zip
"x_mass_destruction"
