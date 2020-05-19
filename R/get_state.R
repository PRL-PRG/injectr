
#' @export
get_state <- function(object, ...) {
    UseMethod("get_state")
}

#' @export
get_state.injectr_call <- function(call) {
    .Call(C_call_get_state, call)
}
