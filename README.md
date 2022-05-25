
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dreaformat <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->
<!-- badges: end -->

The goal of dreaformat is to make formatting tables and plots according
to district and department standards easier.

## Installation

You can install the development version of dreaformat from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("dormezil/dreaformat")
```

## Example

Bar plot in district dark blue

``` r
# Return hex code for district dark blue
library(tidyverse)

library(dreaformat)
district_dark_blue()
#> [1] "#262262"

# Sample of simple bar graph in district dark blue using mtcars package
mtcars %>%
  ggplot(aes(x = cyl)) +
  geom_bar(fill = district_dark_blue())
```

<img src="man/figures/README-example-1.png" width="100%" />
