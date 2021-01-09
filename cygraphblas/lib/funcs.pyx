from libc.stdint cimport *
from cygraphblas._clib cimport *
from cygraphblas.matrix cimport Matrix
from cygraphblas.vector cimport Vector

cpdef object Col_assign(
    Matrix C,
    Vector mask,
    BinaryOp accum,
    Vector u,
    Index I,
    Index ni,
    Index j,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Col_assign_ptr func = Col_assign_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Col_assign')
    func(C, mask, accum, u, I, ni, j, desc)

cpdef object Col_extract(
    Vector w,
    Vector mask,
    BinaryOp accum,
    Matrix A,
    Index I,
    Index ni,
    Index j,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Col_extract_ptr func = Col_extract_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Col_extract')
    func(w, mask, accum, A, I, ni, j, desc)

cpdef object Descriptor_set(
    Descriptor desc,
    Desc_Field field,
    Desc_Value val,
):
    if desc is None:
        raise TypeError()
    cdef Descriptor_set_ptr func = Descriptor_set_ptrs[desc.backend_id]
    if func is NULL:
        raise ValueError(f'{desc.backend} backend does not have Descriptor_set')
    func(desc, field, val)

cpdef object Matrix_apply(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    UnaryOp op=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_ptr func = Matrix_apply_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply')
    func(C, Mask, accum, op, A, desc)

cpdef object Matrix_apply_BinaryOp1st_BOOL(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    bint x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_BOOL_ptr func = Matrix_apply_BinaryOp1st_BOOL_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_BOOL')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_FP32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    float x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_FP32_ptr func = Matrix_apply_BinaryOp1st_FP32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_FP32')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_FP64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    double x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_FP64_ptr func = Matrix_apply_BinaryOp1st_FP64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_FP64')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_INT16(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    int16_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_INT16_ptr func = Matrix_apply_BinaryOp1st_INT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_INT16')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_INT32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    int32_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_INT32_ptr func = Matrix_apply_BinaryOp1st_INT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_INT32')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_INT64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    int64_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_INT64_ptr func = Matrix_apply_BinaryOp1st_INT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_INT64')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_INT8(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    int8_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_INT8_ptr func = Matrix_apply_BinaryOp1st_INT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_INT8')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_UINT16(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    uint16_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_UINT16_ptr func = Matrix_apply_BinaryOp1st_UINT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_UINT16')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_UINT32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    uint32_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_UINT32_ptr func = Matrix_apply_BinaryOp1st_UINT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_UINT32')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_UINT64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    uint64_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_UINT64_ptr func = Matrix_apply_BinaryOp1st_UINT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_UINT64')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp1st_UINT8(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    uint8_t x,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp1st_UINT8_ptr func = Matrix_apply_BinaryOp1st_UINT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp1st_UINT8')
    func(C, Mask, accum, op, x, A, desc)

cpdef object Matrix_apply_BinaryOp2nd_BOOL(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    bint y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_BOOL_ptr func = Matrix_apply_BinaryOp2nd_BOOL_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_BOOL')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_FP32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    float y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_FP32_ptr func = Matrix_apply_BinaryOp2nd_FP32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_FP32')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_FP64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    double y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_FP64_ptr func = Matrix_apply_BinaryOp2nd_FP64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_FP64')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_INT16(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    int16_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_INT16_ptr func = Matrix_apply_BinaryOp2nd_INT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_INT16')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_INT32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    int32_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_INT32_ptr func = Matrix_apply_BinaryOp2nd_INT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_INT32')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_INT64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    int64_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_INT64_ptr func = Matrix_apply_BinaryOp2nd_INT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_INT64')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_INT8(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    int8_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_INT8_ptr func = Matrix_apply_BinaryOp2nd_INT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_INT8')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_UINT16(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    uint16_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_UINT16_ptr func = Matrix_apply_BinaryOp2nd_UINT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_UINT16')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_UINT32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    uint32_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_UINT32_ptr func = Matrix_apply_BinaryOp2nd_UINT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_UINT32')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_UINT64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    uint64_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_UINT64_ptr func = Matrix_apply_BinaryOp2nd_UINT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_UINT64')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_apply_BinaryOp2nd_UINT8(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    BinaryOp op,
    Matrix A,
    uint8_t y,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_apply_BinaryOp2nd_UINT8_ptr func = Matrix_apply_BinaryOp2nd_UINT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_apply_BinaryOp2nd_UINT8')
    func(C, Mask, accum, op, A, y, desc)

cpdef object Matrix_assign(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    Matrix A,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_ptr func = Matrix_assign_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign')
    func(C, Mask, accum, A, I, ni, J, nj, desc)

cpdef object Matrix_assign_BOOL(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    bint x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_BOOL_ptr func = Matrix_assign_BOOL_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_BOOL')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_FP32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    float x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_FP32_ptr func = Matrix_assign_FP32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_FP32')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_FP64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    double x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_FP64_ptr func = Matrix_assign_FP64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_FP64')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_INT16(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    int16_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_INT16_ptr func = Matrix_assign_INT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_INT16')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_INT32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    int32_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_INT32_ptr func = Matrix_assign_INT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_INT32')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_INT64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    int64_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_INT64_ptr func = Matrix_assign_INT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_INT64')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_INT8(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    int8_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_INT8_ptr func = Matrix_assign_INT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_INT8')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_UINT16(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    uint16_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_UINT16_ptr func = Matrix_assign_UINT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_UINT16')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_UINT32(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    uint32_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_UINT32_ptr func = Matrix_assign_UINT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_UINT32')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_UINT64(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    uint64_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_UINT64_ptr func = Matrix_assign_UINT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_UINT64')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_assign_UINT8(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    uint8_t x,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_assign_UINT8_ptr func = Matrix_assign_UINT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_assign_UINT8')
    func(C, Mask, accum, x, I, ni, J, nj, desc)

cpdef object Matrix_build_BOOL(
    Matrix C,
    Index I,
    Index J,
    bint X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_BOOL_ptr func = Matrix_build_BOOL_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_BOOL')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_FP32(
    Matrix C,
    Index I,
    Index J,
    float X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_FP32_ptr func = Matrix_build_FP32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_FP32')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_FP64(
    Matrix C,
    Index I,
    Index J,
    double X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_FP64_ptr func = Matrix_build_FP64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_FP64')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_INT16(
    Matrix C,
    Index I,
    Index J,
    int16_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_INT16_ptr func = Matrix_build_INT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_INT16')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_INT32(
    Matrix C,
    Index I,
    Index J,
    int32_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_INT32_ptr func = Matrix_build_INT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_INT32')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_INT64(
    Matrix C,
    Index I,
    Index J,
    int64_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_INT64_ptr func = Matrix_build_INT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_INT64')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_INT8(
    Matrix C,
    Index I,
    Index J,
    int8_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_INT8_ptr func = Matrix_build_INT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_INT8')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_UINT16(
    Matrix C,
    Index I,
    Index J,
    uint16_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_UINT16_ptr func = Matrix_build_UINT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_UINT16')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_UINT32(
    Matrix C,
    Index I,
    Index J,
    uint32_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_UINT32_ptr func = Matrix_build_UINT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_UINT32')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_UINT64(
    Matrix C,
    Index I,
    Index J,
    uint64_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_UINT64_ptr func = Matrix_build_UINT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_UINT64')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_build_UINT8(
    Matrix C,
    Index I,
    Index J,
    uint8_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_build_UINT8_ptr func = Matrix_build_UINT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_build_UINT8')
    func(C, I, J, X, nvals, dup)

cpdef object Matrix_clear(
    Matrix A=None,
):
    if A is None:
        raise TypeError()
    cdef Matrix_clear_ptr func = Matrix_clear_ptrs[A.backend_id]
    if func is NULL:
        raise ValueError(f'{A.backend} backend does not have Matrix_clear')
    func(A)

cpdef object Matrix_dup(
    Matrix C=None,
    Matrix A=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_dup_ptr func = Matrix_dup_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_dup')
    func(C, A)

cpdef object Matrix_eWiseAdd_BinaryOp(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    BinaryOp add=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_eWiseAdd_BinaryOp_ptr func = Matrix_eWiseAdd_BinaryOp_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_eWiseAdd_BinaryOp')
    func(C, Mask, accum, add, A, B, desc)

cpdef object Matrix_eWiseAdd_Monoid(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_eWiseAdd_Monoid_ptr func = Matrix_eWiseAdd_Monoid_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_eWiseAdd_Monoid')
    func(C, Mask, accum, monoid, A, B, desc)

cpdef object Matrix_eWiseAdd_Semiring(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_eWiseAdd_Semiring_ptr func = Matrix_eWiseAdd_Semiring_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_eWiseAdd_Semiring')
    func(C, Mask, accum, semiring, A, B, desc)

cpdef object Matrix_eWiseMult_BinaryOp(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    BinaryOp mult=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_eWiseMult_BinaryOp_ptr func = Matrix_eWiseMult_BinaryOp_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_eWiseMult_BinaryOp')
    func(C, Mask, accum, mult, A, B, desc)

cpdef object Matrix_eWiseMult_Monoid(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_eWiseMult_Monoid_ptr func = Matrix_eWiseMult_Monoid_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_eWiseMult_Monoid')
    func(C, Mask, accum, monoid, A, B, desc)

cpdef object Matrix_eWiseMult_Semiring(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_eWiseMult_Semiring_ptr func = Matrix_eWiseMult_Semiring_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_eWiseMult_Semiring')
    func(C, Mask, accum, semiring, A, B, desc)

cpdef object Matrix_extract(
    Matrix C,
    Matrix Mask,
    BinaryOp accum,
    Matrix A,
    Index I,
    Index ni,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_extract_ptr func = Matrix_extract_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_extract')
    func(C, Mask, accum, A, I, ni, J, nj, desc)

cpdef object Matrix_extractElement_BOOL(
    bint x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_BOOL_ptr func = Matrix_extractElement_BOOL_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_BOOL')
    func(x, A, i, j)

cpdef object Matrix_extractElement_FP32(
    float x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_FP32_ptr func = Matrix_extractElement_FP32_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_FP32')
    func(x, A, i, j)

cpdef object Matrix_extractElement_FP64(
    double x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_FP64_ptr func = Matrix_extractElement_FP64_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_FP64')
    func(x, A, i, j)

cpdef object Matrix_extractElement_INT16(
    int16_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_INT16_ptr func = Matrix_extractElement_INT16_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_INT16')
    func(x, A, i, j)

cpdef object Matrix_extractElement_INT32(
    int32_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_INT32_ptr func = Matrix_extractElement_INT32_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_INT32')
    func(x, A, i, j)

cpdef object Matrix_extractElement_INT64(
    int64_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_INT64_ptr func = Matrix_extractElement_INT64_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_INT64')
    func(x, A, i, j)

cpdef object Matrix_extractElement_INT8(
    int8_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_INT8_ptr func = Matrix_extractElement_INT8_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_INT8')
    func(x, A, i, j)

cpdef object Matrix_extractElement_UINT16(
    uint16_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_UINT16_ptr func = Matrix_extractElement_UINT16_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_UINT16')
    func(x, A, i, j)

cpdef object Matrix_extractElement_UINT32(
    uint32_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_UINT32_ptr func = Matrix_extractElement_UINT32_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_UINT32')
    func(x, A, i, j)

cpdef object Matrix_extractElement_UINT64(
    uint64_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_UINT64_ptr func = Matrix_extractElement_UINT64_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_UINT64')
    func(x, A, i, j)

cpdef object Matrix_extractElement_UINT8(
    uint8_t x,
    Matrix A,
    Index i,
    Index j,
):
    if x is None:
        raise TypeError()
    cdef Matrix_extractElement_UINT8_ptr func = Matrix_extractElement_UINT8_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Matrix_extractElement_UINT8')
    func(x, A, i, j)

cpdef object Matrix_extractTuples_BOOL(
    Index I,
    Index J,
    bint X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_BOOL_ptr func = Matrix_extractTuples_BOOL_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_BOOL')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_FP32(
    Index I,
    Index J,
    float X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_FP32_ptr func = Matrix_extractTuples_FP32_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_FP32')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_FP64(
    Index I,
    Index J,
    double X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_FP64_ptr func = Matrix_extractTuples_FP64_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_FP64')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_INT16(
    Index I,
    Index J,
    int16_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_INT16_ptr func = Matrix_extractTuples_INT16_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_INT16')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_INT32(
    Index I,
    Index J,
    int32_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_INT32_ptr func = Matrix_extractTuples_INT32_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_INT32')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_INT64(
    Index I,
    Index J,
    int64_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_INT64_ptr func = Matrix_extractTuples_INT64_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_INT64')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_INT8(
    Index I,
    Index J,
    int8_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_INT8_ptr func = Matrix_extractTuples_INT8_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_INT8')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_UINT16(
    Index I,
    Index J,
    uint16_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_UINT16_ptr func = Matrix_extractTuples_UINT16_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_UINT16')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_UINT32(
    Index I,
    Index J,
    uint32_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_UINT32_ptr func = Matrix_extractTuples_UINT32_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_UINT32')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_UINT64(
    Index I,
    Index J,
    uint64_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_UINT64_ptr func = Matrix_extractTuples_UINT64_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_UINT64')
    func(I, J, X, nvals, A)

cpdef object Matrix_extractTuples_UINT8(
    Index I,
    Index J,
    uint8_t X,
    Index nvals,
    Matrix A=None,
):
    if I is None:
        raise TypeError()
    cdef Matrix_extractTuples_UINT8_ptr func = Matrix_extractTuples_UINT8_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Matrix_extractTuples_UINT8')
    func(I, J, X, nvals, A)

cpdef object Matrix_free(
    Matrix A=None,
):
    if A is None:
        raise TypeError()
    cdef Matrix_free_ptr func = Matrix_free_ptrs[A.backend_id]
    if func is NULL:
        raise ValueError(f'{A.backend} backend does not have Matrix_free')
    func(A)

cpdef object Matrix_kronecker_BinaryOp(
    Matrix C=None,
    Matrix M=None,
    BinaryOp accum=None,
    BinaryOp op=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_kronecker_BinaryOp_ptr func = Matrix_kronecker_BinaryOp_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_kronecker_BinaryOp')
    func(C, M, accum, op, A, B, desc)

cpdef object Matrix_kronecker_Monoid(
    Matrix C=None,
    Matrix M=None,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_kronecker_Monoid_ptr func = Matrix_kronecker_Monoid_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_kronecker_Monoid')
    func(C, M, accum, monoid, A, B, desc)

cpdef object Matrix_kronecker_Semiring(
    Matrix C=None,
    Matrix M=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Matrix_kronecker_Semiring_ptr func = Matrix_kronecker_Semiring_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_kronecker_Semiring')
    func(C, M, accum, semiring, A, B, desc)

cpdef object Matrix_ncols(
    Index ncols,
    Matrix A=None,
):
    if ncols is None:
        raise TypeError()
    cdef Matrix_ncols_ptr func = Matrix_ncols_ptrs[ncols.backend_id]
    if func is NULL:
        raise ValueError(f'{ncols.backend} backend does not have Matrix_ncols')
    func(ncols, A)

cpdef object Matrix_new(
    Matrix A,
    Type type,
    Index nrows,
    Index ncols,
):
    if A is None:
        raise TypeError()
    cdef Matrix_new_ptr func = Matrix_new_ptrs[A.backend_id]
    if func is NULL:
        raise ValueError(f'{A.backend} backend does not have Matrix_new')
    func(A, type, nrows, ncols)

cpdef object Matrix_nrows(
    Index nrows,
    Matrix A=None,
):
    if nrows is None:
        raise TypeError()
    cdef Matrix_nrows_ptr func = Matrix_nrows_ptrs[nrows.backend_id]
    if func is NULL:
        raise ValueError(f'{nrows.backend} backend does not have Matrix_nrows')
    func(nrows, A)

cpdef object Matrix_nvals(
    Index nvals,
    Matrix A=None,
):
    if nvals is None:
        raise TypeError()
    cdef Matrix_nvals_ptr func = Matrix_nvals_ptrs[nvals.backend_id]
    if func is NULL:
        raise ValueError(f'{nvals.backend} backend does not have Matrix_nvals')
    func(nvals, A)

cpdef object Matrix_reduce_BOOL(
    bint c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_BOOL_ptr func = Matrix_reduce_BOOL_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_BOOL')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_BinaryOp(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    BinaryOp op=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Matrix_reduce_BinaryOp_ptr func = Matrix_reduce_BinaryOp_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Matrix_reduce_BinaryOp')
    func(w, mask, accum, op, A, desc)

cpdef object Matrix_reduce_FP32(
    float c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_FP32_ptr func = Matrix_reduce_FP32_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_FP32')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_FP64(
    double c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_FP64_ptr func = Matrix_reduce_FP64_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_FP64')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_INT16(
    int16_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_INT16_ptr func = Matrix_reduce_INT16_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_INT16')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_INT32(
    int32_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_INT32_ptr func = Matrix_reduce_INT32_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_INT32')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_INT64(
    int64_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_INT64_ptr func = Matrix_reduce_INT64_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_INT64')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_INT8(
    int8_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_INT8_ptr func = Matrix_reduce_INT8_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_INT8')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_Monoid(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Matrix_reduce_Monoid_ptr func = Matrix_reduce_Monoid_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Matrix_reduce_Monoid')
    func(w, mask, accum, monoid, A, desc)

cpdef object Matrix_reduce_UINT16(
    uint16_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_UINT16_ptr func = Matrix_reduce_UINT16_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_UINT16')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_UINT32(
    uint32_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_UINT32_ptr func = Matrix_reduce_UINT32_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_UINT32')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_UINT64(
    uint64_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_UINT64_ptr func = Matrix_reduce_UINT64_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_UINT64')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_reduce_UINT8(
    uint8_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Matrix_reduce_UINT8_ptr func = Matrix_reduce_UINT8_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Matrix_reduce_UINT8')
    func(c, accum, monoid, A, desc)

cpdef object Matrix_removeElement(
    Matrix C,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_removeElement_ptr func = Matrix_removeElement_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_removeElement')
    func(C, i, j)

cpdef object Matrix_resize(
    Matrix A,
    Index nrows_new,
    Index ncols_new,
):
    if A is None:
        raise TypeError()
    cdef Matrix_resize_ptr func = Matrix_resize_ptrs[A.backend_id]
    if func is NULL:
        raise ValueError(f'{A.backend} backend does not have Matrix_resize')
    func(A, nrows_new, ncols_new)

cpdef object Matrix_setElement_BOOL(
    Matrix C,
    bint x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_BOOL_ptr func = Matrix_setElement_BOOL_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_BOOL')
    func(C, x, i, j)

cpdef object Matrix_setElement_FP32(
    Matrix C,
    float x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_FP32_ptr func = Matrix_setElement_FP32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_FP32')
    func(C, x, i, j)

cpdef object Matrix_setElement_FP64(
    Matrix C,
    double x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_FP64_ptr func = Matrix_setElement_FP64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_FP64')
    func(C, x, i, j)

cpdef object Matrix_setElement_INT16(
    Matrix C,
    int16_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_INT16_ptr func = Matrix_setElement_INT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_INT16')
    func(C, x, i, j)

cpdef object Matrix_setElement_INT32(
    Matrix C,
    int32_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_INT32_ptr func = Matrix_setElement_INT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_INT32')
    func(C, x, i, j)

cpdef object Matrix_setElement_INT64(
    Matrix C,
    int64_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_INT64_ptr func = Matrix_setElement_INT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_INT64')
    func(C, x, i, j)

cpdef object Matrix_setElement_INT8(
    Matrix C,
    int8_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_INT8_ptr func = Matrix_setElement_INT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_INT8')
    func(C, x, i, j)

cpdef object Matrix_setElement_UINT16(
    Matrix C,
    uint16_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_UINT16_ptr func = Matrix_setElement_UINT16_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_UINT16')
    func(C, x, i, j)

cpdef object Matrix_setElement_UINT32(
    Matrix C,
    uint32_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_UINT32_ptr func = Matrix_setElement_UINT32_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_UINT32')
    func(C, x, i, j)

cpdef object Matrix_setElement_UINT64(
    Matrix C,
    uint64_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_UINT64_ptr func = Matrix_setElement_UINT64_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_UINT64')
    func(C, x, i, j)

cpdef object Matrix_setElement_UINT8(
    Matrix C,
    uint8_t x,
    Index i,
    Index j,
):
    if C is None:
        raise TypeError()
    cdef Matrix_setElement_UINT8_ptr func = Matrix_setElement_UINT8_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Matrix_setElement_UINT8')
    func(C, x, i, j)

cpdef object Matrix_wait(
    Matrix A=None,
):
    if A is None:
        raise TypeError()
    cdef Matrix_wait_ptr func = Matrix_wait_ptrs[A.backend_id]
    if func is NULL:
        raise ValueError(f'{A.backend} backend does not have Matrix_wait')
    func(A)

cpdef object Row_assign(
    Matrix C,
    Vector mask,
    BinaryOp accum,
    Vector u,
    Index i,
    Index J,
    Index nj,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef Row_assign_ptr func = Row_assign_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have Row_assign')
    func(C, mask, accum, u, i, J, nj, desc)

cpdef object Vector_apply(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    UnaryOp op=None,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_ptr func = Vector_apply_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply')
    func(w, mask, accum, op, u, desc)

cpdef object Vector_apply_BinaryOp1st_BOOL(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    bint x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_BOOL_ptr func = Vector_apply_BinaryOp1st_BOOL_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_BOOL')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_FP32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    float x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_FP32_ptr func = Vector_apply_BinaryOp1st_FP32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_FP32')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_FP64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    double x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_FP64_ptr func = Vector_apply_BinaryOp1st_FP64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_FP64')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_INT16(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    int16_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_INT16_ptr func = Vector_apply_BinaryOp1st_INT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_INT16')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_INT32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    int32_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_INT32_ptr func = Vector_apply_BinaryOp1st_INT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_INT32')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_INT64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    int64_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_INT64_ptr func = Vector_apply_BinaryOp1st_INT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_INT64')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_INT8(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    int8_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_INT8_ptr func = Vector_apply_BinaryOp1st_INT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_INT8')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_UINT16(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    uint16_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_UINT16_ptr func = Vector_apply_BinaryOp1st_UINT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_UINT16')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_UINT32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    uint32_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_UINT32_ptr func = Vector_apply_BinaryOp1st_UINT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_UINT32')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_UINT64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    uint64_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_UINT64_ptr func = Vector_apply_BinaryOp1st_UINT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_UINT64')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp1st_UINT8(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    uint8_t x,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp1st_UINT8_ptr func = Vector_apply_BinaryOp1st_UINT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp1st_UINT8')
    func(w, mask, accum, op, x, u, desc)

cpdef object Vector_apply_BinaryOp2nd_BOOL(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    bint y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_BOOL_ptr func = Vector_apply_BinaryOp2nd_BOOL_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_BOOL')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_FP32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    float y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_FP32_ptr func = Vector_apply_BinaryOp2nd_FP32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_FP32')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_FP64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    double y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_FP64_ptr func = Vector_apply_BinaryOp2nd_FP64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_FP64')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_INT16(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    int16_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_INT16_ptr func = Vector_apply_BinaryOp2nd_INT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_INT16')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_INT32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    int32_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_INT32_ptr func = Vector_apply_BinaryOp2nd_INT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_INT32')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_INT64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    int64_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_INT64_ptr func = Vector_apply_BinaryOp2nd_INT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_INT64')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_INT8(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    int8_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_INT8_ptr func = Vector_apply_BinaryOp2nd_INT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_INT8')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_UINT16(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    uint16_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_UINT16_ptr func = Vector_apply_BinaryOp2nd_UINT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_UINT16')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_UINT32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    uint32_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_UINT32_ptr func = Vector_apply_BinaryOp2nd_UINT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_UINT32')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_UINT64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    uint64_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_UINT64_ptr func = Vector_apply_BinaryOp2nd_UINT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_UINT64')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_apply_BinaryOp2nd_UINT8(
    Vector w,
    Vector mask,
    BinaryOp accum,
    BinaryOp op,
    Vector u,
    uint8_t y,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_apply_BinaryOp2nd_UINT8_ptr func = Vector_apply_BinaryOp2nd_UINT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_apply_BinaryOp2nd_UINT8')
    func(w, mask, accum, op, u, y, desc)

cpdef object Vector_assign(
    Vector w,
    Vector mask,
    BinaryOp accum,
    Vector u,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_ptr func = Vector_assign_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign')
    func(w, mask, accum, u, I, ni, desc)

cpdef object Vector_assign_BOOL(
    Vector w,
    Vector mask,
    BinaryOp accum,
    bint x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_BOOL_ptr func = Vector_assign_BOOL_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_BOOL')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_FP32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    float x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_FP32_ptr func = Vector_assign_FP32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_FP32')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_FP64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    double x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_FP64_ptr func = Vector_assign_FP64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_FP64')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_INT16(
    Vector w,
    Vector mask,
    BinaryOp accum,
    int16_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_INT16_ptr func = Vector_assign_INT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_INT16')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_INT32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    int32_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_INT32_ptr func = Vector_assign_INT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_INT32')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_INT64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    int64_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_INT64_ptr func = Vector_assign_INT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_INT64')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_INT8(
    Vector w,
    Vector mask,
    BinaryOp accum,
    int8_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_INT8_ptr func = Vector_assign_INT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_INT8')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_UINT16(
    Vector w,
    Vector mask,
    BinaryOp accum,
    uint16_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_UINT16_ptr func = Vector_assign_UINT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_UINT16')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_UINT32(
    Vector w,
    Vector mask,
    BinaryOp accum,
    uint32_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_UINT32_ptr func = Vector_assign_UINT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_UINT32')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_UINT64(
    Vector w,
    Vector mask,
    BinaryOp accum,
    uint64_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_UINT64_ptr func = Vector_assign_UINT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_UINT64')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_assign_UINT8(
    Vector w,
    Vector mask,
    BinaryOp accum,
    uint8_t x,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_assign_UINT8_ptr func = Vector_assign_UINT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_assign_UINT8')
    func(w, mask, accum, x, I, ni, desc)

cpdef object Vector_build_BOOL(
    Vector w,
    Index I,
    bint X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_BOOL_ptr func = Vector_build_BOOL_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_BOOL')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_FP32(
    Vector w,
    Index I,
    float X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_FP32_ptr func = Vector_build_FP32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_FP32')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_FP64(
    Vector w,
    Index I,
    double X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_FP64_ptr func = Vector_build_FP64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_FP64')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_INT16(
    Vector w,
    Index I,
    int16_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_INT16_ptr func = Vector_build_INT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_INT16')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_INT32(
    Vector w,
    Index I,
    int32_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_INT32_ptr func = Vector_build_INT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_INT32')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_INT64(
    Vector w,
    Index I,
    int64_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_INT64_ptr func = Vector_build_INT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_INT64')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_INT8(
    Vector w,
    Index I,
    int8_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_INT8_ptr func = Vector_build_INT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_INT8')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_UINT16(
    Vector w,
    Index I,
    uint16_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_UINT16_ptr func = Vector_build_UINT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_UINT16')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_UINT32(
    Vector w,
    Index I,
    uint32_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_UINT32_ptr func = Vector_build_UINT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_UINT32')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_UINT64(
    Vector w,
    Index I,
    uint64_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_UINT64_ptr func = Vector_build_UINT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_UINT64')
    func(w, I, X, nvals, dup)

cpdef object Vector_build_UINT8(
    Vector w,
    Index I,
    uint8_t X,
    Index nvals,
    BinaryOp dup=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_build_UINT8_ptr func = Vector_build_UINT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_build_UINT8')
    func(w, I, X, nvals, dup)

cpdef object Vector_clear(
    Vector v=None,
):
    if v is None:
        raise TypeError()
    cdef Vector_clear_ptr func = Vector_clear_ptrs[v.backend_id]
    if func is NULL:
        raise ValueError(f'{v.backend} backend does not have Vector_clear')
    func(v)

cpdef object Vector_dup(
    Vector w=None,
    Vector u=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_dup_ptr func = Vector_dup_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_dup')
    func(w, u)

cpdef object Vector_eWiseAdd_BinaryOp(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    BinaryOp add=None,
    Vector u=None,
    Vector v=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_eWiseAdd_BinaryOp_ptr func = Vector_eWiseAdd_BinaryOp_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_eWiseAdd_BinaryOp')
    func(w, mask, accum, add, u, v, desc)

cpdef object Vector_eWiseAdd_Monoid(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Vector v=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_eWiseAdd_Monoid_ptr func = Vector_eWiseAdd_Monoid_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_eWiseAdd_Monoid')
    func(w, mask, accum, monoid, u, v, desc)

cpdef object Vector_eWiseAdd_Semiring(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Vector u=None,
    Vector v=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_eWiseAdd_Semiring_ptr func = Vector_eWiseAdd_Semiring_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_eWiseAdd_Semiring')
    func(w, mask, accum, semiring, u, v, desc)

cpdef object Vector_eWiseMult_BinaryOp(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    BinaryOp mult=None,
    Vector u=None,
    Vector v=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_eWiseMult_BinaryOp_ptr func = Vector_eWiseMult_BinaryOp_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_eWiseMult_BinaryOp')
    func(w, mask, accum, mult, u, v, desc)

cpdef object Vector_eWiseMult_Monoid(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Vector v=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_eWiseMult_Monoid_ptr func = Vector_eWiseMult_Monoid_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_eWiseMult_Monoid')
    func(w, mask, accum, monoid, u, v, desc)

cpdef object Vector_eWiseMult_Semiring(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Vector u=None,
    Vector v=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_eWiseMult_Semiring_ptr func = Vector_eWiseMult_Semiring_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_eWiseMult_Semiring')
    func(w, mask, accum, semiring, u, v, desc)

cpdef object Vector_extract(
    Vector w,
    Vector mask,
    BinaryOp accum,
    Vector u,
    Index I,
    Index ni,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef Vector_extract_ptr func = Vector_extract_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_extract')
    func(w, mask, accum, u, I, ni, desc)

cpdef object Vector_extractElement_BOOL(
    bint x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_BOOL_ptr func = Vector_extractElement_BOOL_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_BOOL')
    func(x, v, i)

cpdef object Vector_extractElement_FP32(
    float x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_FP32_ptr func = Vector_extractElement_FP32_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_FP32')
    func(x, v, i)

cpdef object Vector_extractElement_FP64(
    double x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_FP64_ptr func = Vector_extractElement_FP64_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_FP64')
    func(x, v, i)

cpdef object Vector_extractElement_INT16(
    int16_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_INT16_ptr func = Vector_extractElement_INT16_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_INT16')
    func(x, v, i)

cpdef object Vector_extractElement_INT32(
    int32_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_INT32_ptr func = Vector_extractElement_INT32_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_INT32')
    func(x, v, i)

cpdef object Vector_extractElement_INT64(
    int64_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_INT64_ptr func = Vector_extractElement_INT64_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_INT64')
    func(x, v, i)

cpdef object Vector_extractElement_INT8(
    int8_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_INT8_ptr func = Vector_extractElement_INT8_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_INT8')
    func(x, v, i)

cpdef object Vector_extractElement_UINT16(
    uint16_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_UINT16_ptr func = Vector_extractElement_UINT16_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_UINT16')
    func(x, v, i)

cpdef object Vector_extractElement_UINT32(
    uint32_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_UINT32_ptr func = Vector_extractElement_UINT32_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_UINT32')
    func(x, v, i)

cpdef object Vector_extractElement_UINT64(
    uint64_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_UINT64_ptr func = Vector_extractElement_UINT64_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_UINT64')
    func(x, v, i)

cpdef object Vector_extractElement_UINT8(
    uint8_t x,
    Vector v,
    Index i,
):
    if x is None:
        raise TypeError()
    cdef Vector_extractElement_UINT8_ptr func = Vector_extractElement_UINT8_ptrs[x.backend_id]
    if func is NULL:
        raise ValueError(f'{x.backend} backend does not have Vector_extractElement_UINT8')
    func(x, v, i)

cpdef object Vector_extractTuples_BOOL(
    Index I,
    bint X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_BOOL_ptr func = Vector_extractTuples_BOOL_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_BOOL')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_FP32(
    Index I,
    float X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_FP32_ptr func = Vector_extractTuples_FP32_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_FP32')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_FP64(
    Index I,
    double X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_FP64_ptr func = Vector_extractTuples_FP64_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_FP64')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_INT16(
    Index I,
    int16_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_INT16_ptr func = Vector_extractTuples_INT16_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_INT16')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_INT32(
    Index I,
    int32_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_INT32_ptr func = Vector_extractTuples_INT32_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_INT32')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_INT64(
    Index I,
    int64_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_INT64_ptr func = Vector_extractTuples_INT64_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_INT64')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_INT8(
    Index I,
    int8_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_INT8_ptr func = Vector_extractTuples_INT8_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_INT8')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_UINT16(
    Index I,
    uint16_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_UINT16_ptr func = Vector_extractTuples_UINT16_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_UINT16')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_UINT32(
    Index I,
    uint32_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_UINT32_ptr func = Vector_extractTuples_UINT32_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_UINT32')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_UINT64(
    Index I,
    uint64_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_UINT64_ptr func = Vector_extractTuples_UINT64_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_UINT64')
    func(I, X, nvals, v)

cpdef object Vector_extractTuples_UINT8(
    Index I,
    uint8_t X,
    Index nvals,
    Vector v=None,
):
    if I is None:
        raise TypeError()
    cdef Vector_extractTuples_UINT8_ptr func = Vector_extractTuples_UINT8_ptrs[I.backend_id]
    if func is NULL:
        raise ValueError(f'{I.backend} backend does not have Vector_extractTuples_UINT8')
    func(I, X, nvals, v)

cpdef object Vector_free(
    Vector v=None,
):
    if v is None:
        raise TypeError()
    cdef Vector_free_ptr func = Vector_free_ptrs[v.backend_id]
    if func is NULL:
        raise ValueError(f'{v.backend} backend does not have Vector_free')
    func(v)

cpdef object Vector_new(
    Vector v,
    Type type,
    Index n,
):
    if v is None:
        raise TypeError()
    cdef Vector_new_ptr func = Vector_new_ptrs[v.backend_id]
    if func is NULL:
        raise ValueError(f'{v.backend} backend does not have Vector_new')
    func(v, type, n)

cpdef object Vector_nvals(
    Index nvals,
    Vector v=None,
):
    if nvals is None:
        raise TypeError()
    cdef Vector_nvals_ptr func = Vector_nvals_ptrs[nvals.backend_id]
    if func is NULL:
        raise ValueError(f'{nvals.backend} backend does not have Vector_nvals')
    func(nvals, v)

cpdef object Vector_reduce_BOOL(
    bint c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_BOOL_ptr func = Vector_reduce_BOOL_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_BOOL')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_FP32(
    float c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_FP32_ptr func = Vector_reduce_FP32_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_FP32')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_FP64(
    double c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_FP64_ptr func = Vector_reduce_FP64_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_FP64')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_INT16(
    int16_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_INT16_ptr func = Vector_reduce_INT16_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_INT16')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_INT32(
    int32_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_INT32_ptr func = Vector_reduce_INT32_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_INT32')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_INT64(
    int64_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_INT64_ptr func = Vector_reduce_INT64_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_INT64')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_INT8(
    int8_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_INT8_ptr func = Vector_reduce_INT8_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_INT8')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_UINT16(
    uint16_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_UINT16_ptr func = Vector_reduce_UINT16_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_UINT16')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_UINT32(
    uint32_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_UINT32_ptr func = Vector_reduce_UINT32_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_UINT32')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_UINT64(
    uint64_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_UINT64_ptr func = Vector_reduce_UINT64_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_UINT64')
    func(c, accum, monoid, u, desc)

cpdef object Vector_reduce_UINT8(
    uint8_t c,
    BinaryOp accum=None,
    Monoid monoid=None,
    Vector u=None,
    Descriptor desc=None,
):
    if c is None:
        raise TypeError()
    cdef Vector_reduce_UINT8_ptr func = Vector_reduce_UINT8_ptrs[c.backend_id]
    if func is NULL:
        raise ValueError(f'{c.backend} backend does not have Vector_reduce_UINT8')
    func(c, accum, monoid, u, desc)

cpdef object Vector_removeElement(
    Vector v,
    Index i,
):
    if v is None:
        raise TypeError()
    cdef Vector_removeElement_ptr func = Vector_removeElement_ptrs[v.backend_id]
    if func is NULL:
        raise ValueError(f'{v.backend} backend does not have Vector_removeElement')
    func(v, i)

cpdef object Vector_resize(
    Vector u,
    Index nrows_new,
):
    if u is None:
        raise TypeError()
    cdef Vector_resize_ptr func = Vector_resize_ptrs[u.backend_id]
    if func is NULL:
        raise ValueError(f'{u.backend} backend does not have Vector_resize')
    func(u, nrows_new)

cpdef object Vector_setElement_BOOL(
    Vector w,
    bint x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_BOOL_ptr func = Vector_setElement_BOOL_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_BOOL')
    func(w, x, i)

cpdef object Vector_setElement_FP32(
    Vector w,
    float x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_FP32_ptr func = Vector_setElement_FP32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_FP32')
    func(w, x, i)

cpdef object Vector_setElement_FP64(
    Vector w,
    double x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_FP64_ptr func = Vector_setElement_FP64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_FP64')
    func(w, x, i)

cpdef object Vector_setElement_INT16(
    Vector w,
    int16_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_INT16_ptr func = Vector_setElement_INT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_INT16')
    func(w, x, i)

cpdef object Vector_setElement_INT32(
    Vector w,
    int32_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_INT32_ptr func = Vector_setElement_INT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_INT32')
    func(w, x, i)

cpdef object Vector_setElement_INT64(
    Vector w,
    int64_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_INT64_ptr func = Vector_setElement_INT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_INT64')
    func(w, x, i)

cpdef object Vector_setElement_INT8(
    Vector w,
    int8_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_INT8_ptr func = Vector_setElement_INT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_INT8')
    func(w, x, i)

cpdef object Vector_setElement_UINT16(
    Vector w,
    uint16_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_UINT16_ptr func = Vector_setElement_UINT16_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_UINT16')
    func(w, x, i)

cpdef object Vector_setElement_UINT32(
    Vector w,
    uint32_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_UINT32_ptr func = Vector_setElement_UINT32_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_UINT32')
    func(w, x, i)

cpdef object Vector_setElement_UINT64(
    Vector w,
    uint64_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_UINT64_ptr func = Vector_setElement_UINT64_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_UINT64')
    func(w, x, i)

cpdef object Vector_setElement_UINT8(
    Vector w,
    uint8_t x,
    Index i,
):
    if w is None:
        raise TypeError()
    cdef Vector_setElement_UINT8_ptr func = Vector_setElement_UINT8_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have Vector_setElement_UINT8')
    func(w, x, i)

cpdef object Vector_size(
    Index n,
    Vector v=None,
):
    if n is None:
        raise TypeError()
    cdef Vector_size_ptr func = Vector_size_ptrs[n.backend_id]
    if func is NULL:
        raise ValueError(f'{n.backend} backend does not have Vector_size')
    func(n, v)

cpdef object Vector_wait(
    Vector v=None,
):
    if v is None:
        raise TypeError()
    cdef Vector_wait_ptr func = Vector_wait_ptrs[v.backend_id]
    if func is NULL:
        raise ValueError(f'{v.backend} backend does not have Vector_wait')
    func(v)

cpdef object getVersion(
    unsigned int version,
    unsigned int subversion,
):
    if version is None:
        raise TypeError()
    cdef getVersion_ptr func = getVersion_ptrs[version.backend_id]
    if func is NULL:
        raise ValueError(f'{version.backend} backend does not have getVersion')
    func(version, subversion)

cpdef object init(
    Mode mode,
):
    if mode is None:
        raise TypeError()
    cdef init_ptr func = init_ptrs[mode.backend_id]
    if func is NULL:
        raise ValueError(f'{mode.backend} backend does not have init')
    func(mode)

cpdef object mxm(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Matrix A=None,
    Matrix B=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef mxm_ptr func = mxm_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have mxm')
    func(C, Mask, accum, semiring, A, B, desc)

cpdef object mxv(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Matrix A=None,
    Vector u=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef mxv_ptr func = mxv_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have mxv')
    func(w, mask, accum, semiring, A, u, desc)

cpdef object transpose(
    Matrix C=None,
    Matrix Mask=None,
    BinaryOp accum=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if C is None:
        raise TypeError()
    cdef transpose_ptr func = transpose_ptrs[C.backend_id]
    if func is NULL:
        raise ValueError(f'{C.backend} backend does not have transpose')
    func(C, Mask, accum, A, desc)

cpdef object vxm(
    Vector w=None,
    Vector mask=None,
    BinaryOp accum=None,
    Semiring semiring=None,
    Vector u=None,
    Matrix A=None,
    Descriptor desc=None,
):
    if w is None:
        raise TypeError()
    cdef vxm_ptr func = vxm_ptrs[w.backend_id]
    if func is NULL:
        raise ValueError(f'{w.backend} backend does not have vxm')
    func(w, mask, accum, semiring, u, A, desc)
