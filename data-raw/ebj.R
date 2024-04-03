# Download the original replication data file
ebj_raw <- rio::import("https://files.prio.org/Journals/JPR/2012/49/5/Appel%20and%20Loyle%20Rep%20Data.zip",
                       which = 2)

# Clean these data
ebj <- ebj_raw |>
  dplyr::transmute(id,
                   ccode,
                   country_name = countrycode::countrycode(ccode, "cown", "country.name"),
                   pcj = factor(truthvictim, labels = c("No institutions", "PCJ institutions")),
                   net_fdi_inflows = v3Mdiff,
                   gdp_per_capita = fv8,
                   gdp = fv10,
                   gdp_per_capita_growth = fv11,
                   ex_rate_fluc = xratf,
                   cap_account_openness = fv34,
                   labor,
                   f_life_exp = v64mean,
                   polity2,
                   pol_constraints = fv27,
                   conflict_duration = cw_duration_lag,
                   damage,
                   peace_agreement = factor(peace_agreement_lag, labels = c("No agreement",
                                                                            "Peace agreement")),
                   victory = factor(victory_lag, labels = c("No victory",
                                                            "Victory")),
                   cold_war = factor(coldwar, labels = c("Post-Cold War",
                                                         "Cold War"))) |>
  haven::zap_label()

ebj

usethis::use_data(ebj, overwrite = TRUE)
