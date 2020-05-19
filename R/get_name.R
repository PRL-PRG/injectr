
get_name <- function(object, ...) {
    UseMethod("get_name")
}

get_name.injectr_argument <- function(argument) {
    .Call(C_get_name, argument)
}
