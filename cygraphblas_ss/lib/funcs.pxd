# This file is automatically generated
from cygraphblas._clib cimport *
from cygraphblas.matrix cimport Matrix
from cygraphblas.vector cimport Vector
from cygraphblas_ss._clib cimport *

cpdef Col_subassign(
    Matrix C,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    Index[::1] I=*,
    ni=*,
    j=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_FC32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp1st_FC64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Matrix A=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_FC32(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_apply_BinaryOp2nd_FC64(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    y=*,
    Descriptor desc=*,
)

cpdef Matrix_assign_FC32(
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

cpdef Matrix_assign_FC64(
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

cpdef Matrix_build_FC32(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    float complex[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_build_FC64(
    Matrix C,
    Index[::1] I=*,
    Index[::1] J=*,
    double complex[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Matrix_resize(
    Matrix C,
    nrows_new=*,
    ncols_new=*,
)

cpdef Matrix_setElement_FC32(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_setElement_FC64(
    Matrix C,
    x=*,
    i=*,
    j=*,
)

cpdef Matrix_subassign(
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

cpdef Matrix_subassign_BOOL(
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

cpdef Matrix_subassign_FC32(
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

cpdef Matrix_subassign_FC64(
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

cpdef Matrix_subassign_FP32(
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

cpdef Matrix_subassign_FP64(
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

cpdef Matrix_subassign_INT16(
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

cpdef Matrix_subassign_INT32(
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

cpdef Matrix_subassign_INT64(
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

cpdef Matrix_subassign_INT8(
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

cpdef Matrix_subassign_UINT16(
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

cpdef Matrix_subassign_UINT32(
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

cpdef Matrix_subassign_UINT64(
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

cpdef Matrix_subassign_UINT8(
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

cpdef Row_subassign(
    Matrix C,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    i=*,
    Index[::1] J=*,
    nj=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_FC32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp1st_FC64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    x=*,
    Vector u=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_FC32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_apply_BinaryOp2nd_FC64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Vector u=*,
    y=*,
    Descriptor desc=*,
)

cpdef Vector_assign_FC32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_assign_FC64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_build_FC32(
    Vector w,
    Index[::1] I=*,
    float complex[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_build_FC64(
    Vector w,
    Index[::1] I=*,
    double complex[::1] X=*,
    nvals=*,
    BinaryOp dup=*,
)

cpdef Vector_resize(
    Vector w,
    nrows_new=*,
)

cpdef Vector_setElement_FC32(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_setElement_FC64(
    Vector w,
    x=*,
    i=*,
)

cpdef Vector_subassign(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    Vector u=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_BOOL(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_FC32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_FC64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_FP32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_FP64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_INT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_INT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_INT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_INT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_UINT16(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_UINT32(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_UINT64(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef Vector_subassign_UINT8(
    Vector w,
    Vector mask=*,
    BinaryOp accum=*,
    x=*,
    Index[::1] I=*,
    ni=*,
    Descriptor desc=*,
)

cpdef cuda_init(
    Mode mode,
    backend=*,
)

cpdef kron(
    Matrix C,
    Matrix Mask=*,
    BinaryOp accum=*,
    BinaryOp op=*,
    Matrix A=*,
    Matrix B=*,
    Descriptor desc=*,
)