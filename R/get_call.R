
#' @export
get_call <- function(argument, ...) {
    UseMethod("get_call")
}

#' @export
get_call.injectr_argument <- function(argument, ...) {
    .Call(C_call_get_argument, argument)
}
