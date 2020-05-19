
#' @export
get_package_name <- function(object, ...) {
    UseMethod("get_package_name")
}

#' @export
get_package_name.injectr_call <- function(call) {
    .Call(C_call_get_package_name, call)
}
