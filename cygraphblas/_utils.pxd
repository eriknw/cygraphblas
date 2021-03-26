from libc.stdint cimport int8_t

ctypedef int8_t backend_id_t

cdef backend_id_t get_backend(object) except -1
