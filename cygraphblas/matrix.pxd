cimport cython
from cygraphblas._clib cimport backend_id_t
# from cygraphblas.wrappertypes._ss cimport GrB_Matrix  # XXX: need to always define this

@cython.final
cdef class Matrix:
    # cdef public str name
    cdef readonly str backend
    cdef backend_id_t backend_id
    cdef void *obj

    @staticmethod
    cdef Matrix _new(backend_id_t backend_id)
