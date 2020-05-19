#define _GNU_SOURCE
#define USE_RINTERNALS
#include <R.h>
#include <R_ext/Error.h>
#include <Rdefines.h>

extern "C" {
SEXP r_reassign_function_body(SEXP, SEXP);
SEXP r_create_duplicate(SEXP);
SEXP r_sexp_address(SEXP);
}
