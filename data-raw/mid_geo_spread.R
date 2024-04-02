# Download original data set
mid_geo_spread_raw <- rio::import("https://files.prio.org/Journals/JPR/2006/43/5/Replication%20Braithwaite.zip",
                                  which = 2)

# Clean for analysis


usethis::use_data(mid_geo_spread, overwrite = TRUE)
