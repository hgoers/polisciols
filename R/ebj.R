#' Economic Benefits of Justice
#'
#' Data produced by Appel and Loyle (2012) on the relationship between net FDI inflows in the 10-year period following conflict and the state's establishment of post-conflict justice (PCJ) institutions.
#'
#' Includes all developing nations that concluded an internal armed conflict with at least 25 battle-related deaths in the period between 1970 and 2001.
#'
#' @format ## `ebj`
#' A data frame with 95 rows and X columns:
#' \describe{
#'    \item{id}{Unique case ID}
#'    \item{ccode}{COW country code}
#'    \item{country_name}{Country}
#'    \item{pcj}{Whether the country has implemented a post-conflict justice (PCJ) institution within five years following the end of the conflict}
#'    \item{net_fdi_inflows}{Net FDI inflows (measured as the total FDI inflows minus total FDI outflows of capital over the 10-year period following the end of the conflict)}
#'    \item{gdp_per_capita}{GDP per capita (current USD)}
#'    \item{gdp}{GDP (current USD)}
#'    \item{gdp_per_capita_growth}{GDP per capita growth}
#'    \item{ex_rate_fluc}{Exchange rate fluctuation (measured as the ratio of the exchange rate in a given year (relative to the US dollar) to its mean value over the previous two years)}
#'    \item{cap_account_openness}{Capital account openness (KAOPEN Index)}
#'    \item{labor}{Labor force participation (measured as the number of people that could be economically active (ages 15–64) as a percentage of the total population)}
#'    \item{f_life_exp}{Average female life expectancy}
#'    \item{polity2}{Regime type (Polity 2 scale)}
#'    \item{pol_constraints}{Domestic political constraints (measured as an index of veto players within a political system)}
#'    \item{conflict_duration}{Duration (in years) of the preceding conflict}
#'    \item{damage}{The amount of pre-conflict GDP lost by the end of the conflict}
#'    \item{peace_agreement}{Whether the conflict ended with a peace agreement}
#'    \item{victory}{Whether one side emerged as the clear winner in the conflict}
#' }
#'
#' @source https://files.prio.org/Journals/JPR/2012/49/5/Appel%20and%20Loyle%20Rep%20Data.zip
