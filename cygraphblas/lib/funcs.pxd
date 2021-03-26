# This file is automatically generated
from libc.stdint cimport *
from cygraphblas._clib cimport *
from cygraphblas.matrix cimport Matrix
from cygraphblas.vector cimport Vector

cpdef Col_assign(
    Matrix C,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    Index[::1] I=*,
    ni=*,
    j=*,
    Descriptor desc=*,
)

cpdef Col_extract(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Matrix A=*,
    Index[::1] I=*,
    ni=*,
    j=*,
    Descriptor desc=*,
)

cpdef Descriptor_set(
    Descriptor desc,
    Desc_Field field=*,
    Desc_Value val=*,
    backend=*,
)

cpdef Matrix_apply(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    UnaryOp op=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_BOOL(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_FP32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_FP64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_INT16(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_INT32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_INT64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_INT8(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_UINT16(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_UINT32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_UINT64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_UINT8(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_BOOL(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_FP32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_FP64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_INT16(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_INT32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_INT64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_INT8(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_UINT16(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_UINT32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_UINT64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_UINT8(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_assign(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Matrix A=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_BOOL(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_FP32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_FP64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_INT16(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_INT32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_INT64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_INT8(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_UINT16(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_UINT32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_UINT64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_UINT8(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_build_BOOL(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    bint[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_FP32(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    float[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_FP64(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    double[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_INT16(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    int16_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_INT32(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    int32_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_INT64(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    int64_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_INT8(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    int8_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_UINT16(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    uint16_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_UINT32(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    uint32_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_UINT64(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    uint64_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_UINT8(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    uint8_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_clear(
    Matrix A,
)

cpdef Matrix_dup(
    Matrix C,
    Matrix A=*,
)

cpdef Matrix_eWiseAdd_BinaryOp(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp add=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_eWiseAdd_Monoid(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Monoid monoid=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_eWiseAdd_Semiring(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_eWiseMult_BinaryOp(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp mult=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_eWiseMult_Monoid(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Monoid monoid=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_eWiseMult_Semiring(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_extract(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Matrix A=*,
    Index[::1] I=*,
    ni=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Matrix_free(
    Matrix A,
)

cpdef Matrix_kronecker_BinaryOp(
    Matrix C,
    Matrix M=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_kronecker_Monoid(
    Matrix C,
    Matrix M=*,
    BinaryOp accum=*,
    Monoid monoid=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_kronecker_Semiring(
    Matrix C,
    Matrix M=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef Matrix_new(
    Matrix A,
    Type type=*,
    nrows=*,
    ncols=*,
)

cpdef Matrix_reduce_BinaryOp(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_reduce_Monoid(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Monoid monoid=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_removeElement(
    Matrix C,
    i=*,
    j=*,
)

cpdef Matrix_resize(
    Matrix C,
    nrows_new=*,
    ncols_new=*,
)

cpdef Matrix_setElement_BOOL(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_FP32(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_FP64(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_INT16(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_INT32(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_INT64(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_INT8(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_UINT16(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_UINT32(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_UINT64(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_UINT8(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_wait(
    Matrix A,
)

cpdef Row_assign(
    Matrix C,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    i=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Vector_apply(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    UnaryOp op=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_BOOL(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_FP32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_FP64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_INT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_INT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_INT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_INT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_UINT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_UINT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_UINT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_UINT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_BOOL(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_FP32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_FP64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_INT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_INT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_INT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_INT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_UINT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_UINT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_UINT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_UINT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_assign(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_BOOL(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_FP32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_FP64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_INT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_INT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_INT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_INT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_UINT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_UINT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_UINT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_UINT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_build_BOOL(
    Vector w,
    Index[::1] I=*,
    bint[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_FP32(
    Vector w,
    Index[::1] I=*,
    float[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_FP64(
    Vector w,
    Index[::1] I=*,
    double[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_INT16(
    Vector w,
    Index[::1] I=*,
    int16_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_INT32(
    Vector w,
    Index[::1] I=*,
    int32_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_INT64(
    Vector w,
    Index[::1] I=*,
    int64_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_INT8(
    Vector w,
    Index[::1] I=*,
    int8_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_UINT16(
    Vector w,
    Index[::1] I=*,
    uint16_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_UINT32(
    Vector w,
    Index[::1] I=*,
    uint32_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_UINT64(
    Vector w,
    Index[::1] I=*,
    uint64_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_UINT8(
    Vector w,
    Index[::1] I=*,
    uint8_t[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_clear(
    Vector v,
)

cpdef Vector_dup(
    Vector w,
    Vector u=*,
)

cpdef Vector_eWiseAdd_BinaryOp(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp add=*,
    Vector u=*,
    Vector v=*,
    Descriptor desc=*,
)

cpdef Vector_eWiseAdd_Monoid(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Monoid monoid=*,
    Vector u=*,
    Vector v=*,
    Descriptor desc=*,
)

cpdef Vector_eWiseAdd_Semiring(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Vector u=*,
    Vector v=*,
    Descriptor desc=*,
)

cpdef Vector_eWiseMult_BinaryOp(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp mult=*,
    Vector u=*,
    Vector v=*,
    Descriptor desc=*,
)

cpdef Vector_eWiseMult_Monoid(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Monoid monoid=*,
    Vector u=*,
    Vector v=*,
    Descriptor desc=*,
)

cpdef Vector_eWiseMult_Semiring(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Vector u=*,
    Vector v=*,
    Descriptor desc=*,
)

cpdef Vector_extract(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_free(
    Vector v,
)

cpdef Vector_new(
    Vector v,
    Type type=*,
    n=*,
)

cpdef Vector_removeElement(
    Vector v,
    i=*,
)

cpdef Vector_resize(
    Vector w,
    nrows_new=*,
)

cpdef Vector_setElement_BOOL(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_FP32(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_FP64(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_INT16(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_INT32(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_INT64(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_INT8(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_UINT16(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_UINT32(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_UINT64(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_UINT8(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_wait(
    Vector v,
)

cpdef init(
    Mode mode,
    backend=*,
)

cpdef mxm(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)

cpdef mxv(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Matrix A=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef transpose(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef vxm(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Semiring semiring=*,
    Vector u=*,
    Matrix A=*,
    Descriptor desc=*,
)