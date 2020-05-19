#include "r_api.hpp"
#include <stdio.h>

SEXP r_reassign_function_body(SEXP fun, SEXP body) {
    if (TYPEOF(fun) != CLOSXP)
        Rf_error("fun must be a function");

    switch (TYPEOF(body)) {
    case PROMSXP:
    case DOTSXP:
    case ANYSXP:
    case BCODESXP:
    case WEAKREFSXP:
    case NEWSXP:
    case FREESXP:
        Rf_error("body type %d is not supported", TYPEOF(body));
    }

    SET_BODY(fun, body);

    return R_NilValue;
}

SEXP r_create_duplicate(SEXP target) {
    if (isNull(target))
        Rf_error("target must not be null");

    return Rf_duplicate(target);
}

SEXP r_sexp_address(SEXP s) {
    if (isNull(s))
        Rf_error("target must not be null");

    char* address;
    if (asprintf(&address, "%p", (void*) s) == -1) {
        Rf_error("Getting address of SEXP failed");
    }

    SEXP result = Rf_mkString(address);

    return result;
}
