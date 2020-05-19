
get_argument <- function(object, ...) {
    UseMethod("get_argument")
}

get_argument.injectr_call <- function(call, position) {
    .Call(C_get_argument, position)
}
