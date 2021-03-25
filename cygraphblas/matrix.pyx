cimport cygraphblas._clib
from cygraphblas.lib.constants import BACKEND_NAMES


#print('NBACKENDS', cygraphblas._clib.NBACKENDS)
#print('BACKEND_SS', cygraphblas._clib.BACKEND_SS)
#print('BACKEND_GBTL', cygraphblas._clib.BACKEND_GBTL)

#print(cygraphblas._clib.BACKEND_NAMES[0])
# print(cygraphblas._clib.BACKEND_NAMES[1])

cdef class Matrix:
    def __init__(self):
        raise TypeError('Matrix may not be initialized')

    @staticmethod
    cdef Matrix _new(backend_id_t backend_id):
        cdef Matrix rv = Matrix.__new__(Matrix)
        rv.backend_id = backend_id
        rv.backend = BACKEND_NAMES[backend_id]
        return rv


#M = Matrix._new(0)
#print(M.backend)
#
#cdef backend_id_t func(Matrix m):
#    return m.backend_id
#
#print(func(M))
