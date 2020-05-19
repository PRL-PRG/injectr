
#' @export
get_argument <- function(call, position, ...) {
    UseMethod("get_argument")
}

#' @export
get_argument.injectr_call <- function(call, position, ...) {
    .Call(C_argument_get_call, position)
}
