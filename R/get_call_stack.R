
#' @export
get_call_stack <- function() {
    .Call(C_call_stack_get_call_stack)
}
