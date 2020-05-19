
#' @export
get_function_name <- function(object, ...) {
    UseMethod("get_function_name")
}

#' @export
get_function_name.injectr_call <- function(call) {
    .Call(C_call_get_function_name, call)
}
