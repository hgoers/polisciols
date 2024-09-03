multilat_force_raw <- rio::import("https://files.prio.org/Journals/JPR/2005/42/5/Replication%20Atsushi%20Tago.zip",
                                  which = 4)

multilat_force <- multilat_force_raw |>
  dplyr::select(
    start_year = year,
    conflict = case_name,
    operation,
    use_of_force,
    coalitional_use_of_force,
    igo_authorized_use_of_force,
    recession_year,
    budget_constraints,
    election_cycle = electioncycle,
    senate_divided,
    house_divided,
    ground_forces = groundforces,
    non_neo,
    latin_america = latinamerica,
    europe,
    middle_east = middleeast,
    sub_saharan_africa = subsaharaafrica,
    asia_pacific = asiapacific,
    post_cold_war = coldwardummy,
    post_vietnam_war = vietnam_dummy,
    severity
  )

usethis::use_data(multilat_force, overwrite = TRUE)
