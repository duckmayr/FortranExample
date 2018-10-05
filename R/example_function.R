#' Example Function
#'
#' This is an example.
#'
#' @param x A single double value.
#'
#' @return x multiplied by two.
#' @export
example_function <- function(x) {
    return(.Fortran("foo", xtwo = numeric(1), x = as.numeric(x),
                    PACKAGE = "FortranExample")$xtwo)
}

#' @useDynLib FortranExample
NULL
