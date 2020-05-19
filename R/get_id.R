
get_id <- function(object, ...) {
    UseMethod("get_id")
}

get_id.injectr_call <- function(call) {
    .Call(C_get_id, call)
}
