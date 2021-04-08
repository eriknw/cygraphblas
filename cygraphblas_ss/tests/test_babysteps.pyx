from pytest import raises
from cygraphblas.matrix cimport Matrix
from cygraphblas._clib cimport BACKEND_SS
from cygraphblas_ss.graphblas cimport GrB_Matrix, GrB_Index, GrB_Matrix_ncols

from cygraphblas.lib.funcs import init, Matrix_new, Matrix_apply
from cygraphblas.lib.constants.mode import BLOCKING
from cygraphblas.lib.dtypes import INT64
from cygraphblas.lib.unary import IDENTITY_INT64

init(BLOCKING, BACKEND_SS)


def test_apply():
    cdef Matrix C = Matrix._new(BACKEND_SS)
    cdef Matrix A = Matrix._new(BACKEND_SS)
    cdef GrB_Index n = 4
    cdef GrB_Index ncols = 99

    Matrix_new(A, INT64, n, n)
    Matrix_new(C, INT64, n, n)

    GrB_Matrix_ncols(&ncols, <GrB_Matrix>A.obj)
    assert ncols == n

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
    with raises(TypeError, match="Argument 'op' has incorrect type"):
        Matrix_apply(
            C,
            A=A,
            op=A,
        )
