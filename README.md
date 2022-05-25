
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

## Example of using district color functions

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

District light blue, district yellow, and district red is available as
well in the following code:  
**district_light_blue()**  
**district_yellow()**  
**district_red()**

### Examples same plot in all district colors

#### District light blue

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## Format tables

Using the mtcars package demonstrating converting mtcars into a format
that can be embedded into MS Word documents for publication. Font is
Calibri. Object is stored as a flextable object.

#### mtcars raw output

``` r
head(mtcars,5)
#>                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
#> Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#> Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#> Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#> Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
```

#### mtcars formated output

``` r
library(dreaformat)

mtcars_formatted <- head(mtcars,5) %>% drea_table()
mtcars_formatted
```
