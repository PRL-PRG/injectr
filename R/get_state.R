
get_state <- function(object, ...) {
    UseMethod("get_state")
}

get_state.injectr_call <- function(call) {
    .Call(C_get_state, call)
}
