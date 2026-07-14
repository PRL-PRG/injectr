reassign_function_body <- function(fun, body) {
    invisible(.Call(reassign_function_body_, fun, body))
}

#' Duplicate an R object
#'
#' Creates a duplicate of an R object using R's native duplication mechanism.
#'
#' @param x An R object to duplicate. Must not be `NULL`.
#'
#' @return A duplicate of `x`.
#' @export
create_duplicate <- function(x) {
    .Call(create_duplicate_, x)
}

#' Get the memory address of an R object
#'
#' Returns the address of an object's underlying S-expression. This low-level
#' helper is primarily useful when testing whether two objects share storage.
#'
#' @param x An R object. Must not be `NULL`.
#'
#' @return A character scalar containing the hexadecimal memory address of `x`.
#' @export
sexp_address <- function(x) {
    .Call(sexp_address_, x)
}

## TODO: Fix implementation to properly handle the complete call signature of on.exit
process_on_exit <- function(expr) {
    if(typeof(expr) == "language") {
        if(expr[[1]] == "on.exit") {
            expr[[3]] <- TRUE
            expr[[4]] <- FALSE
        }
        else {
            l <- length(expr)
            for(i in 1:l) {
                ## NOTE: expr[[i]] is used inplace to avoid missingness
                ##       errors in expressions of the form x[,i]
                if(typeof(expr[[i]]) == "language") {
                    expr[[i]] <- process_on_exit(expr[[i]])
                }
            }
        }
    }
    expr
}
