
#' @export
get_id <- function(object, ...) {
    UseMethod("get_id")
}

#' @export
get_id.injectr_call <- function(call) {
    .Call(C_call_get_id, call)
}
