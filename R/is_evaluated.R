
#' @export
is_evaluated <- function(argument, ...) {
    UseMethod("is_evaluated")
}

#' @export
is_evaluated.injectr_argument <- function(argument, ...) {
    .Call(C_argument_is_evaluated, argument)
}
