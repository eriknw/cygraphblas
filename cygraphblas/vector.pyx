cimport cygraphblas._clib
from cygraphblas.lib.constants import BACKEND_NAMES

cdef class Vector:
    def __init__(self):
        raise TypeError('Vector may not be initialized')

    @staticmethod
    cdef Vector _new(backend_id_t backend_id):
        cdef Vector rv = Vector.__new__(Vector)
        rv.backend_id = backend_id
        rv.backend = BACKEND_NAMES[backend_id]
        return rv
