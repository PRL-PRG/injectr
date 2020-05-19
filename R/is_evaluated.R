
is_evaluated <- function(object, ...) {
    UseMethod("is_evaluated")
}

is_evaluated.injectr_argument <- function(argument) {
    .Call(C_is_evaluated, argument)
}
