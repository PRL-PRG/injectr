
get_position <- function(object, ...) {
    UseMethod("get_position")
}

get_position.injectr_argument <- function(argument) {
    .Call(C_get_position, argument)
}
