library(tidyverse)
library(peacesciencer)
library(countrycode)

alliances_regime <- create_dyadyears(directed = F, subset_years = 2017) |>
  add_democracy() |>
  add_atop_alliance() |>
  mutate(regime1 = case_when(polity21 >= 5 ~ "Democracy",
                             polity21 <= -5 ~ "Autocracy",
                             T ~ "Hybrid"),
         regime2 = case_when(polity22 >= 5 ~ "Democracy",
                             polity22 <= -5 ~ "Autocracy",
                             T ~ "Hybrid")) |>
  transmute(country_1 = countrycode(ccode1, "cown", "country.name"),
            country_2 = countrycode(ccode2, "cown", "country.name"),
            defense_agreement = atop_defense,
            regime_dyad = if_else(regime1 == regime2, "Joint", "Mixed"))

usethis::use_data(alliances_regime, overwrite = TRUE)
