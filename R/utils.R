reassign_function_body <- function(fun, body) {
    invisible(.Call(C_reassign_function_body, fun, body))
}

create_duplicate <- function(x) {
    .Call(C_create_duplicate, x)
}

sexp_address <- function(x) {
    .Call(C_sexp_address, x)
}
