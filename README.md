
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `polisciols`: Political Science OLS Replication Data

<!-- badges: start -->
<!-- badges: end -->

The goal of `polisciols` is to provide you with programmatic access to
data that address political science questions.

## Installation

You can install the development version of polisciols from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("hgoers/polisciols")
```

## Using `polisciols`

To use the data and helpful documentation, you will need to load
`polisciols` into your current R session. You can do this by running the
following:

``` r
library(polisciols)
```

## Introducing multiple linear regression

Appel and Loyle (2012) explore the relationship between post-conflict
net FDI inflows and states’ implementation of post-conflict justice
(PCJ) institutions. They find that these institutions promote foreign
investment in post-conflict states. Their empirical work can serve as a
really clear introduction to multiple linear regression.

You can access their full data set by running the following:

``` r
head(ebj)
#>    id ccode      country_name              pcj net_fdi_inflows gdp_per_capita
#> 1  71    41             Haiti  No institutions         -9.8000       1182.498
#> 2  71    41             Haiti  No institutions          6.6000       1088.680
#> 3 154    52 Trinidad & Tobago  No institutions        510.1589       7742.736
#> 4 102    70            Mexico  No institutions       -340.6904       6894.704
#> 5 102    70            Mexico  No institutions       6460.7998       7780.053
#> 6  67    90         Guatemala PCJ institutions        431.3800       3061.873
#>            gdp gdp_per_capita_growth ex_rate_fluc cap_account_openness labor
#> 1   8407079981            -2.1324685     0.000000           -0.7681904  68.5
#> 2   8055393763           -14.8832922     1.776603           -0.0871520  67.9
#> 3   9542938026             1.9370972     0.000000           -1.1305820  55.2
#> 4 628418000000            -7.8634830     1.978028            1.1804080  59.8
#> 5 730752000000             5.2345648     1.129686            1.1804080  61.3
#> 6  31339424077             0.6277104     1.046489            1.2642760  63.1
#>   f_life_exp polity2 pol_constraints conflict_duration     damage
#> 1   55.02233       7            0.00                 1   0.000000
#> 2   56.09750      -7            0.00                 1  12.855902
#> 3   72.61483       9            0.84                 1  -2.787351
#> 4   74.67104       4            0.39                 1   0.000000
#> 5   75.23493       6            0.39                 1  -8.949999
#> 6   67.46067       8            0.43                31 -43.714600
#>   peace_agreement    victory      cold_war
#> 1    No agreement    Victory Post-Cold War
#> 2    No agreement    Victory Post-Cold War
#> 3    No agreement    Victory Post-Cold War
#> 4 Peace agreement No victory Post-Cold War
#> 5    No agreement No victory Post-Cold War
#> 6 Peace agreement No victory Post-Cold War
```

You can replicate their full linear regression model by running the
following:

``` r

m <- lm(net_fdi_inflows ~ pcj + gdp_per_capita + gdp + gdp_per_capita_growth + cap_account_openness + ex_rate_fluc + labor + f_life_exp + pol_constraints + polity2 + damage + conflict_duration + peace_agreement + victory + cold_war, 
        data = ebj)

summary(m)
#> 
#> Call:
#> lm(formula = net_fdi_inflows ~ pcj + gdp_per_capita + gdp + gdp_per_capita_growth + 
#>     cap_account_openness + ex_rate_fluc + labor + f_life_exp + 
#>     pol_constraints + polity2 + damage + conflict_duration + 
#>     peace_agreement + victory + cold_war, data = ebj)
#> 
#> Residuals:
#>     Min      1Q  Median      3Q     Max 
#> -5308.4  -715.8   188.0   670.0 11747.4 
#> 
#> Coefficients:
#>                                  Estimate Std. Error t value Pr(>|t|)    
#> (Intercept)                    -1.278e+03  2.852e+03  -0.448  0.65525    
#> pcjPCJ institutions             1.960e+03  7.030e+02   2.788  0.00663 ** 
#> gdp_per_capita                 -1.110e-01  1.329e-01  -0.835  0.40625    
#> gdp                             1.095e-08  1.738e-09   6.301 1.56e-08 ***
#> gdp_per_capita_growth           3.740e+01  2.324e+01   1.609  0.11152    
#> cap_account_openness            1.988e+02  2.016e+02   0.986  0.32701    
#> ex_rate_fluc                   -4.252e+01  1.389e+01  -3.061  0.00301 ** 
#> labor                           9.844e+00  2.553e+01   0.386  0.70083    
#> f_life_exp                      3.475e+00  3.299e+01   0.105  0.91638    
#> pol_constraints                 2.558e+03  1.460e+03   1.753  0.08357 .  
#> polity2                        -9.017e+01  5.631e+01  -1.601  0.11330    
#> damage                          2.838e+01  1.024e+01   2.771  0.00697 ** 
#> conflict_duration               8.111e-01  3.554e+01   0.023  0.98185    
#> peace_agreementPeace agreement -1.215e+03  7.938e+02  -1.531  0.12983    
#> victoryVictory                 -3.397e+01  6.507e+02  -0.052  0.95850    
#> cold_warCold War                8.153e+01  6.541e+02   0.125  0.90112    
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 2213 on 79 degrees of freedom
#> Multiple R-squared:  0.5141, Adjusted R-squared:  0.4219 
#> F-statistic: 5.573 on 15 and 79 DF,  p-value: 1.472e-07
```

## Credits

This package was inspired by [Dr Joshua
Alley’s](https://joshuaalley.github.io/) [`cross-sectional-ols`
repository](https://github.com/joshuaalley/cross-sectional-ols). Alley
(2021) describes this work.

## References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-alley2021" class="csl-entry">

Alley, Joshua. 2021. “An Open Collection of Political Science Research
with OLS Models and Cross-Sectional Data.”
<https://polmeth.org/blog/open-collection-political-science-research-ols-models-and-cross-sectional-data>.

</div>

<div id="ref-appel2012" class="csl-entry">

Appel, Benjamin J, and Cyanne E Loyle. 2012. “The Economic Benefits of
Justice: Post-Conflict Justice and Foreign Direct Investment.” *Journal
of Peace Research* 49 (5): 685–99.
<https://doi.org/10.1177/0022343312450044>.

</div>

</div>
