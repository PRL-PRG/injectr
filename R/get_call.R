
get_call <- function(object, ...) {
    UseMethod("get_call")
}

get_call.injectr_argument <- function(argument) {
    .Call(C_get_call, argument)
}
