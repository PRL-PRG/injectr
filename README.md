<!-- badges: start -->
[![R-CMD-check](https://github.com/PRL-PRG/injectr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/PRL-PRG/injectr/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/PRL-PRG/injectr/branch/master/graph/badge.svg)](https://codecov.io/gh/PRL-PRG/injectr)
[![r-universe](https://prl-prg.r-universe.dev/injectr/badges/version)](https://prl-prg.r-universe.dev/injectr)
[![mutator](https://img.shields.io/endpoint?url=https%3A%2F%2Fprl-prg.github.io%2Finjectr%2Fmutation-score.json)](https://github.com/PRL-PRG/injectr/actions/workflows/mutation-testing.yaml)
<!-- badges: end -->

injectr
=======

R package for injecting code into existing functions.

Usage
-----

    library(injectr)

Look for the documentation of the `inject_code`.

### Examples

#### On entry example

    f <- function(x) {
      x*x
    }

    inject_code(message("f called with x: ", x), f)

    f(42)

    ## f called with x: 42

    ## [1] 1764

#### On exit example

    f <- function(x) {
      x*x
    }

    inject_code(message("f called with x: ", x, " returning: ", returnValue()), f, "onexit")

    f(42)

    ## f called with x: 42 returning: 1764

    ## [1] 1764

Building
--------

    make build
