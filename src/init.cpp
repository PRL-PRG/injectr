#include "r_api.hpp"
#include <R_ext/Rdynload.h>

#include <stdio.h>

extern "C" {
static const R_CallMethodDef CallEntries[] = {
    {"reassign_function_body", (DL_FUNC) &r_reassign_function_body, 2},
    {"create_duplicate", (DL_FUNC) &r_create_duplicate, 1},
    {"sexp_address", (DL_FUNC) &r_sexp_address, 1},
    {NULL, NULL, 0}};

void R_init_injectr(DllInfo* dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
}
