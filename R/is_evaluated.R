
#' @export
is_evaluated <- function(object, ...) {
    UseMethod("is_evaluated")
}

#' @export
is_evaluated.injectr_argument <- function(argument) {
    .Call(C_argument_is_evaluated, argument)
}
