
#' @export
get_position <- function(argument, ...) {
    UseMethod("get_position")
}

#' @export
get_position.injectr_argument <- function(argument, ...) {
    .Call(C_argument_get_position, argument)
}
