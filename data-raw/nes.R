library(tidyverse)

nes_raw <- read_csv(here::here("data-raw", "anes_timeseries_2020_csv_20220210.csv"))

nes <- nes_raw |>
  transmute(respondent_id = V200001,
            attention_to_politics = factor(V201005,
                                           ordered = T,
                                           label = c("Refused",
                                                     "Always",
                                                     "Most of the time",
                                                     "About half the time",
                                                     "Some of the time",
                                                     "Never")),
            education = factor(V201511x,
                               ordered = T,
                               label = c("Refused",
                                         "Don't know",
                                         NA_character_,
                                         "Less than high school credential",
                                         "High school credential",
                                         "Some post-high school, no bachelor’s degree",
                                         "Bachelor’s degree",
                                         "Graduate degree")),
            age = na_if(V201507x, -9),
            therm_biden = if_else(V201151 %in% c(-9, -4, 998), NA_real_, V201151),
            therm_trump = if_else(V201152 %in% c(-9, -4, 998), NA_real_, V201152),
            income_gap = factor(V201397,
                                ordered = T,
                                levels = c(-8, 2, 3, 1),
                                labels = c("Don't know",
                                           "Smaller",
                                           "About the same",
                                           "Larger")),
            dem = if_else(V201018 == 1, 1, 0),
            dem = factor(dem, labels = c("Other", "Democrat")))

nes

usethis::use_data(nes, overwrite = TRUE)
