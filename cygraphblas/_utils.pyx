from cygraphblas._clib cimport NBACKENDS

cdef backend_id_t get_backend(backend) except -1:
    if backend is None or backend < 0 or backend >= NBACKENDS:
        raise ValueError(f'bad backend: {backend}')
    return backend
