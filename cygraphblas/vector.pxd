cimport cython
from cygraphblas._clib cimport backend_id_t

@cython.final
cdef class Vector:
    # cdef public str name
    cdef readonly str backend
    cdef backend_id_t backend_id
    cdef void *obj

    @staticmethod
    cdef Vector _new(backend_id_t backend_id)
