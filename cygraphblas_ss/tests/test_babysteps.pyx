from pytest import raises
from cygraphblas.matrix cimport Matrix
from cygraphblas._clib cimport BACKEND_SS, IDENTITY_INT64
from cygraphblas_ss.graphblas cimport GrB_Matrix, GrB_init, GrB_Matrix_new, GrB_INT64, GrB_Index, GrB_BLOCKING

from cygraphblas.lib.funcs import Matrix_apply

GrB_init(GrB_BLOCKING)


def test_apply():
    cdef Matrix C = Matrix._new(BACKEND_SS)
    cdef Matrix A = Matrix._new(BACKEND_SS)
    cdef GrB_Index n = 4
    cdef GrB_Index ncols = 99
    GrB_Matrix_new(<GrB_Matrix *>&A.obj, GrB_INT64, n, n)
    GrB_Matrix_new(<GrB_Matrix *>&C.obj, GrB_INT64, n, n)

    Matrix_apply(
        C,
        None,
        None,
        IDENTITY_INT64,
        A,
        None,
    )
    Matrix_apply(
        C,
        op=IDENTITY_INT64,
        A=A,
    )
    with raises(TypeError, match='C argument of Matrix_apply must not be None'):
        Matrix_apply(
            None,
            op=IDENTITY_INT64,
            A=A,
        )
    with raises(Exception):
        Matrix_apply(
            C,
            op=IDENTITY_INT64,
        )
    with raises(TypeError, match="Argument 'op' has incorrect typ"):
        Matrix_apply(
            C,
            A=A,
            op=A,
        )
