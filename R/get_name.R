
#' @export
get_name <- function(object, ...) {
    UseMethod("get_name")
}

#' @export
get_name.injectr_argument <- function(argument) {
    .Call(C_argument_get_name, argument)
}
