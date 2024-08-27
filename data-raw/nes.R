library(tidyverse)

nes_raw <- read_csv(here::here("data-raw", "anes_timeseries_2020_csv_20220210.csv"))

nes <- nes_raw |>
  transmute(respondent_id = V200001,
            attention_to_politics = factor(V201005,
                                           label = c("Refused",
                                                     "Always",
                                                     "Most of the time",
                                                     "About half the time",
                                                     "Some of the time",
                                                     "Never")),
            education = factor(V201511x,
                               label = c("Refused",
                                         "Don't know",
                                         NA_character_,
                                         "Less than high school credential",
                                         "High school credential",
                                         "Some post-high school, no bachelor’s degree",
                                         "Bachelor’s degree",
                                         "Graduate degree")),
            therm_biden = V201151,
            therm_trump = V201152)

usethis::use_data(nes, overwrite = TRUE)
