party_competition_raw <- rio::import("https://static.cambridge.org/content/id/urn:cambridge.org:id:article:S0007123413000227/resource/name/S0007123413000227sup001.dta")

party_competition <- party_competition_raw |>
  # Remove outliers following Potter and Tavits
  dplyr::filter(postenp < 9.2) |>
  dplyr::select(
    country_name = cnty,
    year,
    rule_law = rulelaw,
    polity,
    legal_vote_threshold = thresh,
    post_num_parties = postenp,
    pre_num_parties = preenp,
    fund_parity = fundparity4,
    direct_funding_elig = directelig,
    dem_years = demyears,
    federal = fed,
    presidential = pres,
    avg_district_mag = avemag,
    smd,
    ethnolinguistic_frac = fract,
    donor_limit = donorlimit,
    free_media_access = eligmedia,
    party_limit = partyspend
  )

usethis::use_data(party_competition, overwrite = TRUE)
