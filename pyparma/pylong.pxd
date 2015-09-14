"""
Various functions to deal with conversion mpz <-> Python int/long
"""
from types cimport *

cdef extern from *:
    ctypedef long Py_hash_t

cdef mpz_get_pylong(mpz_srcptr z)
cdef mpz_get_pyintlong(mpz_srcptr z)
cdef int mpz_set_pylong(mpz_ptr z, L) except -1
cdef Py_hash_t mpz_pythonhash(mpz_srcptr z)
