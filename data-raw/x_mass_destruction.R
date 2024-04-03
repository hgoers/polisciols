x_mass_destruction_raw <- rio::import("https://files.prio.org/Journals/JPR/2008/45/5/Replication%20Fuhrmann.zip",
                                      which = 1)

x_mass_destruction <- x_mass_destruction_raw |>
  dplyr::transmute(
    country,
    ccode,
    x_dual_use = expdu / 1e9,
    x_dual_use_licence = dulicense,
    log_gdp = log_gdp2,
    log_population = log_pop,
    log_distance = log_dist,
    log_x_all = logexpall,
    defence_ally = ally_def,
    democracy = dem7,
    conflict = armforce,
    pol_dissimilarity = swt_low10pct,
    wmd_acquisition = wmd_acq,
    wmd_pursuit
  )

x_mass_destruction

usethis::use_data(x_mass_destruction, overwrite = TRUE)
