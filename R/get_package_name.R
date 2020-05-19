
get_package_name <- function(object, ...) {
    UseMethod("get_package_name")
}

get_package_name.injectr_call <- function(call) {
    .Call(C_get_package_name, call)
}
