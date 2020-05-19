
get_function_name <- function(object, ...) {
    UseMethod("get_function_name")
}

get_function_name.injectr_call <- function(call) {
    .Call(C_get_function_name, call)
}
